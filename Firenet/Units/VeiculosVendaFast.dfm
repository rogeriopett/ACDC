object FormVeiculosVendaFast: TFormVeiculosVendaFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Ve'#237'culos '#224' Venda'
  ClientHeight = 374
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 352
    Top = 8
    Width = 370
    Height = 300
    Lines.Strings = (
      '01 - Veiculos a venda (antigo VeiculosVendaQ01)'
      '02 - Veiculos vendidos (antigo VeiculosVendaQ02)'
      '03 - Ficha de venda de veiculo (antigo VeiculosVendaQ03)'
      '04 - Custo total dos veiculos a venda (antigo VeiculosVendaQ04)')
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
    ReportOptions.Name = 'VEV01'
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
        Height = 37.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."VEV_TIPO"'
        ReprintOnNewPage = True
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 21.000000000000000000
          Width = 49.985686909581600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ve'#237'culo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 222.385300944669000000
          Top = 21.000000000000000000
          Width = 58.146615384615400000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano/Mod')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 286.652612685560000000
          Top = 21.000000000000000000
          Width = 21.422437246963600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'KM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 357.040620782726000000
          Top = 21.000000000000000000
          Width = 23.462669365722000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 453.951646423752000000
          Top = 21.000000000000000000
          Width = 80.589168690958100000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Combust'#237'vel')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 539.641395411606000000
          Top = 21.000000000000000000
          Width = 37.744294197031000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 717.141589743590000000
          Top = 21.000000000000000000
          Width = 35.704062078272600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 602.888591093117000000
          Top = 21.000000000000000000
          Width = 72.428240215924400000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Entrada')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 16.321856950067500000
          Width = 319.296326585695000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."VEV_TIPO"> = '#39'P'#39', '#39'VE'#205'CULOS PR'#211'PRIOS'#39', IIF(' +
              '<frxDBDataset1."VEV_TIPO"> = '#39'T'#39', '#39'VE'#205'CULOS DE TERCEIROS'#39', '#39#39'))]')
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
        Height = 38.000000000000000000
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 218.304836707152000000
          Height = 15.000000000000000000
          DataField = 'VEL_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEL_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 222.385300944669000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOFAB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_ANOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 256.049130904183000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOMOD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_ANOMOD"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 286.652612685560000000
          Top = 1.000000000000000000
          Width = 68.347775978407500000
          Height = 15.000000000000000000
          DataField = 'VEV_KM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_KM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 453.951646423752000000
          Top = 1.000000000000000000
          Width = 80.589168690958100000
          Height = 15.000000000000000000
          DataField = 'VEV_COMBUSTIVEL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_COMBUSTIVEL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 539.641395411606000000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          DataField = 'VEV_PLACA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 357.040620782726000000
          Top = 1.000000000000000000
          Width = 92.830561403508800000
          Height = 15.000000000000000000
          DataField = 'VEV_COR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_COR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 666.135786774629000000
          Top = 1.000000000000000000
          Width = 87.729981106612700000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORVENDA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."VEV_VALORVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 249.928434547908000000
          Top = 1.000000000000000000
          Width = 5.100580296896090000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 749.785303643725000000
          Height = 15.000000000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."OPCIONAIS"]')
          ParentFont = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 602.888591093117000000
          Top = 1.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'VEV_DTENTRADA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEV_DTENTRADA"]')
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
        Height = 29.000000000000000000
        Top = 302.362400000000000000
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
        Top = 355.275820000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.734483560000000000
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
            'VEV01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      'select V.*,'
      
        '  iif(right(V.OPC,3)='#39' - '#39', left(V.OPC, char_length(V.OPC)-3), V' +
        '.OPC) as OPCIONAIS'
      'from ('
      
        '  select VEV_TIPO, VEV_ANOFAB, VEV_ANOMOD, VEV_KM, VEV_COR, VEV_' +
        'COMBUSTIVEL, VEV_PLACA, VEV_DTENTRADA, VEV_VALORVENDA, VEL_DESCR' +
        'ICAO,'
      
        '    replace(VEV_OPCIONAIS, ascii_char(13)||ascii_char(10), '#39' - '#39 +
        ') as OPC'
      '  from VEICULOSVENDA'
      '  left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      '  where VEV_STATUS='#39'A'#39
      ') V'
      'order by V.VEV_TIPO, V.VEL_DESCRICAO')
    Left = 48
    Top = 160
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
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
    ReportOptions.Name = 'VEV02'
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
        Height = 33.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 16.321856950067500000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'VEV_VENDEDOR'
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
            '[frxDBDataset2."VEV_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 19.000000000000000000
          Width = 42.844874493927100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ve'#237'culo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 198.922631578947000000
          Top = 18.000000000000000000
          Width = 51.005802968960900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano/Mod')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 326.437139001349000000
          Top = 18.000000000000000000
          Width = 54.066151147098500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Venda')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 265.230175438596000000
          Top = 18.000000000000000000
          Width = 29.583365721997300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 682.457643724696000000
          Top = 19.000000000000000000
          Width = 69.367892037786800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 389.684334682861000000
          Top = 19.000000000000000000
          Width = 40.804642375168700000
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
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 639.612769230769000000
          Top = 19.000000000000000000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lucro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 73.448356275303600000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEN_NOME"]')
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
        Height = 14.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 193.822051282051000000
          Height = 15.000000000000000000
          DataField = 'VEL_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEL_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 197.902515519568000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOFAB'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEV_ANOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 226.465765182186000000
          Width = 4.080464237516870000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 231.566345479082000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOMOD'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEV_ANOMOD"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 325.417022941970000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'VEV_DTVENDA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEV_DTVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 264.210059379217000000
          Width = 59.166731443994600000
          Height = 15.000000000000000000
          DataField = 'VEV_PLACA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEV_PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 600.848358974359000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          DataField = 'LUCRO'
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
            '[frxDBDataset2."LUCRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 389.684334682861000000
          Width = 207.083560053981000000
          Height = 15.000000000000000000
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
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 677.357063427800000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORVENDIDO'
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
            '[frxDBDataset2."VEV_VALORVENDIDO"]')
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 29.000000000000000000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.848358970000000000
          Top = 3.000000000000000000
          Width = 74.468472330000000000
          Height = 17.000000000000000000
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
            '[SUM(<frxDBDataset2."LUCRO">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 3.000000000000000000
          Width = 117.313346828610000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Ve'#237'culos: [COUNT(MasterData1)]')
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
        Height = 29.000000000000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        object MemoQRExpr1: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 8.000000000000000000
          Width = 147.916828609986000000
          Height = 17.000000000000000000
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
            '[SUM(<frxDBDataset2."LUCRO">,MasterData1)]')
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
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.515158610000000000
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
            'VEV02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 120
    Top = 112
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      
        'select VEV_VENDEDOR, VEV_ANOFAB, VEV_ANOMOD, VEV_PLACA, VEV_DTVE' +
        'NDA, VEV_VALORVENDIDO, VEL_DESCRICAO, CLI_NOME, VEN_NOME,'
      '  VEV_VALORVENDIDO - (VEV_VALORCOMPRA+VEV_DESPESAS) as LUCRO'
      'from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO'
      
        'where VEV_DTVENDA between :datainicial and :datafinal and VEV_ST' +
        'ATUS='#39'V'#39
      'order by VEN_NOME, VEV_DTVENDA desc')
    Left = 120
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
    Left = 120
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
    ReportOptions.Name = 'VEV03'
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
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 256
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
        Height = 417.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object ShapeQRShape1: TfrxShapeView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 170.000000000000000000
          Width = 750.805419703104000000
          Height = 187.000000000000000000
          Frame.Typ = []
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Top = 11.000000000000000000
          Width = 250.948550607287000000
          Height = 15.000000000000000000
          DataField = 'VEL_DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEL_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 480.474663967611000000
          Top = 11.000000000000000000
          Width = 64.267311740890700000
          Height = 15.000000000000000000
          DataField = 'VEV_KM'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_KM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.382205128205100000
          Top = 11.000000000000000000
          Width = 45.905222672064800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ve'#237'culo:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 318.276210526316000000
          Top = 11.000000000000000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano/Modelo:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 391.724566801619000000
          Top = 11.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOFAB'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_ANOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 420.287816464237000000
          Top = 11.000000000000000000
          Width = 4.080464237516870000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 425.388396761134000000
          Top = 11.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOMOD'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_ANOMOD"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 457.011994601889000000
          Top = 11.000000000000000000
          Width = 21.422437246963600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'KM:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 546.782207827260000000
          Top = 11.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 573.305225371120000000
          Top = 11.000000000000000000
          Width = 77.528820512820500000
          Height = 15.000000000000000000
          DataField = 'VEV_COR'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_COR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 653.894394062078000000
          Top = 11.000000000000000000
          Width = 32.643713900134900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 688.578340080972000000
          Top = 11.000000000000000000
          Width = 64.267311740890700000
          Height = 15.000000000000000000
          DataField = 'VEV_PLACA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 14.281624831309000000
          Top = 35.000000000000000000
          Width = 51.005802968960900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Renavan:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Top = 35.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          DataField = 'VEV_RENAVAN'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_RENAVAN"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 169.339265856950000000
          Top = 35.000000000000000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Combust'#237'vel:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 450.891298245614000000
          Top = 35.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORCOMPRA'
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
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_VALORCOMPRA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 35.000000000000000000
          Width = 81.609284750337400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Compra:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 35.000000000000000000
          Width = 72.428240215924400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Venda:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 641.653001349528000000
          Top = 35.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORVENDIDO'
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
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_VALORVENDIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 14.281624831309000000
          Top = 83.000000000000000000
          Width = 147.916828609986000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 246.868086369771000000
          Top = 35.000000000000000000
          Width = 103.031721997301000000
          Height = 15.000000000000000000
          DataField = 'VEV_COMBUSTIVEL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_COMBUSTIVEL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 165.258801619433000000
          Top = 83.000000000000000000
          Width = 586.566734143050000000
          Height = 78.000000000000000000
          DataField = 'VEV_CONDICOES'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_CONDICOES"]')
          ParentFont = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 248.908318488529000000
          Top = 363.000000000000000000
          Width = 36.724178137651800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lucro:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 363.000000000000000000
          Width = 120.373695006748000000
          Height = 15.000000000000000000
          DataField = 'LUCRO'
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
          Memo.UTF8W = (
            '[frxDBDataset3."LUCRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 416.207352226721000000
          Top = 363.000000000000000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Venda:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 485.575244264507000000
          Top = 363.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          DataField = 'VEV_DTVENDA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_DTVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 567.184529014845000000
          Top = 59.000000000000000000
          Width = 72.428240215924400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrada:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 641.653001349528000000
          Top = 59.000000000000000000
          Width = 95.890909581646400000
          Height = 15.000000000000000000
          DataField = 'VEV_DTENTRADA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 485.575244264507000000
          Top = 387.000000000000000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          DataField = 'VEV_VENDEDOR'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 387.000000000000000000
          Width = 60.186847503373800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 17.341973009446700000
          Top = 387.000000000000000000
          Width = 87.729981106612700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ex-propriet'#225'rio:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 108.132302294197000000
          Top = 387.000000000000000000
          Width = 300.934237516869000000
          Height = 15.000000000000000000
          DataField = 'VEV_EXPROPRIETARIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_EXPROPRIETARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 155.000000000000000000
          Width = 60.186847503373800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Despesas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 12.241392712550600000
          Top = 363.000000000000000000
          Width = 92.830561403508800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Despesas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 108.132302294197000000
          Top = 363.000000000000000000
          Width = 120.373695006748000000
          Height = 15.000000000000000000
          DataField = 'VEV_DESPESAS'
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
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_DESPESAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 21.422437246963600000
          Top = 59.000000000000000000
          Width = 43.864990553306300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Top = 59.000000000000000000
          Width = 39.784526315789500000
          Height = 15.000000000000000000
          DataField = 'VEV_CLIENTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 112.212766531714000000
          Top = 59.000000000000000000
          Width = 435.589557354926000000
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
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 526.379886639676000000
          Top = 387.000000000000000000
          Width = 225.445649122807000000
          Height = 15.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 596.767894736842000000
          Top = 363.000000000000000000
          Width = 34.683946018893400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mesa:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 632.471956815115000000
          Top = 363.000000000000000000
          Width = 119.353578947368000000
          Height = 15.000000000000000000
          DataField = 'VEV_MESA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEV_MESA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRMemo1: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 173.000000000000000000
          Width = 745.704839406208000000
          Height = 182.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
        Top = 619.842920000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 368.798839406208000000
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
            'VEV03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 192
    Top = 112
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      
        'select VEV_CODIGO, VEV_ANOFAB, VEV_ANOMOD, VEV_KM, VEV_COR, VEV_' +
        'PLACA, VEV_RENAVAN, VEV_COMBUSTIVEL, VEV_VALORCOMPRA, VEV_VALORV' +
        'ENDIDO,'
      
        '  VEV_CLIENTE, CLI_NOME, VEV_DTENTRADA, VEV_CONDICOES, VEV_DESPE' +
        'SAS, VEV_DTVENDA, VEV_MESA, VEV_EXPROPRIETARIO, VEV_VENDEDOR,'
      
        '  VEN_NOME, VEL_DESCRICAO, VEV_VALORVENDIDO-(VEV_VALORCOMPRA+VEV' +
        '_DESPESAS) as LUCRO'
      'from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO'
      'where VEV_CODIGO=:codigo')
    Left = 192
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY03A: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03A
    SQL.Strings = (
      'select PAG_DESCRICAO, PAG_DTEMISSAO, PAG_VALOR from PAGAR'
      'where PAG_NUMDOCTO=:numdocto'
      'order by PAG_DTEMISSAO desc, PAG_CODIGO desc')
    Left = 192
    Top = 256
    ParamData = <
      item
        Name = 'NUMDOCTO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object TR03A: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
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
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'VEV04'
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
        Height = 37.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset4."VEV_TIPO"'
        ReprintOnNewPage = True
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 21.000000000000000000
          Width = 49.985686909581600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ve'#237'culo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 206.063443994602000000
          Top = 21.000000000000000000
          Width = 58.146615384615400000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano/Mod')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 329.497487179487000000
          Top = 21.000000000000000000
          Width = 82.629400809716600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Compra')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 270.330755735493000000
          Top = 21.000000000000000000
          Width = 37.744294197031000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 21.000000000000000000
          Width = 82.629400809716600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 414.167120107962000000
          Top = 21.000000000000000000
          Width = 82.629400809716600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 16.321856950067500000
          Width = 319.296326585695000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset4."VEV_TIPO"> = '#39'P'#39', '#39'VE'#205'CULOS PR'#211'PRIOS'#39', IIF(' +
              '<frxDBDataset4."VEV_TIPO"> = '#39'T'#39', '#39'VE'#205'CULOS DE TERCEIROS'#39', '#39#39'))]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 21.000000000000000000
          Width = 82.629400809716600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 21.000000000000000000
          Width = 82.629400809716600000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Prev. Lucro')
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
        Height = 17.000000000000000000
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 201.982979757085000000
          Height = 15.000000000000000000
          DataField = 'VEL_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEL_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 206.063443994602000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOFAB'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEV_ANOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 239.727273954116000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'VEV_ANOMOD'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEV_ANOMOD"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 329.497487179487000000
          Top = 1.000000000000000000
          Width = 82.629400809716600000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORCOMPRA'
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
            '[frxDBDataset4."VEV_VALORCOMPRA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 270.330755735493000000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          DataField = 'VEV_PLACA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEV_PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 1.000000000000000000
          Width = 82.629400809716600000
          Height = 15.000000000000000000
          DataField = 'CUSTO'
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
            '[frxDBDataset4."CUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 233.606577597841000000
          Top = 1.000000000000000000
          Width = 4.080464237516870000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 414.167120107962000000
          Top = 1.000000000000000000
          Width = 82.629400809716600000
          Height = 15.000000000000000000
          DataField = 'VEV_DESPESAS'
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
            '[frxDBDataset4."VEV_DESPESAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 1.000000000000000000
          Width = 82.629400809716600000
          Height = 15.000000000000000000
          DataField = 'VEV_VALORVENDA'
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
            '[frxDBDataset4."VEV_VALORVENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 1.000000000000000000
          Width = 82.629400809716600000
          Height = 15.000000000000000000
          DataField = 'LUCRO'
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
            '[frxDBDataset4."LUCRO"]')
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
        Top = 245.669450000000000000
        Width = 755.906000000000000000
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 6.000000000000000000
          Width = 82.629400809716600000
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
            '[SUM(<frxDBDataset4."LUCRO">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 6.000000000000000000
          Width = 82.629400809716600000
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
            '[SUM(<frxDBDataset4."VEV_VALORVENDA">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 498.836753036437000000
          Top = 6.000000000000000000
          Width = 82.629400809716600000
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
            '[SUM(<frxDBDataset4."CUSTO">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 414.167120107962000000
          Top = 6.000000000000000000
          Width = 82.629400809716600000
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
            '[SUM(<frxDBDataset4."VEV_DESPESAS">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 301.954353576248000000
          Top = 6.000000000000000000
          Width = 110.172534412955000000
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
            '[SUM(<frxDBDataset4."VEV_VALORCOMPRA">,MasterData1)]')
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
        Height = 29.000000000000000000
        Top = 336.378170000000000000
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
        Top = 389.291590000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.566164410000000000
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
            'VEV04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 264
    Top = 112
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      
        'select VEV_TIPO, VEV_ANOFAB, VEV_ANOMOD, VEV_PLACA, VEV_DESPESAS' +
        ', VEV_VALORCOMPRA, VEV_VALORCOMPRA + VEV_DESPESAS as CUSTO,'
      
        '  VEV_VALORVENDA, VEV_VALORVENDA - (VEV_VALORCOMPRA + VEV_DESPES' +
        'AS) as LUCRO, VEL_DESCRICAO'
      'from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'where VEV_STATUS='#39'A'#39
      'order by VEV_TIPO, VEL_DESCRICAO')
    Left = 264
    Top = 160
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
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
