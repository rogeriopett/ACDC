object FormMdfeFast: TFormMdfeFast
  Left = 0
  Top = 0
  Caption = 'FormMdfeFast'
  ClientHeight = 455
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 280
    Width = 491
    Height = 13
    Caption = 
      'Terminar de fazer a conversao dos FormMDFeQ* para nao precisar m' +
      'ais doquickreport e qrasbarcode.'
  end
  object Memo1: TMemo
    Left = 380
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - danfe'
      '02 - nfe por status'
      '03 - nfe ordenado por c'#243'digo'
      '04 - nfe com itens'
      '05 - nfe por cfop'
      '06 - recibos de nfe'
      '07 - verifica'#231#227'o de numera'#231#227'o'
      '08 - inutiliza'#231#245'es no per'#237'odo'
      '09 - nfe por cfop itens')
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
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'DANFE'
    ReportOptions.LastChange = 44540.562890659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while (Engine.FreeSpace-145) > 10 do '
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
      '    Memo8.Color:=clNone;'
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
      '    Memo226.Color:=clNone;          '
      '  end else'
      '  Overlay1.Visible:=False;          '
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'var DescricaoProduto: String;'
      'begin'
      
        '  DescricaoProduto:=<frxDBDataset1a."NFI_DESCRICAO">+'#39' '#39'+<frxDBD' +
        'ataset1a."NFI_COMPLEMENTO">;  '
      '  if <frxDBDataset1a."NFI_LOTE"> <> '#39#39' then'
      
        '  DescricaoProduto:=DescricaoProduto+'#39' Lote: '#39'+<frxDBDataset1a."' +
        'NFI_LOTE">;'
      '  if <frxDBDataset1a."NFI_QUANTIDADETROCA"> > 0 then'
      
        '  DescricaoProduto:=DescricaoProduto+'#39' - Abatimento Ref. Troca: ' +
        #39'+FloatToStr(<frxDBDataset1a."NFI_DESCVALOR">)+'#39' Qtde: '#39'+FloatTo' +
        'Str(<frxDBDataset1a."NFI_QUANTIDADETROCA">);      '
      '  Set('#39'DESCRICAOPRODUTO'#39','#39#39#39#39' + DescricaoProduto+ '#39#39#39#39');    '
      ''
      '  if <EMP_ENQUADRAMENTO> = '#39'1 - SIMPLES NACIONAL'#39' then'
      
        '  Set('#39'CSTICMS'#39','#39#39#39#39' + Copy(<frxDBDataset1a."NFI_ORIGEM">,1,1) +' +
        ' IntToStr(<frxDBDataset1a."NFI_CSTICMS">) + '#39#39#39#39') else'
      '  if <frxDBDataset1a."NFI_CSTICMS"> = 0 then'
      '  Set('#39'CSTICMS'#39','#39#39#39#39' + '#39'00'#39' + '#39#39#39#39') else                 '
      
        '  Set('#39'CSTICMS'#39','#39#39#39#39' + IntToStr(<frxDBDataset1a."NFI_CSTICMS">) ' +
        '+ '#39#39#39#39');'
      ''
      
        '  //seleciona o codigo do firenet ou o c'#243'digo do fabricante/clie' +
        'nte.'
      
        '  Set('#39'CODIGOPRODUTO'#39','#39#39#39#39' + IntToStr(<frxDBDataset1a."NFI_PRODU' +
        'TO">) + '#39#39#39#39');'
      
        '  if (<USARCODIGOFAB> = '#39'S'#39') and (<frxDBDataset1a."NFI_CODIGOFAB' +
        '"> <> '#39#39') then'
      
        '  Set('#39'CODIGOPRODUTO'#39','#39#39#39#39' + <frxDBDataset1a."NFI_CODIGOFAB"> + ' +
        #39#39#39#39');    '
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
        Name = 'VECTO_A'
        Value = ''
      end
      item
        Name = 'VECTO_B'
        Value = ''
      end
      item
        Name = 'VECTO_C'
        Value = ''
      end
      item
        Name = 'VECTO_D'
        Value = ''
      end
      item
        Name = 'VECTO_E'
        Value = ''
      end
      item
        Name = 'VECTO_F'
        Value = ''
      end
      item
        Name = 'VECTO_G'
        Value = ''
      end
      item
        Name = 'VECTO_H'
        Value = ''
      end
      item
        Name = 'VECTO_I'
        Value = ''
      end
      item
        Name = 'VECTO_J'
        Value = ''
      end
      item
        Name = 'VECTO_K'
        Value = ''
      end
      item
        Name = 'VECTO_L'
        Value = ''
      end
      item
        Name = 'VALOR_A'
        Value = ''
      end
      item
        Name = 'VALOR_B'
        Value = ''
      end
      item
        Name = 'VALOR_C'
        Value = ''
      end
      item
        Name = 'VALOR_D'
        Value = ''
      end
      item
        Name = 'VALOR_E'
        Value = ''
      end
      item
        Name = 'VALOR_F'
        Value = ''
      end
      item
        Name = 'VALOR_G'
        Value = ''
      end
      item
        Name = 'VALOR_H'
        Value = ''
      end
      item
        Name = 'VALOR_I'
        Value = ''
      end
      item
        Name = 'VALOR_J'
        Value = ''
      end
      item
        Name = 'VALOR_K'
        Value = ''
      end
      item
        Name = 'VALOR_L'
        Value = ''
      end
      item
        Name = 'TIPOAMBIENTE'
        Value = ''
      end
      item
        Name = 'OVERLAY'
        Value = ''
      end
      item
        Name = 'EMP_NOME'
        Value = ''
      end
      item
        Name = 'EMP_CNPJ'
        Value = ''
      end
      item
        Name = 'EMP_IE'
        Value = ''
      end
      item
        Name = 'ENDERECO'
        Value = ''
      end
      item
        Name = 'ALI_IEST'
        Value = ''
      end
      item
        Name = 'NOMEDESTINATARIO'
        Value = ''
      end
      item
        Name = 'EMP_IM'
        Value = ''
      end
      item
        Name = 'INFORMACOES'
        Value = ''
      end
      item
        Name = 'HORASAIDA'
        Value = ''
      end
      item
        Name = 'TOTALPRODUTOS'
        Value = ''
      end
      item
        Name = 'BASEICMS'
        Value = ''
      end
      item
        Name = 'TOTALICMS'
        Value = ''
      end
      item
        Name = 'TOTALIPI'
        Value = ''
      end
      item
        Name = 'CODIGOPRODUTO'
        Value = ''
      end
      item
        Name = 'DESCRICAOPRODUTO'
        Value = ''
      end
      item
        Name = 'CSTICMS'
        Value = ''
      end
      item
        Name = 'USARCODIGOFAB'
        Value = ''
      end
      item
        Name = 'EMP_ENQUADRAMENTO'
        Value = ''
      end
      item
        Name = 'CSOSN-CST'
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
        Frame.Typ = []
        Height = 211.653545750000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo87: TfrxMemoView
          AllowVectorExport = True
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
            'RECEBEMOS OS PRODUTOS CONSTANTES NA NF INDICADA AO LADO DE')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
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
          Top = 24.566929130000000000
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
          Top = 24.566929130000000000
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
          Width = 132.283491420000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 15.118120000000000000
          Width = 41.574771420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 30.236240000000000000
          Width = 41.574771420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'S'#201'RIE:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 15.118120000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          DataField = 'NFE_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_CODIGO"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 30.236240000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_SERIE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 54.692950000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 332.598581420000000000
          Height = 92.598469130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 60.472480000000000000
          Width = 317.480461420000000000
          Height = 92.598469130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONTROLE DO FISCO')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 58.472480000000000000
          Width = 98.267721420000000000
          Height = 17.007869130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 72.811070000000000000
          Width = 98.267721420000000000
          Height = 17.007869130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar de '
            'Nota Fiscal Eletr'#244'nica')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 344.378170000000000000
          Top = 90.708720000000000000
          Width = 52.913361420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'E - Entrada'
            'S - Sa'#237'da')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 400.409710000000000000
          Top = 92.708720000000000000
          Width = 18.897591420000000000
          Height = 20.787399130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_ENTRADASAIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 115.165430000000000000
          Width = 34.015711420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 128.283550000000000000
          Width = 34.015711420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'S'#201'RIE:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 115.165430000000000000
          Width = 60.472421420000000000
          Height = 13.228339130000000000
          DataField = 'NFE_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_CODIGO"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 128.283550000000000000
          Width = 18.897591420000000000
          Height = 13.228339130000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_SERIE"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 75.590600000000000000
          Width = 278.000000000000000000
          Height = 52.913420000000000000
          BarType = bcCode128C
          DataField = 'NFE_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '42101203964470000163550010000000031302668416'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 136.063080000000000000
          Width = 309.921401420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_CHAVEACESSO"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 141.842610000000000000
          Width = 60.472421420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PAGE#] / [TOTALPAGES#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 61.472480000000000000
          Width = 204.094561420000000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMP_NOME]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 120.724490000000000000
          Width = 325.039521420000000000
          Height = 32.125989130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Top = 158.740260000000000000
          Width = 415.748241420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NATUREZA DA OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Top = 183.307091500000000000
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
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 158.740260000000000000
          Width = 340.157641420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'CHAVE DE ACESSO DA NF-e PARA CONSULTA DE AUTENTICIDADE NO PORTAL' +
              ' NACIONAL DA NF-e')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 169.078842670000000000
          Width = 332.598581420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAVEACESSOFORMATADA"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 183.307091500000000000
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
            'INSC. SUBST. TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 183.307091500000000000
          Width = 151.181102362205000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 183.307091500000000000
          Width = 340.157641420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PROTOCOLO DE AUTORIZA'#199#195'O DE USO')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 61.472480000000000000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 169.078842670000000000
          Width = 374.173470000000000000
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
            '[frxDBDataset1."NFE_CFOPDESC"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 193.645674170000000000
          Width = 143.622140000000000000
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
            '[EMP_IE]')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 193.645674170000000000
          Width = 105.826840000000000000
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
            '[ALI_IEST]')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 193.645674170000000000
          Width = 143.622140000000000000
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
            '[EMP_CNPJ]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 193.645674170000000000
          Width = 143.622140000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_PROTOCOLO"]')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 193.645674170000000000
          Width = 170.078850000000000000
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
            '[frxDBDataset1."NFE_PROTOCOLODH"]')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 169.078842670000000000
          Width = 30.236240000000000000
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
            '[frxDBDataset1."NFE_CFOP"]')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.338582670000000000
          Width = 616.063390000000000000
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
            '[EMP_NOME]')
          ParentFont = False
        end
        object Memo249: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 141.842610000000000000
          Width = 34.015711420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Folha:')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 34.905511800000000000
          Width = 272.126160000000000000
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
            '[NOMEDESTINATARIO]')
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
        Height = 340.157480310000000000
        Top = 340.157700000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 62.251978270000000000
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
            'HORA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 62.251978270000000000
          Width = 98.267780000000000000
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
          Left = 468.661720000000000000
          Top = 62.251978270000000000
          Width = 98.267780000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE/FAX')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
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
          Left = 366.614410000000000000
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
          Left = 207.874150000000000000
          Top = 62.251978270000000000
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
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 62.251978270000000000
          Width = 207.874150000000000000
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
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Top = 228.551330000000000000
          Width = 321.260050000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
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
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 23.456702670000000000
          Width = 506.457020000000000000
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
            '[NOMEDESTINATARIO]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 13.118120000000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 37.685049130000000000
          Width = 449.764070000000000000
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
          Left = 514.016080000000000000
          Top = 37.685049130000000000
          Width = 151.181200000000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 37.685049130000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 103.559055120000000000
          Width = 755.906000000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 23.456702670000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'NFE_DTEMISSAO'
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
            '[frxDBDataset1."NFE_DTEMISSAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 48.023631800000000000
          Width = 442.205010000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_ENDERECO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 72.590560940000000000
          Width = 151.181200000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_CIDADE"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 48.023631800000000000
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_BAIRRO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 48.023631800000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_DTSAIDA'
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
            '[frxDBDataset1."NFE_DTSAIDA"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 72.590560940000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_ESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_ESTADO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 72.590560940000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_CEP"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 72.590560940000000000
          Width = 90.708720000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_FONE1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_FONE1"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 72.590560940000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
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
            '[HORASAIDA]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 319.260050000000000000
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551593620000000000
          Top = 319.260050000000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905380000000000000
          Top = 319.260050000000000000
          Width = 45.354360000000000000
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
            'NCM-SH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251900160000000000
          Top = 319.260050000000000000
          Width = 211.653479840000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259722910000000000
          Top = 319.260050000000000000
          Width = 30.236198500000000000
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
            '[CSOSN-CST]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Top = 319.260050000000000000
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795182830000000000
          Top = 319.260050000000000000
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
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Width = 173.858380000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 13.118120000000000000
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
          Left = 517.795610000000000000
          Top = 23.456702670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
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
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
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
          Left = 453.543600000000000000
          Top = 48.023631800000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_NUMERO"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 72.590560940000000000
          Width = 90.708720000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_IE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_IE"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708720000000000000
          Width = 173.858380000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FATURAS')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 104.826840000000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'A:')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 117.921259840000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'B:')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 131.149606300000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C:')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 104.826840000000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'D:')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 117.921259840000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'E:')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 131.149606300000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'F:')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 104.826840000000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'G:')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 117.921259840000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'H:')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 131.149606300000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'I:')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 104.826840000000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'J:')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 117.921259840000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'K:')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 131.149606300000000000
          Width = 15.118061420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'L:')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 104.826840000000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_A]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 104.826840000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_A]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 104.826840000000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_D]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 104.826840000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_D]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 104.826840000000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_G]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 104.826840000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_G]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 104.826840000000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_J]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 104.826840000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_J]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 117.921259840000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_B]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 117.921259840000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_B]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 131.149606300000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_C]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 131.149606300000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_C]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 117.921259840000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_E]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 117.921259840000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_E]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 131.149606300000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_F]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 131.149606300000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_F]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 117.921259840000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_H]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 117.921259840000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_H]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 131.149606300000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_I]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 131.149606300000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_I]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 117.921259840000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_K]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 117.921259840000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_K]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 131.149606300000000000
          Width = 56.692891420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[VECTO_L]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 131.149606300000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[VALOR_L]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Top = 149.669291338583000000
          Width = 173.858380000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Top = 162.519790000000000000
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
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 172.858372670000000000
          Width = 98.267780000000000000
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
          Memo.UTF8W = (
            '[BASEICMS]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 162.519790000000000000
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
            'VALOR DO ICMS')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 172.858372670000000000
          Width = 105.826840000000000000
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
          Memo.UTF8W = (
            '[TOTALICMS]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 162.519790000000000000
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
            'BASE DE C'#193'LCULO DO ICMS SUBST.')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 172.858372670000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_BASEICMSST'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_BASEICMSST"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 162.519790000000000000
          Width = 136.063080000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 162.519790000000000000
          Width = 136.063080000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TRIBUTOS (IBPT)')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 162.519790000000000000
          Width = 136.063080000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 172.858372670000000000
          Width = 128.504020000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TOTALICMSST'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TOTALICMSST"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 172.858372670000000000
          Width = 128.504020000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TOTALTRIBUTOS'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TOTALTRIBUTOS"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 172.858372670000000000
          Width = 128.504020000000000000
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
          Memo.UTF8W = (
            '[TOTALPRODUTOS]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Top = 187.086614170000000000
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
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 197.425196840000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VALORFRETE'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VALORFRETE"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 187.086614170000000000
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
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 197.425196840000000000
          Width = 105.826840000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VALORSEGURO'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VALORSEGURO"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 187.086614170000000000
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
            'DESCONTO')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 197.425196840000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_DESCVALOR'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_DESCVALOR"]')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 187.086614170000000000
          Width = 136.063080000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 187.086614170000000000
          Width = 136.063080000000000000
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
          Left = 619.842920000000000000
          Top = 187.086614170000000000
          Width = 136.063080000000000000
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
            'TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 197.425196840000000000
          Width = 128.504020000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VALORDESPACES'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VALORDESPACES"]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 197.425196840000000000
          Width = 128.504020000000000000
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
          Memo.UTF8W = (
            '[TOTALIPI]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 197.425196840000000000
          Width = 128.504020000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VALORTOTAL'
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Top = 215.433210000000000000
          Width = 249.448980000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADORA / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 238.889912670000000000
          Width = 313.700990000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPNOME"]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 228.551330000000000000
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
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 238.889912670000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_FRETE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_FRETE"]')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 228.551330000000000000
          Width = 75.590600000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 238.889912670000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VEICULORNTC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VEICULORNTC"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 228.551330000000000000
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
          Left = 510.236550000000000000
          Top = 238.889912670000000000
          Width = 79.370130000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VEICULOPLACA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VEICULOPLACA"]')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 228.551330000000000000
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
          Left = 597.165740000000000000
          Top = 238.889912670000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VEICULOPLACAUF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VEICULOPLACAUF"]')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 228.551330000000000000
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
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 238.889912670000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPCNPJ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPCNPJ"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Top = 253.228510000000000000
          Width = 321.260050000000000000
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
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 263.567092670000000000
          Width = 313.700990000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPENDERECO"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 253.228510000000000000
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
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 263.567092670000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPESTADO"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 253.228510000000000000
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
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 263.567092670000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPIE"]')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 253.228510000000000000
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
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 263.567092670000000000
          Width = 264.567100000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_TRANSPCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TRANSPCIDADE"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Top = 277.795275590000000000
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
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 288.133858260000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VOLUMES'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VOLUMES"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 277.795275590000000000
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
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 288.133858260000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_ESPECIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_ESPECIE"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 277.795275590000000000
          Width = 124.724490000000000000
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
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 288.133858260000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_MARCA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_MARCA"]')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 277.795275590000000000
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
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 288.133858260000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_PESOLIQ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_PESOLIQ"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 277.795275590000000000
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
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 288.133858260000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_PESOBRUTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_PESOBRUTO"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 277.795275590000000000
          Width = 177.637910000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 288.133858260000000000
          Width = 170.078850000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_VOLUMESNUM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_VOLUMESNUM"]')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Top = 306.141930000000000000
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
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 319.260050000000000000
          Width = 22.677138500000000000
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
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 319.260050000000000000
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
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 329.842732050000000000
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
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 329.842732050000000000
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
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 319.260050000000000000
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
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 319.260050000000000000
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
            'CFOP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 319.260050000000000000
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
        object Memo252: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.590560940000000000
          Width = 200.315090000000000000
          Height = 13.228346460000000000
          DataField = 'NFE_COMPLEMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_COMPLEMENTO"]')
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
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 1001.575450000000000000
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
            'NFE01 - Runtime Sistemas')
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
            'Impresso em [DATE] [TIME]')
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
        Height = 151.181102360000000000
        Top = 827.717070000000000000
        Width = 755.906000000000000000
        PrintAtBottom = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 54.803169130000000000
          Width = 585.827091420000000000
          Height = 96.377999130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 13.118120000000000000
          Width = 188.976441420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 13.118120000000000000
          Width = 188.976441420000000000
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
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 54.803169130000000000
          Width = 170.078791420000000000
          Height = 96.377999130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 188.976441420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 13.118120000000000000
          Width = 188.976441420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS SERVI'#199'OS')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 65.141751800000000000
          Width = 578.268031420000000000
          Height = 81.259886460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[INFORMACOES]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 23.456702670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_IM]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 23.456702670000000000
          Width = 181.417381420000000000
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TOTALSERVICOS"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 23.456702670000000000
          Width = 181.417381420000000000
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_BASEISS"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 23.456702670000000000
          Width = 181.417381420000000000
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
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_TOTALISS"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          AllowVectorExport = True
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
            'C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
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
            'DADOS ADICIONAIS')
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
        Top = 702.992580000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[CODIGOPRODUTO]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251900160000000000
          Width = 211.653479840000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DESCRICAOPRODUTO]')
          ParentFont = False
          WordBreak = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259722910000000000
          Width = 30.236198500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[CSTICMS]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 26.456668500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_CFOP'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 22.677138500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_UNIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 52.913378500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905380000000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_CLASSFISCAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_CLASSFISCAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_VALORUNIT'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_VALORTOTAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_BASEICMS'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_BASEICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_VALORICMS'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_VALORICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo237: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.860726400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_ALIQICMS'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_ALIQICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo238: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.860726400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'NFI_ALIQIPI'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."NFI_ALIQIPI"]')
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
        Top = 740.787880000000000000
        Width = 755.906000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 3.779527559055120000
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
          Left = 64.251900160000000000
          Width = 211.653479840000000000
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
          Left = 275.905380000000000000
          Width = 45.354360000000000000
          Height = 3.779527559055120000
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
          Left = 351.496290000000000000
          Width = 26.456668500000000000
          Height = 3.779527559055120000
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
          Left = 321.259722910000000000
          Width = 30.236198500000000000
          Height = 3.779527559055120000
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
          Left = 377.953000000000000000
          Width = 22.677138500000000000
          Height = 3.779527559055120000
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
          Left = 400.630180000000000000
          Width = 52.913378500000000000
          Height = 3.779527559055120000
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
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
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
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795182830000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
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
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
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
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
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
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.860726400000000000
          Height = 3.779527559055120000
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
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.860726400000000000
          Height = 3.779527559055120000
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
        Top = 767.244590000000000000
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
        Top = 291.023810000000000000
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
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFE_ALIQICMSCREDSN=NFE_ALIQICMSCREDSN'
      'NFE_BAIRRO=NFE_BAIRRO'
      'NFE_BASEICMS=NFE_BASEICMS'
      'NFE_BASEICMSST=NFE_BASEICMSST'
      'NFE_BASEISS=NFE_BASEISS'
      'NFE_CEP=NFE_CEP'
      'NFE_CFOP=NFE_CFOP'
      'NFE_CFOPDESC=NFE_CFOPDESC'
      'NFE_CHAVEACESSO=NFE_CHAVEACESSO'
      'NFE_CIDADE=NFE_CIDADE'
      'NFE_CLIENTE=NFE_CLIENTE'
      'NFE_CNPJ=NFE_CNPJ'
      'NFE_CODIGO=NFE_CODIGO'
      'NFE_COMPLEMENTO=NFE_COMPLEMENTO'
      'NFE_CPF=NFE_CPF'
      'NFE_DESCVALOR=NFE_DESCVALOR'
      'NFE_DTEMISSAO=NFE_DTEMISSAO'
      'NFE_DTSAIDA=NFE_DTSAIDA'
      'NFE_ENDERECO=NFE_ENDERECO'
      'NFE_ENTRADASAIDA=NFE_ENTRADASAIDA'
      'NFE_ESPECIE=NFE_ESPECIE'
      'NFE_ESTADO=NFE_ESTADO'
      'NFE_FONE1=NFE_FONE1'
      'NFE_FRETE=NFE_FRETE'
      'NFE_IE=NFE_IE'
      'NFE_INFOADICFISCO=NFE_INFOADICFISCO'
      'NFE_INFOCOMPLEMENTAR=NFE_INFOCOMPLEMENTAR'
      'NFE_MARCA=NFE_MARCA'
      'NFE_NOME=NFE_NOME'
      'NFE_NUMERO=NFE_NUMERO'
      'NFE_PEDIDOCLIENTE=NFE_PEDIDOCLIENTE'
      'NFE_PESOBRUTO=NFE_PESOBRUTO'
      'NFE_PESOLIQ=NFE_PESOLIQ'
      'NFE_PROTOCOLO=NFE_PROTOCOLO'
      'NFE_PROTOCOLODH=NFE_PROTOCOLODH'
      'NFE_SERIE=NFE_SERIE'
      'NFE_TOTALFCP=NFE_TOTALFCP'
      'NFE_TOTALFCPST=NFE_TOTALFCPST'
      'NFE_TOTALICMS=NFE_TOTALICMS'
      'NFE_TOTALICMSCREDSN=NFE_TOTALICMSCREDSN'
      'NFE_TOTALICMSST=NFE_TOTALICMSST'
      'NFE_TOTALIPI=NFE_TOTALIPI'
      'NFE_TOTALISS=NFE_TOTALISS'
      'NFE_TOTALPRODUTOS=NFE_TOTALPRODUTOS'
      'NFE_TOTALSERVICOS=NFE_TOTALSERVICOS'
      'NFE_TOTALTRIBUTOS=NFE_TOTALTRIBUTOS'
      'NFE_TOTALTRIBUTOSEST=NFE_TOTALTRIBUTOSEST'
      'NFE_TOTALTRIBUTOSFED=NFE_TOTALTRIBUTOSFED'
      'NFE_TOTALTRIBUTOSMUN=NFE_TOTALTRIBUTOSMUN'
      'NFE_TRANSPCIDADE=NFE_TRANSPCIDADE'
      'NFE_TRANSPCNPJ=NFE_TRANSPCNPJ'
      'NFE_TRANSPENDERECO=NFE_TRANSPENDERECO'
      'NFE_TRANSPESTADO=NFE_TRANSPESTADO'
      'NFE_TRANSPIE=NFE_TRANSPIE'
      'NFE_TRANSPNOME=NFE_TRANSPNOME'
      'NFE_VALORDESPACES=NFE_VALORDESPACES'
      'NFE_VALORFRETE=NFE_VALORFRETE'
      'NFE_VALORSEGURO=NFE_VALORSEGURO'
      'NFE_VALORTOTAL=NFE_VALORTOTAL'
      'NFE_VEICULOPLACA=NFE_VEICULOPLACA'
      'NFE_VEICULOPLACAUF=NFE_VEICULOPLACAUF'
      'NFE_VEICULORNTC=NFE_VEICULORNTC'
      'NFE_VENDA=NFE_VENDA'
      'NFE_VOLUMES=NFE_VOLUMES'
      'NFE_VOLUMESNUM=NFE_VOLUMESNUM'
      'CPG_DESCRICAO=CPG_DESCRICAO'
      'DOCUMENTO=DOCUMENTO'
      'CHAVEACESSOFORMATADA=CHAVEACESSOFORMATADA')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
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
      'NFI_ALIQICMS=NFI_ALIQICMS'
      'NFI_ALIQIPI=NFI_ALIQIPI'
      'NFI_BASEICMS=NFI_BASEICMS'
      'NFI_CFOP=NFI_CFOP'
      'NFI_CLASSFISCAL=NFI_CLASSFISCAL'
      'NFI_CODIGO=NFI_CODIGO'
      'NFI_CODIGOFAB=NFI_CODIGOFAB'
      'NFI_COMPLEMENTO=NFI_COMPLEMENTO'
      'NFI_CSTICMS=NFI_CSTICMS'
      'NFI_DESCRICAO=NFI_DESCRICAO'
      'NFI_DESCVALOR=NFI_DESCVALOR'
      'NFI_LOTE=NFI_LOTE'
      'NFI_ORIGEM=NFI_ORIGEM'
      'NFI_PRODUTO=NFI_PRODUTO'
      'NFI_QUANTIDADE=NFI_QUANTIDADE'
      'NFI_QUANTIDADETROCA=NFI_QUANTIDADETROCA'
      'NFI_UNIDADE=NFI_UNIDADE'
      'NFI_VALORICMS=NFI_VALORICMS'
      'NFI_VALORTOTAL=NFI_VALORTOTAL'
      'NFI_VALORUNIT=NFI_VALORUNIT')
    DataSet = QY01a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 304
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
      'select * from MDFE'
      'where MDF_CODIGO=:codigo'
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
  object QY01a: TFDQuery
    MasterSource = DS01
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select first(5) * from MDFEMOTORISTAS'
      'where MDM_MDFE=:MDF_CODIGO'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR01a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 400
  end
end
