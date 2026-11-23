object FormCTeCCeFast: TFormCTeCCeFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de CCE'
  ClientHeight = 473
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
      '01 - cte cce')
    TabOrder = 0
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTC_CODIGO=CTC_CODIGO'
      'CTC_PROTOCOLO=CTC_PROTOCOLO'
      'CTC_PROTOCOLODH=CTC_PROTOCOLODH'
      'CTC_SEQUENCIAL=CTC_SEQUENCIAL'
      'CTE_CHAVEACESSO=CTE_CHAVEACESSO'
      'CTE_CODIGO=CTE_CODIGO'
      'CTE_MODELO=CTE_MODELO'
      'CTE_SERIE=CTE_SERIE'
      'CTE_DTEMISSAO=CTE_DTEMISSAO'
      'CTE_REMNOME=CTE_REMNOME'
      'CTE_DESNOME=CTE_DESNOME'
      'CTE_EXPNOME=CTE_EXPNOME'
      'CTE_RECNOME=CTE_RECNOME')
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
    ReportOptions.Name = 'CCE'
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
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
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
          DataField = 'CTC_PROTOCOLO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTC_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 27.456448820000000000
          Width = 113.385900000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NUM. ITEM')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 9.448809130000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'CTC_PROTOCOLODH'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTC_PROTOCOLODH"]')
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
          DataField = 'CTC_PROTOCOLO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTC_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 27.456448820000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'GRUPO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 27.456448820000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CAMPO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 27.456448820000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR CORRIGIDO')
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
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        RowCount = 0
        object Memo80: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'CTX_NUMITEM'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."CTX_NUMITEM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'CTX_GRUPO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."CTX_GRUPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'CTX_CAMPO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."CTX_CAMPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'CTX_VALOR'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."CTX_VALOR"]')
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
        Height = 302.362251100000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000003
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
            'CHAVE DE ACESSO DO CT-e')
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
          Width = 359.055118110000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'REMETENTE')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 181.307150080000000000
          Width = 359.055118110000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EXPEDIDOR')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 205.984251970000000000
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
          Width = 351.496058110000000000
          Height = 15.118120000000000000
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo104: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 216.102418340000000000
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
            
              'A Carta de Corre'#231#227'o '#233' disciplinada pelo Art. 58-B do conv'#234'nio SI' +
              'NIEF 06/89.'
            
              'Fica permitido o uso de Carta de Corre'#231#227'o, para regulariza'#231#227'o de' +
              ' erro na presta'#231#227'o de servi'#231'o de transporte, desde que n'#227'o estej' +
              'a relacionado com:'
            
              'I - As vari'#225'veis que determinam o valor do imposto tais como: ba' +
              'se de c'#225'lculo, al'#237'quota, diferen'#231'a de pre'#231'o, quantidade, valor d' +
              'a presta'#231#227'o;'
            
              'II - A corre'#231#227'o de dados cadastrais que implique mudan'#231'a do emit' +
              'ente, tomador, remetente ou do destinat'#225'rio;'
            'III - A data de emiss'#227'o ou sa'#237'da.')
          ParentFont = False
          WordWrap = False
        end
        object Memo105: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 190.755959210000000000
          Width = 351.496058110000000000
          Height = 15.118120000000000000
          DataField = 'CTE_EXPNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_EXPNOME"]')
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
          DataField = 'CTE_CHAVEACESSO'
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
          Top = 90.488250000000000000
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
          Top = 132.173316220000000000
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
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 480.377952760000000000
          Top = 132.173316220000000000
          Width = 78.992125984251970000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DO CT-e'
            '')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
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
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
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
            'FOLHA')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 156.740260000000000000
          Width = 359.055118110000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 181.307150080000000000
          Width = 359.055118110000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RECEBEDOR')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 289.244280000000000000
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
          DataField = 'CTE_MODELO'
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
            '[frxDBDataset1."CTE_MODELO"]')
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
          DataField = 'CTE_SERIE'
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
            '[frxDBDataset1."CTE_SERIE"]')
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
          DataField = 'CTE_CODIGO'
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
            '[frxDBDataset1."CTE_CODIGO"]')
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
          DataField = 'CTE_DTEMISSAO'
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
            '[frxDBDataset1."CTE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 166.189069130000000000
          Width = 351.496058110000000000
          Height = 15.118120000000000000
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 190.755959210000000000
          Width = 351.496058110000000000
          Height = 15.118120000000000000
          DataField = 'CTE_RECNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_RECNOME"]')
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
  object DS01: TDataSource
    DataSet = QY01
    Left = 48
    Top = 255
  end
  object frxDBDataset1a: TfrxDBDataset
    UserName = 'frxDBDataset1a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTX_CODIGO=CTX_CODIGO'
      'CTX_CCE=CTX_CCE'
      'CTX_CAMPO=CTX_CAMPO'
      'CTX_GRUPO=CTX_GRUPO'
      'CTX_NUMITEM=CTX_NUMITEM'
      'CTX_VALOR=CTX_VALOR')
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
      'select '
      'CTC_CODIGO,'
      'CTC_PROTOCOLO,'
      'CTC_PROTOCOLODH,'
      'CTC_SEQUENCIAL,'
      'CTE_CHAVEACESSO,'
      'CTE_CODIGO,'
      'CTE_MODELO,'
      'CTE_SERIE,'
      'CTE_DTEMISSAO,'
      'CTE_REMNOME,'
      'CTE_DESNOME,'
      'CTE_EXPNOME,'
      'CTE_RECNOME'
      'from CTECCE '
      'left join CTE on CTC_CTE=CTE_CODIGO'
      'where CTC_CODIGO=:codigo'
      'order by CTC_SEQUENCIAL'
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
    MasterFields = 'CTC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select * from CTECCEITENS'
      'where CTX_CCE=:CTC_CODIGO'
      'order by CTX_CODIGO'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'CTC_CODIGO'
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
