object FormProdutosFast: TFormProdutosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Produtos'
  ClientHeight = 561
  ClientWidth = 1222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 760
    Top = 8
    Width = 436
    Height = 362
    Lines.Strings = (
      '13 - Ficha t'#233'cnica'
      '03 - Tabela de Pre'#231'os'
      '01 - Produtos'
      '01 - Produtos com quantidade abaixo do estoque m'#237'nimo'
      '01 - Produtos com quantidade acima do estoque m'#225'ximo'
      '01 - Produtos com quantidade abaixo do estoque m'#225'ximo'
      '01 - Produtos com quantidade negativa'
      '01 - Produtos com quantidade negativa ou zerada'
      '01 - Produtos com quantidade diferente de zero'
      
        '06 - Produtos com quantidade diferente do total dos almoxarifado' +
        's'
      '07 - Produtos com pre'#231'o de custo zerado ou negativo'
      '04 - Produtos com c'#243'digo de fornecedores'
      '10 - Produtos compostos sint'#233'tico'
      '11 - Produtos compostos anal'#237'tico'
      
        '07 - Produtos compostos com pre'#231'o de custo menor que o pre'#231'o cus' +
        'to da composi'#231#227'o'
      '12 - Produtos compostos de um produto'
      '02 - Produtos por unidade de medida'
      '05 - Produtos vs produtos reais'
      '08 - Posi'#231#227'o atual do Estoque'
      '08 - Posi'#231#227'o atual do Estoque - sem valores'
      '09 - Posi'#231#227'o atual do Estoque por almoxarifado'
      '09 - Posi'#231#227'o atual do Estoque por almoxarifado - sem valores'
      '14 - Etiquetas Pimaco Carta - 33,9 x 101,6mm - 2 colunas'
      '15 - Etiquetas Pimaco Carta - 25,4 x 66,7mm - 3 colunas'
      '16 - Etiquetas Pimaco A4 - 21,2 x 38,2mm - 5 colunas'
      '17 - Produtos por grupo sem foto'
      '18 - Tabela de Pre'#231'os sem agrupamento')
    TabOrder = 0
  end
  object TreeView1: TTreeView
    Left = 1032
    Top = 376
    Width = 153
    Height = 137
    Indent = 19
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 896
    Top = 376
    Width = 129
    Height = 137
    DataSource = DSComposicao
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 760
    Top = 376
    Width = 129
    Height = 137
    DataSource = DS11
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 760
    Top = 518
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
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
    ReportOptions.Name = 'Produtos'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'ALM_CODIGO'
        Value = ''
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'COMPOSTO'
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
        Frame.Width = 0.500000000000000000
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
        Top = 332.598640000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181080390000000000
          Width = 118.299241890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'MAR_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992189450000000000
          Width = 32.503900390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_FORNECEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_FORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 724.511955040000000000
          Width = 75.590517010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260079290000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMIN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_ESTOQUEMIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 289.133836300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 880.629862680000000000
          Width = 51.023622047244090000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 840.945030790000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMAX'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_ESTOQUEMAX"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 933.543910000000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_DTCADASTRO'
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
            '[frxDBDataset1."PRO_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 545.031850000000000000
          Width = 145.889800390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FOR_NOME'
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
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 692.653990000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
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
            '[frxDBDataset1."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 354.275820000000000000
          Width = 35.149581890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_MARCA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 995.795920000000000000
          Width = 86.929107010000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 12500670
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 18.897637800000000000
        Top = 230.551330000000000000
        Width = 1084.725110000000000000
        Condition = '<frxDBDataset1."FAM_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_FAMILIA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FAM_DESCRICAO"]')
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
        Top = 370.393940000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade no Grupo:')
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
        Top = 555.590910000000000000
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
            'PRO01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 506.457020000000000000
        Width = 1084.725110000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
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
        Height = 64.251980710000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 15.118120000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Almoxarifado:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ALM_CODIGO]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ALM_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
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
            'Composto:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 793.811492280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COMPOSTO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDataset1."GRU_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GRU_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181080393700800000
          Top = 24.566929130000000000
          Width = 118.299241890000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Top = 24.566929130000000000
          Width = 289.133836300000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992189450000000000
          Top = 24.566929130000000000
          Width = 32.503900390000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 724.511955040000000000
          Top = 24.566929130000000000
          Width = 75.590517010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260079290000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Min.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 880.629862680000000000
          Top = 24.566929130000000000
          Width = 51.023622047244090000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Atual')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 840.945030790000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Max.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 933.543910000000000000
          Top = 24.566929130000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 545.031850000000000000
          Top = 24.566929130000000000
          Width = 145.889800390000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 692.653990000000000000
          Top = 24.566929130000000000
          Width = 30.236157010000000000
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
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 354.275820000000000000
          Top = 24.566929130000000000
          Width = 35.149581890000000000
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
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 995.795920000000000000
          Top = 24.566929130000000000
          Width = 86.929107010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Localiza'#231#227'o'
            '')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 419.527830000000000000
        Width = 1084.725110000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade na Fam'#237'lia:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_DTCADASTRO=PRO_DTCADASTRO'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_ESTOQUEMAX=PRO_ESTOQUEMAX'
      'PRO_ESTOQUEMIN=PRO_ESTOQUEMIN'
      'PRO_FAMILIA=PRO_FAMILIA'
      'PRO_FORNECEDOR=PRO_FORNECEDOR'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_MARCA=PRO_MARCA'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'PRO_UNIDADE=PRO_UNIDADE'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'FOR_NOME=FOR_NOME'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'MAR_DESCRICAO=MAR_DESCRICAO')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
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
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
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
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Produtos por unidade de medida'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 64.251865980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOFAB'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_CODIGOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 214.031359370000000000
          Width = 23.810991890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_TIPO'
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
            '[frxDBDataset2."PRO_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 239.866029450000000000
          Width = 258.897635350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 500.519685040000000000
          Width = 120.944877010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GRU_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."GRU_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 113.362068030000000000
          Width = 99.401574800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOBARRAS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_CODIGOBARRAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 621.732290790000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 71.810987010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
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
            '[frxDBDataset2."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset2."UNI_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRO_UNIDADE"]')
          ParentFont = False
        end
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
            '[frxDBDataset2."UNI_DESCRICAO"]')
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 24.566929130000000000
          Width = 64.251865980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Fab.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 214.031359370000000000
          Top = 24.566929130000000000
          Width = 23.810991890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P/S')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 113.362068030000000000
          Top = 24.566929130000000000
          Width = 99.401574800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Barras')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 239.866029450000000000
          Top = 24.566929130000000000
          Width = 258.897635350000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 500.519685040000000000
          Top = 24.566929130000000000
          Width = 120.944877010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Grupo'
            '')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 621.732290790000000000
          Top = 24.566929130000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Total')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 24.566929130000000000
          Width = 71.810987010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
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
        Top = 332.598640000000000000
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
        Top = 468.661720000000000000
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
            'PRO02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 419.527830000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_CODIGOFAB=PRO_CODIGOFAB'
      'PRO_CODIGOBARRAS=PRO_CODIGOBARRAS'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_UNIDADE=PRO_UNIDADE'
      'PRO_TIPO=PRO_TIPO'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'UNI_DESCRICAO=UNI_DESCRICAO'
      'GRU_DESCRICAO=GRU_DESCRICAO')
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
    ReportOptions.Name = 'Tabela de Pre'#231'os'
    ReportOptions.LastChange = 44357.443475740700000000
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
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'ALM_CODIGO'
        Value = ''
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = ''
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
        Frame.Width = 0.500000000000000000
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
        Top = 355.275820000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 434.740179450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
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
            '[frxDBDataset3."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 620.157619450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO2'
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
            '[frxDBDataset3."PRO_PRECO2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 712.866339450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO3'
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
            '[frxDBDataset3."PRO_PRECO3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 338.267726300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 898.283779450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO5'
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
            '[frxDBDataset3."PRO_PRECO5"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 805.575059450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO4'
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
            '[frxDBDataset3."PRO_PRECO4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 990.992499450000000000
          Width = 92.598425200000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO6'
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
            '[frxDBDataset3."PRO_PRECO6"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 527.448899450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO1'
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
            '[frxDBDataset3."PRO_PRECO1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 402.630180000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
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
            '[frxDBDataset3."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
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
        Top = 393.071120000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade no Grupo:')
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
        Top = 529.134200000000000000
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
            'PRO03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 480.000310000000000000
        Width = 1084.725110000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
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
        Height = 128.503990710000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 404.247043800000000000
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
          Left = 473.506803340000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 646.409822280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 71.811070000000000000
          Width = 1039.370078740157000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 75.590600000000000000
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
            'Tabela 01:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 90.708720000000000000
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
            'Tabela 02:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 105.826840000000000000
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
            'Tabela 03:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 75.590600000000000000
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
            'Tabela 04:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 90.708720000000000000
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
            'Tabela 05:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 105.826840000000000000
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
            'Tabela 06:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 75.590600000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA1]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 90.708720000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA2]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 105.826840000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA3]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 75.590600000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA4]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 90.708720000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA5]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 105.826840000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA6]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795300000000000000
        Top = 294.803340000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDataset3."GRU_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."GRU_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Top = 24.566929130000000000
          Width = 338.267726300000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 990.992499450000000000
          Top = 24.566929130000000000
          Width = 92.598425200000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 06')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 434.740179450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 527.448899450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 01')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 712.866339450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 03'
            '')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 620.157619450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 02'
            '')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 805.575059450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 04')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 898.283779450000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 05'
            '')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 402.630180000000000000
          Top = 24.566929130000000000
          Width = 30.236157010000000000
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
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'PRO_PRECO1=PRO_PRECO1'
      'PRO_PRECO2=PRO_PRECO2'
      'PRO_PRECO3=PRO_PRECO3'
      'PRO_PRECO4=PRO_PRECO4'
      'PRO_PRECO5=PRO_PRECO5'
      'PRO_PRECO6=PRO_PRECO6'
      'PRO_UNIDADE=PRO_UNIDADE'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
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
    ReportOptions.Name = 'Produtos com c'#243'digos de fornecedores'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 245.669291340000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRO_NOME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.401489370000000000
          Width = 38.929111890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PCO_FORNECEDOR'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PCO_FORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 334.354279450000000000
          Width = 217.322805350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FOR_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."FOR_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 553.433105040000000000
          Width = 128.503937010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PCO_CODIGOFORNECEDOR'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PCO_CODIGOFORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 71.810987010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
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
            '[frxDBDataset4."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset4."GRU_DESCRICAO">'
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
            '[frxDBDataset4."PRO_GRUPO"]')
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
            '[frxDBDataset4."GRU_DESCRICAO"]')
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 24.566929130000000000
          Width = 245.669291340000000000
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
            'Nome')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 294.401489370000000000
          Top = 24.566929130000000000
          Width = 38.929111890000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 334.354279450000000000
          Top = 24.566929130000000000
          Width = 217.322805350000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 553.433105040000000000
          Top = 24.566929130000000000
          Width = 128.503937010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. no Fornecedor'
            '')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 24.566929130000000000
          Width = 71.810987010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
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
        Top = 332.598640000000000000
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
        Top = 468.661720000000000000
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
            'PRO04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 419.527830000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'FOR_NOME=FOR_NOME'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'PCO_FORNECEDOR=PCO_FORNECEDOR'
      'PCO_CODIGOFORNECEDOR=PCO_CODIGOFORNECEDOR')
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
    ReportOptions.Name = 'Produtos vs produtos reais'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692913390000000000
          Width = 321.259842519685000000
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
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952755910000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRODUTOREAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRO_PRODUTOREAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645669290000000000
          Width = 257.007881340000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOMEREAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRO_NOMEREAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653538430000000000
          Width = 64.251973390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CONVERSAO'
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
            '[frxDBDataset5."PRO_CONVERSAO"]')
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
        Top = 393.071120000000000000
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
            'PRO05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 196.535560000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 377.952755905511800000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952755910000000000
          Width = 313.700787400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto Real')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653538430000000000
          Width = 64.251973390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Convers'#227'o')
          ParentFont = False
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
        Top = 309.921460000000000000
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
      end
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_CONVERSAO=PRO_CONVERSAO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRODUTOREAL=PRO_PRODUTOREAL'
      'PRO_NOMEREAL=PRO_NOMEREAL')
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
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
    ReportOptions.Name = 'Produtos com quantidade diferente do total dos almoxarifados'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRQ_PRODUTO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRQ_PRODUTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692913390000000000
          Width = 453.543392520000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRO_NOME"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015835910000000000
          Width = 120.944757400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
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
            '[frxDBDataset6."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740118430000000000
          Width = 117.165393390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TOTALALMOXARIFADOS'
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
            '[frxDBDataset6."TOTALALMOXARIFADOS"]')
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
        Top = 393.071120000000000000
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
            'PRO06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 196.535560000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 510.236305910000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015835910000000000
          Width = 120.944757400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Atual')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740118430000000000
          Width = 117.165393390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Almoxarifados')
          ParentFont = False
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
        Top = 309.921460000000000000
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
      end
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRQ_PRODUTO=PRQ_PRODUTO'
      'TOTALALMOXARIFADOS=TOTALALMOXARIFADOS'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_NOME=PRO_NOME')
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
    ReportOptions.Name = 'Produtos com pre'#231'o de custo zerado ou negativo'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 55.181112130000000000
          Width = 400.630035980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 457.165325040000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."PRO_PRECOCUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 557.480280790000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTOCOMP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."PRO_PRECOCUSTOCOMP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset7."GRU_DESCRICAO">'
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
            '[frxDBDataset7."PRO_GRUPO"]')
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
            '[frxDBDataset7."GRU_DESCRICAO"]')
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 55.181112130000000000
          Top = 24.566929130000000000
          Width = 400.630035980000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 457.165325040000000000
          Top = 24.566929130000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo'
            '')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 557.480280790000000000
          Top = 24.566929130000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo Comp.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 24.566929130000000000
          Width = 98.267697010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
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
        Top = 332.598640000000000000
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
        Top = 468.661720000000000000
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
            'PRO07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 419.527830000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOCUSTO=PRO_PRECOCUSTO'
      'PRO_PRECOCUSTOCOMP=PRO_PRECOCUSTOCOMP'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
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
    ReportOptions.Name = 'Posi'#231#227'o atual do estoque'
    ReportOptions.LastChange = 44630.502988171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  TotalItem, TotalFamilia, TotalGrupo, TotalGeral, TotalNegativo' +
        ': Currency;'
      '    '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  TotalItem:=0;'
      '  TotalFamilia:=0;'
      '  TotalGrupo:=0;'
      '  TotalGeral:=0;'
      '  TotalNegativo:=0;'
      '  if <SEMVALORES> = '#39'S'#39' then'
      '  begin'
      '    Memo22.Visible:=False;'
      '    Memo36.Visible:=False;        '
      '    Memo37.Visible:=False;'
      '    Memo39.Visible:=False;'
      ''
      '    Memo62.Visible:=False;'
      '    Memo63.Visible:=False;'
      '    Memo66.Visible:=False;'
      '    Memo67.Visible:=False;'
      '    Memo68.Visible:=False;        '
      '  end;            '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  TotalItem:=<frxDBDataset8."PRO_ESTOQUEATUAL"> * <frxDBDataset8' +
        '."PRO_PRECOCUSTO">;'
      ''
      '  if TotalItem < 0 then'
      '  begin              '
      '    TotalNegativo:=TotalNegativo + TotalItem;'
      '    TotalItem:=0;'
      ''
      '    Memo2.Font.Color:=clRed;'
      '    Memo19.Font.Color:=clRed;'
      '    Memo65.Font.Color:=clRed;'
      '    Memo7.Font.Color:=clRed;'
      '    Memo38.Font.Color:=clRed;'
      '    Memo6.Font.Color:=clRed;        '
      '    Memo37.Font.Color:=clRed;'
      '    Memo39.Font.Color:=clRed;        '
      '  end else'
      '  begin'
      '    Memo2.Font.Color:=clBlack;              '
      '    Memo19.Font.Color:=clBlack;'
      '    Memo65.Font.Color:=clBlack;'
      '    Memo7.Font.Color:=clBlack;'
      '    Memo38.Font.Color:=clBlack;'
      '    Memo6.Font.Color:=clBlack;'
      '    Memo37.Font.Color:=clBlack;        '
      '    Memo39.Font.Color:=clBlack;        '
      '  end;            '
      '    '
      '  TotalFamilia := TotalFamilia + TotalItem;'
      '  TotalGrupo := TotalGrupo + TotalItem;'
      '  TotalGeral := TotalGeral + TotalItem;      '
      
        '  Set('#39'TOTALITEM'#39', '#39#39#39#39'+ FloatToStr(TotalItem) +'#39#39#39#39');          ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALGRUPO'#39', '#39#39#39#39'+ FloatToStr(TotalGrupo) +'#39#39#39#39');'
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalGrupo:=0;                            '
      'end;'
      ''
      'procedure GroupFooter2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALFAMILIA'#39', '#39#39#39#39'+ FloatToStr(TotalFamilia) +'#39#39#39#39');  '
      'end;'
      ''
      'procedure GroupFooter2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalFamilia:=0;                                '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALGERAL'#39', '#39#39#39#39'+ FloatToStr(TotalGeral) +'#39#39#39#39');'
      
        '  Set('#39'TOTALNEGATIVO'#39', '#39#39#39#39'+ FloatToStr(TotalNegativo) +'#39#39#39#39');  ' +
        '    '
      'end;'
      ''
      'procedure ReportSummary1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalGeral:=0;      '
      '  TotalNegativo:=0;                                      '
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'ALM_CODIGO'
        Value = ''
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'TOTALITEM'
        Value = ''
      end
      item
        Name = 'TOTALFAMILIA'
        Value = ''
      end
      item
        Name = 'TOTALGRUPO'
        Value = ''
      end
      item
        Name = 'TOTALGERAL'
        Value = ''
      end
      item
        Name = 'TOTALNEGATIVO'
        Value = ''
      end
      item
        Name = 'SEMVALORES'
        Value = ''
      end
      item
        Name = 'QTDEZERO'
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
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 531.913102680000000000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
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
            '[frxDBDataset8."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 452.543319290000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMIN'
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
            '[frxDBDataset8."PRO_ESTOQUEMIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 355.275590550000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 584.669345040000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTO'
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
            '[frxDBDataset8."PRO_PRECOCUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 492.228270790000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMAX'
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
            '[frxDBDataset8."PRO_ESTOQUEMAX"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Width = 79.370047010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
            '[TOTALITEM]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
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
            '[frxDBDataset8."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 12500670
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 18.897637800000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset8."FAM_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."PRO_FAMILIA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FAM_DESCRICAO"]')
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
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade no Grupo:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALGRUPO]')
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
        Top = 555.590910000000000000
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
            'PRO08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 506.457020000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'ReportSummary1OnAfterPrint'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALGERAL]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TOTALNEGATIVO]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Negativo:')
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
        Height = 64.251980710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 344.315155910000000000
          Width = 46.866129530000000000
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
          Left = 393.559238190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 15.118120000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Almoxarifado:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1'
            '')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 43.086599530000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 525.464862280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 61.984249530000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Zero:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 672.866532280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[QTDEZERO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset8."GRU_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."GRU_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Top = 24.566929130000000000
          Width = 355.275590551181100000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 584.669345040000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Custo')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 452.543319290000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Min.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 531.913102680000000000
          Top = 24.566929130000000000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Atual')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 492.228270790000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Max.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 24.566929130000000000
          Width = 79.370047010000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 24.566929130000000000
          Width = 30.236157010000000000
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
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 419.527830000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter2OnAfterPrint'
        OnBeforePrint = 'GroupFooter2OnBeforePrint'
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade na Fam'#237'lia:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALFAMILIA]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_ESTOQUEMAX=PRO_ESTOQUEMAX'
      'PRO_ESTOQUEMIN=PRO_ESTOQUEMIN'
      'PRO_FAMILIA=PRO_FAMILIA'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOCUSTO=PRO_PRECOCUSTO'
      'PRO_UNIDADE=PRO_UNIDADE'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'FAM_DESCRICAO=FAM_DESCRICAO')
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
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
    ReportOptions.Name = 'Posi'#231#227'o atual do estoque por almoxarifado'
    ReportOptions.LastChange = 44630.502988171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  TotalItem, TotalFamilia, TotalGrupo, TotalGeral, TotalNegativo' +
        ': Currency;'
      '    '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  TotalItem:=0;'
      '  TotalFamilia:=0;'
      '  TotalGrupo:=0;'
      '  TotalGeral:=0;'
      '  TotalNegativo:=0;'
      '  if <SEMVALORES> = '#39'S'#39' then'
      '  begin'
      '    Memo22.Visible:=False;'
      '    Memo36.Visible:=False;        '
      '    Memo37.Visible:=False;'
      '    Memo39.Visible:=False;'
      ''
      '    Memo62.Visible:=False;'
      '    Memo63.Visible:=False;'
      '    Memo66.Visible:=False;'
      '    Memo67.Visible:=False;'
      '    Memo68.Visible:=False;        '
      '  end;            '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  TotalItem:=<frxDBDataset9."PRQ_QUANTIDADE"> * <frxDBDataset9."' +
        'PRO_PRECOCUSTO">;'
      ''
      '  if TotalItem < 0 then'
      '  begin              '
      '    TotalNegativo:=TotalNegativo + TotalItem;'
      '    TotalItem:=0;'
      ''
      '    Memo2.Font.Color:=clRed;'
      '    Memo19.Font.Color:=clRed;'
      '    Memo65.Font.Color:=clRed;'
      '    Memo7.Font.Color:=clRed;'
      '    Memo38.Font.Color:=clRed;'
      '    Memo6.Font.Color:=clRed;        '
      '    Memo37.Font.Color:=clRed;'
      '    Memo39.Font.Color:=clRed;        '
      '  end else'
      '  begin'
      '    Memo2.Font.Color:=clBlack;              '
      '    Memo19.Font.Color:=clBlack;'
      '    Memo65.Font.Color:=clBlack;'
      '    Memo7.Font.Color:=clBlack;'
      '    Memo38.Font.Color:=clBlack;'
      '    Memo6.Font.Color:=clBlack;'
      '    Memo37.Font.Color:=clBlack;        '
      '    Memo39.Font.Color:=clBlack;        '
      '  end;            '
      '    '
      '  TotalFamilia := TotalFamilia + TotalItem;'
      '  TotalGrupo := TotalGrupo + TotalItem;'
      '  TotalGeral := TotalGeral + TotalItem;      '
      
        '  Set('#39'TOTALITEM'#39', '#39#39#39#39'+ FloatToStr(TotalItem) +'#39#39#39#39');          ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALGRUPO'#39', '#39#39#39#39'+ FloatToStr(TotalGrupo) +'#39#39#39#39');'
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalGrupo:=0;                            '
      'end;'
      ''
      'procedure GroupFooter2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALFAMILIA'#39', '#39#39#39#39'+ FloatToStr(TotalFamilia) +'#39#39#39#39');  '
      'end;'
      ''
      'procedure GroupFooter2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalFamilia:=0;                                '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTALGERAL'#39', '#39#39#39#39'+ FloatToStr(TotalGeral) +'#39#39#39#39');'
      
        '  Set('#39'TOTALNEGATIVO'#39', '#39#39#39#39'+ FloatToStr(TotalNegativo) +'#39#39#39#39');  ' +
        '    '
      'end;'
      ''
      'procedure ReportSummary1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  TotalGeral:=0;      '
      '  TotalNegativo:=0;                                      '
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'ALM_CODIGO'
        Value = ''
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'TOTALITEM'
        Value = ''
      end
      item
        Name = 'TOTALFAMILIA'
        Value = ''
      end
      item
        Name = 'TOTALGRUPO'
        Value = ''
      end
      item
        Name = 'TOTALGERAL'
        Value = ''
      end
      item
        Name = 'TOTALNEGATIVO'
        Value = ''
      end
      item
        Name = 'SEMVALORES'
        Value = ''
      end
      item
        Name = 'QTDEZERO'
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
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 471.440622680000000000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 392.070839290000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMIN'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_ESTOQUEMIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 294.803110550000000000
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
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 584.669345040000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTO'
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
            '[frxDBDataset9."PRO_PRECOCUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 431.755790790000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMAX'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_ESTOQUEMAX"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Width = 79.370047010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
            '[TOTALITEM]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
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
            '[frxDBDataset9."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 524.354670000000000000
          Width = 58.582682050000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRQ_QUANTIDADE'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRQ_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 12500670
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 18.897637800000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset9."FAM_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_FAMILIA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."FAM_DESCRICAO"]')
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
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade no Grupo:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALGRUPO]')
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
        Top = 555.590910000000000000
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
            'PRO09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 506.457020000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'ReportSummary1OnAfterPrint'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALGERAL]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TOTALNEGATIVO]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Negativo:')
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
        Height = 64.251980710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 344.315155910000000000
          Width = 46.866129530000000000
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
          Left = 393.559238190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 15.118120000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Almoxarifado:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ALM_CODIGO')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ALM_DESCRICAO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 43.086599530000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 525.464862280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 61.984249530000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Zero:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 672.866532280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[QTDEZERO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset9."GRU_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."GRU_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Top = 24.566929130000000000
          Width = 294.803110550000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 584.669345040000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Custo')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 392.070839290000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Min.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 471.440622680000000000
          Top = 24.566929130000000000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Atual')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 431.755790790000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Max.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 24.566929130000000000
          Width = 79.370047010000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 24.566929130000000000
          Width = 30.236157010000000000
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
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 524.354670000000000000
          Top = 24.566929130000000000
          Width = 58.582682050000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtde. Alm.')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 419.527830000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter2OnAfterPrint'
        OnBeforePrint = 'GroupFooter2OnBeforePrint'
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade na Fam'#237'lia:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 1.889763780000000000
          Width = 132.283467010000000000
          Height = 13.228346460000000000
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
            '[TOTALFAMILIA]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_FAMILIA=PRO_FAMILIA'
      'PRO_PRECOCUSTO=PRO_PRECOCUSTO'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_ESTOQUEMAX=PRO_ESTOQUEMAX'
      'PRO_ESTOQUEMIN=PRO_ESTOQUEMIN'
      'PRO_UNIDADE=PRO_UNIDADE'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'PRQ_QUANTIDADE=PRQ_QUANTIDADE')
    DataSet = QY09
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 112
  end
  object TBComposicao: TClientDataSet
    PersistDataPacket.Data = {
      5C0100009619E0BD01000000180000000B0000000000030000005C010A50524F
      5F434F4449474F04000100000000000F5052435F50524F4455544F434F4D5004
      000100000000000E5052435F5155414E54494441444508000400000000000950
      52435F4F5244454D04000100000000000850524F5F4E4F4D4501004900000001
      000557494454480200020032000C50524F5F434F4D504F53544F010049000000
      01000557494454480200020001000E50524F5F505245434F435553544F080004
      000000010007535542545950450200490006004D6F6E6579001250524F5F5052
      45434F435553544F434F4D500800040000000100075355425459504502004900
      06004D6F6E6579000B50524F5F554E4944414445010049000000010005574944
      54480200020005000950524F5F4E4956454C04000100000000000F50524F5F4C
      4F43414C495A4143414F01004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'PRC_PRODUTOCOMP'
        DataType = ftInteger
      end
      item
        Name = 'PRC_QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'PRC_ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'PRO_NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRO_COMPOSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRO_PRECOCUSTO'
        DataType = ftCurrency
      end
      item
        Name = 'PRO_PRECOCUSTOCOMP'
        DataType = ftCurrency
      end
      item
        Name = 'PRO_UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRO_NIVEL'
        DataType = ftInteger
      end
      item
        Name = 'PRO_LOCALIZACAO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'PRO_CODIGO'
    MasterFields = 'PRO_CODIGO'
    MasterSource = DS11
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 192
    Top = 368
    object TBComposicaoPRC_ORDEM: TIntegerField
      FieldName = 'PRC_ORDEM'
    end
    object TBComposicaoPRC_PRODUTOCOMP: TIntegerField
      FieldName = 'PRC_PRODUTOCOMP'
    end
    object TBComposicaoPRC_QUANTIDADE: TFloatField
      FieldName = 'PRC_QUANTIDADE'
    end
    object TBComposicaoPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object TBComposicaoPRO_COMPOSTO: TStringField
      FieldName = 'PRO_COMPOSTO'
      Size = 1
    end
    object TBComposicaoPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
    end
    object TBComposicaoPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 50
    end
    object TBComposicaoPRO_PRECOCUSTO: TCurrencyField
      FieldName = 'PRO_PRECOCUSTO'
    end
    object TBComposicaoPRO_PRECOCUSTOCOMP: TCurrencyField
      FieldName = 'PRO_PRECOCUSTOCOMP'
    end
    object TBComposicaoPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Size = 5
    end
    object TBComposicaoPRO_NIVEL: TIntegerField
      FieldName = 'PRO_NIVEL'
    end
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
    ReportOptions.Name = 'Produtos compostos sint'#233'tico'
    ReportOptions.LastChange = 44357.443475740700000000
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = Null
      end
      item
        Name = 'GRU_CODIGO'
        Value = Null
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = Null
      end
      item
        Name = 'MAR_CODIGO'
        Value = Null
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = Null
      end
      item
        Name = 'ALM_CODIGO'
        Value = Null
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = Null
      end
      item
        Name = 'FOR_CODIGO'
        Value = Null
      end
      item
        Name = 'FOR_NOME'
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
        Top = 321.260050000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset10
        DataSetName = 'frxDBDataset10'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 467.503915040000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
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
            '[frxDBDataset10."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370159290000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMIN'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_ESTOQUEMIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 372.283496300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 638.739942680000000000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 599.055110790000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEMAX'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_ESTOQUEMAX"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_DTCADASTRO'
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
            '[frxDBDataset10."PRO_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 435.645950000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
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
            '[frxDBDataset10."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 12500670
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 18.897637800000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset10."FAM_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_FAMILIA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."FAM_DESCRICAO"]')
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
        Top = 359.055350000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade no Grupo:')
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
            'PRO10 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
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
        Height = 52.913390710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795300000000000000
        Top = 260.787570000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset10."GRU_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 469.874150000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."GRU_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Top = 24.566929130000000000
          Width = 372.283496300000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 467.503915040000000000
          Top = 24.566929130000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370159290000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Min.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 638.739942680000000000
          Top = 24.566929130000000000
          Width = 51.023622047244100000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Atual')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 599.055110790000000000
          Top = 24.566929130000000000
          Width = 37.795217010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Max.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 24.566929130000000000
          Width = 60.472397010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 435.645950000000000000
          Top = 24.566929130000000000
          Width = 30.236157010000000000
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
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 408.189240000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade na Fam'#237'lia:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_DTCADASTRO=PRO_DTCADASTRO'
      'PRO_ESTOQUEMIN=PRO_ESTOQUEMIN'
      'PRO_ESTOQUEMAX=PRO_ESTOQUEMAX'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_FAMILIA=PRO_FAMILIA'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'PRO_UNIDADE=PRO_UNIDADE'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY10
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 320
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
    ReportOptions.Name = 'Produtos compostos anal'#237'tico'
    ReportOptions.LastChange = 44631.683473506940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset11b."PRO_COMPOSTO"> = '#39'S'#39' then'
      
        '  Memo61.color:=$00D9EFFF else //$00E1FFF2                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                   '
      '  Memo61.color:=clNone;'
      
        '  //DetailData1.Fill.BackColor:=clSilver else //$00E1FFF2       ' +
        '                                                                ' +
        '                           '
      
        '  //TfrxBrushFill(MasterData1.Fill).BackColor := $00E1FFF2 else ' +
        '//DetailData1.Fill.BackColor:=$00E1FFF2;'
      '  //TfrxBrushFill(MasterData1.Fill).BackColor := clNone;      '
      ''
      '  Memo69.Left:=360 + <frxDBDataset11b."PRO_NIVEL"> * 20;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 120
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset11
        DataSetName = 'frxDBDataset11'
      end
      item
        DataSet = frxDBDataset11b
        DataSetName = 'frxDBDataset11b'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = Null
      end
      item
        Name = 'GRU_CODIGO'
        Value = Null
      end
      item
        Name = 'GRU_DESCRICAO'
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
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 49.889751570000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset11
        DataSetName = 'frxDBDataset11'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 17.007876460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 633.803235040000000000
          Width = 120.944877010000000000
          Height = 17.007876460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 568.819056300000000000
          Height = 17.007876460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220152680000000000
          Top = 18.897650000000000000
          Width = 69.921272050000000000
          Height = 13.228346460000000000
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 71.810987010000000000
          Height = 13.228346460000000000
          DataField = 'PRO_DTCADASTRO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 121.944960000000000000
          Top = 18.897650000000000000
          Width = 45.354277010000000000
          Height = 13.228346460000000000
          DataField = 'PRO_FAMILIA'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_FAMILIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 18.897650000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fam'#237'lia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 121.944960000000000000
          Top = 34.015770000000000000
          Width = 45.354277010000000000
          Height = 13.228346460000000000
          DataField = 'PRO_GRUPO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."PRO_GRUPO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 34.015770000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grupo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 238.110307010000000000
          Height = 13.228346460000000000
          DataField = 'FAM_DESCRICAO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."FAM_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Width = 238.110307010000000000
          Height = 13.228346460000000000
          DataField = 'GRU_DESCRICAO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."GRU_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 18.897650000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 34.015770000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cadastro:')
          ParentFont = False
          VAlign = vaCenter
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
        Top = 498.897960000000000000
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
            'PRO11 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 449.764070000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produtos Compostos:')
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
        Height = 52.913390710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
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
        Height = 14.740157480000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBDataset11b
        DataSetName = 'frxDBDataset11b'
        RowCount = 0
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 1.000000000000000000
          Width = 755.905511810000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          DisplayFormat.FormatStr = '0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 0.755905510000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 113.763786850000000000
          Top = 0.755905510000000000
          Width = 58.582506300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRC_QUANTIDADE'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset11b."PRC_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 172.834672520000000000
          Top = 0.755905510000000000
          Width = 28.346266300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset11b."PRO_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 201.047256300000000000
          Top = 0.755905510000000000
          Width = 54.802976300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTO'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
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
            '[frxDBDataset11b."PRO_PRECOCUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 256.094507720000000000
          Top = 0.755905510000000000
          Width = 54.802976300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOCUSTOCOMP'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
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
            '[frxDBDataset11b."PRO_PRECOCUSTOCOMP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 311.362400000000000000
          Top = 0.755905510000000000
          Width = 17.007676300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_COMPOSTO'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset11b."PRO_COMPOSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 329.039580000000000000
          Top = 0.755905510000000000
          Width = 51.023446300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRC_PRODUTOCOMP'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset11b."PRC_PRODUTOCOMP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 380.952755910000000000
          Top = 0.755905510000000000
          Width = 374.173225910000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11b."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 0.755905510000000000
          Width = 90.708720000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_LOCALIZACAO'
          DataSet = frxDBDataset11b
          DataSetName = 'frxDBDataset11b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11b."PRO_LOCALIZACAO"]')
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
        Top = 366.614410000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Itens:')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 256.094507720000000000
          Top = 3.779530000000000000
          Width = 54.802976300000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
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
            '[SUM(<frxDBDataset11b."PRO_PRECOCUSTOCOMP">,DetailData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 15.118110240000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '#')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 113.763786850000000000
          Width = 58.582506300000000000
          Height = 15.118120000000000000
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
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 172.834672520000000000
          Width = 28.346266300000000000
          Height = 15.118110240000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 201.047256300000000000
          Width = 54.802976300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 256.094507720000000000
          Width = 54.802976300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C. Comp')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 311.362400000000000000
          Width = 17.007676300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 329.039580000000000000
          Width = 51.023446300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 380.952755910000000000
          Width = 374.173225910000000000
          Height = 15.118120000000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
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
      end
    end
  end
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxDBDataset11'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_DTCADASTRO=PRO_DTCADASTRO'
      'PRO_ESTOQUEMIN=PRO_ESTOQUEMIN'
      'PRO_ESTOQUEMAX=PRO_ESTOQUEMAX'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_FAMILIA=PRO_FAMILIA'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'PRO_UNIDADE=PRO_UNIDADE'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY11
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 320
  end
  object frxDBDataset11b: TfrxDBDataset
    UserName = 'frxDBDataset11b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRC_ORDEM=PRC_ORDEM'
      'PRC_PRODUTOCOMP=PRC_PRODUTOCOMP'
      'PRC_QUANTIDADE=PRC_QUANTIDADE'
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_COMPOSTO=PRO_COMPOSTO'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOCUSTO=PRO_PRECOCUSTO'
      'PRO_PRECOCUSTOCOMP=PRO_PRECOCUSTOCOMP'
      'PRO_UNIDADE=PRO_UNIDADE'
      'PRO_NIVEL=PRO_NIVEL')
    DataSet = TBComposicao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 320
  end
  object DS11: TDataSource
    DataSet = QY11
    Left = 120
    Top = 464
  end
  object DSComposicao: TDataSource
    DataSet = TBComposicao
    Left = 192
    Top = 416
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
    ReportOptions.Name = 'Produtos compostos de um produto'
    ReportOptions.LastChange = 44632.416992222220000000
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
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
      end
      item
        DataSet = frxDBDataset11b
        DataSetName = 'frxDBDataset11b'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'USUARIO'
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
        Height = 15.873981570000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
        RowCount = 0
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 0.755905510000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRC_PRODUTO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          DisplayFormat.FormatStr = '0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."PRC_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 69.031540000000000000
          Top = 0.755905510000000000
          Width = 497.007986300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NOMEDOITEM'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."NOMEDOITEM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 0.755905510000000000
          Width = 69.921096300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRC_QUANTIDADE'
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
            '[frxDBDataset12."PRC_QUANTIDADE"]')
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
        Top = 336.378170000000000000
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
            'PRO12 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 106.682436670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."PRC_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 49.133890000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset12."NOMEDOCOMPOSTO"'
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 17.007876460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."PRC_PRODUTOCOMP"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 568.819056300000000000
          Height = 17.007876460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."NOMEDOCOMPOSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
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
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 69.031540000000000000
          Top = 34.015770000000000000
          Width = 497.007986300000000000
          Height = 15.118120000000000000
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
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 34.015770000000000000
          Width = 69.921096300000000000
          Height = 15.118120000000000000
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 336.378170000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'O produto acima est'#225' contido na composi'#231#227'o dos produtos abaixo.')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxDBDataset12'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRC_PRODUTO=PRC_PRODUTO'
      'PRC_PRODUTOCOMP=PRC_PRODUTOCOMP'
      'PRC_QUANTIDADE=PRC_QUANTIDADE'
      'NOMEDOCOMPOSTO=NOMEDOCOMPOSTO'
      'NOMEDOITEM=NOMEDOITEM')
    DataSet = QY12
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 320
  end
  object frxReport13: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Ficha t'#233'cnica'
    ReportOptions.LastChange = 44633.399374479170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  if <FOTO1> <> '#39#39' then Picture2.LoadFromFile(<FOTO1>);'
      '  if <FOTO2> <> '#39#39' then Picture3.LoadFromFile(<FOTO2>);'
      '  if <FOTO3> <> '#39#39' then Picture4.LoadFromFile(<FOTO3>);      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset13
        DataSetName = 'frxDBDataset13'
      end
      item
        DataSet = frxDBDataset11b
        DataSetName = 'frxDBDataset11b'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'USUARIO'
        Value = Null
      end
      item
        Name = 'FOTO1'
        Value = ''
      end
      item
        Name = 'FOTO2'
        Value = ''
      end
      item
        Name = 'FOTO3'
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
        Height = 359.055188900000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset13
        DataSetName = 'frxDBDataset13'
        RowCount = 0
        Stretched = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          DisplayFormat.FormatStr = '0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."PRO_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 34.015770000000000000
          Width = 497.007986300000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Width = 153.070756300000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o:')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 249.448901890000000000
          Height = 249.448818900000000000
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 83.149660000000000000
          Width = 249.448901890000000000
          Height = 249.448818900000000000
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 83.149660000000000000
          Width = 249.448901890000000000
          Height = 249.448818900000000000
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 340.157700000000000000
          Width = 746.456966300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."PRO_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
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
        Top = 563.149970000000000000
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
            'PRO13 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    end
  end
  object frxDBDataset13: TfrxDBDataset
    UserName = 'frxDBDataset13'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_DESCRICAO=PRO_DESCRICAO'
      'PRO_PRECOVENDA=PRO_PRECOVENDA')
    DataSet = QY13
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 320
  end
  object frxReport14: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Etiqueta Pimaco 101,6 x 33,9mm - 2 colunas'
    ReportOptions.LastChange = 44633.399374479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <BARTYPE> = '#39'2 de 5 Industrial'#39'  then BarCode1.BarType:=bcC' +
        'ode_2_5_industrial;'
      
        '  if <BARTYPE> = '#39'2 de 5 Intercalado'#39' then BarCode1.BarType:=bcC' +
        'ode_2_5_interleaved;'
      
        '  if <BARTYPE> = '#39'2 de 5 Matrix'#39'      then BarCode1.BarType:=bcC' +
        'ode_2_5_matrix;      '
      
        '  if <BARTYPE> = '#39'128A'#39'               then BarCode1.BarType:=bcC' +
        'ode128A;  '
      
        '  if <BARTYPE> = '#39'128B'#39'               then BarCode1.BarType:=bcC' +
        'ode128B;  '
      
        '  if <BARTYPE> = '#39'128C'#39'               then BarCode1.BarType:=bcC' +
        'ode128C;  '
      
        '  if <BARTYPE> = '#39'39'#39'                 then BarCode1.BarType:=bcC' +
        'ode39;  '
      
        '  if <BARTYPE> = '#39'39 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode39Extended;  '
      
        '  if <BARTYPE> = '#39'93'#39'                 then BarCode1.BarType:=bcC' +
        'ode93;  '
      
        '  if <BARTYPE> = '#39'93 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode93Extended;  '
      
        '  if <BARTYPE> = '#39'CodaBar'#39'            then BarCode1.BarType:=bcC' +
        'odeCodabar;  '
      
        '  if <BARTYPE> = '#39'EAN 128A'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128A;  '
      
        '  if <BARTYPE> = '#39'EAN 128B'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128B;  '
      
        '  if <BARTYPE> = '#39'EAN 128C'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128C;  '
      
        '  if <BARTYPE> = '#39'EAN 13'#39'             then BarCode1.BarType:=bcC' +
        'odeEAN13;  '
      
        '  if <BARTYPE> = '#39'EAN 8'#39'              then BarCode1.BarType:=bcC' +
        'odeEAN8;  '
      
        '  if <BARTYPE> = '#39'MSI'#39'                then BarCode1.BarType:=bcC' +
        'odeMSI;  '
      
        '  if <BARTYPE> = '#39'PostNet'#39'            then BarCode1.BarType:=bcC' +
        'odePostNet;  '
      
        '  if <BARTYPE> = '#39'UPC A'#39'              then BarCode1.BarType:=bcC' +
        'odeUPC_A;  '
      
        '  if <BARTYPE> = '#39'UPC E0'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E0;  '
      
        '  if <BARTYPE> = '#39'UPC E1'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E1;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP2'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp2;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP5'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp5;'
      ''
      '  if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '  begin'
      '    Memo4.Visible:=False;'
      
        '    Memo5.Visible:=False;                                       ' +
        '           '
      '  end;'
      ''
      '  if <CAMPOCODIGO> = '#39'SISTEMA'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGO'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGO'#39';'
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'FABRICANTE'#39' then'
      '  begin                        '
      '    BarCode1.DataField:='#39'PRO_CODIGOFAB'#39';'
      
        '    Memo6.DataField:='#39'PRO_CODIGO'#39'; //ja tem o c'#243'digo fabricante ' +
        'abaixo.                                                         ' +
        '                           '
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'BARRAS'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '  end;                  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset14."PRO_NOME"> = '#39#39' then'
      '  begin'
      '    Memo1.Visible:=False;'
      '    Memo2.Visible:=False;'
      '    Memo3.Visible:=False;'
      '    Memo4.Visible:=False;'
      '    Memo5.Visible:=False;'
      '    Memo6.Visible:=False;'
      '    Memo54.Visible:=False;'
      '    Memo55.Visible:=False;'
      '    Memo57.Visible:=False;        '
      '    BarCode1.Visible:=False;          '
      '  end else'
      '  begin'
      '    Memo1.Visible:=True;'
      '    Memo2.Visible:=True;'
      '    Memo3.Visible:=True;'
      '    Memo4.Visible:=True;'
      '    Memo5.Visible:=True;'
      '    Memo6.Visible:=True;'
      '    Memo54.Visible:=True;'
      '    Memo55.Visible:=True;'
      '    Memo57.Visible:=True;        '
      '    BarCode1.Visible:=True;'
      '    if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '    begin'
      '      Memo4.Visible:=False;'
      '      Memo5.Visible:=False;'
      '    end;  '
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.  ')
    Left = 408
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset14
        DataSetName = 'frxDBDataset14'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
        Value = Null
      end
      item
        Name = 'BARTYPE'
        Value = ''
      end
      item
        Name = 'CAMPOCODIGO'
        Value = ''
      end
      item
        Name = 'MOSTRARPRECO'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 21.000000000000000000
      BottomMargin = 21.000000000000000000
      Columns = 1
      ColumnWidth = 201.000000000000000000
      ColumnPositions.Strings = (
        '0')
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
        Frame.Width = 0.500000000000000000
        Height = 128.125984250000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 2
        ColumnWidth = 379.842519685039400000
        ColumnGap = 18.897637795275600000
        DataSet = frxDBDataset14
        DataSetName = 'frxDBDataset14'
        RowCount = 0
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 102.047310000000000000
          Width = 115.275456300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOFAB'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_CODIGOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 360.944906300000000000
          Height = 32.125994020000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_NOME"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 86.929190000000000000
          Width = 103.936866300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_LOCALIZACAO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 86.929190000000000000
          Width = 58.582506300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 58.582506300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#211'D. FAB:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 86.929190000000000000
          Width = 51.023446300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'LOCAL:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 102.047310000000000000
          Width = 51.023446300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 102.047310000000000000
          Width = 103.936866300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 45.354360000000000000
          Width = 100.000000000000000000
          Height = 37.795300000000000000
          BarType = bcCode_2_5_interleaved
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '6546545655'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 86.929190000000000000
          Width = 115.275456300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset14: TfrxDBDataset
    UserName = 'frxDBDataset14'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_CODIGOBARRAS=PRO_CODIGOBARRAS'
      'PRO_CODIGOFAB=PRO_CODIGOFAB'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_PRECO=PRO_PRECO'
      'PRO_QUANTIDADE=PRO_QUANTIDADE')
    DataSet = TBProdutosPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 320
  end
  object TBProdutosPrint: TClientDataSet
    PersistDataPacket.Data = {
      F20000009619E0BD010000001800000007000000000003000000F2000A50524F
      5F434F4449474F04000100000000000850524F5F4E4F4D450100490000000100
      0557494454480200020096001050524F5F434F4449474F424152524153010049
      0000000100055749445448020002003C000D50524F5F434F4449474F46414201
      004900000001000557494454480200020014000E50524F5F5155414E54494441
      444504000100000000000950524F5F505245434F080004000000010007535542
      545950450200490006004D6F6E6579000F50524F5F4C4F43414C495A4143414F
      01004900000001000557494454480200020014000000}
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
        Size = 150
      end
      item
        Name = 'PRO_CODIGOBARRAS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PRO_CODIGOFAB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRO_QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'PRO_PRECO'
        DataType = ftCurrency
      end
      item
        Name = 'PRO_LOCALIZACAO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 408
    Top = 368
    object TBProdutosPrintPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object TBProdutosPrintPRO_NOME: TStringField
      DisplayWidth = 150
      FieldName = 'PRO_NOME'
      Size = 150
    end
    object TBProdutosPrintPRO_CODIGOBARRAS: TStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Size = 60
    end
    object TBProdutosPrintPRO_CODIGOFAB: TStringField
      FieldName = 'PRO_CODIGOFAB'
    end
    object TBProdutosPrintPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
    end
    object TBProdutosPrintPRO_PRECO: TCurrencyField
      FieldName = 'PRO_PRECO'
    end
    object TBProdutosPrintPRO_QUANTIDADE: TIntegerField
      FieldName = 'PRO_QUANTIDADE'
    end
  end
  object DSProdutosPrint: TDataSource
    DataSet = TBProdutosPrint
    Left = 408
    Top = 416
  end
  object frxReport15: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Etiqueta Pimaco 25,4 x 66,7mm - 3 colunas'
    ReportOptions.LastChange = 44633.399374479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <BARTYPE> = '#39'2 de 5 Industrial'#39'  then BarCode1.BarType:=bcC' +
        'ode_2_5_industrial;'
      
        '  if <BARTYPE> = '#39'2 de 5 Intercalado'#39' then BarCode1.BarType:=bcC' +
        'ode_2_5_interleaved;'
      
        '  if <BARTYPE> = '#39'2 de 5 Matrix'#39'      then BarCode1.BarType:=bcC' +
        'ode_2_5_matrix;      '
      
        '  if <BARTYPE> = '#39'128A'#39'               then BarCode1.BarType:=bcC' +
        'ode128A;  '
      
        '  if <BARTYPE> = '#39'128B'#39'               then BarCode1.BarType:=bcC' +
        'ode128B;  '
      
        '  if <BARTYPE> = '#39'128C'#39'               then BarCode1.BarType:=bcC' +
        'ode128C;  '
      
        '  if <BARTYPE> = '#39'39'#39'                 then BarCode1.BarType:=bcC' +
        'ode39;  '
      
        '  if <BARTYPE> = '#39'39 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode39Extended;  '
      
        '  if <BARTYPE> = '#39'93'#39'                 then BarCode1.BarType:=bcC' +
        'ode93;  '
      
        '  if <BARTYPE> = '#39'93 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode93Extended;  '
      
        '  if <BARTYPE> = '#39'CodaBar'#39'            then BarCode1.BarType:=bcC' +
        'odeCodabar;  '
      
        '  if <BARTYPE> = '#39'EAN 128A'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128A;  '
      
        '  if <BARTYPE> = '#39'EAN 128B'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128B;  '
      
        '  if <BARTYPE> = '#39'EAN 128C'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128C;  '
      
        '  if <BARTYPE> = '#39'EAN 13'#39'             then BarCode1.BarType:=bcC' +
        'odeEAN13;  '
      
        '  if <BARTYPE> = '#39'EAN 8'#39'              then BarCode1.BarType:=bcC' +
        'odeEAN8;  '
      
        '  if <BARTYPE> = '#39'MSI'#39'                then BarCode1.BarType:=bcC' +
        'odeMSI;  '
      
        '  if <BARTYPE> = '#39'PostNet'#39'            then BarCode1.BarType:=bcC' +
        'odePostNet;  '
      
        '  if <BARTYPE> = '#39'UPC A'#39'              then BarCode1.BarType:=bcC' +
        'odeUPC_A;  '
      
        '  if <BARTYPE> = '#39'UPC E0'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E0;  '
      
        '  if <BARTYPE> = '#39'UPC E1'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E1;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP2'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp2;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP5'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp5;'
      ''
      '  if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '  Memo5.Visible:=False;'
      ''
      '  if <CAMPOCODIGO> = '#39'SISTEMA'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGO'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGO'#39';'
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'FABRICANTE'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGOFAB'#39';'
      
        '    Memo6.DataField:='#39'PRO_CODIGO'#39';  //j'#225' tem o c'#243'digo fabricante' +
        ' abaixo.                                                        ' +
        '                                       '
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'BARRAS'#39' then'
      '  begin                    '
      '    BarCode1.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '  end;                            '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset14."PRO_NOME"> = '#39#39' then'
      '  begin'
      '    Memo1.Visible:=False;'
      '    Memo2.Visible:=False;'
      '    Memo3.Visible:=False;'
      '    Memo5.Visible:=False;'
      '    Memo6.Visible:=False;'
      '    Memo54.Visible:=False;'
      '    Memo55.Visible:=False;'
      '    Memo57.Visible:=False;        '
      '    BarCode1.Visible:=False;          '
      '  end else'
      '  begin'
      '    Memo1.Visible:=True;'
      '    Memo2.Visible:=True;'
      '    Memo3.Visible:=True;'
      '    Memo5.Visible:=True;'
      '    Memo6.Visible:=True;'
      '    Memo54.Visible:=True;'
      '    Memo55.Visible:=True;'
      '    Memo57.Visible:=True;        '
      '    BarCode1.Visible:=True;'
      '    if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '    Memo5.Visible:=False;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.  ')
    Left = 480
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset15
        DataSetName = 'frxDBDataset14'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
        Value = Null
      end
      item
        Name = 'BARTYPE'
        Value = ''
      end
      item
        Name = 'CAMPOCODIGO'
        Value = ''
      end
      item
        Name = 'MOSTRARPRECO'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 21.000000000000000000
      BottomMargin = 21.000000000000000000
      Columns = 1
      ColumnWidth = 201.000000000000000000
      ColumnPositions.Strings = (
        '0')
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
        Frame.Width = 0.500000000000000000
        Height = 96.000000000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 3
        ColumnWidth = 252.094488188976400000
        ColumnGap = 11.338582677165350000
        DataSet = frxDBDataset15
        DataSetName = 'frxDBDataset14'
        RowCount = 0
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 4.559060000000000000
          Width = 236.220416300000000000
          Height = 32.125994020000000000
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_NOME"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 62.472480000000000000
          Width = 69.921096300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_LOCALIZACAO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 62.472480000000000000
          Width = 51.023446300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 62.472480000000000000
          Width = 39.684856300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'LOCAL:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 37.795300000000000000
          Width = 100.000000000000000000
          Height = 22.677180000000000000
          BarType = bcCode_2_5_interleaved
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '6546545655'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 62.472480000000000000
          Width = 62.362036300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 77.590600000000000000
          Width = 88.818746300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOFAB'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_CODIGOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 77.590600000000000000
          Width = 51.023446300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#211'D. FAB:')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 77.590600000000000000
          Width = 77.480156300000000000
          Height = 14.362204720000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset14'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset15: TfrxDBDataset
    UserName = 'frxDBDataset14'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_CODIGOBARRAS=PRO_CODIGOBARRAS'
      'PRO_CODIGOFAB=PRO_CODIGOFAB'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_PRECO=PRO_PRECO'
      'PRO_QUANTIDADE=PRO_QUANTIDADE')
    DataSet = TBProdutosPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 320
  end
  object frxReport16: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Etiqueta Pimaco 65 - 5 colunas'
    ReportOptions.LastChange = 44633.399374479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <BARTYPE> = '#39'2 de 5 Industrial'#39'  then BarCode1.BarType:=bcC' +
        'ode_2_5_industrial;'
      
        '  if <BARTYPE> = '#39'2 de 5 Intercalado'#39' then BarCode1.BarType:=bcC' +
        'ode_2_5_interleaved;'
      
        '  if <BARTYPE> = '#39'2 de 5 Matrix'#39'      then BarCode1.BarType:=bcC' +
        'ode_2_5_matrix;      '
      
        '  if <BARTYPE> = '#39'128A'#39'               then BarCode1.BarType:=bcC' +
        'ode128A;  '
      
        '  if <BARTYPE> = '#39'128B'#39'               then BarCode1.BarType:=bcC' +
        'ode128B;  '
      
        '  if <BARTYPE> = '#39'128C'#39'               then BarCode1.BarType:=bcC' +
        'ode128C;  '
      
        '  if <BARTYPE> = '#39'39'#39'                 then BarCode1.BarType:=bcC' +
        'ode39;  '
      
        '  if <BARTYPE> = '#39'39 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode39Extended;  '
      
        '  if <BARTYPE> = '#39'93'#39'                 then BarCode1.BarType:=bcC' +
        'ode93;  '
      
        '  if <BARTYPE> = '#39'93 Extended'#39'        then BarCode1.BarType:=bcC' +
        'ode93Extended;  '
      
        '  if <BARTYPE> = '#39'CodaBar'#39'            then BarCode1.BarType:=bcC' +
        'odeCodabar;  '
      
        '  if <BARTYPE> = '#39'EAN 128A'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128A;  '
      
        '  if <BARTYPE> = '#39'EAN 128B'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128B;  '
      
        '  if <BARTYPE> = '#39'EAN 128C'#39'           then BarCode1.BarType:=bcC' +
        'odeEAN128C;  '
      
        '  if <BARTYPE> = '#39'EAN 13'#39'             then BarCode1.BarType:=bcC' +
        'odeEAN13;  '
      
        '  if <BARTYPE> = '#39'EAN 8'#39'              then BarCode1.BarType:=bcC' +
        'odeEAN8;  '
      
        '  if <BARTYPE> = '#39'MSI'#39'                then BarCode1.BarType:=bcC' +
        'odeMSI;  '
      
        '  if <BARTYPE> = '#39'PostNet'#39'            then BarCode1.BarType:=bcC' +
        'odePostNet;  '
      
        '  if <BARTYPE> = '#39'UPC A'#39'              then BarCode1.BarType:=bcC' +
        'odeUPC_A;  '
      
        '  if <BARTYPE> = '#39'UPC E0'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E0;  '
      
        '  if <BARTYPE> = '#39'UPC E1'#39'             then BarCode1.BarType:=bcC' +
        'odeUPC_E1;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP2'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp2;  '
      
        '  if <BARTYPE> = '#39'UPC SUPP5'#39'          then BarCode1.BarType:=bcC' +
        'odeUPC_Supp5;'
      ''
      '  if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '  Memo5.Visible:=False;'
      ''
      '  if <CAMPOCODIGO> = '#39'SISTEMA'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGO'#39';'
      
        '    Memo6.DataField:='#39'PRO_CODIGO'#39';                              ' +
        '                                    '
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'FABRICANTE'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGOFAB'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGOFAB'#39';'
      '  end;                  '
      ''
      '  if <CAMPOCODIGO> = '#39'BARRAS'#39' then'
      '  begin              '
      '    BarCode1.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '    Memo6.DataField:='#39'PRO_CODIGOBARRAS'#39';'
      '  end;                    '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset14."PRO_NOME"> = '#39#39' then'
      '  begin'
      '    Memo5.Visible:=False;'
      '    Memo6.Visible:=False;'
      '    Memo55.Visible:=False;'
      '    BarCode1.Visible:=False;          '
      '  end else'
      '  begin'
      '    Memo5.Visible:=True;'
      '    Memo6.Visible:=True;'
      '    Memo55.Visible:=True;'
      '    BarCode1.Visible:=True;'
      '    if <MOSTRARPRECO> = '#39'NAO'#39' then'
      '    Memo5.Visible:=False;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.  ')
    Left = 552
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset16
        DataSetName = 'frxDBDataset14'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
        Value = Null
      end
      item
        Name = 'BARTYPE'
        Value = ''
      end
      item
        Name = 'CAMPOCODIGO'
        Value = ''
      end
      item
        Name = 'MOSTRARPRECO'
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
      TopMargin = 11.300000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 1
      ColumnWidth = 201.000000000000000000
      ColumnPositions.Strings = (
        '0')
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
        Frame.Width = 0.500000000000000000
        Height = 79.370078740000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 5
        ColumnWidth = 143.622047244094500000
        ColumnGap = 9.448818897637795000
        DataSet = frxDBDataset16
        DataSetName = 'frxDBDataset14'
        RowCount = 0
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 5.559060000000000000
          Width = 134.173106300000000000
          Height = 20.787404020000000000
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_NOME"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 61.472480000000000000
          Width = 77.480156300000000000
          Height = 12.472440940000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset14'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.236240000000000000
          Width = 101.000000000000000000
          Height = 22.677180000000000000
          BarType = bcCode_2_5_interleaved
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset14'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '6546545655'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 50.133890000000000000
          Width = 126.614046300000000000
          Height = 12.472440940000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset14."PRO_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset16: TfrxDBDataset
    UserName = 'frxDBDataset14'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_CODIGOBARRAS=PRO_CODIGOBARRAS'
      'PRO_CODIGOFAB=PRO_CODIGOFAB'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_PRECO=PRO_PRECO'
      'PRO_QUANTIDADE=PRO_QUANTIDADE')
    DataSet = TBProdutosPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 320
  end
  object frxReport17: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Produtos por unidade de medida'
    ReportOptions.LastChange = 44357.443475740700000000
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
    Left = 624
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset17
        DataSetName = 'frxDBDataset17'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
      end
      item
        Name = 'UNI_CODIGO'
        Value = ''
      end
      item
        Name = 'UNI_DESCRICAO'
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
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset17
        DataSetName = 'frxDBDataset17'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 64.251865980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOFAB'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_CODIGOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 214.031359370000000000
          Width = 23.810991890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_TIPO'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 239.866029450000000000
          Width = 462.992255350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 113.362068030000000000
          Width = 99.401574800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGOBARRAS'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_CODIGOBARRAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 703.992580000000000000
          Width = 50.267701890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset17."GRU_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset17."PRO_GRUPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset17
          DataSetName = 'frxDBDataset17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset17."GRU_DESCRICAO"]')
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 24.566929130000000000
          Width = 64.251865980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Fab.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 214.031359370000000000
          Top = 24.566929130000000000
          Width = 23.810991890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P/S')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 113.362068030000000000
          Top = 24.566929130000000000
          Width = 99.401574800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Barras')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 239.866029450000000000
          Top = 24.566929130000000000
          Width = 462.992255350000000000
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
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 703.992580000000000000
          Top = 24.566929130000000000
          Width = 50.267701890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
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
        Top = 332.598640000000000000
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
        Top = 468.661720000000000000
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
            'PRO17 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 419.527830000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031510710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 351.874215910000000000
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
          Left = 420.015948190000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 574.598752280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset17: TfrxDBDataset
    UserName = 'frxDBDataset17'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_CODIGOFAB=PRO_CODIGOFAB'
      'PRO_CODIGOBARRAS=PRO_CODIGOBARRAS'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_TIPO=PRO_TIPO'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY17
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 320
  end
  object frxReport18: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Tabela de Pre'#231'os'
    ReportOptions.LastChange = 44357.443475740700000000
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
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset18
        DataSetName = 'frxDBDataset18'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'TIPO'
        Value = Null
      end
      item
        Name = 'FAM_CODIGO'
        Value = Null
      end
      item
        Name = 'FAM_DESCRICAO'
        Value = ''
      end
      item
        Name = 'GRU_CODIGO'
        Value = ''
      end
      item
        Name = 'GRU_DESCRICAO'
        Value = ''
      end
      item
        Name = 'MAR_CODIGO'
        Value = ''
      end
      item
        Name = 'MAR_DESCRICAO'
        Value = ''
      end
      item
        Name = 'ALM_CODIGO'
        Value = ''
      end
      item
        Name = 'ALM_DESCRICAO'
        Value = ''
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
        Frame.Width = 0.500000000000000000
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
        Top = 332.598640000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset18
        DataSetName = 'frxDBDataset18'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 434.740179450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECOVENDA'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECOVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 620.157619450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO2'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 712.866339450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO3'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 338.267726300000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 898.283779450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO5'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO5"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 805.575059450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO4'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 990.992499450000000000
          Width = 92.598425200000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO6'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO6"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 527.448899450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_PRECO1'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
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
            '[frxDBDataset18."PRO_PRECO1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 402.630180000000000000
          Width = 30.236157010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset18."PRO_UNIDADE"]')
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
        Top = 457.323130000000000000
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
            'PRO18 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 408.189240000000000000
        Width = 1084.725110000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
          Height = 13.228346460000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 139.842585590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Total:')
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
        Height = 128.503990710000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 194.328076670000000000
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
          Left = 270.517060370000000000
          Width = 65.601113330000000000
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
          Left = 404.247043800000000000
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
          Left = 473.506803340000000000
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
          Left = 42.000000000000000000
          Top = 15.118120000000000000
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
            'Fam'#237'lia:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 15.118120000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FAM_DESCRICAO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
            'Grupo:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_CODIGO]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRU_DESCRICAO]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
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
            'Tipo:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 646.409822280000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPO]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Marca:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MAR_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 76.939703330000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 30.236240000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 30.236240000000000000
          Width = 246.577469310000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_CODIGO]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 507.506803340000000000
          Top = 45.354360000000000000
          Width = 246.577469310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UNI_DESCRICAO]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 71.811070000000000000
          Width = 1039.370078740157000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 75.590600000000000000
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
            'Tabela 01:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 90.708720000000000000
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
            'Tabela 02:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 105.826840000000000000
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
            'Tabela 03:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 75.590600000000000000
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
            'Tabela 04:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 90.708720000000000000
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
            'Tabela 05:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 105.826840000000000000
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
            'Tabela 06:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 75.590600000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA1]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 90.708720000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA2]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 105.826840000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA3]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 75.590600000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA4]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 90.708720000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA5]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 473.506803340000000000
          Top = 105.826840000000000000
          Width = 280.441105980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TABELA6]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Fill.BackColor = 15658734
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Height = 13.228346460000000000
        Top = 257.008040000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 62.448648030000000000
          Width = 338.267726300000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 434.740179450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 527.448899450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 01')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 712.866339450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 03'
            '')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 620.157619450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 02'
            '')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 805.575059450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 04')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 898.283779450000000000
          Width = 90.708637010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 05'
            '')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 402.630180000000000000
          Width = 30.236157010000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 990.992499450000000000
          Width = 92.598425200000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o 06')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset18: TfrxDBDataset
    UserName = 'frxDBDataset18'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_GRUPO=PRO_GRUPO'
      'PRO_NOME=PRO_NOME'
      'PRO_PRECOVENDA=PRO_PRECOVENDA'
      'PRO_PRECO1=PRO_PRECO1'
      'PRO_PRECO2=PRO_PRECO2'
      'PRO_PRECO3=PRO_PRECO3'
      'PRO_PRECO4=PRO_PRECO4'
      'PRO_PRECO5=PRO_PRECO5'
      'PRO_PRECO6=PRO_PRECO6'
      'PRO_UNIDADE=PRO_UNIDADE'
      'GRU_DESCRICAO=GRU_DESCRICAO')
    DataSet = QY18
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 112
  end
  object QY17: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR17
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_CODIGOFAB,'
      'PRO_CODIGOBARRAS,'
      'PRO_ESTOQUEATUAL,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_TIPO,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join PRODUTOSFOTOS on PRO_CODIGO=PRF_PRODUTO'
      'where PRF_PRODUTO is null'
      'order by PRO_NOME'
      '')
    Left = 624
    Top = 368
  end
  object TR17: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 416
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_DTCADASTRO,'
      'PRO_ESTOQUEATUAL,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEMIN,'
      'PRO_FAMILIA,'
      'PRO_FORNECEDOR,'
      'PRO_GRUPO,'
      'PRO_LOCALIZACAO,'
      'PRO_MARCA,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_UNIDADE,'
      'FAM_DESCRICAO,'
      'FOR_NOME,'
      'GRU_DESCRICAO,'
      'MAR_DESCRICAO '
      'from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO'
      'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME'
      '')
    Left = 48
    Top = 160
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
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
      'PRO_CODIGO,'
      'PRO_CODIGOFAB,'
      'PRO_CODIGOBARRAS,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_UNIDADE,'
      'PRO_TIPO,'
      'PRO_ESTOQUEATUAL,'
      'PRO_PRECOVENDA,'
      'UNI_DESCRICAO,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join UNIDADES on PRO_UNIDADE=UNI_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'order by PRO_MARCA, PRO_DESCRICAO'
      '')
    Left = 120
    Top = 160
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_PRECO1,'
      'PRO_PRECO2,'
      'PRO_PRECO3,'
      'PRO_PRECO4,'
      'PRO_PRECO5,'
      'PRO_PRECO6,'
      'PRO_UNIDADE,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'order by GRU_DESCRICAO, PRO_NOME'
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
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'FOR_NOME,'
      'GRU_DESCRICAO,'
      'PCO_FORNECEDOR,'
      'PCO_CODIGOFORNECEDOR'
      'from PRODUTOSCODIGOS'
      'left join PRODUTOS on PCO_PRODUTO=PRO_CODIGO'
      'left join FORNECEDORES on PCO_FORNECEDOR=FOR_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'order by GRU_DESCRICAO, PRO_NOME, FOR_NOME'
      '')
    Left = 264
    Top = 160
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
      'A.PRO_CODIGO,'
      'A.PRO_CONVERSAO,'
      'A.PRO_NOME,'
      'A.PRO_PRODUTOREAL,'
      'B.PRO_NOME as PRO_NOMEREAL'
      'from PRODUTOS A'
      'left join PRODUTOS B on A.PRO_PRODUTOREAL=B.PRO_CODIGO'
      'where A.PRO_PRODUTOREAL<>0'
      'order by A.PRO_NOME'
      '')
    Left = 336
    Top = 160
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
      'PRQ_PRODUTO, '
      'sum(PRQ_QUANTIDADE) as TOTALALMOXARIFADOS,'
      'PRO_ESTOQUEATUAL,'
      'PRO_NOME '
      'from PRODUTOSQTDE'
      'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO'
      'group by PRQ_PRODUTO, PRO_ESTOQUEATUAL, PRO_NOME'
      'having sum(PRQ_QUANTIDADE)<>PRO_ESTOQUEATUAL'
      'order by PRO_NOME'
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
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOCUSTO,'
      'PRO_PRECOCUSTOCOMP,'
      'PRO_PRECOVENDA,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'where PRO_COMPOSTO='#39'S'#39' and (PRO_PRECOCUSTO<PRO_PRECOCUSTOCOMP)'
      'order by GRU_DESCRICAO, PRO_NOME'
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
      'PRO_CODIGO,'
      'PRO_ESTOQUEATUAL,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEMIN,'
      'PRO_FAMILIA,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOCUSTO,'
      'PRO_UNIDADE,'
      'GRU_DESCRICAO,'
      'FAM_DESCRICAO'
      'from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'where PRO_DTCADASTRO between :datainicial and :datafinal'
      'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME'
      '')
    Left = 552
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
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 208
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_NOME,'
      'PRO_GRUPO,'
      'PRO_FAMILIA,'
      'PRO_PRECOCUSTO,'
      'PRO_ESTOQUEATUAL,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEMIN,'
      'PRO_UNIDADE,'
      'GRU_DESCRICAO,'
      'FAM_DESCRICAO,'
      'PRQ_QUANTIDADE'
      'from PRODUTOSQTDE'
      'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'where PRQ_ALMOXARIFADO=:almoxarifado'
      'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME'
      '')
    Left = 624
    Top = 160
    ParamData = <
      item
        Name = 'ALMOXARIFADO'
        ParamType = ptInput
      end>
  end
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 208
  end
  object QY18: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR18
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_PRECO1,'
      'PRO_PRECO2,'
      'PRO_PRECO3,'
      'PRO_PRECO4,'
      'PRO_PRECO5,'
      'PRO_PRECO6,'
      'PRO_UNIDADE,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'order by GRU_DESCRICAO, PRO_NOME'
      '')
    Left = 696
    Top = 160
  end
  object TR18: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 696
    Top = 208
  end
  object QY10: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR10
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_DTCADASTRO,'
      'PRO_ESTOQUEMIN,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEATUAL,'
      'PRO_FAMILIA,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_UNIDADE,'
      'FAM_DESCRICAO,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      
        'where PRO_COMPOSTO='#39'S'#39' and PRO_DTCADASTRO between :datainicial a' +
        'nd :datafinal'
      'order by PRO_NOME'
      '')
    Left = 48
    Top = 368
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
  object TR10: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 416
  end
  object QY11: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR11
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_DTCADASTRO,'
      'PRO_ESTOQUEMIN,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEATUAL,'
      'PRO_FAMILIA,'
      'PRO_GRUPO,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_UNIDADE,'
      'FAM_DESCRICAO,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      
        'where PRO_COMPOSTO='#39'S'#39' and PRO_DTCADASTRO between :datainicial a' +
        'nd :datafinal'
      'order by PRO_NOME'
      '')
    Left = 120
    Top = 368
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object TR11: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 416
  end
  object QY12: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR12
    SQL.Strings = (
      'select '
      'A.PRC_PRODUTO,'
      'A.PRC_PRODUTOCOMP,'
      'A.PRC_QUANTIDADE,'
      'B.PRO_NOME as NOMEDOCOMPOSTO,'
      'C.PRO_NOME as NOMEDOITEM'
      'from PRODUTOSCOMP A'
      'left join PRODUTOS B on A.PRC_PRODUTOCOMP=B.PRO_CODIGO'
      'left join PRODUTOS C on A.PRC_PRODUTO=C.PRO_CODIGO'
      'where PRC_PRODUTOCOMP=:codigo'
      'order by A.PRC_PRODUTOCOMP, B.PRO_NOME, C.PRO_NOME'
      '')
    Left = 264
    Top = 368
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR12: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 416
  end
  object QY13: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR13
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_NOME,'
      'PRO_DESCRICAO,'
      'PRO_PRECOVENDA'
      'from PRODUTOS'
      'where PRO_CODIGO=:codigo'
      '')
    Left = 336
    Top = 368
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR13: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 416
  end
end
