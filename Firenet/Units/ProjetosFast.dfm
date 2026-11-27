object FormProjetosFast: TFormProjetosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Projetos'
  ClientHeight = 552
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 612
    Top = 8
    Width = 413
    Height = 529
    Lines.Strings = (
      '01 - Ficha do projeto (antigo ProjetosQ01)'
      '02 - Projetos por cliente e status (antigo ProjetosQ02)'
      '03 - Projetos por arquiteto e status (antigo ProjetosQ03)'
      '04 - Projetos com visita em aberto (antigo ProjetosQ04)'
      '05 - Projetos com orcamento em aberto (antigo ProjetosQ05)'
      '06 - Projetos com apresentacao em aberto (antigo ProjetosQ06)'
      '07 - Projetos com projeto CAD em aberto (antigo ProjetosQ07)'
      
        '08 - Projetos por arquiteto e status com fases (antigo ProjetosQ' +
        '08)'
      '09 - Projetos por fase (antigo ProjetosQ09)')
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
    ReportOptions.Name = 'PRJ01'
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
    Left = 32
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 270.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 117.313346828610000000
          Top = 21.000000000000000000
          Width = 397.845263157895000000
          Height = 15.000000000000000000
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 254.000000000000000000
          Width = 56.106383265856900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 433.549325236167000000
          Top = 254.000000000000000000
          Width = 42.844874493927100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Top = 254.000000000000000000
          Width = 20.402321187584300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P/S')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 89.770213225371100000
          Top = 254.000000000000000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 399.885495276653000000
          Top = 254.000000000000000000
          Width = 30.603481781376500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 480.474663967611000000
          Top = 254.000000000000000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 563.104064777328000000
          Top = 254.000000000000000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 22.442553306342800000
          Top = 21.000000000000000000
          Width = 43.864990553306300000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 21.000000000000000000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'PRJ_CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 9.181044534412950000
          Top = 37.000000000000000000
          Width = 57.126499325236200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 28.563249662618100000
          Top = 53.000000000000000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 243.807738191633000000
          Top = 53.000000000000000000
          Width = 59.166731443994600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade/UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 245.847970310391000000
          Top = 69.000000000000000000
          Width = 57.126499325236200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 37.000000000000000000
          Width = 322.356674763833000000
          Height = 15.000000000000000000
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_ENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 53.000000000000000000
          Width = 167.299033738192000000
          Height = 15.000000000000000000
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
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 37.000000000000000000
          Width = 15.301740890688300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 413.147004048583000000
          Top = 37.000000000000000000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'CLI_NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933873144000000
          Top = 53.000000000000000000
          Width = 167.299033738192000000
          Height = 15.000000000000000000
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 40.804642375168700000
          Top = 69.000000000000000000
          Width = 25.502901484480400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 69.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 478.434431848853000000
          Top = 53.000000000000000000
          Width = 36.724178137651800000
          Height = 15.000000000000000000
          DataField = 'CLI_ESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 27.543133603238900000
          Top = 85.000000000000000000
          Width = 38.764410256410300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fones:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 85.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
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
        object MemoQRLabel26: TfrxMemoView
          AllowVectorExport = True
          Left = 255.029014844804000000
          Top = 85.000000000000000000
          Width = 47.945454790823200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Contato:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933873144000000
          Top = 85.000000000000000000
          Width = 208.103676113360000000
          Height = 15.000000000000000000
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
        object MemoQRLabel27: TfrxMemoView
          AllowVectorExport = True
          Left = 517.198842105263000000
          Top = 125.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Cad.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 125.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTCADASTRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Left = 488.635592442645000000
          Top = 141.000000000000000000
          Width = 83.649516869095800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status Projeto:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 141.000000000000000000
          Width = 118.333462887989000000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 9.181044534412950000
          Top = 157.000000000000000000
          Width = 57.126499325236200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Arquiteto:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 157.000000000000000000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText28: TfrxMemoView
          AllowVectorExport = True
          Left = 117.313346828610000000
          Top = 157.000000000000000000
          Width = 348.879692307692000000
          Height = 15.000000000000000000
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
        object LineQRShape2: TfrxLineView
          AllowVectorExport = True
          Left = 14.281624831309000000
          Top = 253.000000000000000000
          Width = 743.664607287449000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 21.422437246963600000
          Top = 125.000000000000000000
          Width = 44.885106612685600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Projeto:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 117.313346828610000000
          Top = 125.000000000000000000
          Width = 348.879692307692000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 37.744294197031000000
          Top = 141.000000000000000000
          Width = 28.563249662618100000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 141.000000000000000000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'PRJ_TIPO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText31: TfrxMemoView
          AllowVectorExport = True
          Left = 117.313346828610000000
          Top = 141.000000000000000000
          Width = 348.879692307692000000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PJT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 181.000000000000000000
          Width = 109.152418353576000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data visita prevista:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText32: TfrxMemoView
          AllowVectorExport = True
          Left = 184.641006747638000000
          Top = 181.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTVISITAPREVISTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTVISITAPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Left = 38.764410256410300000
          Top = 197.000000000000000000
          Width = 141.796132253711000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data or'#231'amento previsto:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Left = 24.482785425101200000
          Top = 213.000000000000000000
          Width = 156.077757085020000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data apresenta'#231#227'o prevista:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText33: TfrxMemoView
          AllowVectorExport = True
          Left = 184.641006747638000000
          Top = 197.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTORCAMENTOPREVISTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTORCAMENTOPREVISTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText35: TfrxMemoView
          AllowVectorExport = True
          Left = 184.641006747638000000
          Top = 213.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTAPRESENTACAOPREVISTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTAPRESENTACAOPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Top = 181.000000000000000000
          Width = 72.428240215924400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status visita:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText36: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 181.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSVISITA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_STATUSVISITA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 468.233271255061000000
          Top = 197.000000000000000000
          Width = 104.051838056680000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status or'#231'amento:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 452.931530364372000000
          Top = 213.000000000000000000
          Width = 119.353578947368000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status apresenta'#231#227'o:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText37: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 197.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSORCAMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_STATUSORCAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText38: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 213.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSAPRESENTACAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_STATUSAPRESENTACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 308.075049932524000000
          Top = 181.000000000000000000
          Width = 60.186847503373800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data visita:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText39: TfrxMemoView
          AllowVectorExport = True
          Left = 372.342361673414000000
          Top = 181.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTVISITAPREVISTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTVISITAPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 276.451452091768000000
          Top = 197.000000000000000000
          Width = 91.810445344129500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data or'#231'amento:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 261.149711201080000000
          Top = 213.000000000000000000
          Width = 107.112186234818000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data apresenta'#231#227'o:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText40: TfrxMemoView
          AllowVectorExport = True
          Left = 372.342361673414000000
          Top = 197.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTORCAMENTOPREVISTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTORCAMENTOPREVISTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText41: TfrxMemoView
          AllowVectorExport = True
          Left = 372.342361673414000000
          Top = 213.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTAPRESENTACAOPREVISTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_DTAPRESENTACAOPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 476.394199730094000000
          Top = 157.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status Produ'#231#227'o:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText42: TfrxMemoView
          AllowVectorExport = True
          Left = 576.365573549258000000
          Top = 157.000000000000000000
          Width = 118.333462887989000000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPRODUCAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_STATUSPRODUCAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText44: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 125.000000000000000000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 32.643713900134900000
          Top = 101.000000000000000000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText45: TfrxMemoView
          AllowVectorExport = True
          Left = 70.388008097166000000
          Top = 101.000000000000000000
          Width = 444.770601889339000000
          Height = 15.000000000000000000
          DataField = 'CLI_EMAIL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_EMAIL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText46: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933873144000000
          Top = 69.000000000000000000
          Width = 110.172534412955000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."CLI_TIPOPESSOA"> = '#39'J'#39', <frxDBDataset1."CLI' +
              '_CNPJ">, <frxDBDataset1."CLI_CPF">)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText47: TfrxMemoView
          AllowVectorExport = True
          Left = 160.158221322537000000
          Top = 85.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
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
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.000000000000000000
        Top = 434.645950000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 20.402321187584300000
          Height = 15.000000000000000000
          DataField = 'PJI_TIPO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."PJI_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 56.106383265856900000
          Height = 15.000000000000000000
          DataField = 'PJI_PRODUTO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."PJI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 433.549325236167000000
          Width = 42.844874493927100000
          Height = 15.000000000000000000
          DataField = 'PJI_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PJI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 89.770213225371100000
          Width = 302.974469635627000000
          Height = 15.000000000000000000
          DataField = 'PJI_DESCRICAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PJI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 399.885495276653000000
          Width = 30.603481781376500000
          Height = 15.000000000000000000
          DataField = 'PJI_UNIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PJI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 480.474663967611000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
          DataField = 'PJI_VALORUNIT'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."PJI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 563.104064777328000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
          DataField = 'PJI_VALORTOTAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."PJI_VALORTOTAL"]')
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
        Frame.Width = 0.500000000000000000
        Height = 92.000000000000000000
        Top = 506.457020000000000000
        Width = 755.906000000000000000
        Stretched = True
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 391.724566801619000000
          Top = 6.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Produtos')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Left = 511.078145748988000000
          Top = 6.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Servi'#231'os')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Left = 633.492072874494000000
          Top = 6.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText29: TfrxMemoView
          AllowVectorExport = True
          Left = 391.724566801619000000
          Top = 28.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          DataField = 'PRJ_TOTALPRODUTOS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_TOTALPRODUTOS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText30: TfrxMemoView
          AllowVectorExport = True
          Left = 511.078145748988000000
          Top = 28.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          DataField = 'PRJ_TOTALSERVICOS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_TOTALSERVICOS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText34: TfrxMemoView
          AllowVectorExport = True
          Left = 633.492072874494000000
          Top = 28.000000000000000000
          Width = 115.273114709852000000
          Height = 17.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Top = 53.000000000000000000
          Width = 87.729981106612700000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText43: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Top = 72.000000000000000000
          Width = 743.664607287449000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataField = 'PRJ_OBSERVACOES'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRJ_OBSERVACOES"]')
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
        Top = 619.842920000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.876727290000000000
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
            'PRJ01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 32
    Top = 112
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_CLIENTE, PRJ_NOME, PRJ_TIPO, PRJ_ARQUITET' +
        'O, PRJ_DTCADASTRO, PRJ_STATUSPROJETO, PRJ_STATUSPRODUCAO,'
      
        '  PRJ_DTVISITAPREVISTA, PRJ_DTORCAMENTOPREVISTO, PRJ_DTAPRESENTA' +
        'CAOPREVISTA, PRJ_STATUSVISITA, PRJ_STATUSORCAMENTO,'
      
        '  PRJ_STATUSAPRESENTACAO, PRJ_TOTALPRODUTOS, PRJ_TOTALSERVICOS, ' +
        'PRJ_VALORTOTAL, PRJ_OBSERVACOES,'
      
        '  CLI_NOME, CLI_ENDERECO, CLI_NUMERO, CLI_BAIRRO, CLI_CIDADE, CL' +
        'I_ESTADO, CLI_CEP, CLI_FONE1, CLI_FONE2, CLI_CONTATO,'
      
        '  CLI_EMAIL, CLI_TIPOPESSOA, CLI_CNPJ, CLI_CPF, VEN_NOME, PJT_DE' +
        'SCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'where PRJ_CODIGO=:codigo')
    Left = 32
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
    Left = 32
    Top = 208
  end
  object frxDBDataset1a: TfrxDBDataset
    UserName = 'frxDBDataset1a'
    CloseDataSource = False
    DataSet = QY01A
    BCDToCurrency = False
    DataSetOptions = []
    Left = 32
    Top = 256
  end
  object QY01A: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01A
    SQL.Strings = (
      
        'select PJI_PRODUTO, PJI_TIPO, PJI_DESCRICAO, PJI_UNIDADE, PJI_QU' +
        'ANTIDADE, PJI_VALORUNIT, PJI_VALORTOTAL'
      'from PROJETOSITENS'
      'where PJI_PROJETO=:codigo'
      'order by PJI_DESCRICAO')
    Left = 32
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR01A: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 352
  end
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ02'
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
    Left = 96
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."PRJ_CLIENTE"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRJ_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Arquiteto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cad.')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PJT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
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
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTCADASTRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRJ_DTCADASTRO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset2."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset2."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 96
    Top = 112
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'where PRJ_DTCADASTRO between :datainicial and :datafinal'
      'order by CLI_NOME, VEN_NOME')
    Left = 96
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
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 96
    Top = 208
  end
  object frxReport3: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ03'
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
    Left = 160
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset3."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cad.')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PJT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
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
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTCADASTRO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRJ_DTCADASTRO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset3."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset3."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 160
    Top = 112
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'where PRJ_DTCADASTRO between :datainicial and :datafinal'
      'order by VEN_NOME, CLI_NOME')
    Left = 160
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
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 208
  end
  object frxReport4: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ04'
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
    Left = 224
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset4."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 127.514507422402000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 174.439846153846000000
          Top = 18.000000000000000000
          Width = 189.741587044534000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 587.586850202429000000
          Top = 18.000000000000000000
          Width = 68.347775978407500000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 519.239074224021000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Visita. Prev')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 365.201549257760000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 452.931530364372000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '1'#186' Contato')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 127.514507422402000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 174.439846153846000000
          Width = 189.741587044534000000
          Height = 15.000000000000000000
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
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 587.586850202429000000
          Width = 68.347775978407500000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 520.259190283401000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTVISITAPREVISTA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_DTVISITAPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 365.201549257760000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PJT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 452.931530364372000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTPRIMEIROCONTATO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRJ_DTPRIMEIROCONTATO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 565.144296896086000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset4."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 504.957449392712000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 565.144296896086000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset4."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 112
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      
        '  CLI_NOME, VEN_NOME, PRJ_DTVISITAPREVISTA, PRJ_DTPRIMEIROCONTAT' +
        'O, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      
        'where PRJ_DTVISITAPREVISTA between :datainicial and :datafinal a' +
        'nd PRJ_STATUSVISITA='#39'ABERTO'#39
      'order by VEN_NOME, CLI_NOME')
    Left = 224
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
    Left = 224
    Top = 208
  end
  object frxReport5: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ05'
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
    Left = 288
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Or'#231'to. Prev')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
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
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
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
            '[frxDBDataset5."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTORCAMENTOPREVISTO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRJ_DTORCAMENTOPREVISTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PJT_DESCRICAO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset5."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset5."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 288
    Top = 112
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      
        'where PRJ_DTORCAMENTOPREVISTO between :datainicial and :datafina' +
        'l and PRJ_STATUSORCAMENTO='#39'ABERTO'#39
      'order by VEN_NOME, CLI_NOME')
    Left = 288
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
    Left = 288
    Top = 208
  end
  object frxReport6: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ06'
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
    Left = 352
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset6."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aprs. Prev')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
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
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
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
            '[frxDBDataset6."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTAPRESENTACAOPREVISTA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PRJ_DTAPRESENTACAOPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."PJT_DESCRICAO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset6."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset6."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    DataSet = QY06
    BCDToCurrency = False
    DataSetOptions = []
    Left = 352
    Top = 112
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  CLI_NOME, VEN_NOME, PRJ_DTAPRESENTACAOPREVISTA, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      
        'where PRJ_DTAPRESENTACAOPREVISTA between :datainicial and :dataf' +
        'inal and PRJ_STATUSAPRESENTACAO='#39'ABERTO'#39
      'order by VEN_NOME, CLI_NOME')
    Left = 352
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
    Left = 352
    Top = 208
  end
  object frxReport7: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ07'
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
    Left = 416
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset7."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Or'#231'to. Prev')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTORCAMENTOPREVISTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRJ_DTORCAMENTOPREVISTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PJT_DESCRICAO"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset7."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset7."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 112
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      
        'where PRJ_DTPROJETOCADPREVISTO between :datainicial and :datafin' +
        'al and PRJ_STATUSPROJETOCAD='#39'ABERTO'#39
      'order by VEN_NOME, CLI_NOME')
    Left = 416
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
    Left = 416
    Top = 208
  end
  object frxReport8: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ08'
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
    Left = 480
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 52.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset8."PRJ_ARQUITETO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PRJ_ARQUITETO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."PRJ_ARQUITETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cad.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 36.000000000000000000
          Width = 192.801935222672000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fase')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 265.230175438596000000
          Top = 36.000000000000000000
          Width = 70.388008097166000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Previs'#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 338.678531713900000000
          Top = 36.000000000000000000
          Width = 70.388008097166000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'In'#237'cio')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 412.126887989204000000
          Top = 36.000000000000000000
          Width = 70.388008097166000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fim')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 485.575244264507000000
          Top = 36.000000000000000000
          Width = 70.388008097166000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 12.000000000000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PJT_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PJT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
          DataField = 'PRJ_VALORTOTAL'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
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
            '[frxDBDataset8."PRJ_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PRJ_DTCADASTRO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRJ_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.000000000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8a
        DataSetName = 'frxDBDataset8a'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 68.347775978407500000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          DataField = 'FAS_DESCRICAO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."FAS_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.210059379217000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          DataField = 'PJF_DTPREVISAO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PJF_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 337.658415654521000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          DataField = 'PJF_DTINICIO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PJF_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          DataField = 'PJF_DTFIM'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PJF_DTFIM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 484.555128205128000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          DataField = 'PJF_STATUS'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PJF_STATUS"]')
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
        Height = 29.000000000000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 533.520699055331000000
          Top = 4.000000000000000000
          Width = 31.623597840755700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset8."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Projetos:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 515.158609986505000000
          Top = 4.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 4.000000000000000000
          Width = 88.750097165991900000
          Height = 15.000000000000000000
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
            '[SUM(<frxDBDataset8."PRJ_VALORTOTAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 4.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 4.000000000000000000
          Width = 100.991489878542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Projetos:')
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
        Top = 434.645950000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.723709880000000000
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
            'PRJ08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 112
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      
        'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIP' +
        'O, PRJ_VALORTOTAL, PRJ_STATUSPROJETO,'
      '  PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'where PRJ_DTCADASTRO between :datainicial and :datafinal'
      'order by VEN_NOME, CLI_NOME')
    Left = 480
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
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 208
  end
  object DS08: TDataSource
    DataSet = QY08
    Left = 480
    Top = 400
  end
  object frxDBDataset8a: TfrxDBDataset
    UserName = 'frxDBDataset8a'
    CloseDataSource = False
    DataSet = QY08A
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 256
  end
  object QY08A: TFDQuery
    MasterSource = DS08
    MasterFields = 'PRJ_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR08A
    SQL.Strings = (
      
        'select PJF_FASE, FAS_DESCRICAO, PJF_DTPREVISAO, PJF_DTINICIO, PJ' +
        'F_DTFIM, PJF_STATUS'
      'from PROJETOSFASES'
      'left join FASES on PJF_FASE=FAS_CODIGO'
      'where PJF_PROJETO=:PRJ_CODIGO'
      'order by PJF_CODIGO desc')
    Left = 480
    Top = 304
    ParamData = <
      item
        Name = 'PRJ_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR08A: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 352
  end
  object frxReport9: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'PRJ09'
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
    Left = 544
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset9."FAS_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'PJF_FASE'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PJF_FASE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'FAS_DESCRICAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."FAS_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Top = 18.000000000000000000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Top = 18.000000000000000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. In'#237'cio')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 701.839848852901000000
          Top = 18.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt Previs'#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status Projeto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 636.552421052632000000
          Top = 18.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Fim')
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
        Height = 12.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.885106612685600000
          Width = 168.319149797571000000
          Height = 15.000000000000000000
          DataField = 'PRJ_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PRJ_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'PRJ_CODIGO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PRJ_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 215.244488529015000000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PJF_DTINICIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PJF_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 636.552421052632000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PJF_DTFIM'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PJF_DTFIM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 499.856869095816000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'PJF_DTPREVISAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PJF_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Width = 85.689748987854200000
          Height = 15.000000000000000000
          DataField = 'PRJ_STATUSPROJETO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PRJ_STATUSPROJETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 701.839848852901000000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          DataField = 'PJF_STATUS'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PJF_STATUS"]')
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
        Height = 29.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 30.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoTotalGeral: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 4.000000000000000000
          Width = 300.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total: [COUNT(MasterData1)]')
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
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 382.427589960000000000
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
            'PRJ09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    DataSet = QY09
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 112
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      
        'select PJF_DTINICIO, PJF_DTFIM, PJF_DTPREVISAO, PJF_FASE, PJF_PR' +
        'OJETO, PJF_STATUS,'
      
        '  PRJ_CODIGO, PRJ_NOME, PRJ_CLIENTE, PRJ_STATUSPROJETO, CLI_NOME' +
        ', FAS_DESCRICAO'
      'from PROJETOSFASES'
      'left join PROJETOS on PJF_PROJETO=PRJ_CODIGO'
      'left join FASES on PJF_FASE=FAS_CODIGO'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'where PRJ_DTCADASTRO between :datainicial and :datafinal'
      'order by FAS_DESCRICAO, CLI_NOME')
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
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
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
    Left = 32
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
    Left = 104
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
    Left = 176
    Top = 16
  end
end
