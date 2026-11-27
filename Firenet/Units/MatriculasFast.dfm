object FormMatriculasFast: TFormMatriculasFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Matr'#237'culas'
  ClientHeight = 548
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 776
    Top = 8
    Width = 437
    Height = 529
    Lines.Strings = (
      '01 - Matriculas no periodo por vendedor (antigo MatriculasQ01)'
      '02 - Matriculas no periodo por turma (antigo MatriculasQ02)'
      '03 - Matriculas com termino no periodo (antigo MatriculasQ03)'
      
        '04 - Matriculas com contas a receber (venda/material) (antigo Ma' +
        'triculasQ04)'
      '05 - Alunos aprovados e reprovados (antigo MatriculasQ05)'
      '06 - Matriculas duplicadas (antigo MatriculasQ06)'
      
        '07 - Matriculas com venda nao entregue / sem material (antigo Ma' +
        'triculasQ07)'
      
        '08 - Venda de material nao entregue com visto (antigo Matriculas' +
        'Q08)'
      '09 - Matriculas no periodo por professor (antigo MatriculasQ09)'
      '10 - Matriculas por convenio (antigo MatriculasQ10)'
      
        '11 - Alunos com mais de uma matricula ativa (antigo MatriculasQ1' +
        '1)'
      '12 - Percentual de desconto (antigo MatriculasQ12)'
      '13 - Alunos aniversariantes (antigo MatriculasQ13)'
      '14 - Matriculas por motivo de desistencia (antigo MatriculasQ14)'
      '15 - Matriculas por mailing (antigo MatriculasQ15)'
      '16 - Historico do aluno (antigo MatriculasQ16)'
      '18 - Matriculas por local de trabalho (antigo MatriculasQ18)'
      '19 - Matriculas por local onde estuda (antigo MatriculasQ19)'
      '20 - Matriculas sem notas do tipo (antigo MatriculasQ20)'
      '21 - Matriculas por condicao de pagamento (antigo MatriculasQ21)'
      '22 - Matriculas no periodo com endereco (antigo MatriculasQ22)'
      '23 - Emails dos alunos (antigo MatriculasQ23)')
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
    ReportOptions.Name = 'MAT01'
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
    Left = 24
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
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 641.653001349528000000
          Top = 18.000000000000000000
          Width = 71.408124156545200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 356.020504723347000000
          Top = 18.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_VENDEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 641.653001349528000000
          Top = 1.000000000000000000
          Width = 71.408124156545200000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 102.011605937922000000
          Top = 1.000000000000000000
          Width = 254.008898785425000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 404.986075573549000000
          Top = 1.000000000000000000
          Width = 176.480078272605000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 356.020504723347000000
          Top = 1.000000000000000000
          Width = 44.885106612685600000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 29.583365721997300000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 24
    Top = 112
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTC' +
        'ADASTRO, MAT_STATUS,'
      'CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by VEN_NOME, CLI_NOME')
    Left = 24
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 24
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
    ReportOptions.Name = 'MAT02'
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
    Left = 88
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
        Condition = 'frxDBDataset2."TUR_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 597.788010796221000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 345.819344129555000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 674.296715249662000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_TURMA'
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
            '[frxDBDataset2."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 505.977565452092000000
          Top = 2.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 428.448744939271000000
          Top = 2.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 559.023600539811000000
          Top = 2.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_ANO"]')
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
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 597.788010796221000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 118.333462887989000000
          Top = 1.000000000000000000
          Width = 225.445649122807000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 402.945843454791000000
          Top = 1.000000000000000000
          Width = 193.822051282051000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 345.819344129555000000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_VENDEDOR'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 674.296715249662000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_TIPO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_TIPO"]')
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
        Height = 39.000000000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'A'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 13.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'B'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 25.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'V'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 1.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo A:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 13.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo B:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 25.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo V:')
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
        Height = 39.000000000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'A'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 13.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'B'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 25.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(IIF(<frxDBDataset2."MAT_TIPO"> = '#39'V'#39', 1, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 1.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Tipo A:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 13.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Tipo B:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 620.230564102564000000
          Top = 25.000000000000000000
          Width = 84.669632928475000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Tipo V:')
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
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 380.519972930000000000
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
            'MAT02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 88
    Top = 112
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTC' +
        'ADASTRO, MAT_STATUS, MAT_TIPO,'
      'CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by TUR_DESCRICAO, CLI_NOME')
    Left = 88
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 88
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
    ReportOptions.Name = 'MAT03'
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
    Left = 152
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 400.905611336032000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 320.316442645074000000
          Width = 28.563249662618100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 656.954742240216000000
          Width = 48.965570850202400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 716.121473684210000000
          Width = 36.724178137651800000
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
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 600.848358974359000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 97.931141700404900000
          Top = 1.000000000000000000
          Width = 221.365184885290000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 400.905611336032000000
          Top = 1.000000000000000000
          Width = 41.824758434547900000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 320.316442645074000000
          Top = 1.000000000000000000
          Width = 79.569052631578900000
          Height = 13.000000000000000000
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 443.750485829959000000
          Top = 1.000000000000000000
          Width = 156.077757085020000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 656.954742240216000000
          Top = 1.000000000000000000
          Width = 58.146615384615400000
          Height = 13.000000000000000000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 716.121473684210000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 600.848358974359000000
          Top = 1.000000000000000000
          Width = 26.523017543859600000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_ANO"]')
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
        Top = 253.228510000000000000
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 380.086423600000000000
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
            'MAT03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 152
    Top = 112
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCR' +
        'ICAO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, CLI_FONE1'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      
        'where TUR_DTTERMINO between :datainicial and :datafinal and MAT_' +
        'STATUS='#39'A'#39' &FILTRO'
      'order by CLI_NOME')
    Left = 152
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 152
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
    ReportOptions.Name = 'MAT04'
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
    Left = 216
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
          Width = 955.306659000000000000
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
          Width = 956.639992340000000000
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
          Width = 956.639992340000000000
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
          Width = 955.306659010000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 16.000000000000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 713.687835454205000000
          Width = 21.288983728037400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TP')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Width = 74.004562483177600000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 735.990580312149000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 595.077783255140000000
          Width = 26.357789377570100000
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
          Left = 1005.651040867290000000
          Width = 74.004562483177600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 795.802486976635000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vecto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 855.614393641121000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 914.412539175701000000
          Width = 14.192655818691600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'St.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 56.770623274766300000
          Width = 40.550445196261700000
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
          Left = 402.463168572897000000
          Width = 37.509161806542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 546.417249019626000000
          Width = 45.619250845794400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per/Ano')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 642.724556360748000000
          Width = 68.935756833644800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Num. Docto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 4.055044519626170000
          Width = 24.330267117757000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 337.582456258878000000
          Width = 63.866951184112100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda C/M')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 41.564206326168200000
          Width = 12.165133558878500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'St')
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
        Top = 181.417440000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 735.990580312149000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          DataField = 'REE_DTEMISSAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."REE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 713.687835454205000000
          Width = 21.288983728037400000
          Height = 15.000000000000000000
          DataField = 'REE_PARCELAQTDE'
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
            '[frxDBDataset4."REE_PARCELAQTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Width = 74.004562483177600000
          Height = 15.000000000000000000
          DataField = 'REE_VALOR'
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
            '[frxDBDataset4."REE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 595.077783255140000000
          Width = 45.619250845794400000
          Height = 15.000000000000000000
          DataField = 'REE_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."REE_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 1005.651040867290000000
          Width = 74.004562483177600000
          Height = 15.000000000000000000
          DataField = 'REE_VALORPAGO'
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
            '[frxDBDataset4."REE_VALORPAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 795.802486976635000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          DataField = 'REE_DTVENCIMENTO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."REE_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 855.614393641121000000
          Width = 57.784384404672900000
          Height = 15.000000000000000000
          DataField = 'REE_DTPAGAMENTO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."REE_DTPAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 914.412539175701000000
          Width = 14.192655818691600000
          Height = 15.000000000000000000
          DataField = 'REE_STATUS'
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
            '[frxDBDataset4."REE_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 642.724556360748000000
          Width = 68.935756833644800000
          Height = 15.000000000000000000
          DataField = 'REE_NUMDOCTO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."REE_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 98.334829600934600000
          Width = 238.233865528037000000
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
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 56.770623274766300000
          Width = 41.564206326168200000
          Height = 15.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 337.582456258878000000
          Width = 63.866951184112100000
          Height = 15.000000000000000000
          DataField = 'CURSOMATERIAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CURSOMATERIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 547.431010149533000000
          Width = 45.619250845794400000
          Height = 15.000000000000000000
          DataField = 'PERIODOANO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PERIODOANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Width = 38.522922936448600000
          Height = 15.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 41.564206326168200000
          Width = 14.192655818691600000
          Height = 15.000000000000000000
          DataField = 'MAT_STATUS'
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
            '[frxDBDataset4."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 402.463168572897000000
          Width = 27.371550507476600000
          Height = 15.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 429.834719080374000000
          Width = 117.596291069159000000
          Height = 15.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_DESCRICAO"]')
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
        Height = 44.000000000000000000
        Top = 257.008040000000000000
        Width = 1084.725110000000000000
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 839.394215562617000000
          Top = 4.000000000000000000
          Width = 117.596291069159000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total em aberto:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Left = 960.031790021495000000
          Top = 4.000000000000000000
          Width = 119.623813328972000000
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
            
              '[SUM(IIF(<frxDBDataset4."REE_STATUS"> = '#39'A'#39', <frxDBDataset4."REE' +
              '_VALOR">, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 960.031790021495000000
          Top = 20.000000000000000000
          Width = 119.623813328972000000
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
            
              '[SUM(IIF(<frxDBDataset4."REE_STATUS"> = '#39'B'#39', <frxDBDataset4."REE' +
              '_VALORPAGO">, 0),MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 839.394215562617000000
          Top = 20.000000000000000000
          Width = 117.596291069159000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total pago:')
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
        Top = 325.039580000000000000
        Width = 1084.725110000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 708.249971070000000000
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
            'MAT04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 216
    Top = 112
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_TURMA, CLI_NOME,' +
        ' TUR_DESCRICAO,'
      '  TUR_PERIODO||'#39'/'#39'||coalesce(TUR_ANO,'#39#39') as PERIODOANO,'
      
        '  coalesce(MAT_VENDA,0)||'#39'/'#39'||coalesce(MAT_VENDAMATERIAL,0) as C' +
        'URSOMATERIAL,'
      
        '  REE_CODIGO, REE_NUMDOCTO, REE_PARCELAQTDE, REE_DTEMISSAO, REE_' +
        'DTVENCIMENTO, REE_DTPAGAMENTO, REE_STATUS, REE_VALOR, REE_VALORP' +
        'AGO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      
        'join VENDAS on VED_CODIGO=iif(:material='#39'S'#39', MAT_VENDAMATERIAL, ' +
        'MAT_VENDA)'
      
        'join RECEBER on REE_CLIENTE=MAT_CLIENTE and REE_NUMDOCTO like ii' +
        'f(VED_NOTA is not null, '#39'NF-'#39'||VED_NOTA||'#39'/%'#39', iif(VED_NFE is no' +
        't null, '#39'NFE-'#39'||VED_NFE||'#39'/%'#39', VED_CODIGO||'#39'/%'#39'))'
      
        'where REE_DTVENCIMENTO between :datainicial and :datafinal &FILT' +
        'RO'
      'order by CLI_NOME, MAT_CODIGO, REE_DTVENCIMENTO, REE_CODIGO')
    Left = 216
    Top = 160
    ParamData = <
      item
        Name = 'MATERIAL'
        DataType = ftString
        ParamType = ptInput
      end
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 216
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
    ReportOptions.Name = 'MAT05'
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
    Left = 280
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
        Height = 20.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'TUR_PROFESSOR'
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
            '[frxDBDataset5."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
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
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."TUR_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.213079330000000000
          Top = 1.000000000000000000
          Width = 55.086267210000000000
          Height = 16.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 68.480391070000000000
          Top = 1.000000000000000000
          Width = 197.902515520000000000
          Height = 16.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 18.000000000000000000
          Width = 26.523017543859600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 429.468860998650000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 459.052226720648000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 535.560931174089000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 584.526502024291000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
          Left = 633.492072874494000000
          Top = 18.000000000000000000
          Width = 57.126499325236200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aprovado')
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
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 459.052226720648000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 116.293230769231000000
          Top = 1.000000000000000000
          Width = 276.451452091768000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 535.560931174089000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 1.000000000000000000
          Width = 35.704062078272600000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 429.468860998650000000
          Top = 1.000000000000000000
          Width = 28.563249662618100000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 584.526502024291000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_TIPOMATRICULA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_TIPOMATRICULA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 633.492072874494000000
          Top = 1.000000000000000000
          Width = 57.126499325236200000
          Height = 13.000000000000000000
          DataField = 'MAT_APROVADO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."MAT_APROVADO"]')
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
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Top = 4.000000000000000000
          Width = 137.715668016194000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Matr'#237'culas na Turma:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 192.801935222672000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 29.000000000000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 419.527830000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
        Top = 472.441250000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.305462290000000000
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
            'MAT05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 280
    Top = 112
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_T' +
        'IPOMATRICULA, MAT_APROVADO, MAT_STATUS,'
      
        'CLI_NOME, VEN_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, T' +
        'UR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'where 1=1 &FILTRO'
      'order by VEN_NOME, TUR_DESCRICAO, CLI_NOME')
    Left = 280
    Top = 160
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
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
    ReportOptions.Name = 'MAT06'
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
    Left = 344
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
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
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 309.095165991903000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 534.540815114710000000
          Width = 27.543133603238900000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 12.000000000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 242.787622132254000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 309.095165991903000000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 353.980272604588000000
          Top = 1.000000000000000000
          Width = 177.500194331984000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 534.540815114710000000
          Top = 1.000000000000000000
          Width = 66.307543859649100000
          Height = 13.000000000000000000
          DataField = 'QTDE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."QTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."MAT_CLIENTE"]')
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
        Top = 253.228510000000000000
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.172847210000000000
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
            'MAT06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 344
    Top = 112
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      
        'select MAT_CLIENTE, CLI_NOME, MAT_TURMA, TUR_DESCRICAO, count(MA' +
        'T_TURMA) as QTDE'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'group by MAT_CLIENTE, CLI_NOME, MAT_TURMA, TUR_DESCRICAO'
      'having count(MAT_TURMA)>1'
      'order by CLI_NOME')
    Left = 344
    Top = 160
  end
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 344
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
    ReportOptions.Name = 'MAT07'
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
    Left = 408
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 319.296326585695000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 695.719152496626000000
          Width = 36.724178137651800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Width = 30.603481781376500000
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
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Width = 36.724178137651800000
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
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 526.379886639676000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 554.943136302294000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 97.931141700404900000
          Top = 1.000000000000000000
          Width = 221.365184885290000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 319.296326585695000000
          Top = 1.000000000000000000
          Width = 41.824758434547900000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 695.719152496626000000
          Top = 1.000000000000000000
          Width = 56.106383265856900000
          Height = 13.000000000000000000
          DataField = 'VENDA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."VENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 362.141201079622000000
          Top = 1.000000000000000000
          Width = 163.218569500675000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 583.506385964912000000
          Top = 1.000000000000000000
          Width = 66.307543859649100000
          Height = 13.000000000000000000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 526.379886639676000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 554.943136302294000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_ANO"]')
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
        Top = 253.228510000000000000
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 380.086423600000000000
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
            'MAT07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 408
    Top = 112
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, iif(:mate' +
        'rial='#39'S'#39', MAT_VENDAMATERIAL, MAT_VENDA) as VENDA,'
      
        'TUR_DESCRICAO, TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO' +
        ', CLI_NOME, VED_ENTREGUE'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      
        'left join VENDAS on VED_CODIGO=iif(:material='#39'S'#39', MAT_VENDAMATER' +
        'IAL, MAT_VENDA)'
      'where TUR_DTINICIO between :datainicial and :datafinal &FILTRO'
      'order by CLI_NOME')
    Left = 408
    Top = 160
    ParamData = <
      item
        Name = 'MATERIAL'
        DataType = ftString
        ParamType = ptInput
      end
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
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
    ReportOptions.Name = 'MAT08'
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
    Left = 472
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
        Height = 32.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset8."TUR_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 17.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 17.000000000000000000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 483.535012145749000000
          Top = 17.000000000000000000
          Width = 36.724178137651800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 371.322245614035000000
          Top = 17.000000000000000000
          Width = 30.603481781376500000
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
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 17.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 313.175630229420000000
          Top = 17.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_TURMA'
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
            '[frxDBDataset8."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 546.782207827260000000
          Top = 17.000000000000000000
          Width = 97.931141700404900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Assinatura Aluno')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 341.738879892038000000
          Top = 17.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        Height = 21.000000000000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 10.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 97.931141700404900000
          Top = 10.000000000000000000
          Width = 213.204256410256000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 483.535012145749000000
          Top = 10.000000000000000000
          Width = 56.106383265856900000
          Height = 13.000000000000000000
          DataField = 'MAT_VENDAMATERIAL'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_VENDAMATERIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 371.322245614035000000
          Top = 10.000000000000000000
          Width = 66.307543859649100000
          Height = 13.000000000000000000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 10.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 10.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 313.175630229420000000
          Top = 10.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 341.738879892038000000
          Top = 10.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_ANO"]')
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
        Top = 245.669450000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8a
        DataSetName = 'frxDBDataset8a'
        RowCount = 0
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 109.152418353576000000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'VEI_PRODUTO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."VEI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 155.057641025641000000
          Top = 1.000000000000000000
          Width = 294.813541160594000000
          Height = 13.000000000000000000
          DataField = 'VEI_DESCRICAO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."VEI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 451.911414304993000000
          Top = 1.000000000000000000
          Width = 71.408124156545200000
          Height = 13.000000000000000000
          DataField = 'VEI_QUANTIDADE'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8a."VEI_QUANTIDADE"]')
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
        Top = 321.260050000000000000
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
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 382.376584160000000000
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
            'MAT08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 472
    Top = 112
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_VENDA' +
        ', MAT_VENDAMATERIAL, TUR_DESCRICAO,'
      
        'TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, VED' +
        '_ENTREGUE'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDAS on MAT_VENDAMATERIAL=VED_CODIGO'
      
        'where TUR_DTINICIO between :datainicial and :datafinal and VED_E' +
        'NTREGUE='#39'N'#39' &FILTRO'
      'order by TUR_DESCRICAO, CLI_NOME')
    Left = 472
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 472
    Top = 208
  end
  object DS08: TDataSource
    DataSet = QY08
    Left = 504
    Top = 64
  end
  object frxDBDataset8a: TfrxDBDataset
    UserName = 'frxDBDataset8a'
    CloseDataSource = False
    DataSet = QY08A
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 112
  end
  object QY08A: TFDQuery
    MasterSource = DS08
    MasterFields = 'MAT_VENDAMATERIAL'
    Connection = DM.FDConnection1
    Transaction = TR08A
    SQL.Strings = (
      
        'select VEI_PRODUTO, VEI_DESCRICAO, VEI_QUANTIDADE from VENDASITE' +
        'NS'
      'where VEI_VENDA=:MAT_VENDAMATERIAL'
      'order by VEI_CODIGO')
    Left = 504
    Top = 160
    ParamData = <
      item
        Name = 'MAT_VENDAMATERIAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR08A: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 504
    Top = 208
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
    ReportOptions.Name = 'MAT09'
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
    Left = 568
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
        Height = 20.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset9."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'TUR_PROFESSOR'
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
            '[frxDBDataset9."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 32.000000000000000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset9."TUR_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 11.772139330000000000
          Top = 1.000000000000000000
          Width = 55.086267210000000000
          Height = 16.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 76.039451070000000000
          Top = 1.000000000000000000
          Width = 197.902515520000000000
          Height = 16.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 18.000000000000000000
          Width = 26.523017543859600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307932523617000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 450.891298245614000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 527.400002699055000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        Frame.Typ = []
        Height = 12.000000000000000000
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 450.891298245614000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 116.293230769231000000
          Top = 1.000000000000000000
          Width = 276.451452091768000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 527.400002699055000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 1.000000000000000000
          Width = 26.523017543859600000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307932523617000000
          Top = 1.000000000000000000
          Width = 28.563249662618100000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."TUR_ANO"]')
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
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Top = 4.000000000000000000
          Width = 137.715668016194000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Matr'#237'culas na Turma:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 192.801935222672000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 29.000000000000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 419.527830000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
        Top = 472.441250000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.305462290000000000
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
            'MAT09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 568
    Top = 112
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS,'
      
        'CLI_NOME, VEN_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, T' +
        'UR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by VEN_NOME, TUR_DESCRICAO, CLI_NOME')
    Left = 568
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 568
    Top = 208
  end
  object frxReport10: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT10'
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
    Left = 632
    Top = 64
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 15.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 517.198842105263000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 326.437139001349000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 579.425921727395000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'V. Pago')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 390.704450742240000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vecto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 453.951646423752000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 234.626693657220000000
          Width = 72.428240215924400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Num Docto')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933873144000000
          Width = 17.341973009446700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TP')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 219.324952766532000000
          Width = 14.281624831309000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'St')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 84.669632928475000000
          Width = 134.655319838057000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 1.020116059379220000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 42.844874493927100000
          Width = 41.824758434547900000
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
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 654.914510121457000000
          Width = 98.951257759784100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tp Doc.')
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset10
        DataSetName = 'frxDBDataset10'
        RowCount = 0
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 325.417022941970000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          DataField = 'REE_DTEMISSAO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."REE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 516.178726045884000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
          DataField = 'REE_VALOR'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
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
            '[frxDBDataset10."REE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Width = 66.307543859649100000
          Height = 15.000000000000000000
          DataField = 'REE_VALORPAGO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
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
            '[frxDBDataset10."REE_VALORPAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 389.684334682861000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          DataField = 'REE_DTVENCIMENTO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."REE_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 452.931530364372000000
          Width = 62.227079622132200000
          Height = 15.000000000000000000
          DataField = 'REE_DTPAGAMENTO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."REE_DTPAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 233.606577597841000000
          Width = 72.428240215924400000
          Height = 15.000000000000000000
          DataField = 'REE_NUMDOCTO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."REE_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933873144000000
          Width = 17.341973009446700000
          Height = 15.000000000000000000
          DataField = 'REE_PARCELAQTDE'
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
            '[frxDBDataset10."REE_PARCELAQTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 84.669632928475000000
          Width = 134.655319838057000000
          Height = 15.000000000000000000
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
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 218.304836707152000000
          Width = 14.281624831309000000
          Height = 15.000000000000000000
          DataField = 'MAT_STATUS'
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
            '[frxDBDataset10."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 42.844874493927100000
          Width = 41.824758434547900000
          Height = 15.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 654.914510121457000000
          Width = 98.951257759784100000
          Height = 15.000000000000000000
          DataField = 'REE_TIPODOCTO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."REE_TIPODOCTO"]')
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
        Height = 44.000000000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 612.069635627530000000
          Top = 4.000000000000000000
          Width = 66.307543859649100000
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
            '[SUM(<frxDBDataset10."PAGOSOMA">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 432.529209176788000000
          Top = 4.000000000000000000
          Width = 103.031721997301000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total pago:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 541.681627530364000000
          Top = 4.000000000000000000
          Width = 70.388008097166000000
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
            '[SUM(<frxDBDataset10."VALORSOMA">,MasterData1)]')
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
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.356468100000000000
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
            'MAT10 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    CloseDataSource = False
    DataSet = QY10
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 112
  end
  object QY10: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR10
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_VENDA, CLI_NOME,' +
        ' VED_CONDICAO, CPG_DESCRICAO,'
      
        '  REE_CODIGO, REE_NUMDOCTO, REE_PARCELAQTDE, REE_DTEMISSAO, REE_' +
        'DTVENCIMENTO, REE_DTPAGAMENTO,'
      
        '  REE_VALOR, REE_VALORPAGO, REE_TIPODOCTO, coalesce(REE_VALOR,0)' +
        ' as VALORSOMA, coalesce(REE_VALORPAGO,0) as PAGOSOMA'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join VENDAS on MAT_VENDA=VED_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      
        'left join RECEBER on REE_CLIENTE=MAT_CLIENTE and REE_NUMDOCTO li' +
        'ke iif(VED_NOTA is not null, '#39'NF-'#39'||VED_NOTA||'#39'/%'#39', iif(VED_NFE ' +
        'is not null, '#39'NFE-'#39'||VED_NFE||'#39'/%'#39', VED_CODIGO||'#39'%'#39'))'
      
        '  and REE_DTPAGAMENTO between :datainicial and :datafinal and RE' +
        'E_STATUS='#39'B'#39
      'where MAT_CONTABILIZAR=:contabilizar &FILTRO'
      '  and (VED_CODIGO is null or REE_CODIGO is not null)'
      'order by CLI_NOME, MAT_CODIGO, REE_DTPAGAMENTO, REE_CODIGO')
    Left = 632
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
      end
      item
        Name = 'CONTABILIZAR'
        DataType = ftString
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR10: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 632
    Top = 208
  end
  object frxReport11: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT11'
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
    Left = 696
    Top = 64
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
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
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 306.034817813765000000
          Width = 27.543133603238900000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 12.000000000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset11
        DataSetName = 'frxDBDataset11'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 242.787622132254000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 306.034817813765000000
          Top = 1.000000000000000000
          Width = 66.307543859649100000
          Height = 13.000000000000000000
          DataField = 'QTDE'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."QTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."MAT_CLIENTE"]')
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
        Top = 253.228510000000000000
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.172847210000000000
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
            'MAT11 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxDBDataset11'
    CloseDataSource = False
    DataSet = QY11
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 112
  end
  object QY11: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR11
    SQL.Strings = (
      
        'select MAT_CLIENTE, CLI_NOME, MAT_STATUS, count(MAT_CODIGO) as Q' +
        'TDE'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'where MAT_STATUS='#39'A'#39
      'group by MAT_CLIENTE, CLI_NOME, MAT_STATUS'
      'having count(MAT_CODIGO) > 1'
      'order by CLI_NOME')
    Left = 696
    Top = 160
  end
  object TR11: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 696
    Top = 208
  end
  object frxReport12: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT12'
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
    Left = 24
    Top = 288
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
        Condition = 'frxDBDataset12."TUR_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 591.667314439946000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 336.638299595142000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 667.155902834008000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 502.917217273954000000
          Top = 2.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 426.408512820513000000
          Top = 2.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 707.960545209177000000
          Top = 18.000000000000000000
          Width = 43.864990553306300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '% Desc.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 554.943136302294000000
          Top = 2.000000000000000000
          Width = 49.985686909581600000
          Height = 15.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."TUR_ANO"]')
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
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 591.667314439946000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 98.951257759784100000
          Top = 1.000000000000000000
          Width = 236.666925775978000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 1.000000000000000000
          Width = 193.822051282051000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 336.638299595142000000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_VENDEDOR'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 667.155902834008000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 707.960545209177000000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'VED_DESCPORC'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset12."VED_DESCPORC"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT12 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxDBDataset12'
    CloseDataSource = False
    DataSet = QY12
    BCDToCurrency = False
    DataSetOptions = []
    Left = 24
    Top = 336
  end
  object QY12: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR12
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTC' +
        'ADASTRO, MAT_STATUS,'
      
        'CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO, VED_DES' +
        'CPORC'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDAS on MAT_VENDA=VED_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by TUR_DESCRICAO, CLI_NOME')
    Left = 24
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR12: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 24
    Top = 432
  end
  object frxReport13: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT13'
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
    Left = 88
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset13
        DataSetName = 'frxDBDataset13'
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
        Condition = 'frxDBDataset13."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 361.121085020243000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data N'#237'ver')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 437.629789473684000000
          Top = 18.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'TUR_PROFESSOR'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset13."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."VEN_NOME"]')
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
        DataSet = frxDBDataset13
        DataSetName = 'frxDBDataset13'
        RowCount = 0
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 361.121085020243000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'CLI_DTNASC'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."CLI_DTNASC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 110.172534412955000000
          Top = 1.000000000000000000
          Width = 249.928434547908000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 486.595360323887000000
          Top = 1.000000000000000000
          Width = 191.781819163293000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 437.629789473684000000
          Top = 1.000000000000000000
          Width = 44.885106612685600000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset13
          DataSetName = 'frxDBDataset13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset13."MAT_CODIGO"]')
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
        Height = 29.000000000000000000
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
          Left = 381.172847210000000000
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
            'MAT13 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset13: TfrxDBDataset
    UserName = 'frxDBDataset13'
    CloseDataSource = False
    DataSet = QY13
    BCDToCurrency = False
    DataSetOptions = []
    Left = 88
    Top = 336
  end
  object QY13: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR13
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, TUR_DESCRICAO, TUR_PR' +
        'OFESSOR, VEN_NOME, CLI_NOME, CLI_DTNASC'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      
        'where extract(month from CLI_DTNASC)=:mes and MAT_STATUS='#39'A'#39' &FI' +
        'LTRO'
      'order by VEN_NOME, TUR_DESCRICAO, CLI_DTNASC')
    Left = 88
    Top = 384
    ParamData = <
      item
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR13: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 88
    Top = 432
  end
  object frxReport14: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT14'
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
    Left = 152
    Top = 288
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
        Condition = 'frxDBDataset14."MOT_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_DESISTENCIA'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_DESISTENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'MOT_DESCRICAO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MOT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset14
        DataSetName = 'frxDBDataset14'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 209.123792172740000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 460.072342780027000000
          Top = 1.000000000000000000
          Width = 121.393811066127000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Width = 112.212766531714000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset14
          DataSetName = 'frxDBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset14."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT14 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset14: TfrxDBDataset
    UserName = 'frxDBDataset14'
    CloseDataSource = False
    DataSet = QY14
    BCDToCurrency = False
    DataSetOptions = []
    Left = 152
    Top = 336
  end
  object QY14: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR14
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS, MAT_DESISTENCIA, CLI_NOME,'
      
        'VEN_NOME, MOT_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIO' +
        'DO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join MOTIVOS on MAT_DESISTENCIA=MOT_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by MOT_DESCRICAO, TUR_DESCRICAO, CLI_NOME')
    Left = 152
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR14: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 152
    Top = 432
  end
  object frxReport15: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT15'
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
    Left = 216
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset15
        DataSetName = 'frxDBDataset15'
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
        Condition = 'frxDBDataset15."MAI_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'CLI_MAILING'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset15."CLI_MAILING"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'MAI_DESCRICAO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset15
        DataSetName = 'frxDBDataset15'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 209.123792172740000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 1.000000000000000000
          Width = 124.454159244264000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 1.000000000000000000
          Width = 44.885106612685600000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Width = 112.212766531714000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset15
          DataSetName = 'frxDBDataset15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset15."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT15 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset15: TfrxDBDataset
    UserName = 'frxDBDataset15'
    CloseDataSource = False
    DataSet = QY15
    BCDToCurrency = False
    DataSetOptions = []
    Left = 216
    Top = 336
  end
  object QY15: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR15
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS, MAT_DESISTENCIA, CLI_NOME, CLI_MAILING,'
      
        'VEN_NOME, MAI_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIO' +
        'DO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by MAI_DESCRICAO, TUR_DESCRICAO, CLI_NOME')
    Left = 216
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR15: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 216
    Top = 432
  end
  object frxReport16: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT16'
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
    Left = 280
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset16
        DataSetName = 'frxDBDataset16'
      end
      item
        DataSet = frxDBDataset16a
        DataSetName = 'frxDBDataset16a'
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 119.000000000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset16
        DataSetName = 'frxDBDataset16'
        RowCount = 0
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Top = 34.000000000000000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Matr'#237'cula:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Top = 50.000000000000000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
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
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 171.379497975708000000
          Top = 34.000000000000000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Turma:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 24.482785425101200000
          Top = 74.000000000000000000
          Width = 115.273114709852000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conceito Discurso:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 404.986075573549000000
          Top = 74.000000000000000000
          Width = 102.011605937922000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia Exerc'#237'cios:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 24.482785425101200000
          Top = 90.000000000000000000
          Width = 115.273114709852000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conceito Exerc'#237'cios:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 171.379497975708000000
          Top = 50.000000000000000000
          Width = 63.247195681511500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 76.508704453441300000
          Top = 34.000000000000000000
          Width = 38.764410256410300000
          Height = 15.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 239.727273954116000000
          Top = 34.000000000000000000
          Width = 38.764410256410300000
          Height = 15.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 282.572148448043000000
          Top = 34.000000000000000000
          Width = 232.586461538461000000
          Height = 15.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 239.727273954116000000
          Top = 50.000000000000000000
          Width = 38.764410256410300000
          Height = 15.000000000000000000
          DataField = 'TUR_PROFESSOR'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 282.572148448043000000
          Top = 50.000000000000000000
          Width = 232.586461538461000000
          Height = 15.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 212.184140350877000000
          Top = 74.000000000000000000
          Width = 115.273114709852000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conceito Literatura:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 212.184140350877000000
          Top = 90.000000000000000000
          Width = 115.273114709852000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conceito Geral:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 76.508704453441300000
          Top = 50.000000000000000000
          Width = 55.086267206477700000
          Height = 15.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 144.856480431849000000
          Top = 74.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_CONCEITODISCURSO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CONCEITODISCURSO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 144.856480431849000000
          Top = 90.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_CONCEITOEXERCICIOS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CONCEITOEXERCICIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 332.557835357625000000
          Top = 74.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_CONCEITOLITERATURA'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CONCEITOLITERATURA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 332.557835357625000000
          Top = 90.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_CONCEITOGERAL'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CONCEITOGERAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 512.098261808367000000
          Top = 74.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_MEDIAEXERCICIOS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_MEDIAEXERCICIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 512.098261808367000000
          Top = 90.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_MEDIAFINAL'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_MEDIAFINAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 404.986075573549000000
          Top = 90.000000000000000000
          Width = 102.011605937922000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia Final:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 404.986075573549000000
          Top = 106.000000000000000000
          Width = 102.011605937922000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Aprovado:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 512.098261808367000000
          Top = 106.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'MAT_APROVADO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_APROVADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.804642375168700000
          Top = 106.000000000000000000
          Width = 98.951257759784100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Notas Avalia'#231#245'es:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Top = 6.000000000000000000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Top = 6.000000000000000000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset16."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 579.425921727395000000
          Top = 74.000000000000000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Aulas Dadas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 579.425921727395000000
          Top = 90.000000000000000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Presen'#231'as:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 579.425921727395000000
          Top = 106.000000000000000000
          Width = 74.468472334682800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Faltas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 658.994974358974000000
          Top = 90.000000000000000000
          Width = 22.442553306342800000
          Height = 15.000000000000000000
          DataField = 'PRESENCAS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."PRESENCAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 658.994974358974000000
          Top = 106.000000000000000000
          Width = 22.442553306342800000
          Height = 15.000000000000000000
          DataField = 'FALTAS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."FALTAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 658.994974358974000000
          Top = 74.000000000000000000
          Width = 46.925338731444000000
          Height = 15.000000000000000000
          DataField = 'AULASDADAS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."AULASDADAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 522.299422402159000000
          Top = 50.000000000000000000
          Width = 51.005802968960900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 50.000000000000000000
          Width = 165.258801619433000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."DIAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 643.693233468286000000
          Top = 34.000000000000000000
          Width = 75.488588394062100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Encontros:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 722.242170040486000000
          Top = 34.000000000000000000
          Width = 27.543133603238900000
          Height = 15.000000000000000000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 522.299422402159000000
          Top = 34.000000000000000000
          Width = 51.005802968960900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 34.000000000000000000
          Width = 28.563249662618100000
          Height = 15.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 684.497875843455000000
          Top = 90.000000000000000000
          Width = 51.005802968960900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset16."PRESENCAS"> = 0, '#39'0'#39', FormatFloat('#39'00.00'#39',' +
              ' <frxDBDataset16."PERCPRESENCA">))]%')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 34.000000000000000000
          Width = 30.603481781376500000
          Height = 15.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset16
          DataSetName = 'frxDBDataset16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16."TUR_ANO"]')
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
        Top = 287.244280000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset16a
        DataSetName = 'frxDBDataset16a'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 68.347775978407500000
          Top = 1.000000000000000000
          Width = 55.086267206477700000
          Height = 13.000000000000000000
          DataField = 'AVA_DTCADASTRO'
          DataSet = frxDBDataset16a
          DataSetName = 'frxDBDataset16a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16a."AVA_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 125.474275303644000000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'AVA_TIPO'
          DataSet = frxDBDataset16a
          DataSetName = 'frxDBDataset16a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset16a."AVA_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 166.278917678812000000
          Top = 1.000000000000000000
          Width = 160.158221322537000000
          Height = 13.000000000000000000
          DataField = 'AVT_DESCRICAO'
          DataSet = frxDBDataset16a
          DataSetName = 'frxDBDataset16a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset16a."AVT_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 328.477371120108000000
          Top = 1.000000000000000000
          Width = 63.247195681511500000
          Height = 13.000000000000000000
          DataField = 'AVA_NOTA'
          DataSet = frxDBDataset16a
          DataSetName = 'frxDBDataset16a'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset16a."AVA_NOTA"]')
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
        Top = 359.055350000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 381.774715680000000000
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
            'MAT16 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset16: TfrxDBDataset
    UserName = 'frxDBDataset16'
    CloseDataSource = False
    DataSet = QY16
    BCDToCurrency = False
    DataSetOptions = []
    Left = 280
    Top = 336
  end
  object QY16: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR16
    SQL.Strings = (
      'select M.*,'
      
        '  iif(char_length(M.DIASSEMANA)>3, left(M.DIASSEMANA, char_lengt' +
        'h(M.DIASSEMANA)-3), '#39#39') as DIAS,'
      
        '  iif(M.AULASDADAS=0, 0, cast(M.PRESENCAS as double precision)*1' +
        '00/M.AULASDADAS) as PERCPRESENCA'
      'from ('
      
        '  select MAT_CODIGO, MAT_CLIENTE, MAT_CONCEITODISCURSO, MAT_CONC' +
        'EITOEXERCICIOS, MAT_CONCEITOGERAL, MAT_CONCEITOLITERATURA,'
      
        '    MAT_MEDIAEXERCICIOS, MAT_MEDIAFINAL, MAT_STATUS, MAT_DESISTE' +
        'NCIA, MAT_TURMA, MAT_DTCADASTRO, MAT_APROVADO, CLI_NOME,'
      
        '    TUR_PROFESSOR, TUR_DESCRICAO, TUR_ENCONTROS, TUR_PERIODO, TU' +
        'R_ANO, VEN_NOME,'
      
        '    iif(TUR_DOMINGO='#39'S'#39','#39'DOM - '#39','#39#39')||iif(TUR_SEGUNDA='#39'S'#39','#39'SEG -' +
        ' '#39','#39#39')||iif(TUR_TERCA='#39'S'#39','#39'TER - '#39','#39#39')||iif(TUR_QUARTA='#39'S'#39','#39'QUA ' +
        '- '#39','#39#39')||iif(TUR_QUINTA='#39'S'#39','#39'QUI - '#39','#39#39')||iif(TUR_SEXTA='#39'S'#39','#39'SEX' +
        ' - '#39','#39#39')||iif(TUR_SABADO='#39'S'#39','#39'SAB - '#39','#39#39') as DIASSEMANA,'
      
        '    (select count(CHA_CODIGO) from CHAMADAS left join CALENDARIO' +
        'S on CHA_CALENDARIO=CAL_CODIGO'
      
        '      where CHA_MATRICULA=MAT_CODIGO and CAL_TURMA=MAT_TURMA and' +
        ' (CAL_TIPO='#39'NORMAL'#39' or CAL_TIPO='#39'EXTRA'#39')'
      
        '      and CAL_STATUSCHAMADA='#39'F'#39' and CHA_PRESENCA='#39'P'#39') as PRESENC' +
        'AS,'
      
        '    (select count(CHA_CODIGO) from CHAMADAS left join CALENDARIO' +
        'S on CHA_CALENDARIO=CAL_CODIGO'
      
        '      where CHA_MATRICULA=MAT_CODIGO and (CAL_TIPO='#39'NORMAL'#39' or C' +
        'AL_TIPO='#39'EXTRA'#39')'
      '      and CAL_STATUSCHAMADA='#39'F'#39' and CHA_PRESENCA='#39'X'#39') as FALTAS,'
      
        '    (select count(CAL_CODIGO) from CALENDARIOS where CAL_STATUSC' +
        'HAMADA='#39'F'#39
      
        '      and (CAL_TIPO='#39'NORMAL'#39' or CAL_TIPO='#39'EXTRA'#39') and CAL_TURMA=' +
        'MAT_TURMA) as AULASDADAS'
      '  from MATRICULAS'
      '  left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      '  left join TURMAS on MAT_TURMA=TUR_CODIGO'
      '  left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      
        '  where (MAT_STATUS='#39'A'#39' or MAT_STATUS='#39'B'#39' or MAT_STATUS='#39'D'#39') &FI' +
        'LTRO'
      ') M'
      'order by M.CLI_NOME')
    Left = 280
    Top = 384
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR16: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 432
  end
  object DS16: TDataSource
    DataSet = QY16
    Left = 312
    Top = 288
  end
  object frxDBDataset16a: TfrxDBDataset
    UserName = 'frxDBDataset16a'
    CloseDataSource = False
    DataSet = QY16A
    BCDToCurrency = False
    DataSetOptions = []
    Left = 312
    Top = 336
  end
  object QY16A: TFDQuery
    MasterSource = DS16
    MasterFields = 'MAT_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR16A
    SQL.Strings = (
      
        'select AVA_DTCADASTRO, AVA_TIPO, AVT_DESCRICAO, AVA_NOTA from AV' +
        'ALIACOES'
      'left join AVALIACOESTIPO on AVA_TIPO=AVT_CODIGO'
      'where AVA_MATRICULA=:MAT_CODIGO'
      'order by AVA_DTCADASTRO, AVA_CODIGO')
    Left = 312
    Top = 384
    ParamData = <
      item
        Name = 'MAT_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR16A: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 312
    Top = 432
  end
  object frxReport18: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT18'
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
    Left = 376
    Top = 288
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
        Condition = 'frxDBDataset18."LCA_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'CLI_LOCALTRABALHO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset18."CLI_LOCALTRABALHO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'LCA_DESCRICAO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."LCA_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 294.813541160594000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset18
        DataSetName = 'frxDBDataset18'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 209.123792172740000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 1.000000000000000000
          Width = 124.454159244264000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 294.813541160594000000
          Width = 112.212766531714000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset18
          DataSetName = 'frxDBDataset18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset18."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT18 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset18: TfrxDBDataset
    UserName = 'frxDBDataset18'
    CloseDataSource = False
    DataSet = QY18
    BCDToCurrency = False
    DataSetOptions = []
    Left = 376
    Top = 336
  end
  object QY18: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR18
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS, MAT_DESISTENCIA, CLI_NOME, CLI_LOCALTRABALHO,'
      
        'VEN_NOME, LCA_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIO' +
        'DO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join LOCAIS on CLI_LOCALTRABALHO=LCA_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by LCA_DESCRICAO, TUR_DESCRICAO, CLI_NOME')
    Left = 376
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR18: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 376
    Top = 432
  end
  object frxReport19: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT19'
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
    Left = 440
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset19
        DataSetName = 'frxDBDataset19'
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
        Condition = 'frxDBDataset19."LCA_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'CLI_LOCALESTUDA'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset19."CLI_LOCALESTUDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'LCA_DESCRICAO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."LCA_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 294.813541160594000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset19
        DataSetName = 'frxDBDataset19'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 209.123792172740000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 1.000000000000000000
          Width = 124.454159244264000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 294.813541160594000000
          Width = 112.212766531714000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset19
          DataSetName = 'frxDBDataset19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset19."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT19 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset19: TfrxDBDataset
    UserName = 'frxDBDataset19'
    CloseDataSource = False
    DataSet = QY19
    BCDToCurrency = False
    DataSetOptions = []
    Left = 440
    Top = 336
  end
  object QY19: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR19
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS, MAT_DESISTENCIA, CLI_NOME, CLI_LOCALESTUDA,'
      
        'VEN_NOME, LCA_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIO' +
        'DO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join LOCAIS on CLI_LOCALESTUDA=LCA_CODIGO'
      'where MAT_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by LCA_DESCRICAO, TUR_DESCRICAO, CLI_NOME')
    Left = 440
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR19: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 440
    Top = 432
  end
  object frxReport20: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT20'
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
    Left = 504
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset20
        DataSetName = 'frxDBDataset20'
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
        Condition = 'frxDBDataset20."VEN_NOME"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 18.000000000000000000
          Width = 73.448356275303600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 18.000000000000000000
          Width = 36.724178137651800000
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
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'TUR_PROFESSOR'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset20."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        DataSet = frxDBDataset20
        DataSetName = 'frxDBDataset20'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 1.000000000000000000
          Width = 73.448356275303600000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 279.511800269906000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 416.207352226721000000
          Top = 1.000000000000000000
          Width = 164.238685560054000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 715.101357624831000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 581.466153846154000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 610.029403508772000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset20
          DataSetName = 'frxDBDataset20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset20."TUR_ANO"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT20 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset20: TfrxDBDataset
    UserName = 'frxDBDataset20'
    CloseDataSource = False
    DataSet = QY20
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 336
  end
  object QY20: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR20
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_DTCAD' +
        'ASTRO, TUR_DESCRICAO,'
      'TUR_PROFESSOR, VEN_NOME, TUR_PERIODO, TUR_ANO, CLI_NOME'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      
        'where not exists(select 1 from AVALIACOES where AVA_MATRICULA=MA' +
        'T_CODIGO and AVA_TIPO=:tipo) &FILTRO'
      'order by VEN_NOME, MAT_TURMA, CLI_NOME')
    Left = 504
    Top = 384
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR20: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 504
    Top = 432
  end
  object frxReport21: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT21'
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
    Left = 568
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset21
        DataSetName = 'frxDBDataset21'
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
        Condition = 'frxDBDataset21."CPG_DESCRICAO"'
        ReprintOnNewPage = True
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 18.000000000000000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 603.908707152497000000
          Top = 18.000000000000000000
          Width = 57.126499325236200000
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
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
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
            'Cliente')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 384.583754385965000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 737.543910931174000000
          Top = 18.000000000000000000
          Width = 16.321856950067500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'St.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          DataField = 'CPG_CODIGO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset21."CPG_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.000000000000000000
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."CPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 546.782207827260000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 270.330755735493000000
          Top = 18.000000000000000000
          Width = 58.146615384615400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 575.345457489878000000
          Top = 18.000000000000000000
          Width = 23.462669365722000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 662.055322537112000000
          Top = 18.000000000000000000
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
            'Valor Venda')
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
        DataSet = frxDBDataset21
        DataSetName = 'frxDBDataset21'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 603.908707152497000000
          Top = 1.000000000000000000
          Width = 57.126499325236200000
          Height = 13.000000000000000000
          DataField = 'MAT_DTCADASTRO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."MAT_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 85.689748987854200000
          Top = 1.000000000000000000
          Width = 184.641006747638000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 416.207352226721000000
          Top = 1.000000000000000000
          Width = 131.594971659919000000
          Height = 13.000000000000000000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 384.583754385965000000
          Top = 1.000000000000000000
          Width = 30.603481781376500000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 1.000000000000000000
          Width = 38.764410256410300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 737.543910931174000000
          Top = 1.000000000000000000
          Width = 16.321856950067500000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset21."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 546.782207827260000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 270.330755735493000000
          Width = 112.212766531714000000
          Height = 13.000000000000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 575.345457489878000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset21."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 662.055322537112000000
          Top = 1.000000000000000000
          Width = 72.428240215924400000
          Height = 13.000000000000000000
          DataField = 'VED_VALORTOTAL'
          DataSet = frxDBDataset21
          DataSetName = 'frxDBDataset21'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset21."VED_VALORTOTAL"]')
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
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 29.000000000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.000000000000000000
          Width = 128.534623481781000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580296896090000
          Top = 4.000000000000000000
          Width = 108.132302294197000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Matr'#237'culas:')
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
          Left = 381.305462290000000000
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
            'MAT21 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset21: TfrxDBDataset
    UserName = 'frxDBDataset21'
    CloseDataSource = False
    DataSet = QY21
    BCDToCurrency = False
    DataSetOptions = []
    Left = 568
    Top = 336
  end
  object QY21: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR21
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_S' +
        'TATUS, MAT_VENDA, VED_VALORTOTAL,'
      
        'CLI_NOME, VEN_NOME, CPG_CODIGO, CPG_DESCRICAO, TUR_PROFESSOR, TU' +
        'R_DESCRICAO, TUR_PERIODO, TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join VENDAS on MAT_VENDA=VED_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      'where 1=1 &FILTRO'
      'order by CPG_DESCRICAO, TUR_DESCRICAO, CLI_NOME')
    Left = 568
    Top = 384
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR21: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 568
    Top = 432
  end
  object frxReport22: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT22'
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
    Left = 632
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset22
        DataSetName = 'frxDBDataset22'
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
          Width = 955.306659000000000000
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
          Width = 956.639992340000000000
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
          Width = 956.639992340000000000
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
          Width = 955.306659010000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Width = 24.330267117757000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 51.701817625233600000
          Width = 33.454117286915900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 917.453822565420000000
          Width = 22.302744857943900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 838.380454432710000000
          Width = 37.509161806542000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone 1')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 1049.242769453270000000
          Width = 36.495400676635500000
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
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 994.499668438318000000
          Width = 24.330267117757000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 1021.871218945790000000
          Width = 24.330267117757000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 350.761350947664000000
          Width = 53.729339885046700000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 644.752078620561000000
          Width = 34.467878416822400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 727.880491272897000000
          Width = 39.536684066355100000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 593.050260995327000000
          Width = 22.302744857943900000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 821.146515224299000000
          Width = 14.192655818691600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 245.330193437383000000
          Width = 44.605489715887800000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato')
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
        Top = 181.417440000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset22
        DataSetName = 'frxDBDataset22'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 51.701817625233600000
          Top = 1.000000000000000000
          Width = 33.454117286915900000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 86.169696042056100000
          Top = 1.000000000000000000
          Width = 158.146736265421000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 917.453822565420000000
          Top = 1.000000000000000000
          Width = 79.073368132710300000
          Height = 13.000000000000000000
          DataField = 'CLI_CPF'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_CPF"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 838.380454432710000000
          Top = 1.000000000000000000
          Width = 79.073368132710300000
          Height = 13.000000000000000000
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 725.852969013084000000
          Top = 1.000000000000000000
          Width = 94.279785081308400000
          Height = 13.000000000000000000
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 1.000000000000000000
          Width = 46.633011975700900000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 1050.256530583180000000
          Top = 1.000000000000000000
          Width = 36.495400676635500000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 994.499668438318000000
          Top = 1.000000000000000000
          Width = 26.357789377570100000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 1021.871218945790000000
          Top = 1.000000000000000000
          Width = 27.371550507476600000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 821.146515224299000000
          Top = 1.000000000000000000
          Width = 15.206416948598100000
          Height = 13.000000000000000000
          DataField = 'CLI_ESTADO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 643.738317490654000000
          Top = 1.000000000000000000
          Width = 81.100890392523400000
          Height = 13.000000000000000000
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 350.761350947664000000
          Width = 241.275148917757000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset22."CLI_ENDERECO"], [frxDBDataset22."CLI_NUMERO"], ' +
              '[frxDBDataset22."CLI_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 593.050260995327000000
          Top = 1.000000000000000000
          Width = 49.674295365420600000
          Height = 13.000000000000000000
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 245.330193437383000000
          Top = 1.000000000000000000
          Width = 104.417396380374000000
          Height = 13.000000000000000000
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset22
          DataSetName = 'frxDBDataset22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset22."CLI_CONTATO"]')
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
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
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
        Top = 306.141930000000000000
        Width = 1084.725110000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 710.189196380000000000
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
            'MAT22 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset22: TfrxDBDataset
    UserName = 'frxDBDataset22'
    CloseDataSource = False
    DataSet = QY22
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 336
  end
  object QY22: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR22
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCR' +
        'ICAO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO,'
      
        'CLI_NOME, CLI_CPF, CLI_FONE1, CLI_FONE2, CLI_ENDERECO, CLI_NUMER' +
        'O, CLI_BAIRRO, CLI_CIDADE, CLI_ESTADO, CLI_COMPLEMENTO, CLI_CEP,' +
        ' CLI_CONTATO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      
        'where MAT_DTCADASTRO between :datainicial and :datafinal and MAT' +
        '_STATUS='#39'A'#39' &FILTRO'
      'order by CLI_CIDADE, CLI_BAIRRO, CLI_ENDERECO')
    Left = 632
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR22: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 632
    Top = 432
  end
  object frxReport23: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'MAT23'
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
    Left = 696
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset23
        DataSetName = 'frxDBDataset23'
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 14.000000000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 613.089751686909000000
          Width = 37.744294197031000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Turma')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 320.316442645074000000
          Width = 30.603481781376500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 716.121473684210000000
          Width = 36.724178137651800000
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
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 657.974858299595000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 685.517991902834000000
          Width = 24.482785425101200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset23
        DataSetName = 'frxDBDataset23'
        RowCount = 0
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 1.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 97.931141700404900000
          Top = 1.000000000000000000
          Width = 221.365184885290000000
          Height = 13.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 613.089751686909000000
          Top = 1.000000000000000000
          Width = 41.824758434547900000
          Height = 13.000000000000000000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 320.316442645074000000
          Top = 1.000000000000000000
          Width = 286.652612685560000000
          Height = 13.000000000000000000
          DataField = 'CLI_EMAIL'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."CLI_EMAIL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.000000000000000000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 716.121473684210000000
          Top = 1.000000000000000000
          Width = 36.724178137651800000
          Height = 13.000000000000000000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 657.974858299595000000
          Top = 1.000000000000000000
          Width = 26.523017543859600000
          Height = 13.000000000000000000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 685.517991902834000000
          Top = 1.000000000000000000
          Width = 27.543133603238900000
          Height = 13.000000000000000000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset23
          DataSetName = 'frxDBDataset23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset23."TUR_ANO"]')
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
        Top = 253.228510000000000000
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 380.086423600000000000
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
            'MAT23 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
  object frxDBDataset23: TfrxDBDataset
    UserName = 'frxDBDataset23'
    CloseDataSource = False
    DataSet = QY23
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 336
  end
  object QY23: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR23
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_PERIO' +
        'DO, TUR_ANO, CLI_NOME, CLI_EMAIL'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'where TUR_DTCADASTRO between :datainicial and :datafinal &FILTRO'
      'order by CLI_NOME')
    Left = 696
    Top = 384
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
    MacroData = <
      item
        Value = Null
        Name = 'FILTRO'
      end>
  end
  object TR23: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 696
    Top = 432
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
    Left = 24
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
    Left = 96
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
    Left = 168
    Top = 16
  end
end
