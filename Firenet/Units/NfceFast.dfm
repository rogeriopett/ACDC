object FormNfceFast: TFormNfceFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de NFCe'
  ClientHeight = 623
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 768
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - DANFCE'
      '02 - nfce por status'
      '03 - nfce ordenado por c'#243'digo'
      '04 - nfce com itens'
      '05 - nfce por cfop'
      '06 - verifica'#231#227'o de xmls'
      '07 - verifica'#231#227'o de numera'#231#227'o'
      '08 - inutiliza'#231#245'es no per'#237'odo'
      '09 - nfce por cfop itens'
      '10 - DANFCE dot matrix - nao usado o frxreport10 e '
      'sim o acbrposprinter')
    TabOrder = 0
  end
  object MemoPrint: TMemo
    Left = 768
    Top = 352
    Width = 281
    Height = 89
    Lines.Strings = (
      'MemoPrint')
    TabOrder = 1
    WordWrap = False
  end
  object frxReport1: TfrxReport
    Version = '2023.2'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45792.858805069400000000
    ReportOptions.Name = 'DANFCe'
    ReportOptions.LastChange = 45795.439729398100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'function FormatarChaveAcesso(Chave: String): String;            ' +
        '                                                                ' +
        '                                 '
      'begin'
      '  Insert('#39'.'#39',Chave,41);'
      '  Insert('#39'.'#39',Chave,37);'
      '  Insert('#39'.'#39',Chave,33);'
      '  Insert('#39'.'#39',Chave,29);'
      '  Insert('#39'.'#39',Chave,25);'
      '  Insert('#39'.'#39',Chave,21);'
      '  Insert('#39'.'#39',Chave,17);'
      '  Insert('#39'.'#39',Chave,13);'
      '  Insert('#39'.'#39',Chave,9);'
      '  Insert('#39'.'#39',Chave,5);'
      '  Result:=Chave;                                        '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  if Get('#39'AMBIENTE'#39')='#39'1'#39' then'
      '  begin'
      '    MemoHomologacao.Visible:=False;'
      '    MemoHomologacao.Top:=0;                      '
      '  end;'
      'end;'
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset1."CLI_NOME"> <> '#39'CONSUMIDOR FINAL'#39' then'
      
        '  Set('#39'CONSUMIDOR_DOC'#39', '#39#39#39#39' + <frxDBDataset1."NFC_CPF"> + '#39#39#39#39' ' +
        ') else'
      '  Set('#39'CONSUMIDOR_DOC'#39', '#39#39#39#39' + '#39'NAO IDENTIFICADO'#39' + '#39#39#39#39' );'
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'var Chave, Fed, Est, Mun: String;  '
      'begin'
      '  if <frxDBDataset1."NFC_ACREVALOR"> > 0 then'
      '  begin              '
      '    Memo29.Text:='#39'Acr'#233'scimos R$'#39';'
      '    Memo30.DataField:='#39'NFC_ACREVALOR'#39';        '
      '  end else'
      '  if <frxDBDataset1."NFC_DESCVALOR"> > 0 then'
      '  begin              '
      '    Memo29.Text:='#39'Desconto R$'#39';'
      
        '    Memo30.DataField:='#39'NFC_DESCVALOR'#39';                          ' +
        '                            '
      '  end else'
      '  begin              '
      '    Memo29.Visible := False;'
      
        '    Memo30.Visible := False;                                    ' +
        '                    '
      '  end;                   '
      ''
      
        '  Chave:=FormatarChaveAcesso(<frxDBDataset1."NFC_CHAVEACESSO">);' +
        '  '
      '  Set('#39'CHAVEACESSO'#39','#39#39#39#39'+Chave+'#39#39#39#39');'
      '  '
      '  {Fed:=<frxDBDataset1."NFC_TOTALTRIBUTOSFED">+'#39' Federal '#39';'
      '  Est:=<frxDBDataset1."NFC_TOTALTRIBUTOSEST">+'#39' Estadual '#39';'
      
        '  Mun:=<frxDBDataset1."NFC_TOTALTRIBUTOSMUN">+'#39' Municipal '#39';    ' +
        '  '
      
        '  Set('#39'TRIBUTOS'#39', '#39#39#39#39'+ Fed + Est+ Mun+ '#39#39#39#39');}                 ' +
        '                                                                ' +
        '                              '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //se emitiu em contingencia, entao nao tem protocolo.    '
      '  if Get('#39'CONTINGENCIA'#39')='#39'S'#39' then'
      '  begin                          '
      '    Set('#39'PROTOCOLO'#39','#39#39#39#39' + '#39'EMITIDA EM CONTING'#202'NCIA'#39' + '#39#39#39#39');'
      '    Set('#39'PROTOCOLODH'#39','#39#39#39#39' + '#39'Pendente de autoriza'#231#227'o'#39' + '#39#39#39#39');'
      
        '    Child1.Visible:=True;                                       ' +
        '               '
      '  end else'
      
        '  begin                                                         ' +
        '                                                                ' +
        '                                                    '
      
        '    Set('#39'PROTOCOLO'#39','#39#39#39#39' + '#39'Protocolo de autoriza'#231#227'o '#39'+<frxDBDat' +
        'aset1."NFC_PROTOCOLO"> + '#39#39#39#39');'
      
        '    Set('#39'PROTOCOLODH'#39','#39#39#39#39' + '#39'Data de autoriza'#231#227'o '#39'+<frxDBDatase' +
        't1."NFC_PROTOCOLODH"> + '#39#39#39#39');'
      
        '    Child1.Visible:=False;                                      ' +
        '                  '
      '  end;                '
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
      end
      item
        DataSet = frxDBDataset1b
        DataSetName = 'frxDBDataset1b'
      end>
    Variables = <
      item
        Name = ' danfce'
        Value = Null
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
        Name = 'EMP_ENDERECO1'
        Value = ''
      end
      item
        Name = 'EMP_ENDERECO2'
        Value = ''
      end
      item
        Name = 'EMP_LOGO'
        Value = ''
      end
      item
        Name = 'DESCONTOACRESCIMO'
        Value = ''
      end
      item
        Name = 'CONSUMIDOR_DOC'
        Value = ''
      end
      item
        Name = 'EMP_IE'
        Value = ''
      end
      item
        Name = 'TRIBUTOS'
        Value = ''
      end
      item
        Name = 'CHAVEACESSO'
        Value = ''
      end
      item
        Name = 'VIA'
        Value = ''
      end
      item
        Name = 'CONTINGENCIA'
        Value = ''
      end
      item
        Name = 'AMBIENTE'
        Value = ''
      end
      item
        Name = 'PROTOCOLO'
        Value = ''
      end
      item
        Name = 'PROTOCOLODH'
        Value = ''
      end
      item
        Name = 'ENDERECO1'
        Value = ''
      end
      item
        Name = 'ENDERECO2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 300.000000000000000000
      PaperSize = 256
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 124.346478660000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Child = frxReport1.Child1
        Stretched = True
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 86.929190100000000000
          Top = 0.000001480000000000
          Width = 102.047309780000000000
          Height = 41.574827860000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 44.015770000000000000
          Width = 272.126160730000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [EMP_CNPJ] - IE: [EMP_IE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 56.913420660000000000
          Width = 272.126160730000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMP_NOME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 70.031540660000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMP_ENDERECO1]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 96.267780000000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da Nota Fiscal de Consumidor Eletr'#244'nica')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMP_ENDERECO2]')
          ParentFont = False
        end
        object MemoHomologacao: TfrxMemoView
          AllowVectorExport = True
          Top = 109.385900000000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM AMBIENTE DE HOMOLOGA'#199#195'O '#8211' SEM VALOR FISCAL')
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
        Height = 27.212598425196850000
        Top = 306.141930000000000000
        Width = 272.126160000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000570000000005
          Width = 68.031536440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_PRODUTO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.FormatStr = '0000000000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_PRODUTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 204.094616440000000000
          Height = 13.228346460000000000
          StretchMode = smPartMaxHeight
          DataField = 'NCI_DESCRICAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_DESCRICAO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Anchors = [fraLeft, fraBottom]
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 13.251970945196850000
          Width = 34.015766440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Anchors = [fraLeft, fraBottom]
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 13.251970950000000000
          Width = 22.677176440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_UNIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_UNIDADE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Anchors = [fraLeft, fraBottom]
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 13.251970945196850000
          Width = 75.590596440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_VALORUNIT'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_VALORUNIT"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Anchors = [fraLeft, fraBottom]
          AllowVectorExport = True
          Left = 184.976500000000000000
          Top = 13.251970950000000000
          Width = 86.929186440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_VALORTOTAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Anchors = [fraLeft, fraBottom]
          AllowVectorExport = True
          Top = 13.251970945196850000
          Width = 30.236236440000000000
          Height = 13.228346460000000000
          DataField = 'NCI_SEQUENCIA'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NCI_SEQUENCIA"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 14.362204720000000000
        Top = 445.984540000000000000
        Width = 272.126160000000000000
        DataSet = frxDBDataset1b
        DataSetName = 'frxDBDataset1b'
        RowCount = 0
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          DataField = 'NCP_VALOR'
          DataSet = frxDBDataset1b
          DataSetName = 'frxDBDataset1b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1b."NCP_VALOR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 162.519786440000000000
          Height = 13.228346456692910000
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset1b
          DataSetName = 'frxDBDataset1b'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1b."CPG_DESCRICAO"]')
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
        Height = 28.346456690000000000
        Top = 253.228510000000000000
        Width = 272.126160000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 68.031536440000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 0.000003509999999998
          Width = 204.094616440000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 14.362204724409450000
          Width = 34.015766440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 14.362204720000000000
          Width = 22.677176440000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 14.362204724409450000
          Width = 75.590596440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 184.976500000000000000
          Top = 14.362204724409450000
          Width = 86.929186440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 14.362204724409450000
          Width = 30.236236440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Seq.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 67.653543310000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 113.385896440000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Itens:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 39.354360000000000000
          Width = 113.385896440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor a Pagar R$')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.472480000000000000
          Width = 113.385896440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA PAGAMENTO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Top = 52.472480000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Top = 39.354360000000000000
          Width = 102.047306440000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_SEQUENCIAITEM"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 13.118120000000000000
          Width = 113.385896440000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total R$')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Top = 13.118120000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_TOTALPRODUTOS"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.236240000000000000
          Width = 113.385896440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DESCONTOACRESCIMO]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Top = 26.236240000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          DataField = 'NFC_ACREVALOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_ACREVALOR"]')
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
        Height = 302.362399770000000000
        Top = 559.370440000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulte pela chave de acesso em')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'https://sat.sef.sc.gov.br/nfce/consulta')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Top = 26.236240000000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CHAVEACESSO]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 39.354360000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONSUMIDOR: [CONSUMIDOR_DOC]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 95.047310000000000000
          Width = 56.692950730000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NFC-e N.:')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 108.165430000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[VIA]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 124.283550000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PROTOCOLO]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 138.401670000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PROTOCOLODH]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 266.905690000000000000
          Width = 264.567100730000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tributos Totais Incidentes (Lei Federal 12.741/2012)')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 282.023810000000000000
          Width = 264.567100730000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TRIBUTOS]')
          ParentFont = False
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 90.708721550000000000
          Top = 158.299296410000000000
          Width = 180.000000000000000000
          Height = 180.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'NFC_QRCODE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = 
            '680074007400700073003A002F002F0068006F006D002E007300610074002E00' +
            '7300650066002E00730063002E0067006F0076002E00620072002F006E006600' +
            '630065002F0063006F006E00730075006C00740061003F0070003D0034003200' +
            '3200350030003500300039003300320034003800350031003000300030003100' +
            '3600340036003500300030003100300030003000300030003000310038003800' +
            '31003700380035003900320032003700370034007C0032007C0032007C003100' +
            '7C00300041004200450036003900390043004100370035003500380032004400' +
            '3800450037003000310031003400390041003000430038004400320031003100' +
            '380032003900430043004200370035003200'
          Zoom = 0.600000000000000000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 95.047310000000000000
          Width = 52.913416440000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1b
          DataSetName = 'frxDBDataset1b'
          DisplayFormat.FormatStr = '000000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 95.047310000000000000
          Width = 30.236240730000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'S'#233'rie:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 95.047310000000000000
          Width = 22.677176440000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1b
          DataSetName = 'frxDBDataset1b'
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_SERIE"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 95.047310000000000000
          Width = 98.267776440000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1b
          DataSetName = 'frxDBDataset1b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset1."NFC_DTCADASTRO"]  [frxDBDataset1."NFC_HRCADASTRO' +
              '"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Top = 66.031540000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENDERECO1]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENDERECO2]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.362204720000000000
        Top = 483.779840000000000000
        Width = 272.126160000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 162.519786440000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Troco R$')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 169.858380000000000000
          Width = 102.047306440000000000
          Height = 13.228346456692910000
          DataField = 'NFC_VALORTROCO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFC_VALORTROCO"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Fill.BackColor = cl3DLight
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 26.456711670000000000
        Top = 166.299320000000000000
        Width = 272.126160000000000000
        KeepChild = True
        ToNRows = 0
        ToNRowsMode = rmCount
        object MemoPendente: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 272.125984250000000000
          Height = 13.228346456692910000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente de autoriza'#231#227'o')
          ParentFont = False
        end
        object MemoContingencia: TfrxMemoView
          AllowVectorExport = True
          Width = 272.125984250000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM CONTING'#202'NCIA')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_ACREPORC=NFC_ACREPORC'
      'NFC_ACREVALOR=NFC_ACREVALOR'
      'NFC_ALIQICMSCREDSN=NFC_ALIQICMSCREDSN'
      'NFC_BAIRRO=NFC_BAIRRO'
      'NFC_BASECOFINS=NFC_BASECOFINS'
      'NFC_BASECOFINSST=NFC_BASECOFINSST'
      'NFC_BASEICMS=NFC_BASEICMS'
      'NFC_BASEICMSST=NFC_BASEICMSST'
      'NFC_BASEIPI=NFC_BASEIPI'
      'NFC_BASEPIS=NFC_BASEPIS'
      'NFC_BASEPISST=NFC_BASEPISST'
      'NFC_CEP=NFC_CEP'
      'NFC_CFOP=NFC_CFOP'
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_CIDADE=NFC_CIDADE'
      'NFC_CIDADECODIGO=NFC_CIDADECODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_CNPJ=NFC_CNPJ'
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CODIGONFCE=NFC_CODIGONFCE'
      'NFC_CODIGONUMERICO=NFC_CODIGONUMERICO'
      'NFC_COMISSAO=NFC_COMISSAO'
      'NFC_COMISSAOPOR=NFC_COMISSAOPOR'
      'NFC_COMPLEMENTO=NFC_COMPLEMENTO'
      'NFC_CONDICAO=NFC_CONDICAO'
      'NFC_CONTATO=NFC_CONTATO'
      'NFC_CPF=NFC_CPF'
      'NFC_CUSTOTOTAL=NFC_CUSTOTOTAL'
      'NFC_DESCPORC=NFC_DESCPORC'
      'NFC_DESCVALOR=NFC_DESCVALOR'
      'NFC_DTATUALIZACAO=NFC_DTATUALIZACAO'
      'NFC_DTCADASTRO=NFC_DTCADASTRO'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_ENDERECO=NFC_ENDERECO'
      'NFC_ESTADO=NFC_ESTADO'
      'NFC_ESTADOCODIGO=NFC_ESTADOCODIGO'
      'NFC_FINALIDADE=NFC_FINALIDADE'
      'NFC_FONE1=NFC_FONE1'
      'NFC_FORMAPAGTO=NFC_FORMAPAGTO'
      'NFC_HRATUALIZACAO=NFC_HRATUALIZACAO'
      'NFC_HRCADASTRO=NFC_HRCADASTRO'
      'NFC_IE=NFC_IE'
      'NFC_INFOADICFISCO=NFC_INFOADICFISCO'
      'NFC_LUCROPORC=NFC_LUCROPORC'
      'NFC_LUCROVALOR=NFC_LUCROVALOR'
      'NFC_MODELO=NFC_MODELO'
      'NFC_MOTIVOCANCELAMENTO=NFC_MOTIVOCANCELAMENTO'
      'NFC_MOTIVOINUTILIZACAO=NFC_MOTIVOINUTILIZACAO'
      'NFC_MOVIMENTAESTOQUE=NFC_MOVIMENTAESTOQUE'
      'NFC_MOVIMENTAFINANCEIRO=NFC_MOVIMENTAFINANCEIRO'
      'NFC_NOME=NFC_NOME'
      'NFC_NUMERO=NFC_NUMERO'
      'NFC_OBSERVACOES=NFC_OBSERVACOES'
      'NFC_PESOBRUTO=NFC_PESOBRUTO'
      'NFC_PESOLIQ=NFC_PESOLIQ'
      'NFC_PROTOCOLO=NFC_PROTOCOLO'
      'NFC_PROTOCOLOCANC=NFC_PROTOCOLOCANC'
      'NFC_PROTOCOLOCANCDH=NFC_PROTOCOLOCANCDH'
      'NFC_PROTOCOLODH=NFC_PROTOCOLODH'
      'NFC_PROTOCOLOINUT=NFC_PROTOCOLOINUT'
      'NFC_PROTOCOLOINUTDH=NFC_PROTOCOLOINUTDH'
      'NFC_QRCODE=NFC_QRCODE'
      'NFC_SEQUENCIAITEM=NFC_SEQUENCIAITEM'
      'NFC_SERIE=NFC_SERIE'
      'NFC_STATUS=NFC_STATUS'
      'NFC_TABELAPRECO=NFC_TABELAPRECO'
      'NFC_TIPOATENDIMENTO=NFC_TIPOATENDIMENTO'
      'NFC_TIPOCONSUMIDOR=NFC_TIPOCONSUMIDOR'
      'NFC_TIPOEMISSAO=NFC_TIPOEMISSAO'
      'NFC_TIPOOPERACAO=NFC_TIPOOPERACAO'
      'NFC_TOTALCOFINS=NFC_TOTALCOFINS'
      'NFC_TOTALCOFINSST=NFC_TOTALCOFINSST'
      'NFC_TOTALCOMISSAO=NFC_TOTALCOMISSAO'
      'NFC_TOTALFCP=NFC_TOTALFCP'
      'NFC_TOTALFCPST=NFC_TOTALFCPST'
      'NFC_TOTALICMS=NFC_TOTALICMS'
      'NFC_TOTALICMSCREDSN=NFC_TOTALICMSCREDSN'
      'NFC_TOTALICMSST=NFC_TOTALICMSST'
      'NFC_TOTALICMSUFDEST=NFC_TOTALICMSUFDEST'
      'NFC_TOTALICMSUFREMET=NFC_TOTALICMSUFREMET'
      'NFC_TOTALIPI=NFC_TOTALIPI'
      'NFC_TOTALPIS=NFC_TOTALPIS'
      'NFC_TOTALPISST=NFC_TOTALPISST'
      'NFC_TOTALPRODUTOS=NFC_TOTALPRODUTOS'
      'NFC_TOTALTRIBUTOS=NFC_TOTALTRIBUTOS'
      'NFC_TOTALTRIBUTOSEST=NFC_TOTALTRIBUTOSEST'
      'NFC_TOTALTRIBUTOSFED=NFC_TOTALTRIBUTOSFED'
      'NFC_TOTALTRIBUTOSIMP=NFC_TOTALTRIBUTOSIMP'
      'NFC_TOTALTRIBUTOSMUN=NFC_TOTALTRIBUTOSMUN'
      'NFC_USUARIO=NFC_USUARIO'
      'NFC_VALORRECEBIDO=NFC_VALORRECEBIDO'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'NFC_VALORTROCO=NFC_VALORTROCO'
      'NFC_VENDA=NFC_VENDA'
      'NFC_VENDEDOR=NFC_VENDEDOR'
      'CLI_AFE=CLI_AFE'
      'CLI_ALVARA=CLI_ALVARA'
      'CLI_ALVARASANITARIO=CLI_ALVARASANITARIO'
      'CLI_ATIVIDADE=CLI_ATIVIDADE'
      'CLI_ATUALIZAR=CLI_ATUALIZAR'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_BAIRROCOB=CLI_BAIRROCOB'
      'CLI_BLOQUEARVENDA=CLI_BLOQUEARVENDA'
      'CLI_CEP=CLI_CEP'
      'CLI_CEPCOB=CLI_CEPCOB'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CIDADECOB=CLI_CIDADECOB'
      'CLI_CIDADECODIGO=CLI_CIDADECODIGO'
      'CLI_CIDADECODIGOCOB=CLI_CIDADECODIGOCOB'
      'CLI_CLASSIFICACAO=CLI_CLASSIFICACAO'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_CNPJCOB=CLI_CNPJCOB'
      'CLI_CNS=CLI_CNS'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_COMPLEMENTOCOB=CLI_COMPLEMENTOCOB'
      'CLI_CONDICAO=CLI_CONDICAO'
      'CLI_CONJUGE=CLI_CONJUGE'
      'CLI_CONJUGECPF=CLI_CONJUGECPF'
      'CLI_CONJUGEDTNASC=CLI_CONJUGEDTNASC'
      'CLI_CONJUGERG=CLI_CONJUGERG'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CONTRIBUINTEICMS=CLI_CONTRIBUINTEICMS'
      'CLI_CPF=CLI_CPF'
      'CLI_DESCONTO=CLI_DESCONTO'
      'CLI_DIACOBRANCA=CLI_DIACOBRANCA'
      'CLI_DTATUALIZACAO=CLI_DTATUALIZACAO'
      'CLI_DTCADASTRO=CLI_DTCADASTRO'
      'CLI_DTNASC=CLI_DTNASC'
      'CLI_DTOBITO=CLI_DTOBITO'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_EMAIL2=CLI_EMAIL2'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_ENDERECOCOB=CLI_ENDERECOCOB'
      'CLI_ENQUADRAMENTO=CLI_ENQUADRAMENTO'
      'CLI_ESTADO=CLI_ESTADO'
      'CLI_ESTADOCIVIL=CLI_ESTADOCIVIL'
      'CLI_ESTADOCOB=CLI_ESTADOCOB'
      'CLI_ESTADOCODIGO=CLI_ESTADOCODIGO'
      'CLI_ESTADOCODIGOCOB=CLI_ESTADOCODIGOCOB'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_FONE0800=CLI_FONE0800'
      'CLI_FONE1=CLI_FONE1'
      'CLI_FONE2=CLI_FONE2'
      'CLI_FONE3=CLI_FONE3'
      'CLI_FRETE=CLI_FRETE'
      'CLI_HRATUALIZACAO=CLI_HRATUALIZACAO'
      'CLI_HRCADASTRO=CLI_HRCADASTRO'
      'CLI_IDESTRANGEIRO=CLI_IDESTRANGEIRO'
      'CLI_IE=CLI_IE'
      'CLI_IECOB=CLI_IECOB'
      'CLI_IM=CLI_IM'
      'CLI_LIMITECREDITO=CLI_LIMITECREDITO'
      'CLI_LOCALESTUDA=CLI_LOCALESTUDA'
      'CLI_LOCALTRABALHO=CLI_LOCALTRABALHO'
      'CLI_MAE=CLI_MAE'
      'CLI_MAEEMAIL=CLI_MAEEMAIL'
      'CLI_MAEFONE=CLI_MAEFONE'
      'CLI_MAILING=CLI_MAILING'
      'CLI_MENSALISTA=CLI_MENSALISTA'
      'CLI_MSN=CLI_MSN'
      'CLI_NATURALIDADE=CLI_NATURALIDADE'
      'CLI_NEXTEL=CLI_NEXTEL'
      'CLI_NOME=CLI_NOME'
      'CLI_NUMERO=CLI_NUMERO'
      'CLI_NUMEROCOB=CLI_NUMEROCOB'
      'CLI_OBITO=CLI_OBITO'
      'CLI_OBSERVACOES=CLI_OBSERVACOES'
      'CLI_ORIENTACAOCOBRANCA=CLI_ORIENTACAOCOBRANCA'
      'CLI_PAI=CLI_PAI'
      'CLI_PAIEMAIL=CLI_PAIEMAIL'
      'CLI_PAIFONE=CLI_PAIFONE'
      'CLI_PAIS=CLI_PAIS'
      'CLI_PAISCOB=CLI_PAISCOB'
      'CLI_PAISCODIGO=CLI_PAISCODIGO'
      'CLI_PAISCODIGOCOB=CLI_PAISCODIGOCOB'
      'CLI_PASSWORD=CLI_PASSWORD'
      'CLI_PONTOS=CLI_PONTOS'
      'CLI_PROFISSAO=CLI_PROFISSAO'
      'CLI_RECEBEAVISOS=CLI_RECEBEAVISOS'
      'CLI_REGPROFISSIONAL=CLI_REGPROFISSIONAL'
      'CLI_RG=CLI_RG'
      'CLI_SAME=CLI_SAME'
      'CLI_SETOR=CLI_SETOR'
      'CLI_SEXO=CLI_SEXO'
      'CLI_SITE=CLI_SITE'
      'CLI_STATUS=CLI_STATUS'
      'CLI_SUFRAMA=CLI_SUFRAMA'
      'CLI_TABELAPRECO=CLI_TABELAPRECO'
      'CLI_TAXA=CLI_TAXA'
      'CLI_TELEVENDA=CLI_TELEVENDA'
      'CLI_TIPOCLIENTE=CLI_TIPOCLIENTE'
      'CLI_TIPOCONSUMIDOR=CLI_TIPOCONSUMIDOR'
      'CLI_TIPOPESSOA=CLI_TIPOPESSOA'
      'CLI_TRANSPORTADORA=CLI_TRANSPORTADORA'
      'CLI_USUARIO=CLI_USUARIO'
      'CLI_VENDEDOR=CLI_VENDEDOR')
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
      'select * from NFCE '
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      'where NFC_CODIGO=:codigo;')
    Left = 48
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR01: TFDTransaction
    Connection = DM.FDConnection1
    Left = 48
    Top = 304
  end
  object QY01a: TFDQuery
    MasterSource = DS01
    MasterFields = 'NFC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select '
      'NCI_CODIGO,'
      'NCI_PRODUTO,'
      'NCI_DESCRICAO,'
      'NCI_QUANTIDADE,'
      'NCI_SEQUENCIA,'
      'NCI_UNIDADE,'
      'NCI_VALORTOTAL,'
      'NCI_VALORUNIT'
      'from NFCEITENS '
      'where NCI_NOTA=:NFC_CODIGO '
      'order by NCI_SEQUENCIA')
    Left = 48
    Top = 400
    ParamData = <
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TR01a: TFDTransaction
    Connection = DM.FDConnection1
    Left = 48
    Top = 448
  end
  object DS01: TDataSource
    DataSet = QY01
    Left = 48
    Top = 352
  end
  object frxDBDataset1a: TfrxDBDataset
    UserName = 'frxDBDataset1a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCI_CODIGO=NCI_CODIGO'
      'NCI_PRODUTO=NCI_PRODUTO'
      'NCI_DESCRICAO=NCI_DESCRICAO'
      'NCI_QUANTIDADE=NCI_QUANTIDADE'
      'NCI_SEQUENCIA=NCI_SEQUENCIA'
      'NCI_UNIDADE=NCI_UNIDADE'
      'NCI_VALORTOTAL=NCI_VALORTOTAL'
      'NCI_VALORUNIT=NCI_VALORUNIT')
    DataSet = QY01a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 160
  end
  object QY01b: TFDQuery
    MasterSource = DS01
    MasterFields = 'NFC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01b
    SQL.Strings = (
      'select '
      'NCP_VALOR,'
      'CPG_DESCRICAO'
      'from NFCEPAGAMENTOS'
      'left join CONDICOES on NCP_CONDICAO=CPG_CODIGO '
      'where NCP_NFCE=:NFC_CODIGO and NCP_VALOR>0 '
      'order by CPG_DESCRICAO')
    Left = 48
    Top = 496
    ParamData = <
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TR01b: TFDTransaction
    Connection = DM.FDConnection1
    Left = 48
    Top = 544
  end
  object frxDBDataset1b: TfrxDBDataset
    UserName = 'frxDBDataset1b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCP_VALOR=NCP_VALOR'
      'CPG_DESCRICAO=CPG_DESCRICAO')
    DataSet = QY01b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
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
    ReportOptions.Name = 'NFe por status'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
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
        Name = 'NAT_CODIGO'
        Value = ''
      end
      item
        Name = 'NAT_DESCRICAO'
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
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFC_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 343.535379370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
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
            '[frxDBDataset2."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Width = 263.055230390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CHAVEACESSO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFC_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 672.377989370000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_VALORTOTAL'
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
            '[frxDBDataset2."NFC_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 90.684888030000000000
          Width = 250.582774800000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset2."NFC_STATUS">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          Visible = False
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
            '')
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
            '[frxDBDataset2."NFC_STATUS"]')
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
          Width = 41.574685980000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 343.535379370000000000
          Top = 24.566929130000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt. Emiss'#227'o'
            '')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 90.684888030000000000
          Top = 24.566929130000000000
          Width = 250.582774800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Top = 24.566929130000000000
          Width = 263.055230390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 672.354381970000000000
          Top = 24.566929130000000000
          Width = 83.149577010000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.464569370000000000
          Top = 1.889763780000000000
          Width = 136.063080000000000000
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
            '[SUM(<frxDBDataset2."NFC_VALORTOTAL">,MasterData1)]')
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
        Top = 445.984540000000000000
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
            'NFC02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 396.850650000000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.464569370000000000
          Top = 1.385590000000000000
          Width = 136.063080000000000000
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
            '[SUM(<frxDBDataset2."NFC_VALORTOTAL">,MasterData1)]')
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
        Height = 43.464566929133860000
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
        object Memo10: TfrxMemoView
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 0.755915270000000000
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
            'Cliente:'
            '')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 0.755915270000000000
          Width = 31.154916660000000000
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
        object Memo11: TfrxMemoView
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 0.755915270000000000
          Width = 272.094619990000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 15.118120000000000000
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
            'Vendedor:'
            '')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 15.118120000000000000
          Width = 31.154916660000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 15.118120000000000000
          Width = 272.094619990000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 28.724409450000000000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 28.724409450000000000
          Width = 31.154916660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 28.724409450000000000
          Width = 272.094619990000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_STATUS=NFC_STATUS'
      'CLI_NOME=CLI_NOME')
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
      'select '
      'NFC_CODIGO,'
      'NFC_CLIENTE,'
      'NFC_DTEMISSAO,'
      'NFC_VALORTOTAL,'
      'NFC_CHAVEACESSO,'
      'case NFC_STATUS'
      '  when '#39'A'#39' then '#39'ABERTA'#39
      '  when '#39'F'#39' then '#39'FINALIZADA'#39
      '  when '#39'C'#39' then '#39'CANCELADA'#39
      '  when '#39'I'#39' then '#39'INUTILIZADA'#39
      'end as NFC_STATUS,'
      'CLI_NOME'
      'from NFCE'
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      
        'where NFC_STATUS='#39'F'#39' and NFC_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by NFC_STATUS, NFC_DTEMISSAO, NFC_CODIGO desc'
      '')
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
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'NFe ordenado por c'#243'digo'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
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
        Name = 'NAT_CODIGO'
        Value = ''
      end
      item
        Name = 'NAT_DESCRICAO'
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
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CLIENTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFC_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 321.637729370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
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
            '[frxDBDataset3."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 388.401557720000000000
          Width = 263.055230390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CHAVEACESSO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFC_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 653.480339370000000000
          Width = 83.149577010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_VALORTOTAL'
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
            '[frxDBDataset3."NFC_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 90.684888030000000000
          Width = 227.905594800000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 737.008350000000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_STATUS'
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
            '[frxDBDataset3."NFC_STATUS"]')
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
            'NFC03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.566836380000000000
          Top = 1.385590000000000000
          Width = 136.063080000000000000
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
            '[SUM(<frxDBDataset3."NFC_VALORTOTAL">,MasterData1)]')
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
        Height = 43.464566929133860000
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
        object Memo10: TfrxMemoView
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 0.755915270000000000
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
            'Cliente:'
            '')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 0.755915270000000000
          Width = 31.154916660000000000
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
        object Memo11: TfrxMemoView
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 0.755915270000000000
          Width = 381.700989990000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 15.118120000000000000
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
            'Vendedor:'
            '')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 15.118120000000000000
          Width = 31.154916660000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 15.118120000000000000
          Width = 381.700989990000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 28.724409450000000000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 28.724409450000000000
          Width = 31.154916660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 28.724409450000000000
          Width = 381.700989990000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_DESCRICAO]')
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
        Height = 13.228346460000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Width = 41.574685980000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 321.637729370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt. Emiss'#227'o'
            '')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 90.684888030000000000
          Width = 227.905594800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 388.401557720000000000
          Width = 263.055230390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 653.480339370000000000
          Width = 83.149577010000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 737.008350000000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ST'
            '')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_STATUS=NFC_STATUS'
      'CLI_NOME=CLI_NOME')
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
    ReportOptions.Name = 'NFe com itens'
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
      end
      item
        DataSet = frxDBDataset4a
        DataSetName = 'frxDBDataset4a'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
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
        Name = 'NAT_CODIGO'
        Value = ''
      end
      item
        Name = 'NAT_DESCRICAO'
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
        Frame.Typ = [ftTop, ftBottom]
        Height = 51.023646460000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 14.118120000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 14.118120000000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CLIENTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."NFC_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 343.535379370000000000
          Top = 14.118120000000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
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
            '[frxDBDataset4."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 14.118120000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_TOTALCOFINS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."NFC_TOTALCOFINS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 668.574851970000000000
          Top = 14.118120000000000000
          Width = 86.929107010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_VALORTOTAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."NFC_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 90.684888030000000000
          Top = 14.118120000000000000
          Width = 250.582774800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."NFC_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Width = 41.574685980000000000
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
          Left = 90.684888030000000000
          Width = 250.582774800000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 343.535379370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt. Emiss'#227'o'
            '')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
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
            'ICMS'
            '')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
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
            'IPI')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
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
            'PIS')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
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
            'COFINS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.574851970000000000
          Width = 86.929107010000000000
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 14.118120000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_TOTALPIS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."NFC_TOTALPIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 14.118120000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_TOTALIPI'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."NFC_TOTALIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Top = 14.118120000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_TOTALICMS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."NFC_TOTALICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Top = 36.039370080000000000
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
            'ICMS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 36.039370080000000000
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
            'IPI')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 36.039370080000000000
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
            'PIS')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 36.039370080000000000
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
            'COFINS')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 668.574851970000000000
          Top = 36.039370080000000000
          Width = 86.929107010000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 36.039370080000000000
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
            'ICMS ST.')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 36.039370080000000000
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
            'CFOP')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Top = 36.039370078740160000
          Width = 36.283430390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 36.039370080000000000
          Width = 51.401550390000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 36.039370080000000000
          Width = 217.700870390000000000
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
        Top = 506.457020000000000000
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
            'NFC04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 457.323130000000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 668.574851970000000000
          Top = 1.385590000000000000
          Width = 86.929107010000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 1.385590000000000000
          Width = 62.740140390000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_TOTALCOFINS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 1.385590000000000000
          Width = 62.740140390000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_TOTALPIS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 1.385590000000000000
          Width = 62.740140390000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_TOTALIPI">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Top = 1.385590000000000000
          Width = 62.740140390000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_TOTALICMS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 1.385590000000000000
          Width = 62.740140390000000000
          Height = 15.118120000000000000
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
            '[SUM(<frxDBDataset4."NFC_TOTALICMSST">,MasterData1)]')
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
        Height = 43.464566929133860000
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
        object Memo10: TfrxMemoView
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 0.755915270000000000
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
            'Cliente:'
            '')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 0.755915270000000000
          Width = 31.154916660000000000
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
        object Memo11: TfrxMemoView
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 0.755915270000000000
          Width = 377.921459990000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 15.118120000000000000
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
            'Vendedor:'
            '')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 15.118120000000000000
          Width = 31.154916660000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 15.118120000000000000
          Width = 377.921459990000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 28.724409450000000000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 28.724409450000000000
          Width = 31.154916660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 28.724409450000000000
          Width = 377.921459990000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_DESCRICAO]')
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
        Height = 13.228346460000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4a
        DataSetName = 'frxDBDataset4a'
        RowCount = 0
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 668.574851970000000000
          Width = 86.929107010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORTOTAL'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORCOFINS'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORCOFINS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORPIS'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORPIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORIPI'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 410.078737720000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORICMS'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORICMSST'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
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
            '[frxDBDataset4a."NCI_VALORICMSST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 36.283430390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_CFOP'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4a."NCI_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 217.700870390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_DESCRICAO'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4a."NCI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_PRODUTO'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4a."NCI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Width = 36.283430390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_SEQUENCIA'
          DataSet = frxDBDataset4a
          DataSetName = 'frxDBDataset4a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4a."NCI_SEQUENCIA"]')
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
        Height = 26.456710000000000000
        Top = 370.393940000000000000
        Width = 755.906000000000000000
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_NOME=NFC_NOME'
      'NFC_TOTALCOFINS=NFC_TOTALCOFINS'
      'NFC_TOTALICMS=NFC_TOTALICMS'
      'NFC_TOTALICMSST=NFC_TOTALICMSST'
      'NFC_TOTALIPI=NFC_TOTALIPI'
      'NFC_TOTALPIS=NFC_TOTALPIS'
      'NFC_VALORTOTAL=NFC_VALORTOTAL')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 112
  end
  object frxDBDataset4a: TfrxDBDataset
    UserName = 'frxDBDataset4a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCI_CFOP=NCI_CFOP'
      'NCI_DESCRICAO=NCI_DESCRICAO'
      'NCI_PRODUTO=NCI_PRODUTO'
      'NCI_SEQUENCIA=NCI_SEQUENCIA'
      'NCI_VALORCOFINS=NCI_VALORCOFINS'
      'NCI_VALORICMS=NCI_VALORICMS'
      'NCI_VALORICMSST=NCI_VALORICMSST'
      'NCI_VALORIPI=NCI_VALORIPI'
      'NCI_VALORPIS=NCI_VALORPIS'
      'NCI_VALORTOTAL=NCI_VALORTOTAL')
    DataSet = Qy04a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 304
  end
  object DS04: TDataSource
    DataSet = QY04
    Left = 264
    Top = 256
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
    ReportOptions.Name = 'NFe por CFOP'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'NAT_CODIGO'
        Value = Null
      end
      item
        Name = 'NAT_DESCRICAO'
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
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
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
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 285.842429370000000000
          Width = 76.724411890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DESCVALOR'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
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
            '[frxDBDataset5."NFC_DESCVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889807720000000000
          Width = 274.393820390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CHAVEACESSO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 363.432921970000000000
          Width = 97.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_VALORTOTAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
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
            '[frxDBDataset5."NFC_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 105.803008030000000000
          Width = 40.062992130000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CONDICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_CONDICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 462.102660000000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_STATUS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
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
            '[frxDBDataset5."NFC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Width = 137.196874800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15921906
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.776890690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset5."NFC_CFOP">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_CFOP"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."NAT_DESCRICAO"]')
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
        Top = 396.850650000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 133.139146670000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 363.432921970000000000
          Top = 1.889763780000000000
          Width = 97.133865590000000000
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
            '[SUM(<frxDBDataset5."NFC_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 285.842429370000000000
          Top = 1.889763780000000000
          Width = 76.724411890000000000
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
            '[SUM(<frxDBDataset5."NFC_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 1.889763780000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da CFOP:')
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
        Top = 532.913730000000000000
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
            'NFC05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 483.779840000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 133.139146670000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 374.771511970000000000
          Top = 1.385590000000000000
          Width = 85.795275590000000000
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
            '[SUM(<frxDBDataset5."NFC_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 308.519609370000000000
          Top = 1.385590000000000000
          Width = 65.385821890000000000
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
            '[SUM(<frxDBDataset5."NFC_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 1.385590000000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
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
        Height = 43.464566929133900000
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
        object Memo10: TfrxMemoView
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 0.755915270000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 0.755915270000000000
          Width = 31.154916660000000000
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
        object Memo11: TfrxMemoView
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 0.755915270000000000
          Width = 272.094619990000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 15.118120000000000000
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
            'Vendedor:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 15.118120000000000000
          Width = 31.154916660000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 15.118120000000000000
          Width = 272.094619990000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 28.724409450000000000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 28.724409450000000000
          Width = 31.154916660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 28.724409450000000000
          Width = 272.094619990000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_DESCRICAO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."CLI_NOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 20.787399130000000000
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
          Top = 20.787399130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 285.842429370000000000
          Top = 20.787399130000000000
          Width = 76.724411890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 105.803008030000000000
          Top = 20.787399130000000000
          Width = 178.771704800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Condi'#231#227'o Pagamento')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889807720000000000
          Top = 20.787399130000000000
          Width = 274.393820390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 363.432921970000000000
          Top = 20.787399130000000000
          Width = 97.133865590000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 462.102660000000000000
          Top = 20.787399130000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 56.692805980000000000
          Height = 17.007876460000000000
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset5."NFC_CLIENTE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 604.724655980000000000
          Height = 17.007876460000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
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
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 285.842429370000000000
          Top = 3.779530000000000000
          Width = 76.724411890000000000
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
            '[SUM(<frxDBDataset5."NFC_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 133.139146670000000000
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
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 363.432921970000000000
          Top = 3.779530000000000000
          Width = 97.133865590000000000
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
            '[SUM(<frxDBDataset5."NFC_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total do Cliente:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_CFOP=NFC_CFOP'
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_DESCVALOR=NFC_DESCVALOR'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'NFC_STATUS=NFC_STATUS'
      'NFC_NOME=NFC_NOME'
      'NFC_CONDICAO=NFC_CONDICAO'
      'CLI_NOME=CLI_NOME'
      'CPG_DESCRICAO=CPG_DESCRICAO'
      'NAT_DESCRICAO=NAT_DESCRICAO')
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
    ReportOptions.Name = 'Recibos de NFe'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'NAT_CODIGO'
        Value = Null
      end
      item
        Name = 'NAT_DESCRICAO'
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
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
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
        Height = 15.118095590000000000
        Top = 268.346630000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 636.850537720000000000
          Width = 119.433090390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ARQUIVO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset6."ARQUIVO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 469.259761970000000000
          Width = 85.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TOTALXML'
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."TOTALXML"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 105.803008030000000000
          Width = 270.614322130000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CHAVEACESSO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."NFC_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 85.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_VALORTOTAL'
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."NFC_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 70.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TOTAL'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6."TOTAL"]')
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
        Height = 34.015748030000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset6."NFC_STATUS">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."NFC_STATUS"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 20.787399130000000000
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
          Top = 20.787399130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 105.803008030000000000
          Top = 20.787399130000000000
          Width = 269.480424800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 636.850537720000000000
          Top = 20.787399130000000000
          Width = 119.433090390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Arquivo')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 469.259761970000000000
          Top = 20.787399130000000000
          Width = 85.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor XML')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 20.787399130000000000
          Width = 85.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Base')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 20.787399130000000000
          Width = 70.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OK')
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 133.139146670000000000
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
            'NFC06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
          Width = 133.139146670000000000
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
        Height = 43.464566929133900000
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
        object Memo10: TfrxMemoView
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
        object Memo11: TfrxMemoView
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
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_STATUS=NFC_STATUS'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'TOTALXML=TOTALXML'
      'TOTAL=TOTAL'
      'ARQUIVO=ARQUIVO')
    DataSet = TBXmls
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
    ReportOptions.Name = 'Verifica'#231#227'o de numera'#231#227'o'
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'NAT_CODIGO'
        Value = Null
      end
      item
        Name = 'NAT_DESCRICAO'
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
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'DE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."DE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 111.874062130000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ATE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."ATE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 230.527498030000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."QUANTIDADE"]')
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
            'NFC07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 230.527498030000000000
          Top = 1.385590000000000000
          Width = 94.488225590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."QUANTIDADE">,MasterData1)]')
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
        Height = 15.118120000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero inicial')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 230.527498030000000000
          Width = 94.488225590000000000
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 111.874062130000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero final')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DE=DE'
      'ATE=ATE'
      'QUANTIDADE=QUANTIDADE')
    DataSet = TBNfce
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 112
  end
  object TBNfce: TClientDataSet
    PersistDataPacket.Data = {
      440000009619E0BD010000001800000003000000000003000000440002444504
      000100000000000341544504000100000000000A5155414E5449444144450400
      0100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DE'
        DataType = ftInteger
      end
      item
        Name = 'ATE'
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 480
    Top = 352
    object TBNfceDE: TIntegerField
      FieldName = 'DE'
    end
    object TBNfceATE: TIntegerField
      FieldName = 'ATE'
    end
    object TBNfceQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
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
    ReportOptions.Name = 'NFe por CFOP'
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
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 34.015625980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_ANO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 213.251721970000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_NUMFINAL'
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
            '[frxDBDataset8."FCI_NUMFINAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 119.433090390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_PROTOCOLODH'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 280.685220000000000000
          Width = 245.669367010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_JUSTIFICATIVA'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_JUSTIFICATIVA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 83.125828030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_DTCADASTRO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 529.244167720000000000
          Width = 104.314970390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_PROTOCOLO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FCI_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 145.999819370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FCI_NUMINICIAL'
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
            '[frxDBDataset8."FCI_NUMINICIAL"]')
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
            'NFC08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 133.139146670000000000
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
        Height = 24.566916930000000000
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
        object Memo10: TfrxMemoView
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
          Left = 212.078850000000000000
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
          Left = 287.637910000000000000
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
        object Memo11: TfrxMemoView
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 154.960730000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Width = 34.015625980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 145.999819370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Inicial')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 83.125828030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Cad.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 529.244167720000000000
          Width = 104.314970390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Protocolo')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 213.251721970000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Final')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 280.685220000000000000
          Width = 245.669367010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Justificativa')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 119.433090390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data/Hora Protocolo')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FCI_ANO=FCI_ANO'
      'FCI_CODIGO=FCI_CODIGO'
      'FCI_DTCADASTRO=FCI_DTCADASTRO'
      'FCI_JUSTIFICATIVA=FCI_JUSTIFICATIVA'
      'FCI_NUMINICIAL=FCI_NUMINICIAL'
      'FCI_NUMFINAL=FCI_NUMFINAL'
      'FCI_PROTOCOLO=FCI_PROTOCOLO'
      'FCI_PROTOCOLODH=FCI_PROTOCOLODH')
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
    ReportOptions.Name = 'NFe por CFOP'
    ReportOptions.LastChange = 45385.672816817130000000
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
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'NAT_CODIGO'
        Value = Null
      end
      item
        Name = 'NAT_DESCRICAO'
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
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
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
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."NFC_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_DTEMISSAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."NFC_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 599.543419370000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_DESCVALOR'
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
            '[frxDBDataset9."NCI_DESCVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 531.023697720000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_QUANTIDADE'
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
            '[frxDBDataset9."NCI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 665.795321970000000000
          Width = 85.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_VALORTOTAL'
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
            '[frxDBDataset9."NCI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 124.700658030000000000
          Width = 46.488154800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_PRODUTO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."NCI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 104.826840000000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFC_STATUS'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset9."NFC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 172.858380000000000000
          Width = 356.409614800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NCI_DESCRICAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."NCI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15921906
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.776890690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset9."NCI_CFOP">'
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
            '[frxDBDataset9."NCI_CFOP"]')
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
            '[frxDBDataset9."NAT_DESCRICAO"]')
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
        Top = 396.850650000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 133.139146670000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.795321970000000000
          Top = 1.889763780000000000
          Width = 85.795275590000000000
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
            '[SUM(<frxDBDataset9."NCI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 599.543419370000000000
          Top = 1.889763780000000000
          Width = 65.385821890000000000
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
            '[SUM(<frxDBDataset9."NCI_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 1.889763780000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da CFOP:')
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
        Top = 532.913730000000000000
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
            'NFC09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 483.779840000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 133.139146670000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.795321970000000000
          Top = 1.385590000000000000
          Width = 85.795275590000000000
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
            '[SUM(<frxDBDataset9."NCI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 599.543419370000000000
          Top = 1.385590000000000000
          Width = 65.385821890000000000
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
            '[SUM(<frxDBDataset9."NCI_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 1.385590000000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
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
        Height = 43.464566929133900000
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
        object Memo10: TfrxMemoView
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 0.755915270000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 0.755915270000000000
          Width = 31.154916660000000000
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
        object Memo11: TfrxMemoView
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 0.755915270000000000
          Width = 272.094619990000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 15.118120000000000000
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
            'Vendedor:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 15.118120000000000000
          Width = 31.154916660000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 15.118120000000000000
          Width = 272.094619990000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 270.991996610000000000
          Top = 28.724409450000000000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 336.377823390000000000
          Top = 28.724409450000000000
          Width = 31.154916660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 370.585343330000000000
          Top = 28.724409450000000000
          Width = 272.094619990000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NAT_DESCRICAO]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset9."CLI_NOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 20.787399130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 20.787399130000000000
          Width = 56.692805980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 599.543419370000000000
          Top = 20.787399130000000000
          Width = 65.385821890000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 124.700658030000000000
          Top = 20.787399130000000000
          Width = 46.488154800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 531.023697720000000000
          Top = 20.787399130000000000
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 665.795321970000000000
          Top = 20.787399130000000000
          Width = 85.795275590000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 104.826840000000000000
          Top = 20.787399130000000000
          Width = 18.897567010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 56.692805980000000000
          Height = 17.007876460000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset9."NFC_CLIENTE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 604.724655980000000000
          Height = 17.007876460000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset9."CLI_NOME"]')
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
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 599.543419370000000000
          Top = 3.779530000000000000
          Width = 65.385821890000000000
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
            '[SUM(<frxDBDataset9."NCI_DESCVALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 133.139146670000000000
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
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.795321970000000000
          Top = 3.779530000000000000
          Width = 85.795275590000000000
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
            '[SUM(<frxDBDataset9."NCI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 95.622061890000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total do Cliente:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCI_CFOP=NCI_CFOP'
      'NCI_DESCRICAO=NCI_DESCRICAO'
      'NCI_DESCVALOR=NCI_DESCVALOR'
      'NCI_QUANTIDADE=NCI_QUANTIDADE'
      'NCI_PRODUTO=NCI_PRODUTO'
      'NCI_VALORTOTAL=NCI_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'NAT_DESCRICAO=NAT_DESCRICAO'
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_STATUS=NFC_STATUS'
      'NFC_NOME=NFC_NOME')
    DataSet = QY09
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 112
  end
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 208
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      'select '
      'NCI_CFOP,'
      'NCI_DESCRICAO,'
      'NCI_DESCVALOR,'
      'NCI_QUANTIDADE,'
      'NCI_PRODUTO,'
      'NCI_VALORTOTAL,'
      'CLI_NOME,'
      'NAT_DESCRICAO,'
      'NFC_CODIGO,'
      'NFC_CLIENTE,'
      'NFC_DTEMISSAO,'
      'NFC_STATUS,'
      'NFC_NOME'
      'from NFCEITENS'
      'left join NATUREZAS on NCI_CFOP=NAT_CODIGO'
      'left join NFCE on NCI_NOTA=NFC_CODIGO'
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      'where NFC_DTEMISSAO between :datainicial and :datafinal'
      'order by NCI_CFOP, CLI_NOME'
      '')
    Left = 624
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
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'NFC_CODIGO,'
      'NFC_CLIENTE,'
      'NFC_DTEMISSAO,'
      'NFC_VALORTOTAL,'
      'NFC_CHAVEACESSO,'
      'case NFC_STATUS'
      '  when '#39'A'#39' then '#39'ABERTA'#39
      '  when '#39'F'#39' then '#39'FINALIZADA'#39
      '  when '#39'C'#39' then '#39'CANCELADA'#39
      '  when '#39'I'#39' then '#39'INUTILIZADA'#39
      'end as NFC_STATUS,'
      'CLI_NOME'
      'from NFCE'
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      
        'where NFC_STATUS='#39'F'#39' and NFC_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by NFC_STATUS, NFC_DTEMISSAO, NFC_CODIGO desc'
      '')
    Left = 192
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
    Left = 192
    Top = 208
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select '
      'NFC_CODIGO,'
      'NFC_CLIENTE,'
      'NFC_DTEMISSAO,'
      'NFC_NOME,'
      'NFC_TOTALCOFINS,'
      'NFC_TOTALICMS,'
      'NFC_TOTALICMSST,'
      'NFC_TOTALIPI,'
      'NFC_TOTALPIS,'
      'NFC_VALORTOTAL'
      'from NFCE'
      
        'where NFC_STATUS='#39'F'#39' and NFC_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by NFC_STATUS, NFC_DTEMISSAO, NFC_CODIGO desc'
      '')
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
  object Qy04a: TFDQuery
    MasterSource = DS04
    MasterFields = 'NFC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR04a
    SQL.Strings = (
      'select '
      'NCI_CFOP,'
      'NCI_DESCRICAO,'
      'NCI_PRODUTO,'
      'NCI_SEQUENCIA,'
      'NCI_VALORCOFINS,'
      'NCI_VALORICMS,'
      'NCI_VALORICMSST,'
      'NCI_VALORIPI,'
      'NCI_VALORPIS,'
      'NCI_VALORTOTAL'
      'from NFCEITENS'
      'where NCI_NOTA=:NFC_CODIGO'
      'order by NCI_SEQUENCIA'
      '')
    Left = 264
    Top = 352
    ParamData = <
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR04a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 400
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select '
      'NFC_CODIGO,'
      'NFC_CLIENTE,'
      'NFC_CFOP,'
      'NFC_CHAVEACESSO,'
      'NFC_DESCVALOR,'
      'NFC_DTEMISSAO,'
      'NFC_VALORTOTAL,'
      'NFC_STATUS,'
      'NFC_NOME,'
      'NFC_CONDICAO,'
      'CLI_NOME,'
      'CPG_DESCRICAO,'
      'NAT_DESCRICAO'
      'from NFCE'
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      'left join CONDICOES on NFC_CONDICAO=CPG_CODIGO'
      'left join NATUREZAS on NFC_CFOP=NAT_CODIGO'
      'where NFC_DTEMISSAO between :datainicial and :datafinal'
      'order by NFC_CFOP, CLI_NOME'
      '')
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
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 208
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      'select'
      'NFC_CHAVEACESSO, '
      'NFC_CLIENTE,'
      'NFC_CODIGO, '
      'NFC_NOME, '
      'NFC_DTEMISSAO,'
      'case NFC_STATUS'
      '  when '#39'A'#39' then '#39'ABERTA'#39
      '  when '#39'F'#39' then '#39'FINALIZADA'#39
      '  when '#39'C'#39' then '#39'CANCELADA'#39
      '  when '#39'I'#39' then '#39'INUTILIZADA'#39
      'end as NFC_STATUS,'
      'NFC_VALORTOTAL,'
      'from NFCE '
      'where NFC_DTEMISSAO between :datainicial and :datafinal '
      'order by NFC_STATUS, NFC_CODIGO desc'
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
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 208
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select'
      'T.ANTERIOR + 1 as DE,'
      'T.NFC_CODIGO - 1 as ATE'
      'from ('
      '  select'
      
        '    (select first 1 D.NFC_CODIGO from NFCE D where D.NFC_CODIGO ' +
        '< F.NFC_CODIGO order by D.NFC_CODIGO desc) as ANTERIOR,'
      '    F.NFC_CODIGO'
      '  from NFCE F'
      '  order by F.NFC_CODIGO) T'
      'where coalesce(T.ANTERIOR,0) <> T.NFC_CODIGO -1'
      '')
    Left = 480
    Top = 160
    object QY07DE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'DE'
      Origin = 'DE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QY07ATE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ATE'
      Origin = 'ATE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QY07a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07a
    SQL.Strings = (
      'select FCI_CODIGO from NFCEINUTILIZADAS'
      'where FCI_NUMINICIAL=:de and FCI_NUMFINAL=:ate'
      '')
    Left = 480
    Top = 256
    ParamData = <
      item
        Name = 'DE'
        ParamType = ptInput
      end
      item
        Name = 'ATE'
        ParamType = ptInput
      end>
  end
  object TR07a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 304
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      'select '
      'FCI_ANO,'
      'FCI_CODIGO,'
      'FCI_DTCADASTRO,'
      'FCI_JUSTIFICATIVA,'
      'FCI_NUMINICIAL,'
      'FCI_NUMFINAL,'
      'FCI_PROTOCOLO,'
      'FCI_PROTOCOLODH'
      'from NFCEINUTILIZADAS'
      'where FCI_DTCADASTRO between :datainicial and :datafinal'
      'order by FCI_DTCADASTRO desc, FCI_CODIGO desc'
      '')
    Left = 552
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
    Left = 552
    Top = 208
  end
  object TBXmls: TClientDataSet
    PersistDataPacket.Data = {
      1A0100009619E0BD0100000018000000080000000000030000001A010F4E4643
      5F434841564541434553534F0100490000000100055749445448020002003200
      0A4E46435F434F4449474F04000100000000000D4E46435F4454454D49535341
      4F04000600000000000A4E46435F535441545553010049000000010005574944
      5448020002000F000E4E46435F56414C4F52544F54414C120005000000020008
      444543494D414C5302000200040005574944544802000200200008544F54414C
      584D4C120005000000020008444543494D414C53020002000400055749445448
      02000200200005544F54414C0100490000000100055749445448020002000A00
      074152515549564F0100490000000100055749445448020002000F000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NFC_CHAVEACESSO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'NFC_DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'NFC_STATUS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NFC_VALORTOTAL'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'TOTALXML'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'TOTAL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ARQUIVO'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 408
    Top = 256
    object TBXmlsNFC_CHAVEACESSO: TStringField
      FieldName = 'NFC_CHAVEACESSO'
      Size = 50
    end
    object TBXmlsNFC_CODIGO: TIntegerField
      FieldName = 'NFC_CODIGO'
    end
    object TBXmlsNFC_DTEMISSAO: TDateField
      FieldName = 'NFC_DTEMISSAO'
    end
    object TBXmlsNFC_STATUS: TStringField
      FieldName = 'NFC_STATUS'
      Size = 15
    end
    object TBXmlsNFC_VALORTOTAL: TBCDField
      FieldName = 'NFC_VALORTOTAL'
      Precision = 32
    end
    object TBXmlsTOTALXML: TBCDField
      FieldName = 'TOTALXML'
      Precision = 32
    end
    object TBXmlsTOTAL: TStringField
      FieldName = 'TOTAL'
      Size = 10
    end
    object TBXmlsARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 15
    end
  end
  object frxReport10: TfrxReport
    Version = '2023.2'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45938.424707812500000000
    ReportOptions.LastChange = 45938.424707812500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 696
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset10
        DataSetName = 'frxDBDataset10'
      end
      item
        DataSet = frxDBDataset10a
        DataSetName = 'frxDBDataset10a'
      end
      item
        DataSet = frxDBDataset10b
        DataSetName = 'frxDBDataset10b'
      end>
    Variables = <
      item
        Name = ' New Category1'
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
        Name = 'HOMOLOGACAO'
        Value = Null
      end
      item
        Name = 'URLCONSULTA'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 203.199868766751400000
      PaperHeight = 296.862308276425900000
      PaperSize = 256
      LeftMargin = 2.539998359584393000
      RightMargin = 2.539998359584393000
      TopMargin = 4.497913761764029000
      BottomMargin = 4.497913761764029000
      Frame.Typ = []
      EndlessHeight = True
      MirrorMode = []
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 85.000000000000000000
        Top = 17.000000000000000000
        Width = 748.800000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo16: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER2]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo17: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER3]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo18: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER4]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo24: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[HOMOLOGACAO]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 85.000000000000000000
        Top = 119.000000000000000000
        Width = 748.800000000000000000
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Top = 51.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 230.400000000000000000
          Top = 51.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Frame.Typ = []
          Memo.UTF8W = (
            '....+....1....+....2....+....3....+....4....+....5....+....6....')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DA NOTA FISCAL DE CONSUMIDOR ELETRONICA')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 51.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT'#193'RIO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 595.200000000000000000
          Top = 51.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 355.200000000000000000
          Top = 51.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 51.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 238.000000000000000000
        Width = 748.800000000000000000
        DataSet = frxDBDataset10a
        DataSetName = 'frxDBDataset10a'
        RowCount = 0
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataField = 'CODIGOITEM'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10a."CODIGOITEM"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Width = 614.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_DESCRICAO'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_DESCRICAO"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_QUANTIDADE'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_QUANTIDADE"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo20: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_SEQUENCIA'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_SEQUENCIA"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 355.200000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_UNIDADE'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_UNIDADE"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 17.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_VALORUNIT'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_VALORUNIT"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo23: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 595.200000000000000000
          Top = 17.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NCI_VALORTOTAL'
          DataSet = frxDBDataset10a
          DataSetName = 'frxDBDataset10a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10a."NCI_VALORTOTAL"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 119.000000000000000000
        Top = 289.000000000000000000
        Width = 748.800000000000000000
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE ITENS')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo27: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 17.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR TOTAL R$')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo31: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 34.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_TOTALPRODUTOS'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_TOTALPRODUTOS"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTO R$')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo33: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 51.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_DESCVALOR'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_DESCVALOR"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR A PAGAR')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo35: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 68.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_VALORTOTAL'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_VALORTOTAL"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo42: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo45: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 102.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo46: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 102.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO R$')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo47: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 85.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 187.000000000000000000
        Top = 459.000000000000000000
        Width = 748.800000000000000000
        object DMPMemo48: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------')
          TruncOutboundText = False
        end
        object DMPMemo28: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulta pela chave de acesso em')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[URLCONSULTA]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CHAVEACESSO]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo36: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NFC-e:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo37: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 68.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_CODIGO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_CODIGO"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo38: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Top = 68.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'S'#201'RIE:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo39: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Top = 68.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_SERIE'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_SERIE"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo40: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 374.400000000000000000
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA/HORA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo41: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 489.600000000000000000
          Top = 68.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NFC_PROTOCOLODH'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."NFC_PROTOCOLODH"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 425.000000000000000000
        Width = 748.800000000000000000
        DataSet = frxDBDataset10b
        DataSetName = 'frxDBDataset10b'
        RowCount = 0
        object DMPMemo44: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NCP_VALOR'
          DataSet = frxDBDataset10b
          DataSetName = 'frxDBDataset10b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10b."NCP_VALOR"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo43: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset10b
          DataSetName = 'frxDBDataset10b'
          FontStyle = [fsxCondensed, fsx15cpi]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10b."CPG_DESCRICAO"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
    end
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFC_ACREPORC=NFC_ACREPORC'
      'NFC_ACREVALOR=NFC_ACREVALOR'
      'NFC_ALIQICMSCREDSN=NFC_ALIQICMSCREDSN'
      'NFC_BAIRRO=NFC_BAIRRO'
      'NFC_BASECOFINS=NFC_BASECOFINS'
      'NFC_BASECOFINSST=NFC_BASECOFINSST'
      'NFC_BASEICMS=NFC_BASEICMS'
      'NFC_BASEICMSST=NFC_BASEICMSST'
      'NFC_BASEIPI=NFC_BASEIPI'
      'NFC_BASEPIS=NFC_BASEPIS'
      'NFC_BASEPISST=NFC_BASEPISST'
      'NFC_CEP=NFC_CEP'
      'NFC_CFOP=NFC_CFOP'
      'NFC_CHAVEACESSO=NFC_CHAVEACESSO'
      'NFC_CIDADE=NFC_CIDADE'
      'NFC_CIDADECODIGO=NFC_CIDADECODIGO'
      'NFC_CLIENTE=NFC_CLIENTE'
      'NFC_CNPJ=NFC_CNPJ'
      'NFC_CODIGO=NFC_CODIGO'
      'NFC_CODIGONFCE=NFC_CODIGONFCE'
      'NFC_CODIGONUMERICO=NFC_CODIGONUMERICO'
      'NFC_COMISSAO=NFC_COMISSAO'
      'NFC_COMISSAOPOR=NFC_COMISSAOPOR'
      'NFC_COMPLEMENTO=NFC_COMPLEMENTO'
      'NFC_CONDICAO=NFC_CONDICAO'
      'NFC_CONTATO=NFC_CONTATO'
      'NFC_CONTINGENCIA=NFC_CONTINGENCIA'
      'NFC_CPF=NFC_CPF'
      'NFC_CUSTOTOTAL=NFC_CUSTOTOTAL'
      'NFC_DESCPORC=NFC_DESCPORC'
      'NFC_DESCVALOR=NFC_DESCVALOR'
      'NFC_DTATUALIZACAO=NFC_DTATUALIZACAO'
      'NFC_DTCADASTRO=NFC_DTCADASTRO'
      'NFC_DTEMISSAO=NFC_DTEMISSAO'
      'NFC_ENDERECO=NFC_ENDERECO'
      'NFC_ESTADO=NFC_ESTADO'
      'NFC_ESTADOCODIGO=NFC_ESTADOCODIGO'
      'NFC_FINALIDADE=NFC_FINALIDADE'
      'NFC_FONE1=NFC_FONE1'
      'NFC_FORMAPAGTO=NFC_FORMAPAGTO'
      'NFC_HRATUALIZACAO=NFC_HRATUALIZACAO'
      'NFC_HRCADASTRO=NFC_HRCADASTRO'
      'NFC_IE=NFC_IE'
      'NFC_INFOADICFISCO=NFC_INFOADICFISCO'
      'NFC_LUCROPORC=NFC_LUCROPORC'
      'NFC_LUCROVALOR=NFC_LUCROVALOR'
      'NFC_MODELO=NFC_MODELO'
      'NFC_MOTIVOCANCELAMENTO=NFC_MOTIVOCANCELAMENTO'
      'NFC_MOTIVOINUTILIZACAO=NFC_MOTIVOINUTILIZACAO'
      'NFC_MOVIMENTAESTOQUE=NFC_MOVIMENTAESTOQUE'
      'NFC_MOVIMENTAFINANCEIRO=NFC_MOVIMENTAFINANCEIRO'
      'NFC_NOME=NFC_NOME'
      'NFC_NUMERO=NFC_NUMERO'
      'NFC_OBSERVACOES=NFC_OBSERVACOES'
      'NFC_PESOBRUTO=NFC_PESOBRUTO'
      'NFC_PESOLIQ=NFC_PESOLIQ'
      'NFC_PROTOCOLO=NFC_PROTOCOLO'
      'NFC_PROTOCOLOCANC=NFC_PROTOCOLOCANC'
      'NFC_PROTOCOLOCANCDH=NFC_PROTOCOLOCANCDH'
      'NFC_PROTOCOLODH=NFC_PROTOCOLODH'
      'NFC_PROTOCOLOINUT=NFC_PROTOCOLOINUT'
      'NFC_PROTOCOLOINUTDH=NFC_PROTOCOLOINUTDH'
      'NFC_QRCODE=NFC_QRCODE'
      'NFC_SEQUENCIAITEM=NFC_SEQUENCIAITEM'
      'NFC_SERIE=NFC_SERIE'
      'NFC_STATUS=NFC_STATUS'
      'NFC_TABELAPRECO=NFC_TABELAPRECO'
      'NFC_TIPOATENDIMENTO=NFC_TIPOATENDIMENTO'
      'NFC_TIPOCONSUMIDOR=NFC_TIPOCONSUMIDOR'
      'NFC_TIPOEMISSAO=NFC_TIPOEMISSAO'
      'NFC_TIPOOPERACAO=NFC_TIPOOPERACAO'
      'NFC_TOTALCOFINS=NFC_TOTALCOFINS'
      'NFC_TOTALCOFINSST=NFC_TOTALCOFINSST'
      'NFC_TOTALCOMISSAO=NFC_TOTALCOMISSAO'
      'NFC_TOTALFCP=NFC_TOTALFCP'
      'NFC_TOTALFCPST=NFC_TOTALFCPST'
      'NFC_TOTALICMS=NFC_TOTALICMS'
      'NFC_TOTALICMSCREDSN=NFC_TOTALICMSCREDSN'
      'NFC_TOTALICMSST=NFC_TOTALICMSST'
      'NFC_TOTALICMSUFDEST=NFC_TOTALICMSUFDEST'
      'NFC_TOTALICMSUFREMET=NFC_TOTALICMSUFREMET'
      'NFC_TOTALIPI=NFC_TOTALIPI'
      'NFC_TOTALPIS=NFC_TOTALPIS'
      'NFC_TOTALPISST=NFC_TOTALPISST'
      'NFC_TOTALPRODUTOS=NFC_TOTALPRODUTOS'
      'NFC_TOTALTRIBUTOS=NFC_TOTALTRIBUTOS'
      'NFC_TOTALTRIBUTOSEST=NFC_TOTALTRIBUTOSEST'
      'NFC_TOTALTRIBUTOSFED=NFC_TOTALTRIBUTOSFED'
      'NFC_TOTALTRIBUTOSIMP=NFC_TOTALTRIBUTOSIMP'
      'NFC_TOTALTRIBUTOSMUN=NFC_TOTALTRIBUTOSMUN'
      'NFC_USUARIO=NFC_USUARIO'
      'NFC_VALORFRETE=NFC_VALORFRETE'
      'NFC_VALORRECEBIDO=NFC_VALORRECEBIDO'
      'NFC_VALORTOTAL=NFC_VALORTOTAL'
      'NFC_VALORTROCO=NFC_VALORTROCO'
      'NFC_VENDA=NFC_VENDA'
      'NFC_VENDEDOR=NFC_VENDEDOR'
      'CLI_AFE=CLI_AFE'
      'CLI_ALVARA=CLI_ALVARA'
      'CLI_ALVARASANITARIO=CLI_ALVARASANITARIO'
      'CLI_ATIVIDADE=CLI_ATIVIDADE'
      'CLI_ATUALIZAR=CLI_ATUALIZAR'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_BAIRROCOB=CLI_BAIRROCOB'
      'CLI_BLOQUEARVENDA=CLI_BLOQUEARVENDA'
      'CLI_CEP=CLI_CEP'
      'CLI_CEPCOB=CLI_CEPCOB'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CIDADECOB=CLI_CIDADECOB'
      'CLI_CIDADECODIGO=CLI_CIDADECODIGO'
      'CLI_CIDADECODIGOCOB=CLI_CIDADECODIGOCOB'
      'CLI_CLASSIFICACAO=CLI_CLASSIFICACAO'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_CNPJCOB=CLI_CNPJCOB'
      'CLI_CNS=CLI_CNS'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_COMPLEMENTOCOB=CLI_COMPLEMENTOCOB'
      'CLI_CONDICAO=CLI_CONDICAO'
      'CLI_CONJUGE=CLI_CONJUGE'
      'CLI_CONJUGECPF=CLI_CONJUGECPF'
      'CLI_CONJUGEDTNASC=CLI_CONJUGEDTNASC'
      'CLI_CONJUGERG=CLI_CONJUGERG'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CONTRIBUINTEICMS=CLI_CONTRIBUINTEICMS'
      'CLI_CPF=CLI_CPF'
      'CLI_DESCONTO=CLI_DESCONTO'
      'CLI_DIACOBRANCA=CLI_DIACOBRANCA'
      'CLI_DTATUALIZACAO=CLI_DTATUALIZACAO'
      'CLI_DTCADASTRO=CLI_DTCADASTRO'
      'CLI_DTNASC=CLI_DTNASC'
      'CLI_DTOBITO=CLI_DTOBITO'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_EMAIL2=CLI_EMAIL2'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_ENDERECOCOB=CLI_ENDERECOCOB'
      'CLI_ENQUADRAMENTO=CLI_ENQUADRAMENTO'
      'CLI_ESTADO=CLI_ESTADO'
      'CLI_ESTADOCIVIL=CLI_ESTADOCIVIL'
      'CLI_ESTADOCOB=CLI_ESTADOCOB'
      'CLI_ESTADOCODIGO=CLI_ESTADOCODIGO'
      'CLI_ESTADOCODIGOCOB=CLI_ESTADOCODIGOCOB'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_FONE0800=CLI_FONE0800'
      'CLI_FONE1=CLI_FONE1'
      'CLI_FONE2=CLI_FONE2'
      'CLI_FONE3=CLI_FONE3'
      'CLI_FRETE=CLI_FRETE'
      'CLI_HRATUALIZACAO=CLI_HRATUALIZACAO'
      'CLI_HRCADASTRO=CLI_HRCADASTRO'
      'CLI_IDESTRANGEIRO=CLI_IDESTRANGEIRO'
      'CLI_IE=CLI_IE'
      'CLI_IECOB=CLI_IECOB'
      'CLI_IM=CLI_IM'
      'CLI_LIMITECREDITO=CLI_LIMITECREDITO'
      'CLI_LOCALESTUDA=CLI_LOCALESTUDA'
      'CLI_LOCALTRABALHO=CLI_LOCALTRABALHO'
      'CLI_MAE=CLI_MAE'
      'CLI_MAEEMAIL=CLI_MAEEMAIL'
      'CLI_MAEFONE=CLI_MAEFONE'
      'CLI_MAILING=CLI_MAILING'
      'CLI_MENSALISTA=CLI_MENSALISTA'
      'CLI_MSN=CLI_MSN'
      'CLI_NATURALIDADE=CLI_NATURALIDADE'
      'CLI_NEXTEL=CLI_NEXTEL'
      'CLI_NOME=CLI_NOME'
      'CLI_NUMERO=CLI_NUMERO'
      'CLI_NUMEROCOB=CLI_NUMEROCOB'
      'CLI_OBITO=CLI_OBITO'
      'CLI_OBSERVACOES=CLI_OBSERVACOES'
      'CLI_ORIENTACAOCOBRANCA=CLI_ORIENTACAOCOBRANCA'
      'CLI_PAI=CLI_PAI'
      'CLI_PAIEMAIL=CLI_PAIEMAIL'
      'CLI_PAIFONE=CLI_PAIFONE'
      'CLI_PAIS=CLI_PAIS'
      'CLI_PAISCOB=CLI_PAISCOB'
      'CLI_PAISCODIGO=CLI_PAISCODIGO'
      'CLI_PAISCODIGOCOB=CLI_PAISCODIGOCOB'
      'CLI_PASSWORD=CLI_PASSWORD'
      'CLI_PONTOS=CLI_PONTOS'
      'CLI_PROFISSAO=CLI_PROFISSAO'
      'CLI_RECEBEAVISOS=CLI_RECEBEAVISOS'
      'CLI_REGPROFISSIONAL=CLI_REGPROFISSIONAL'
      'CLI_RG=CLI_RG'
      'CLI_SAME=CLI_SAME'
      'CLI_SETOR=CLI_SETOR'
      'CLI_SEXO=CLI_SEXO'
      'CLI_SITE=CLI_SITE'
      'CLI_STATUS=CLI_STATUS'
      'CLI_SUFRAMA=CLI_SUFRAMA'
      'CLI_TABELAPRECO=CLI_TABELAPRECO'
      'CLI_TAXA=CLI_TAXA'
      'CLI_TELEVENDA=CLI_TELEVENDA'
      'CLI_TIPOCLIENTE=CLI_TIPOCLIENTE'
      'CLI_TIPOCONSUMIDOR=CLI_TIPOCONSUMIDOR'
      'CLI_TIPOPESSOA=CLI_TIPOPESSOA'
      'CLI_TRANSPORTADORA=CLI_TRANSPORTADORA'
      'CLI_USUARIO=CLI_USUARIO'
      'CLI_VENDEDOR=CLI_VENDEDOR')
    DataSet = QY10
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 112
  end
  object TR10: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 696
    Top = 208
  end
  object QY10: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR10
    SQL.Strings = (
      'select'
      'NFC_ACREVALOR,'
      'NFC_BAIRRO,'
      'NFC_CEP,'
      'NFC_CHAVEACESSO,'
      'NFC_CIDADE,'
      'NFC_CLIENTE,'
      'NFC_CODIGO,'
      'NFC_COMPLEMENTO,'
      'NFC_CONTINGENCIA,'
      'NFC_CPF,'
      'NFC_DESCVALOR,'
      'NFC_ENDERECO,'
      'NFC_ESTADO,'
      'NFC_FONE1,'
      'NFC_NOME,'
      'NFC_NUMERO,'
      'NFC_PROTOCOLO,'
      'NFC_PROTOCOLODH,'
      'NFC_QRCODE,'
      'NFC_SERIE,'
      'NFC_TOTALPRODUTOS,'
      'NFC_TOTALTRIBUTOS,'
      'NFC_VALORFRETE,'
      'NFC_VALORRECEBIDO,'
      'NFC_VALORTOTAL,'
      'NFC_VALORTROCO,'
      'NFC_VENDEDOR,'
      'VEN_NOME '
      'from NFCE '
      'left join VENDEDORES on NFC_VENDEDOR=VEN_CODIGO'
      'where NFC_CODIGO=:codigo;')
    Left = 696
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QY10NFC_ACREVALOR: TFMTBCDField
      FieldName = 'NFC_ACREVALOR'
      Origin = 'NFC_ACREVALOR'
      Precision = 18
    end
    object QY10NFC_BAIRRO: TStringField
      FieldName = 'NFC_BAIRRO'
      Origin = 'NFC_BAIRRO'
      Size = 50
    end
    object QY10NFC_CEP: TStringField
      FieldName = 'NFC_CEP'
      Origin = 'NFC_CEP'
      Size = 10
    end
    object QY10NFC_CHAVEACESSO: TStringField
      FieldName = 'NFC_CHAVEACESSO'
      Origin = 'NFC_CHAVEACESSO'
      Size = 50
    end
    object QY10NFC_CIDADE: TStringField
      FieldName = 'NFC_CIDADE'
      Origin = 'NFC_CIDADE'
      Size = 50
    end
    object QY10NFC_CLIENTE: TIntegerField
      FieldName = 'NFC_CLIENTE'
      Origin = 'NFC_CLIENTE'
      Required = True
    end
    object QY10NFC_CODIGO: TIntegerField
      FieldName = 'NFC_CODIGO'
      Origin = 'NFC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QY10NFC_COMPLEMENTO: TStringField
      FieldName = 'NFC_COMPLEMENTO'
      Origin = 'NFC_COMPLEMENTO'
      Size = 80
    end
    object QY10NFC_CONTINGENCIA: TStringField
      FieldName = 'NFC_CONTINGENCIA'
      Origin = 'NFC_CONTINGENCIA'
      Size = 1
    end
    object QY10NFC_CPF: TStringField
      FieldName = 'NFC_CPF'
      Origin = 'NFC_CPF'
    end
    object QY10NFC_DESCVALOR: TFMTBCDField
      FieldName = 'NFC_DESCVALOR'
      Origin = 'NFC_DESCVALOR'
      Precision = 18
    end
    object QY10NFC_ENDERECO: TStringField
      FieldName = 'NFC_ENDERECO'
      Origin = 'NFC_ENDERECO'
      Size = 100
    end
    object QY10NFC_ESTADO: TStringField
      FieldName = 'NFC_ESTADO'
      Origin = 'NFC_ESTADO'
      Size = 2
    end
    object QY10NFC_FONE1: TStringField
      FieldName = 'NFC_FONE1'
      Origin = 'NFC_FONE1'
    end
    object QY10NFC_NOME: TStringField
      FieldName = 'NFC_NOME'
      Origin = 'NFC_NOME'
      Size = 80
    end
    object QY10NFC_NUMERO: TStringField
      FieldName = 'NFC_NUMERO'
      Origin = 'NFC_NUMERO'
      Size = 15
    end
    object QY10NFC_PROTOCOLO: TStringField
      FieldName = 'NFC_PROTOCOLO'
      Origin = 'NFC_PROTOCOLO'
      Size = 40
    end
    object QY10NFC_PROTOCOLODH: TStringField
      FieldName = 'NFC_PROTOCOLODH'
      Origin = 'NFC_PROTOCOLODH'
      Size = 30
    end
    object QY10NFC_QRCODE: TStringField
      FieldName = 'NFC_QRCODE'
      Origin = 'NFC_QRCODE'
      Size = 250
    end
    object QY10NFC_SERIE: TIntegerField
      FieldName = 'NFC_SERIE'
      Origin = 'NFC_SERIE'
    end
    object QY10NFC_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'NFC_TOTALPRODUTOS'
      Origin = 'NFC_TOTALPRODUTOS'
      Precision = 18
    end
    object QY10NFC_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'NFC_TOTALTRIBUTOS'
      Origin = 'NFC_TOTALTRIBUTOS'
      Precision = 18
    end
    object QY10NFC_VALORFRETE: TFMTBCDField
      FieldName = 'NFC_VALORFRETE'
      Origin = 'NFC_VALORFRETE'
      Precision = 18
    end
    object QY10NFC_VALORRECEBIDO: TFMTBCDField
      FieldName = 'NFC_VALORRECEBIDO'
      Origin = 'NFC_VALORRECEBIDO'
      Precision = 18
    end
    object QY10NFC_VALORTOTAL: TFMTBCDField
      FieldName = 'NFC_VALORTOTAL'
      Origin = 'NFC_VALORTOTAL'
      Precision = 18
    end
    object QY10NFC_VALORTROCO: TFMTBCDField
      FieldName = 'NFC_VALORTROCO'
      Origin = 'NFC_VALORTROCO'
      Precision = 18
    end
    object QY10NFC_VENDEDOR: TIntegerField
      FieldName = 'NFC_VENDEDOR'
      Origin = 'NFC_VENDEDOR'
      Required = True
    end
    object QY10VEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TR10a: TFDTransaction
    Connection = DM.FDConnection1
    Left = 696
    Top = 392
  end
  object QY10a: TFDQuery
    MasterSource = DS10
    MasterFields = 'NFC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR10a
    SQL.Strings = (
      'select'
      'NCI_CODIGO, '
      'NCI_PRODUTO,'
      'NCI_DESCRICAO,'
      'NCI_QUANTIDADE,'
      'NCI_SEQUENCIA,'
      'NCI_UNIDADE,'
      'NCI_VALORTOTAL,'
      'NCI_VALORUNIT,'
      
        'iif(NCI_CODIGOBARRAS<>'#39#39',NCI_CODIGOBARRAS,NCI_PRODUTO) as CODIGO' +
        'ITEM'
      'from NFCEITENS '
      'where NCI_NOTA=:NFC_CODIGO '
      'order by NCI_SEQUENCIA')
    Left = 696
    Top = 344
    ParamData = <
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QY10aNCI_CODIGO: TIntegerField
      FieldName = 'NCI_CODIGO'
      Origin = 'NCI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QY10aNCI_PRODUTO: TIntegerField
      FieldName = 'NCI_PRODUTO'
      Origin = 'NCI_PRODUTO'
      Required = True
    end
    object QY10aNCI_DESCRICAO: TStringField
      FieldName = 'NCI_DESCRICAO'
      Origin = 'NCI_DESCRICAO'
      Size = 100
    end
    object QY10aNCI_QUANTIDADE: TFMTBCDField
      FieldName = 'NCI_QUANTIDADE'
      Origin = 'NCI_QUANTIDADE'
      Precision = 18
    end
    object QY10aNCI_SEQUENCIA: TIntegerField
      FieldName = 'NCI_SEQUENCIA'
      Origin = 'NCI_SEQUENCIA'
    end
    object QY10aNCI_UNIDADE: TStringField
      FieldName = 'NCI_UNIDADE'
      Origin = 'NCI_UNIDADE'
      Size = 3
    end
    object QY10aNCI_VALORTOTAL: TFMTBCDField
      FieldName = 'NCI_VALORTOTAL'
      Origin = 'NCI_VALORTOTAL'
      Precision = 18
    end
    object QY10aNCI_VALORUNIT: TFMTBCDField
      FieldName = 'NCI_VALORUNIT'
      Origin = 'NCI_VALORUNIT'
      Precision = 18
    end
    object QY10aCODIGOITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGOITEM'
      Origin = 'CODIGOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object frxDBDataset10a: TfrxDBDataset
    UserName = 'frxDBDataset10a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCI_CODIGO=NCI_CODIGO'
      'NCI_PRODUTO=NCI_PRODUTO'
      'NCI_DESCRICAO=NCI_DESCRICAO'
      'NCI_QUANTIDADE=NCI_QUANTIDADE'
      'NCI_SEQUENCIA=NCI_SEQUENCIA'
      'NCI_UNIDADE=NCI_UNIDADE'
      'NCI_VALORTOTAL=NCI_VALORTOTAL'
      'NCI_VALORUNIT=NCI_VALORUNIT'
      'CODIGOITEM=CODIGOITEM')
    DataSet = QY10a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 296
  end
  object TR10b: TFDTransaction
    Connection = DM.FDConnection1
    Left = 696
    Top = 536
  end
  object QY10b: TFDQuery
    MasterSource = DS10
    MasterFields = 'NFC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR10b
    SQL.Strings = (
      'select '
      'NCP_VALOR,'
      'CPG_DESCRICAO'
      'from NFCEPAGAMENTOS'
      'left join CONDICOES on NCP_CONDICAO=CPG_CODIGO '
      'where NCP_NFCE=:NFC_CODIGO and NCP_VALOR>0 '
      'order by CPG_DESCRICAO')
    Left = 696
    Top = 488
    ParamData = <
      item
        Name = 'NFC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QY10bNCP_VALOR: TFMTBCDField
      FieldName = 'NCP_VALOR'
      Origin = 'NCP_VALOR'
      Precision = 18
    end
    object QY10bCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object frxDBDataset10b: TfrxDBDataset
    UserName = 'frxDBDataset10b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCP_VALOR=NCP_VALOR'
      'CPG_DESCRICAO=CPG_DESCRICAO')
    DataSet = QY10b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 440
  end
  object DS10: TDataSource
    DataSet = QY10
    Left = 696
    Top = 256
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 800
    Top = 296
  end
end
