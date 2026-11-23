object FormNfeCCeFast: TFormNfeCCeFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de NFeCCe'
  ClientHeight = 357
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 405
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - nfe cce')
    TabOrder = 0
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCC_CODIGO=NCC_CODIGO'
      'NCC_SEQUENCIAL=NCC_SEQUENCIAL'
      'NCC_DATA=NCC_DATA'
      'NCC_HORA=NCC_HORA'
      'NCC_PROTOCOLO=NCC_PROTOCOLO'
      'NCC_PROTOCOLODH=NCC_PROTOCOLODH'
      'NCC_TEXTO=NCC_TEXTO'
      'NFE_CLIENTE=NFE_CLIENTE'
      'NFE_CHAVEACESSO=NFE_CHAVEACESSO'
      'NFE_CODIGO=NFE_CODIGO'
      'NFE_MODELO=NFE_MODELO'
      'NFE_SERIE=NFE_SERIE'
      'NFE_DTEMISSAO=NFE_DTEMISSAO'
      'NFE_NOME=NFE_NOME'
      'NFE_ENDERECO=NFE_ENDERECO'
      'NFE_NUMERO=NFE_NUMERO'
      'NFE_BAIRRO=NFE_BAIRRO'
      'NFE_CIDADE=NFE_CIDADE'
      'NFE_ESTADO=NFE_ESTADO'
      'NFE_CEP=NFE_CEP'
      'NFE_FONE1=NFE_FONE1'
      'NFE_IE=NFE_IE'
      'CNPJCPF=CNPJCPF')
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
    ReportOptions.Name = 'CCE NFE'
    ReportOptions.LastChange = 44374.491762824100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'EMP_NOME'
        Value = Null
      end
      item
        Name = 'EMP_IE'
        Value = Null
      end
      item
        Name = 'EMP_CNPJ'
        Value = ''
      end
      item
        Name = 'ENDERECO'
        Value = ''
      end
      item
        Name = 'CHAVEACESSO'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
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
        Frame.Width = 0.500000000000000000
        Height = 41.684787950000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Width = 400.630180000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            'N'#218'MERO DO PROTOCOLO')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 158.740260000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            'DATA DO REGISTRO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Width = 158.740260000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            'SEQU'#202'NCIA')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 9.448809130000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'NCC_SEQUENCIAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCC_SEQUENCIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 9.448809130000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'NCC_PROTOCOLODH'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCC_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 9.448809130000000000
          Width = 393.071120000000000000
          Height = 15.118120000000000000
          DataField = 'NCC_PROTOCOLO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCC_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 710.551640000000000000
          Height = 15.118120000000000000
          CanShrink = True
          StretchMode = smActualHeight
          DataField = 'NCC_TEXTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCC_TEXTO"]')
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
        Height = 326.929329130000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 132.283518270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 45.354360000000000000
          Width = 396.850650000000000000
          Height = 86.929133860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO DA NF-e')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 396.850650000000000000
          Height = 45.354328270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CC-e')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 99.267780000000000000
          Top = 1.000000000000000000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Width = 389.291590000000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Carta de Corre'#231#227'o Eletr'#244'nica')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 132.173316220000000000
          Width = 160.629921260000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 321.637795280000000000
          Top = 132.173316220000000000
          Width = 79.370130000000000000
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
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 141.622125350000000000
          Width = 153.070861260000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 60.472465350000000000
          Width = 381.732530000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CHAVEACESSO]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 156.740260000000000000
          Width = 559.370208110000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 181.307150080000000000
          Width = 464.881958110000000000
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
          Top = 230.440961970000000000
          Width = 718.110236220000000000
          Height = 77.480349130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONDI'#199#195'O DE USO')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 166.189069130000000000
          Width = 551.811148110000000000
          Height = 15.118120000000000000
          DataField = 'NFE_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFE_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo104: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 240.559128340000000000
          Width = 714.330706220000000000
          Height = 64.252010000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Con' +
              'v'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para r' +
              'egulariza'#231#227'o de erro ocorrido na emiss'#227'o de documento fiscal, de' +
              'sde que o erro n'#227'o esteja relacionado com: I - as vari'#225'veis que ' +
              'determinam o valor do imposto tais como: base de c'#225'lculo, al'#237'quo' +
              'ta, diferen'#231'a de pre'#231'o, quantidade, valor da opera'#231#227'o ou da pres' +
              'ta'#231#227'o; II - a corre'#231#227'o de dados cadastrais que implique mudan'#231'a ' +
              'do remetente ou do destinat'#225'rio; III - a data de emiss'#227'o ou de s' +
              'a'#237'da.')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 190.755959210000000000
          Width = 457.322898110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 79.150055430000000000
          Width = 278.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCode128C
          DataField = 'NFE_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '75691864700000220001303501041915000016333001'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo92: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 313.700990000000000000
          Height = 30.236240000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMP_NOME]')
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 90.708688270000000000
          Width = 313.700990000000000000
          Height = 41.574830000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 160.519790000000000000
          Top = 132.283550000000000000
          Width = 161.007874020000000000
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
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 401.007874020000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
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
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 480.377952760000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA NF-e'
            '')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FOLHA')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 156.740260000000000000
          Width = 158.740028110000000000
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
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 181.307150080000000000
          Width = 158.740028110000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 313.700990000000000000
          Width = 151.181200000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EVENTOS / CORRE'#199#213'ES')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 141.622125350000000000
          Width = 153.070861260000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_CNPJ]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 325.417325280000000000
          Top = 141.622125350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'NFE_MODELO'
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
            '[frxDBDataset1."NFE_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.787404020000000000
          Top = 141.622125350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'NFE_SERIE'
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
            '[frxDBDataset1."NFE_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 484.157482760000000000
          Top = 141.622125350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'NFE_CODIGO'
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
            '[frxDBDataset1."NFE_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 141.622125350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 166.189069130000000000
          Width = 151.180968110000000000
          Height = 15.118120000000000000
          DataField = 'CNPJCPF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 190.755959210000000000
          Width = 151.180968110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 141.622125350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] / [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 181.307150080000000000
          Width = 94.488018110000000000
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
        object Memo36: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 190.755959210000000000
          Width = 86.928958110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 205.874150000000000000
          Width = 332.598408110000000000
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
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 215.322959130000000000
          Width = 325.039348110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 205.874150000000000000
          Width = 132.283318110000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE / FAX')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 205.874150000000000000
          Width = 120.944728110000000000
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
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 205.874150000000000000
          Width = 94.488018110000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 205.874150000000000000
          Width = 37.795068110000000000
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
        object Memo49: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 215.322959130000000000
          Width = 30.236008110000000000
          Height = 15.118120000000000000
          DataField = 'NFE_ESTADO'
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
            '[frxDBDataset1."NFE_ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 215.322959130000000000
          Width = 86.928958110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 215.322959130000000000
          Width = 124.724258110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo52: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 215.322959130000000000
          Width = 113.385668110000000000
          Height = 15.118120000000000000
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
          WordWrap = False
        end
      end
    end
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
      'NCC_CODIGO,'
      'NCC_SEQUENCIAL,'
      'NCC_DATA,'
      'NCC_HORA,'
      'NCC_PROTOCOLO,'
      'NCC_PROTOCOLODH,'
      'NCC_TEXTO,'
      'NFE_CLIENTE,'
      'NFE_CHAVEACESSO,'
      'NFE_CODIGO,'
      'NFE_MODELO,'
      'NFE_SERIE,'
      'NFE_DTEMISSAO,'
      'NFE_NOME,'
      'NFE_ENDERECO,'
      'NFE_NUMERO,'
      'NFE_BAIRRO,'
      'NFE_CIDADE,'
      'NFE_ESTADO,'
      'NFE_CEP,'
      'NFE_FONE1,'
      'NFE_IE,'
      'iif(CLI_TIPOPESSOA='#39'J'#39',NFE_CNPJ,NFE_CPF) as CNPJCPF'
      'from NFECCE '
      'left join NFE on NCC_NFE=NFE_CODIGO'
      'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO'
      'where NCC_PROTOCOLO<>'#39#39' and NCC_NFE=:codigo'
      'order by NCC_SEQUENCIAL'
      '')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
end
