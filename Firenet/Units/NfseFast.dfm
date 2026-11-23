object FormNfseFast: TFormNfseFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de NFSe'
  ClientHeight = 463
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 336
    Top = 16
    Width = 287
    Height = 233
    Lines.Strings = (
      '01 - DANFSE'
      '02 - NFSe no per'#237'odo'
      '03 - DANFSE Nacional')
    TabOrder = 0
  end
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
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
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFS_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.488250000000000000
          Width = 43.464425350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFS_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 405.409710000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_DTEMISSAO'
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
            '[frxDBDataset2."NFS_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 142.842610000000000000
          Width = 260.787401570000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_TOMNOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFS_TOMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 52.913275980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_NUMERONOTA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NFS_NUMERONOTA"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 613.283860000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_TOTALISS'
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
            '[frxDBDataset2."NFS_TOTALISS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_VALORISSRETIDO'
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
            '[frxDBDataset2."NFS_VALORISSRETIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_VALORLIQUIDO'
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
            '[frxDBDataset2."NFS_VALORLIQUIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 35.905365350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_VENDEDOR'
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
            '[frxDBDataset2."NFS_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 39.684895350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NFS_STATUS'
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
            '[frxDBDataset2."NFS_STATUS"]')
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
            'NFS02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 52.913385830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
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
          Left = 182.989486670000000000
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
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Cliente:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.574830000000000000
          Top = 15.118120000000000000
          Width = 35.364873330000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 15.118120000000000000
          Width = 307.491033330000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Vendedor:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 109.574830000000000000
          Top = 30.236240000000000000
          Width = 35.364873330000000000
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
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 30.236240000000000000
          Width = 307.491033330000000000
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
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
            'Status:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 393.669503700000000000
          Width = 65.601113330000000000
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
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
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
          Left = 46.354360000000000000
          Width = 52.913275980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'L'#237'quido')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 142.842610000000000000
          Width = 260.787401570000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 98.488250000000000000
          Width = 43.464425350000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 405.409710000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 39.684895350000000000
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
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 35.905365350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vend.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 613.283860000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ISS')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 69.921135350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ISS Retido')
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
        Top = 294.803340000000000000
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
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Top = 1.889763780000000000
          Width = 69.921135350000000000
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
            '[SUM(<frxDBDataset2."NFS_VALORLIQUIDO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 613.283860000000000000
          Top = 1.889763780000000000
          Width = 69.921135350000000000
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
            '[SUM(<frxDBDataset2."NFS_TOTALISS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 1.889763780000000000
          Width = 69.921135350000000000
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
            '[SUM(<frxDBDataset2."NFS_VALORISSRETIDO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFS_CLIENTE=NFS_CLIENTE'
      'NFS_CODIGO=NFS_CODIGO'
      'NFS_DTEMISSAO=NFS_DTEMISSAO'
      'NFS_NUMERONOTA=NFS_NUMERONOTA'
      'NFS_STATUS=NFS_STATUS'
      'NFS_TOMNOME=NFS_TOMNOME'
      'NFS_TOTALISS=NFS_TOTALISS'
      'NFS_VALORISSRETIDO=NFS_VALORISSRETIDO'
      'NFS_VALORLIQUIDO=NFS_VALORLIQUIDO'
      'NFS_VENDEDOR=NFS_VENDEDOR')
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 112
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
      
        '  Picture2.LoadFromFile(ExtractFilePath(Application.ExeName)+'#39'lo' +
        'go_prefeitura_120x60.jpg'#39');      '
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
      '  end else'
      '  Overlay1.Visible:=False;            '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset1."NFS_LINK"> <> '#39#39' then'
      '  Barcode2D1.Visible:=True else'
      '  Barcode2D1.Visible:=False;        '
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
        Name = 'EMP_IM'
        Value = ''
      end
      item
        Name = 'EMP_EMAIL'
        Value = ''
      end
      item
        Name = 'EMP_FONE1'
        Value = ''
      end
      item
        Name = 'EMP_ENDERECO'
        Value = ''
      end
      item
        Name = 'EMP_NUMERO'
        Value = ''
      end
      item
        Name = 'EMP_BAIRRO'
        Value = ''
      end
      item
        Name = 'EMP_CIDADE'
        Value = ''
      end
      item
        Name = 'EMP_ESTADO'
        Value = ''
      end
      item
        Name = 'EMP_CEP'
        Value = ''
      end
      item
        Name = 'EMP_HOMEPAGE'
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
        Height = 77.480349130000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Width = 589.606621420000000000
          Height = 73.700819130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 49.133858270000000000
          Width = 166.299261420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO DE VERIFICA'#199#195'O')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 24.566929130000000000
          Width = 166.299261420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA DE EMISS'#195'O')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 83.149601420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'N'#218'MERO NFSE')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 83.149601420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'N'#218'MERO NOTA')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 9.338590000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_NUMERONOTA"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 9.338590000000000000
          Width = 75.590541420000000000
          Height = 13.228339130000000000
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_CODIGO"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 13.118120000000000000
          Width = 461.102601420000000000
          Height = 22.677140940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PREFEITURA DE [EMP_CIDADE]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 42.574830000000000000
          Width = 461.102601420000000000
          Height = 22.677140940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA FISCAL DE SERVI'#199'OS ELETR'#212'NICA')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 34.015770000000000000
          Width = 158.740201420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_DTEMISSAO"]')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 58.472448270000000000
          Width = 158.740201420000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_PROTOCOLO"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 7.559060000000000000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 325.039384720000000000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 109.606370000000000000
          Height = 49.133858267716540000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Top = 251.228510000000000000
          Width = 755.906000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO DO SERVI'#199'O')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 13.118120000000000000
          Width = 404.409710000000000000
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
          Left = 113.385900000000000000
          Top = 23.456702670000000000
          Width = 396.850650000000000000
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
            '[EMP_NOME]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 37.685049130000000000
          Width = 154.960730000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
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
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 37.685049130000000000
          Width = 173.858380000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 62.251978270000000000
          Width = 359.055350000000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 86.929190000000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 62.251978270000000000
          Width = 325.039580000000000000
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
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 86.929190000000000000
          Width = 325.039580000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SITE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 48.023631800000000000
          Width = 147.401670000000000000
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
            '[EMP_CNPJ]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.590560940000000000
          Width = 351.496290000000000000
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
            '[EMP_ENDERECO]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 48.023631800000000000
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
            '[EMP_IM]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 48.023631800000000000
          Width = 166.299320000000000000
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
            '[EMP_FONE1]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 97.267772670000000000
          Width = 26.456710000000000000
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
            '[EMP_ESTADO]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 97.267772670000000000
          Width = 64.252010000000000000
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
            '[EMP_CEP]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 72.590560940000000000
          Width = 109.606370000000000000
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
            '[EMP_BAIRRO]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 97.267772670000000000
          Width = 317.480520000000000000
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
            '[EMP_HOMEPAGE]')
          ParentFont = False
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
            'PRESTADOR DE SERVI'#199'OS')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 13.118120000000000000
          Width = 241.889861420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMAIL')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 23.456702670000000000
          Width = 234.330801420000000000
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
            '[EMP_EMAIL]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 37.685049130000000000
          Width = 166.299320000000000000
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
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 48.023631800000000000
          Width = 158.740260000000000000
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
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Top = 119.433051340000000000
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
            'TOMADOR DE SERVI'#199'OS')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 430.866420000000000000
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
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 142.622132670000000000
          Width = 423.307360000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMNOME"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 132.283550000000000000
          Width = 325.039580000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMAIL')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 142.622132670000000000
          Width = 317.480520000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMEMAIL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMEMAIL"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Top = 156.850374170000000000
          Width = 188.976377950000000000
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
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 167.188956840000000000
          Width = 181.417440000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMCNPJ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMCNPJ"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 156.850374170000000000
          Width = 188.976377950000000000
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
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 167.188956840000000000
          Width = 181.417440000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMIE"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 156.850374170000000000
          Width = 188.976377950000000000
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
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 167.188956840000000000
          Width = 181.417440000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMIM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMIM"]')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 156.850374170000000000
          Width = 188.976377950000000000
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
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Top = 181.417322830000000000
          Width = 359.055350000000000000
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
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 167.188956840000000000
          Width = 181.417440000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMFONE1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMFONE1"]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 190.645666840000000000
          Width = 351.496290000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMENDERECO"]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Top = 238.110390000000000000
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
            'DISCRIMINA'#199#195'O DOS SERVICOS')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 261.567092670000000000
          Width = 71.811070000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_SERVICO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NSI_SERVICO"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Top = 275.905690000000000000
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
            'LOCAL DA PRESTA'#199#195'O')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 286.244272670000000000
          Width = 313.700990000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_CIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NSI_CIDADE"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 275.905690000000000000
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
            'RETEN'#199#195'O')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 286.244272670000000000
          Width = 154.960730000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_RETENCAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_RETENCAO"]')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 275.905690000000000000
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
            'SITUA'#199#195'O TRIBUT'#193'RIA')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 286.244272670000000000
          Width = 264.567100000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_CSTISS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_CSTISS"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Top = 300.472455590000000000
          Width = 120.944881889763800000
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
          Top = 310.811038260000000000
          Width = 113.385900000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NSI_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 300.472455590000000000
          Width = 124.724409448818900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 310.811038260000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORUNIT'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."NSI_VALORUNIT"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 300.472455590000000000
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
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 310.811038260000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORTOTAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."NSI_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 300.472455590000000000
          Width = 52.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'AL'#205'QUOTA (%)')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 310.811038260000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_ALIQUOTA'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NSI_ALIQUOTA"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 300.472455590000000000
          Width = 124.724409450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 310.811038260000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_BASEISS'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."NSI_BASEISS"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 300.472455590000000000
          Width = 124.724409448818900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEDU'#199#213'ES')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 310.811038260000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORDEDUCOES'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."NSI_VALORDEDUCOES"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 15.118120000000000000
          Width = 105.826761890000000000
          Height = 45.354320940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 62.251978270000000000
          Width = 71.811070000000000000
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
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 72.590560940000000000
          Width = 64.252010000000000000
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
            '[EMP_NUMERO]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 325.039580000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 97.267772670000000000
          Width = 317.480520000000000000
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
            '[EMP_CIDADE]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 206.094651730000000000
          Width = 71.811070000000000000
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
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 181.417440000000000000
          Width = 325.039580000000000000
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
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 216.433234400000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMCEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMCEP"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 191.756022670000000000
          Width = 317.480520000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMBAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMBAIRRO"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 216.433234400000000000
          Width = 317.480520000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMPAIS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMPAIS"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 181.417440000000000000
          Width = 71.811070000000000000
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
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 191.756022670000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMNUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMNUMERO"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 206.094651730000000000
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
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 216.433234400000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMESTADO"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Top = 206.094651730000000000
          Width = 325.039580000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 216.433234400000000000
          Width = 317.480520000000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOMCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_TOMCIDADE"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 261.567092670000000000
          Width = 672.756340000000000000
          Height = 13.228346460000000000
          DataField = 'ISS_DESCRICAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."ISS_DESCRICAO"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 300.472455590000000000
          Width = 83.149606300000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR DO ISS')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 310.811038260000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORISS'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
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
            '[frxDBDataset1a."NSI_VALORISS"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 206.094651730000000000
          Width = 325.039580000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PA'#205'S')
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
        Height = 22.677180000000000000
        Top = 891.969080000000000000
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
            'NFS01 - Runtime Sistemas')
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
        Frame.Typ = []
        Height = 234.330828260000000000
        Top = 634.961040000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        PrintAtBottom = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 126.614239130000000000
          Width = 612.283801420000000000
          Height = 107.716589130000000000
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
          Left = 249.448980000000000000
          Top = 16.897650000000000000
          Width = 124.724409450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 16.897650000000000000
          Width = 124.724409450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CSLL')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 126.614239130000000000
          Width = 143.622081420000000000
          Height = 107.716589130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VERIFICAR AUTENTICIDADE')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Top = 16.897650000000000000
          Width = 124.724409448818900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PIS')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 16.897650000000000000
          Width = 124.724409450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COFINS')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 136.952821800000000000
          Width = 604.724741420000000000
          Height = 92.598476460000000000
          DataField = 'NFS_INFOADICIONAIS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFS_INFOADICIONAIS"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 27.236232670000000000
          Width = 117.165371420000000000
          Height = 13.228346460000000000
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
            '[frxDBDataset1."NFS_VALORPIS"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 27.236232670000000000
          Width = 117.165371420000000000
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
            '[frxDBDataset1."NFS_VALORCOFINS"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 27.236232670000000000
          Width = 117.165371420000000000
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
            '[frxDBDataset1."NFS_VALORINSS"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 27.236232670000000000
          Width = 117.165371420000000000
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
            '[frxDBDataset1."NFS_VALORCSLL"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
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
            'RETEN'#199#213'ES FEDERAIS')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          AllowVectorExport = True
          Top = 113.385900000000000000
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
            'OUTRAS INFORMA'#199#213'ES')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 16.897650000000000000
          Width = 124.724409450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IR')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 27.236232670000000000
          Width = 117.165371420000000000
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
            '[frxDBDataset1."NFS_VALORIR"]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 16.897650000000000000
          Width = 132.283469450000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OUTRAS RETEN'#199#213'ES')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 27.236232670000000000
          Width = 124.724431420000000000
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
            '[frxDBDataset1."NFS_VALOROUTRASRET"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 58.472480000000000000
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
            'DEDU'#199#213'ES')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 58.472480000000000000
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
            'VALOR DO ISS')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Top = 58.472480000000000000
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
            'DESCONTO CONDICIONADO')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 58.472480000000000000
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
            'DESCONTO INCONDICIONADO')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.811062670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALDESCCOND'
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
            '[frxDBDataset1."NFS_TOTALDESCCOND"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 68.811062670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALDESCINCOND'
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
            '[frxDBDataset1."NFS_TOTALDESCINCOND"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 68.811062670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALDEDUCOES'
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
            '[frxDBDataset1."NFS_TOTALDEDUCOES"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 68.811062670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALISS'
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
            '[frxDBDataset1."NFS_TOTALISS"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
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
            'TOTAIS')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 58.472480000000000000
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
            'BASE DE C'#193'LCULO')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 68.811062670000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_BASEISS'
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
            '[frxDBDataset1."NFS_BASEISS"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 83.149660000000000000
          Width = 257.007878900000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CR'#201'DITO TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 249.448818900000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL BRUTO')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 83.149660000000000000
          Width = 249.448818900000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR L'#205'QUIDO')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 93.488242670000000000
          Width = 241.889861420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALSERVICOS'
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
            '[frxDBDataset1."NFS_TOTALSERVICOS"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 93.488242670000000000
          Width = 241.889861420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_VALORLIQUIDO'
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
            '[frxDBDataset1."NFS_VALORLIQUIDO"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 93.488242670000000000
          Width = 249.448921420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_VALORCREDITO'
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
            '[frxDBDataset1."NFS_VALORCREDITO"]')
          ParentFont = False
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 143.622140000000000000
          Width = 164.000000000000000000
          Height = 164.000000000000000000
          CanShrink = True
          StretchMode = smActualHeight
          Expression = '<frxDBDataset1."NFS_LINK">'
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'NFS_LINK'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = 
            '68007400740070003A002F002F0065002D0067006F0076002E00620065007400' +
            '680061002E0063006F006D002E00620072002F0065002D006E006F0074006100' +
            '2F00760069007300750061006C0069007A00610072006E006F00740061006500' +
            '6C006500740072006F006E006900630061003F006C0069006E006B003D003100' +
            '3400380039003900320034003800340037003900380032003500310037003100' +
            '3100360032003500390033003600350039003600310030003300370034003500' +
            '3700330037003000300031003100380035003800330035003000310037003500' +
            '34003400'
          Zoom = 0.500000000000000000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 158.740260000000000000
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
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.007876460000000000
        Top = 555.590910000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        RowCount = 0
        Stretched = True
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NSI_DESCRICAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."NSI_DESCRICAO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFS_CODIGO=NFS_CODIGO'
      'NFS_CLIENTE=NFS_CLIENTE'
      'NFS_CONDICAO=NFS_CONDICAO'
      'NFS_VENDEDOR=NFS_VENDEDOR'
      'NFS_BAIXADATA=NFS_BAIXADATA'
      'NFS_BAIXAPOR=NFS_BAIXAPOR'
      'NFS_BASEISS=NFS_BASEISS'
      'NFS_CANCELAMENTOCODIGO=NFS_CANCELAMENTOCODIGO'
      'NFS_CANCELAMENTODATA=NFS_CANCELAMENTODATA'
      'NFS_CANCELAMENTOHORA=NFS_CANCELAMENTOHORA'
      'NFS_CANCELAMENTOMOTIVO=NFS_CANCELAMENTOMOTIVO'
      'NFS_CONDICAOMEMO=NFS_CONDICAOMEMO'
      'NFS_CONSULTADA=NFS_CONSULTADA'
      'NFS_CSTISS=NFS_CSTISS'
      'NFS_DIAPREFERENCIAL=NFS_DIAPREFERENCIAL'
      'NFS_DTATUALIZACAO=NFS_DTATUALIZACAO'
      'NFS_DTCADASTRO=NFS_DTCADASTRO'
      'NFS_DTEMISSAO=NFS_DTEMISSAO'
      'NFS_FORMAPAGTO=NFS_FORMAPAGTO'
      'NFS_INFOADICIONAIS=NFS_INFOADICIONAIS'
      'NFS_INTERMEDIARIOCPFCNPJ=NFS_INTERMEDIARIOCPFCNPJ'
      'NFS_INTERMEDIARIOIM=NFS_INTERMEDIARIOIM'
      'NFS_INTERMEDIARIONOME=NFS_INTERMEDIARIONOME'
      'NFS_LINK=NFS_LINK'
      'NFS_LOTE=NFS_LOTE'
      'NFS_MOVIMENTAFINANCEIRO=NFS_MOVIMENTAFINANCEIRO'
      'NFS_NUMERONOTA=NFS_NUMERONOTA'
      'NFS_OBRAART=NFS_OBRAART'
      'NFS_OBRACODIGO=NFS_OBRACODIGO'
      'NFS_OBSERVACOES=NFS_OBSERVACOES'
      'NFS_PROTOCOLO=NFS_PROTOCOLO'
      'NFS_PROTOCOLODH=NFS_PROTOCOLODH'
      'NFS_RECIBO=NFS_RECIBO'
      'NFS_RECIBODH=NFS_RECIBODH'
      'NFS_RETENCAO=NFS_RETENCAO'
      'NFS_RETENCAORESP=NFS_RETENCAORESP'
      'NFS_SERIE=NFS_SERIE'
      'NFS_SIMPLESNACIONAL=NFS_SIMPLESNACIONAL'
      'NFS_STATUS=NFS_STATUS'
      'NFS_TOMBAIRRO=NFS_TOMBAIRRO'
      'NFS_TOMCEP=NFS_TOMCEP'
      'NFS_TOMCIDADE=NFS_TOMCIDADE'
      'NFS_TOMCIDADECODIGO=NFS_TOMCIDADECODIGO'
      'NFS_TOMCNPJ=NFS_TOMCNPJ'
      'NFS_TOMCOMPLEMENTO=NFS_TOMCOMPLEMENTO'
      'NFS_TOMCONTATO=NFS_TOMCONTATO'
      'NFS_TOMCPF=NFS_TOMCPF'
      'NFS_TOMEMAIL=NFS_TOMEMAIL'
      'NFS_TOMENDERECO=NFS_TOMENDERECO'
      'NFS_TOMESTADO=NFS_TOMESTADO'
      'NFS_TOMESTADOCODIGO=NFS_TOMESTADOCODIGO'
      'NFS_TOMFONE1=NFS_TOMFONE1'
      'NFS_TOMFONE2=NFS_TOMFONE2'
      'NFS_TOMIE=NFS_TOMIE'
      'NFS_TOMIM=NFS_TOMIM'
      'NFS_TOMNOME=NFS_TOMNOME'
      'NFS_TOMNUMERO=NFS_TOMNUMERO'
      'NFS_TOMPAIS=NFS_TOMPAIS'
      'NFS_TOMPAISCODIGO=NFS_TOMPAISCODIGO'
      'NFS_TOMSITE=NFS_TOMSITE'
      'NFS_TOMTIPOPESSOA=NFS_TOMTIPOPESSOA'
      'NFS_TOTALDEDUCOES=NFS_TOTALDEDUCOES'
      'NFS_TOTALDESCCOND=NFS_TOTALDESCCOND'
      'NFS_TOTALDESCINCOND=NFS_TOTALDESCINCOND'
      'NFS_TOTALISS=NFS_TOTALISS'
      'NFS_TOTALSERVICOS=NFS_TOTALSERVICOS'
      'NFS_TOTALTRIBUTOS=NFS_TOTALTRIBUTOS'
      'NFS_TOTALTRIBUTOSEST=NFS_TOTALTRIBUTOSEST'
      'NFS_TOTALTRIBUTOSFED=NFS_TOTALTRIBUTOSFED'
      'NFS_TOTALTRIBUTOSIMP=NFS_TOTALTRIBUTOSIMP'
      'NFS_TOTALTRIBUTOSMUN=NFS_TOTALTRIBUTOSMUN'
      'NFS_USUARIO=NFS_USUARIO'
      'NFS_VALORCOFINS=NFS_VALORCOFINS'
      'NFS_VALORCREDITO=NFS_VALORCREDITO'
      'NFS_VALORCSLL=NFS_VALORCSLL'
      'NFS_VALORINSS=NFS_VALORINSS'
      'NFS_VALORIR=NFS_VALORIR'
      'NFS_VALORISSRETIDO=NFS_VALORISSRETIDO'
      'NFS_VALORLIQUIDO=NFS_VALORLIQUIDO'
      'NFS_VALOROUTRASRET=NFS_VALOROUTRASRET'
      'NFS_VALORPIS=NFS_VALORPIS'
      'NFS_VENDA=NFS_VENDA')
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
      'NSI_CODIGO=NSI_CODIGO'
      'NSI_NFSE=NSI_NFSE'
      'NSI_PRODUTO=NSI_PRODUTO'
      'NSI_SERVICO=NSI_SERVICO'
      'NSI_ALIQUOTA=NSI_ALIQUOTA'
      'NSI_BASEISS=NSI_BASEISS'
      'NSI_CIDADE=NSI_CIDADE'
      'NSI_CIDADECODIGO=NSI_CIDADECODIGO'
      'NSI_DESCRICAO=NSI_DESCRICAO'
      'NSI_PAIS=NSI_PAIS'
      'NSI_PRESTADONOPAIS=NSI_PRESTADONOPAIS'
      'NSI_QUANTIDADE=NSI_QUANTIDADE'
      'NSI_VALORDEDUCOES=NSI_VALORDEDUCOES'
      'NSI_VALORDESCCOND=NSI_VALORDESCCOND'
      'NSI_VALORDESCINCOND=NSI_VALORDESCINCOND'
      'NSI_VALORISS=NSI_VALORISS'
      'NSI_VALORTOTAL=NSI_VALORTOTAL'
      'NSI_VALORTRIBUTOS=NSI_VALORTRIBUTOS'
      'NSI_VALORTRIBUTOSEST=NSI_VALORTRIBUTOSEST'
      'NSI_VALORTRIBUTOSFED=NSI_VALORTRIBUTOSFED'
      'NSI_VALORTRIBUTOSIMP=NSI_VALORTRIBUTOSIMP'
      'NSI_VALORTRIBUTOSMUN=NSI_VALORTRIBUTOSMUN'
      'NSI_VALORUNIT=NSI_VALORUNIT'
      'ISS_CODIGO=ISS_CODIGO'
      'ISS_ALIQUOTAESTADUAL=ISS_ALIQUOTAESTADUAL'
      'ISS_ALIQUOTAIMPORTACAO=ISS_ALIQUOTAIMPORTACAO'
      'ISS_ALIQUOTAMUNICIPAL=ISS_ALIQUOTAMUNICIPAL'
      'ISS_ALIQUOTANACIONAL=ISS_ALIQUOTANACIONAL'
      'ISS_DESCRICAO=ISS_DESCRICAO'
      'ISS_DTATUALIZACAO=ISS_DTATUALIZACAO'
      'ISS_DTCADASTRO=ISS_DTCADASTRO'
      'ISS_USUARIO=ISS_USUARIO')
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
      'select * from NFSE'
      'where NFS_CODIGO=:codigo'
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
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select'
      'NFS_CLIENTE,'
      'NFS_CODIGO,'
      'NFS_DTEMISSAO,'
      'NFS_NUMERONOTA,'
      'NFS_STATUS,'
      'NFS_TOMNOME,'
      'NFS_TOTALISS,'
      'NFS_VALORISSRETIDO,'
      'NFS_VALORLIQUIDO,'
      'NFS_VENDEDOR'
      'from NFSE'
      'where NFS_DTEMISSAO between :datainicial and :datafinal'
      'order by NFS_DTEMISSAO, NFS_TOMNOME'
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
  object TR01a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 400
  end
  object QY01a: TFDQuery
    MasterSource = DS01
    MasterFields = 'NFS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select * from NFSEITENS'
      'left join ISS on NSI_SERVICO=ISS_CODIGO'
      'where NSI_NFSE=:NFS_CODIGO'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'NFS_CODIGO'
        ParamType = ptInput
      end>
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
    ReportOptions.Name = 'DANFE'
    ReportOptions.LastChange = 46258.348457418980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  //Picture1.LoadFromFile(ExtractFilePath(Application.ExeName)+'#39 +
        'logo_empresa_120x60.jpg'#39');'
      
        '  Picture2.LoadFromFile(ExtractFilePath(Application.ExeName)+'#39'Lo' +
        'goNfseH.png'#39');          '
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
      '  end else'
      '  Overlay1.Visible:=False;            '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset3."NFS_LINK"> <> '#39#39' then'
      '  Barcode2D1.Visible:=True else'
      '  Barcode2D1.Visible:=False;        '
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
        Name = 'EMP_IM'
        Value = ''
      end
      item
        Name = 'EMP_EMAIL'
        Value = ''
      end
      item
        Name = 'EMP_FONE1'
        Value = ''
      end
      item
        Name = 'EMP_ENDERECO'
        Value = ''
      end
      item
        Name = 'EMP_NUMERO'
        Value = ''
      end
      item
        Name = 'EMP_BAIRRO'
        Value = ''
      end
      item
        Name = 'EMP_CIDADE'
        Value = ''
      end
      item
        Name = 'EMP_ESTADO'
        Value = ''
      end
      item
        Name = 'EMP_CEP'
        Value = ''
      end
      item
        Name = 'EMP_HOMEPAGE'
        Value = ''
      end
      item
        Name = 'EMP_CIDADECODIGO'
        Value = ''
      end
      item
        Name = 'EMP_ENQUADRAMENTO'
        Value = ''
      end
      item
        Name = 'AMBIENTE'
        Value = ''
      end
      item
        Name = 'TRIBUTOSAPROX'
        Value = ''
      end
      item
        Name = 'EMP_REGIMEAPURACAOISS'
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
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
        Height = 54.803169130000000000
        Top = 18.897650000000000000
        Width = 771.024120000000000000
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Width = 771.024061420000000000
          Height = 51.023639130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.338590000000000000
          Width = 763.465001420000000000
          Height = 41.574790940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFSe v2.0'
            'Documento Auxiliar da NFS-e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 5.338590000000000000
          Width = 177.637831890000000000
          Height = 41.574790940000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000007800000
            018508060000001CBFEE4F0000FFFF4944415478DAECDD097C5C55DDFFF1DFB9
            7766B2274DF77D6F291490554505EB8208283EF2186C922E6981225B21A9AC8A
            E671030492D202CAD6A62D4981088208288AF2B8A2B2880ACA2214E8BE2FD967
            E69EFF99A0FE81874C26EBB977E6F37E319D3B693AF33D7766EE5CF2CDBD4709
            00000000000000000000202D28DB010000000000000000000000FD8302180000
            0000000000000000D204053000000000000000000000A4090A60000000000000
            00000000481314C0000000000000000000009026288001000000000000000000
            204D500003000000000000000000409AA0000600000000000000000080344101
            0C000000000000000000006982021800000000000000000000D2040530000000
            00000000000000A4090A6000000000000000000000481314C000000048C9A215
            8B4678316F64BBA8A121D163125FF3B43A4419FFFA963C2DDEE49EDEAFF9E74D
            A2D5EB6FDDF2E2E6DE5E162D71EDCAAE505CB6C642B17DF54BEB37DA1E3F0000
            00000000100414C0000000196CC9AD4B723B5A3A223189E5783A92E33812D671
            7D848837553B6AB86875B0289D65BE7596EDAC66C775ABD66A9B92F8739E7276
            844436C4455E8DB6C7776765E9A8D3EA74ECC82F6A7A74E9CA76DB5901000000
            0000005B288001000032879A7BC3A2F18EC4A72BE51C24A2C7682593CD970BCD
            DF8D3097E1E652603B648F69B54D94D7AC44EDD35A6F528EDAED69F54FD17AA3
            12E7A586AA55AFDA8E080000000000000C160A60000080F4A34AEE2D718AF714
            3BADADAD63623AF429A5BD0F895227D90E668596FD4AC90B5AEB9F6A4FFDAAA0
            20F2CF97B6BCA47FF9F55FC69552DA763C000000000000A03F5100030000A481
            CA9ACA9CADCEAE191257331CA56668470E539ECCD6AAF3C85EBC83DEA9453628
            ADFE662E7F775C7959B5C45F597BE5DA5DB693010000000000007D45010CA4B9
            B2EBCF9CA4547C8C385EB12789D37D26E81C47C9215AAB706FEF578B3E603621
            CFFFFBB6E3C9939D0BE1E80BF54BEBF7DB1E37006482EAEAEAD04B435EFF84D6
            FA5425FA38D12AD7ECDDE59ABF8AD8CE16185AE2669DB588D62DE6736D8B52F2
            33AF25B47EFD57EED8663B1A000000000000D01B835A009FBCE2C2ACE28E96D1
            9EA347845C6FB8D6AA488B9E6CFECAB5BD227AC4EB2CBFB64CCE6FDF3536A743
            C6E6B6CBD8AC0E1965AE73DF63244A69472B3549B4CA1BC858E6C90C69AD2799
            4BAE8DD5E2A8C4F32913927DCFEFFE313AFFDB8DC74CB6912F5D25DEC45A9957
            A596B859FF9EB91D375F8D49E295EAE8B89550DA51E6E26A715CA5956BDE04E6
            9DA11CF32A7125B5EDCE354FFFFCFC2BAC64B764FE75F34776888C7442A191A2
            BC6225EA20DB998077D35ADACC9BF8192FABE3B986F31AF6D8CE93894A979F35
            4A3B1D639DB8F33EF38C7CCC7C007CCC6C5583B51F15145ABD683E4A7F6BAE7F
            1FF7E26FE479E1D7575DB6EA80ED58000000000000407706A5009E57BBE8A8B8
            96CF29251F10AD2798471D66BE3CD45C7A7DF4A11FE4B89E6439E6E26A73796B
            79445654466447656A7E9B8CCE6E97B0C3B4726FF7F43F47CAD71A3E603B465A
            7054E2970BA43D51C8985759A2FC8D8B4EFC7A82FF6893547516C09D97B0A850
            966837F1FEEF6A1B941105F0925B97849B5BDA3EA9C53DDDACA5A3CCEA30DB46
            9D3855AB955FE20052A39AB4D67FD14ABE727765DD13B6D3648AB2E50B4F505A
            4E35DBFAA3CCF67494B91E663B53E6D0895FB2DA613ECA369ACFDE5FEBB8FCFA
            AEAAD57F60EE60000000000000F8D58014C0D5D5D5CEF3435F1F165272988AE9
            6F982F1D672E8EEDC10EB690D23236A75D0E2E6A915985AD521C894AB6EB4924
            834B610AE0BE49BC611D47C51D47B7C7E2AA456B4B47F8F60B37AC259CA7C48D
            C8FFDD16A575015C764B59B1B4874F31C3FE9AB939D3761EA057B4DEA3942EAF
            AF5CFBA8ED2869478B2A5F595EA0626A645CDCCF39A2CAB492D1B663E16DB4DE
            AC945AAB94F3587B5B68AB3CBDA7A9B1B131C09FC90000000000004827FD5E00
            2FBE737141DB017D9678325F943ED2F600FD2271B4E6B0485446E574C8F4FC56
            995DD422C3B2A2B6630D3A0AE0DE0BB99D47F7B67A9E6AF5025DFCBE8B7223A2
            C379F256119CF88216ED7DF3E9C72FF8BAED68FDADA4BA24E216E59539A2CFD4
            221F54A242B633017DF44FB34DFAD8DDCB56BF693B485AD0A24A6B171EE238F2
            694F776E2312FB5139B66321A96673F9ABD6F2A4ABD56F8BC3F94FAF5CBAB2DD
            762800000000000064B67E2D80BF583BFF6057DC1F9BC5A9B607E6778ED27244
            71B39C3E6187E4BABE3C6BEF807869F310A9BCF378DB3102459977694E4874CC
            937D1D7149E31F2A671789B8D966C1D3A2973DF3F30B96DB4ED49F12A77B6E6A
            69BFD13CA3E748069E1101696D434365DD14DB21024D8B5A70F38219B10EE7EB
            66CF6C8EED38E8034FBF6AB6F32BEAAB56FF2031F981249E5D00000000000060
            90F54B01BCE03B0B86C5729DB344CB25C29C743D929847F8986107E4C323F6CB
            C8AC0EDB7106DCE6DD7972F6CD1FB71D2330123F3BCE0A492C1A977D714F62B6
            F30CA4B7E609CE2A4C1C099C5605B019D8BCE58B8E8C8BBEC13C9D736CC70106
            80A7B52E5D5FB5E65EDB4102C56C1BE6D62C1AEF38FA134AF4A9E6F671FA5F8D
            21D2C276F3BC3EE669E7915856CED38DE7DFD2643B1000000000000032479F7F
            D038A77A4E685CD1E407B4C8A7CCCDB0ED010551E249C80FC7E58C89DB3B4F0D
            9DCE28807B263BD479386CE2C8DF36DB59068763469C33446B7DDE338F5F709B
            ED34FD61DEF2C50799F1FC508B3ED8761660003DE4C6E2A5EB2E59D76C3B4810
            545457647714C995A2F567CC5EC070B323E0DACE8401A2A5C9ECE7EDD4125FE9
            C6E521DE23000000000000180C7D2A8017D42C181713678DB9974FD81E483A48
            1C0DFC9971BBE4E8A14D1271D2F7B4D0A77EF3B3B6230442C811C90D4BC7FE76
            D9633BCBA05259392A1EFAD253BF387FBDED287D555273E6D0B0C4EE11A53E69
            3B0B30C09AC591231B2EAA7BD97610BF4ACC011E2ACC9DA1C4F9BC88B7D06C17
            726D67C260D3AF9A8FF65B44C7FFD43EBEFDB5C6331AE3B61301000000000020
            3DF5BA002EBDBE74B80A65AD112DA7D81E443A0929DD794AE853C7EE96BC507A
            FE5C705ECDA7644F7396ED18BE971316698FA99D9ED6E9F942E8821627EE7A39
            257FFAC5F9BFB39DA52F1247F8B517EADB9552F36C6701068316FDEDF5956BBE
            6A3B871F952E3F6B94F2625798B574822835CA761E58A6E50DB307FE33CF53B7
            DFBD6CF59BB6E300000000000020FDF4AA005E72EB92705373F426517A89ED01
            A4AB238B9BE4BF27EC90DC50FA1D09FCD5FA0FCAB3AF8EB01DC3D7126FCCECB0
            C45AA3B2CB76160B838F0F9FB9FDBC9FDE7CFD83B6A3F44569EDA28F2BEDFD40
            942AB69D05180C66BBB5A9BEB26EBCED1C3EA24A562C1A1E8AEBB966DD5C6E3B
            0C7CA9D9D172B38AC7D7BFD9FCE6EE27AA9F88D90E04000000000080F4D0AB02
            B8F48645E728477FDF76F8743739AF4D4A26EE9031391DB6A3F4ABDB1E9B2D0F
            FE61AAED18BEA6CC3B33EC4A6B474CF6DBCE32E8630F79CE8C8FBF78D1FA4B57
            07FA14D065B58BD688E805B6730083281E55F1A98D17AF7BC37610DBCAAE2E2B
            D659915225FA74B34167FE6F7443BFAEB4DCE7791D6BD67F79FD4EDB69000000
            000000107C3D2E804B5756CC525179C4FCCB29B6C3678271B9EDB274E626093B
            DA76947EF3D89F27C88D0F1D613B86AF250A6047C9FEB827ADB6B30CB6EC21AD
            E1891F7CF582F55F5E13D802B8FCDAB3C6EB482C5182F5699E75206894A82BEB
            2B575F6D3B874D0B6E387B665C45D798953141B30D408ACC0B459BD74B542975
            79FDC5ABEFB19D07000000000000C1D6E31F4C96D72EBA428BFE9659746C87CF
            14E373DB65DEE46D32323B6A3B4ABF7871F310A9BAF378DB317C2D51009BCB7E
            2F030BE082B1FBF3C61CFEE6922017C065B58B6E17D167D9CE010C36EDE93BD6
            2F5B73B6ED1C367CF18605331D4755385A2DD08AE217BDA513737FFC4279EA7B
            9B0E6C788AD342030000000000A0377AF403CAF36E3E2F7F6F47CB2B667194ED
            E099E6E0C216299FB24D72DDE0CF09BCB7394BCEBEF9E3D2D21EB21DC5B732B9
            001E73D4E6A10523F72C0C6A015C764B59B16E8FBC689E4226BA46C6D1A27EB4
            BE72F5E76CE7184C2525256EF8C3B9E5A255A55903C3CDD69B5F9043DF69D96B
            F6036EAFAFAC5B6E3B0A00000000000082A7470570D9F28A2B45CBB76D87CE54
            278CDC279F19B74B422AD8A7836E6E0FCB95EB8E9357B614D98EE25B195B003B
            E24CFDD82BC5A170FB82A016C0A5D7CFFF8872DD9F98C53CDB59000B7ED5D4E1
            7CE64797AD3A603BC880D3A2BEB872E15437E69C2F9D73FD4AD87624A417B3BB
            675E65F2E36CED5E7967D59DBB6DE70100000000004070A45C002FB975496E53
            4BC79FCDE20CDBA13395A3B47C7ACC1EF9E4E83DB6A3F44934EE48CD8347CAAF
            9E1F6B3B8A6F656A011CCE8945A67EFCE5021DF7025B0097D7565CAC456E104E
            938F0CA444BD12F3E2A7DEB36CED4BB6B30CB4B2DAC5E54A7BE76925936D6741
            FA4A94C05AE9070EECCBBAF4A1EADB5A6CE70100000000004030A45C0097AF38
            EB833A1EFBA9592CB41D3A93E585E25231759B4CCB0F762FB8EE895972F7AFF9
            5D82AE646A019C3BBC256FC2075ECF0E6A015C5D5DEDBC34E4F5EB45EB4ADB59
            002B94EC517139A57E59DD93B6A30C948ADA8A21EDA2BFAE449D613B0B328892
            1F45F7365FD458DDD8613B0A000000000000FC2FF502B876E1F95AD48D66D1B5
            1D3AD34DCD6F9373A66F91B013DCF9807FFBF73172EDFD474BDCEBD159C83346
            2616C0DA0C79E421DB0B874ED9150A6A01BCE4D625E1032D1DB79BA76FA1ED2C
            801DBA492BF7E4F517AFFA8DED2403A1AC66C1FB459C2BCDDED3B1B6B320B3FC
            EB74D0D7778C6B5ED9784663DC761E000000000000F85B4AED5BC9BD256E7853
            FE2D227A89EDC078CB51430FC8BCC9DB6DC7E8B5CDBBF3E4FC5B3F2A1D317E9F
            E0BD646201AC5CED8C3B72E390BC514D2AC80570536BC75AD132D77616C00A2D
            6D9E9293EFAEAC7BC27694FED479747FD1867233BE6F32D72F2CEA10ED7DB1A1
            6AED1F6D0701000000000080BFA55600579744C245790F99C54FD90E8CB7841D
            2D0BA66C93D945CDB6A3F44AE2C8DFF36E9D231B77E6DB8EE24B9958008773A2
            E1F11F78A33892D7110F6A013CFFBAF9795ED879526B75A8ED2C802551E5E993
            EB97AD79DC7690FE52BEA2BCD08B85CF33DBE4C5E6669EED3CC8704AFEDC7071
            DDA9B663000000000000C0DF522B806B4A724292F767A564A6EDC0F8FF26E7B7
            C997A66F9688A36D47E995479E9E24373F72B8ED18BE94890570EE88969CF1C7
            BE5E68C61DA30006824B6B39797D55DD4F6CE7E80F0BBEB360582CC7B943B41C
            6DF698386505AC5389E3ECB55E5C5FB5E631DB59000000000000E05F2915C04B
            6E5D92DBD4D2F186591C663B30DEE98C49DBE583C30ED88ED12BFB5B2332BFF6
            4489C51DDB517C27130BE0E107ED2C1E367D7BC48C9C021808B034298055F98A
            B3C6E978EC16B37CB4ED30C0BB3CDD5059779AED10000000000000F0AFD48E00
            BEB9243FDC9117CC9631CDE5BA9E2C3BF84D298EC46C47E995CBD67C48FEF606
            BF57F06E9956002B57DCA91F7B7978282B2A14C040B029F14AEA2BD7FEC0768E
            BE0C61EE0D0B3FEE28E72BA2F441B6C300FF87968D2A1AFDEFFACBEA37DA8E02
            0000000000007F4AAD00BE66495138AB63AFEDB0786F278CDC279F1BBF33B527
            D367EEFBFD3459FDF343249827B11E38995600E70E6FC99BF0810DFF9A109A02
            180832ADE5C6F5557517DBCED15BA5D72D385CB96A95D9088FB19D05782F6617
            2166FE5C565FB93AC8BF68010000000000800194526738F7C6451F723CFD5BDB
            61F1DE1247FF9E357D8B8CC9EEB01DA5C7FEBEB158BE71CFFB657F4BC476145F
            C9A802D81135E67D9B86168EDD17FAD7E8298081000B6A015C5252E2463E983B
            473BEA6A73739CED3C405794EEFCBDB94BEBABEA1A6C67010000000000803FA5
            540097DE58F169E5C9A3B6C3A26BEF1F7640E64EDA6E3B468FB575B852B5FA78
            797D7B81ED28BE9249057038271699F081D78BC279EDFF9A0C9A021808B2A016
            C0E5B50B4ED6E2DC6816F36C6701BAA5655D4355DDE5B663000000000000C09F
            2880D3444869B9E0A0CD3231B7CD76941EFBC9B39364E58F0FB71DC35732A900
            2E9AB0377FD4A15BF294F3EF13815300034116B802588B2ABD71FE871D2FB45A
            2B9D6B3B0E90A2E71B2AEB3E653B04000000000000FC8902388D4CCB6F95B3A7
            6F918813AC1975DBA2AE9CB5F213B2A739CB7614DFC89402582BA5C61EB97158
            E1987DEEDB464F010C0458D00AE0D29AF91F55E2D49A8DEE28DB59801E686AA8
            AC3BC87608000000000000F81305701AC9763D299FBC5D661735DB8ED2630DBF
            9A692E07258A0348E614C091828E9C2927BC52F8AED15300030116A402785ECD
            BCE95A85EE321F3D136C67017A44EB8E86AA35536CC7000000000000803F5100
            A7991905AD72EE8CCDB663F4D8EB3B0AE4AAFA0FCAAE03D9B6A3F8424614C08E
            76C61DB57168FEA803EE3BFF82021808B2A014C0E6FD7AA81772576A9199B6B3
            003DA5B4E8FAAABAF1B673000000000000C09F2880D3D099D3B606EE28E058DC
            91EB1E38527EF3C258DB517C21130AE0AC216D39133FB0A1D00979EF1E3D0530
            1060412880CB6E39B758DA5A6F357B411FB69D05E8ADCDFB364C7AA2FA8998ED
            1C000000000000F01F0AE03434222B2AE7CEDC2C43C2C1FA99E08B9B8AA56AD5
            476CC7F085742F80B5123572D6F6A2A15377BEC7C4CF14C04090F9BD003E79C5
            8559C5F1033798C5CFDBCE02F485237AC95D956B1EB69D03000000000000FE43
            019C86124FEA69E377CA4747EEB31DA54712F3FF2E7FE808F9F9734CC598EE05
            B013F6C2533EFACAD050D67BFD9202053010647E2E80ABABAB9D978A36AC505A
            FE2BF18B28B6F3007DA1BC7875FDB275B7DBCE01000000000000FFA1004E53E3
            73DBE59CE95B242F14B71DA547B6EDCDED3C0A786F7356DFEF2CC0D2BA007644
            8D3E6CF3F0A2F17B9D2E464F010C04989F0BE0B2DA8AD3CDD535E692673B0BD0
            5714C0000000000000E80A05709A72CC337BD298DD72E2E83DB6A3F488E72959
            F5F8C1F2C093D344DB0E6351A20036CFE181B8272DB6B3F4B7ECA1AD79133FB8
            215FA9AE9E610A6020C8FC5A00977C67D18848B6FE995632C27616A05F78FAB1
            86656B16D98E01000000000000FFA1004E631147CBE5B3DF08DC5CC01BB617C8
            E56B3F24075A23B6A358932880C3AEB474C4E480ED2CFD3AAE9076C71DF5E690
            BC114DA124DF45010C0498D6FA1BEBABD67CDD768EB72BBDBE74B872B21E307B
            3D536C6701FA8D96371AAAEA8EB31D03000000000000FE43019CE63E3C629FFC
            D7F85DE2AA601D4FFBF05393E596470FB31DC39A742D80F34736E58F3972639E
            13F2928D9E02180830ADE5E4F555753FB19DE3DF3AE7FD2DD8708938FA02B37D
            71FA7E8F804F5000030000000000A00B14C069AE281C9773A66F96D1391DB6A3
            F4D815EB8E93BF6C186E3B8615E958003B612F3CE5847F0E0D6547BB1B3D0530
            10607E2B804B6BCE9EAD54F431DB39807E47010C0000000000802E5000678013
            46268E02DE693B468F3DFFE650F9F6BDC7CABE96CC3B1574DA15C0AE76461EBC
            6D48F1A4DDE114464F010C0497A7B43EB9BE6A8D2F0AD7F215E5E3752CFC90D9
            DB19693B0BD0EF2880010000000000D0050AE00C9038FDF3D28336C984DC76DB
            517AC4D34AD6FE729634FE76BAED28832EDD0AE0DC112DB9E38E7CB3C009C753
            193D053010544ADA1C2D27DF5559F784ED2873AAAB43630B375C6F3295D8CE02
            0C080A6000000000000074810238431C5CD4221553B64AD809D65CC0D1B82357
            AE3B4E5E7873A8ED28832A9D0A6027E285C7BFFFF5E29CA2D694B63714C04070
            996D578BE7C54F595FB5EE7F6D67995B5371BCA3E44EB398673B0B3020288001
            0000000000D0050AE00C91ED7A9D05F0CCC256DB517AECB56D85F2ADC66365EB
            9E5CDB51064DBA14C0CA1577DCD16F14E78D68727BF0AF288081E0DAABC53B65
            7DE5DADFDB0C91782FC643CECFCCF66492ED15020C180A600000000000007481
            023883CC2E6A9133A76DB11DA3C712A782FEF19F26CBED3F9B2D9E97E241A401
            970E05B079DAD490097B0A46CDDE9AA37A74E43905301060DB25AE4F69F8F29A
            A76D05A8AEAE765E2ADC70B9D9C339DFF6CA0006140530000000000000BA4001
            9C41424ACB3933B6C8B4FCE01D051C8B3BB2E617B3E4FE27A7D98E3228D2A100
            CE2A6ACF1D77ECEBF9E1AC580F5B7B0A6020C09E8946E5D4C64BEBB6DA0A30B7
            66FE318E7213A77E1E6E7B6500038A02180000000000005DA000CE3005E1B85C
            39FB0DC9723CDB517A2C311FF0D53F385AFEF0D268DB51065CD00BE050763C32
            F9A3AF14BBA1786F464F010C04941679787D65DD676C66285FBEF06BE63D788E
            ED75010C380A6000000000000074810238C338E619FFEF093BE4B8E1FB6D47E9
            9537761474CE07BC69579EED28032AC805B09B1D0F8D3E6CF390FC91077A30EF
            EF3B464F010C049452EAAEFA8B57CFB7F5F8A5CB171CAEB4C3FE0A3203053000
            0000000000BA40019C81A6E6B7C9D9D3B648961BBCA38013B6EFCB91CBD77E48
            B6EDCDB51D65C004B60056E28C3E7CF3D0A2717BDDD4B62EEF792714C0405069
            55DB50B5BACAC64377BEFF42EEE35A6482EDD5000C0A0A600000000000007481
            023843CD9DB443DE3F2C98470127FCE1A551B2E2C7EF93BDCD59B6A30C882016
            C02AA4DDE1D377160E9DB623D2C77BA2000682EBC886CABA3F5B785C55BE7CD1
            19DAD3D79A3D9BB0ED95000C0A0A600000000000007481023843E585E272C521
            6F4A6EAFE668B5CFF3943CFBDA08F94EE3D1D2160DD98ED3EF8256006BA5D4B0
            693B870C9FBE3DA25CDDD7D1530003C1B4BBA1B26E988D07AEA8AEC88E16EA35
            665BF411DB2B01183414C0000000000000E8020570063B71F41E3969CCEECE79
            8183EAB90DC3E5DAFB8F927D69762470A00A60573BC513F70C1979C8D67E3AEA
            8E021808222D7AFDFACA3565361EBBF4BA05C7A990F303DBEB2093988F29AD45
            5ACC62AB596E35CF7FBB52EA05EDC93EF357AF9A0FB256C753FFF41CDDD2F9FD
            71D551FFE5D52FBCFD3EE65E3B77AC13C91EF99F2F784EB1F9639263EEC8DCF7
            6CF395B0B9DFE9E6C1F2CDA3659B7BC9497CCD3C5E8156BD9F68206D50000300
            00000000A00B14C0196C585654964CDF2223CC7550258E04FEC3CBA3E4BA1F1E
            25ED51D7769C7E139802D8D1CEB069BB0A87CDD891D5F9E3FAFE193D05301030
            E6DDDFAE5DF7B8BB97DEF9EC603F76494D494E58E53E66B61D536DAF87F4A73D
            A5D5DFCCDEE3CB9EA8BF389EF79AF9C0DA1E8EC98EE696E6DD8DD58D1D03F1A8
            25D52591ACA2AC61E245466A279E6F5E6F9345EB62F39C1F661E7F9279014E35
            99F26CAF9D4147010C0000000000802E500067B853C7EE964F8CDE633B469FBD
            BAAD502EADFBB0B476A4C7E9A0835000274EFB5C3C69F7D051B3B7F4F34AA700
            0602E8B71191CFD455D6ED1DEC072EAB5D586EB61BDFB5BD02D2D1BF8EF2F5CC
            06FF15EDC83D612FFEE3B5556B37D9CEF56ED5D5D5CE4BF9AF7DC404FEAC38EA
            73A2255B8976129F53B6B30D280A6000000000000074810238C31584E372FE8C
            CD32327B400EDA193489634F9FFDE748B9E52787CA96DDC13F08C8EF05B09B15
            0F0D9FB9BD70C8C43DFD74DAE7778C9E021808162D4A9FDD70F19A3B07FB8113
            EFB9B8EBDE61F6664EB0BD12D28A96B8F9F3D7E6C3E8379E567F8AEF3FF09781
            3ABA772094D62C9C6D5E1387ABB7B6C58799E559E63AF83B07EF62DE784FADAF
            5CFD39DB39000000000000E03F14C090438B9A65F1B4ADB663F459A204DEBE37
            57AEFEC1D1F2F29621B6E3F4899F0B6027A4C3E38E7D63484E718BD37FA77D7E
            C7E8298081607973985B3063E5D295ED83FDC07397CFFF80A3DDBBCD62C4F64A
            481FBA21EEE9DB239EDEB4EE927589F97B0762433F281247063F9FFD7C414E24
            273F2ECEE7CC504ED14A1D693B577F519EFE4EFDB23537DBCE01000000000000
            FFA10086E485E272E6B4AD3239AFCD76947EB17D5F8E7CFF2787C953AF8C94B8
            17CCB33F260AE0882BADED31D96F3BCBDB6517B7E68C3A744B417661DB00AE58
            0A60204036C7A3FA847B2E5DF34F1B0F3EAFB6A2DA1339DBF64A083C2D5B94E8
            279C70F8E67517DEF19AED3803A97465C52C3726A768AD3FA245A6980FDC91B6
            33F596F2E2D5F5CBD6DD6E3B07000000000000FC8702189D2F8263861D90D249
            DB6D47E9374DAD6179ECB98972CFAF674853DB009CA57880250AE0EC9074B446
            C51F13342B710AC7EF2B183E637B5638273AC0AD3A05301010FB44CB971AAAEA
            EEB6F1E065B79415ABF6F01FB5A85CDB2B22B0B4B489D6F79B6DD69DB1A6E657
            83749AE7BE2AB9F9BCFC507BF324B3385B9453AEB43ED27CD6B9B673F5040530
            000000000000BA42018C4E2147CBA587BC29C32351DB51FA8DD64A9E7C69B4DC
            F2C8A1B2A739DBDCB69D28759D0570583A5A3BEC17C04E381E1A366367E1D029
            BB06A949A700067CCE33DBD3ED663B75694365DD3A4B195479CD8273B572BE62
            7B650452E71CBF7AA3790E2FA9AF5CF35BDB71FC60FE8D671E1A8FC7CE362FAD
            8F28D1C55AA92CDB99BA13759B8F685CDAB8C3760E000000000000F80F0530FE
            636A7EAB9C3B638BB80332AFAB3D9B76E5C93DBF99294FFC6D5C604E09ED8B02
            5889CA1DDA92336CFA8EDC9C612DEEC0CCF7FB9E0F4C019C9EDE10D1CFDB0E81
            BE5231B36D78D211E7BEBB2E5EF5A2AD149DEF35D77D502B39D8F61A091C2D51
            A5F5AD2DEDFAB61F5EB97697ED387EB3A066C1B8A8728E35EBE863E6A3F844AD
            5491ED4C5D69A8AC1B673B03000000000000FC890218FF917831CC9DB45D8E1D
            76C07694019128806F7AF87069ED08D98ED22DEB05B01267C8C4BD45230EDE1A
            715C6FB01F9C02382DE9EF3554AE39CF760AA487B29AC59F14E57DDF2CE6D8CE
            12285ADA1CED9C7ED7B255CFD98E120473AAE784C6174E3CDF1367A9F95CCCB6
            9DE7EDCC6E42ACBEB26E92ED1C000000000000F0270A60BCC3ACC2165938759B
            6439835DFA0D8E377614C8FD4F4E9327FE3A4EA271C7769C2E592B8095387923
            9A72864EDD959B3BACD9D20AA2004E4F14C0E83F65CB172E15AD2EB39D23609E
            7425F4D5759577FCDD7690A049CC37ADDBC2FFA5943AC9DC3CDE769E4E5ADA1A
            AAEAA6D98E010000000000007FA200C63B244EFF7CFECCCD3239AFCD76940113
            8D39F2D2E662F9DE4F0E95D7B615DA8EF39E6C14C0A1DC68D6C859DB0BF2461C
            709D90CD5F00A0004E4F14C0E83F65350B7F61369407D9CE1118DA7B3CA29CA5
            7595757B6D4709B2C5D72E2E6875625354C8B9D47C4CCFD129EE470F082DFB1B
            AAEA38053A000000000000DE130530FE8FE15951A99AB551B207FDD4BF83AB2D
            EACA4F9F99248F3C3D4936EFCE134FFB677EE0C12A80CD905524371ACA1BD194
            3B74DACEAC7076D4072B8102383D5100A37F945D7FE62471E3BFB39D2338F42F
            DD9857B5EE9275DB6D27491BD5E294152CF8A8386E8559BF4798AF0C1FF40C5A
            BFD050B5E644DBAB02000000000000FE44018CF7F4B9F13BE5A323F7D98E3128
            B6EECD953FBD3C521EFCC334D9B227D7769C4E835100AB900E0F99B82777C884
            BD91487E9B8FCE874D019C9E2880D13FCA6A2BBE6EAE96D8CE11102F3B122BBD
            ABF2AE2DB683A4A30B575C98B527DA3CCB53DE19E6E617CC5E75FE603DB612BD
            BABE72CD576DAF03000000000000F8130530DED3F8DC76396BDA16290CC76D47
            19342DED21F9F15353E4C77F9A2CFB5B2256E7081EB002D811E546E26EE1987D
            F9C3676ECFB27BAAE72E474F019C962880D17715AB2BB23BF6C8738359B40596
            D6AF4594FA0CA77D1E1C653756CC104F7F55B47ABF797D0EE8FC122A7102682D
            97D657D535D81E37000000000000FC890218EF293117F069E377C9F12332E328
            E0B7DBDF1A91A75E1E29BF7F718C3CFBEA7069ED080D7A86FE2E80952B6ECE90
            96AC82B1FBB372863687B3F2DB7D70AAE72ED35200A7250A60F45DF9F58B0ED1
            8E7EC8ECBD64DBCEE26B5AB73B8E3AE7AE8BEA7E9E3854D4769C4C51726F89EB
            6ECE3FC6D5DEE7B4D98D321FE6C503F2405AE24AA9AAFACAD53FB03D66000000
            000000F8130530BA941F8ACB370EDF603B8635893981134702DFFFFB69F2E8D3
            93A465108BE07E2B8095720BC6ED2B18366D47242BAF5DA5F68EB78D02383D51
            00A3EFCA6B2A12AFA12B7540B666B6282D2BEBABEAAEB19D236369515FAC5930
            C375DCE5E6C6FBFAFBEECDF3BB433C5556FFE5D52FD81E2A000000000000FC89
            0218497D62F41E3979CC1E7154661F4094380AF8AF1B86C9B3AF8D9097360D91
            8DBBF2A5A92D3C608FD7DB023871A46F567E5B2852D01ECE1DDE9C9537AC3914
            CA8EDA5E7D3D1D3D05705AA20046DF248EAE8C6CCCFB9656B2C076163FD35AFF
            617DD59AD36DE7807416C1E5B50B4F344BF3B5521FEFAFBB35BB647FABAFAA3B
            C9F6F0000000000000E05F14C0482A310770622EE0C49CC048FC605DE4406BA4
            B3FCFDCB8661F2A75746C973AFF5FF69A27B54003B12CA296ECDCE1B79205230
            6ABFEB84E3CA0D794A39412DED2980D3130530FA26F1FE8ABBEE7AB3E772B4ED
            2CFEA55BC5534B1B96D53D623B09FEBFC5772E2E683EE0CD72B5D49A9B53FA7C
            875AD63554D55D6E7B5C000000000000F02F0A60249578817C724CE228E0DDB6
            A3F85647CC917F6C1C2A2F6F2E92173717CBB6BDB9D2D6E176CE25DC1E753B2F
            3DF58E025889238E1637E439897237148E3B6E762C9C5DD816CA19D21ACE2A6A
            75DC70DCF66AE84714C0E98902187D33AF76DE184F424FD9CEE173BFDCE3169C
            F9E8D295FCD6960F9D76EDE28282487C81F99C9BEF693D5E29D5E353992BD1BB
            EB2BD71C667B2C000000000000F0370A6074AB281C93CB67BF29598E673B4A20
            248ADFD6F690EC69CA92B68E90B476B8F2FA8E42E988B9B2756F6EE751C4D1B8
            239B77E7FD9F7F3BA6B85922214F5C474B767ED47B6A6F6E3492DBE1A890A7DC
            485C39A1B8130A775EA7F8EE0D220AE0F444018CBE995BB3F81847790FDACEE1
            5B5AA28EB89FBCABEACE576C474172653756CC309F745FD08EBAA067FF529B1D
            3175654365DD3ADB6300000000000080BF510023258714B5C899D3B6A46FE7E8
            43AF3665CB4D2F8DB31DC3020AE0F444018CBE29AB5958294A7DD9760EBF525A
            FFA6BE6ACD176DE740EA4A6A168C8B2855A3451DA1B5CE4B7644B0EA9CDE593F
            16CD6A59DA787E6393EDEC000000000000F0370A60A424F142397FE666999ADF
            6A3B4AC6A000A6004E2F14C0E89BF2DA8A27B5C804DB397C494B87A755F9DDCB
            56FFCE7614F44C7575B5F362D1AB1F70441D6F3E3B3E6A76B88E78F7F7282D5B
            B5E81F46B2D41D75E7D76DB59D19000000000000FE47018C94BD7FD8012999B8
            435CA56D47C90814C014C0E9850218BDB7E49A25454D591D2FD8CEE1574AF453
            1D3AB4A8B1EACEDDB6B3A097B4A825B72D09B5B6B68EF13CF7336657AB20AEC4
            8B38EE1F0A9DDC3FACB870458752EC80010000000000203514C04859B6EBC939
            D3B7C8A4BC36DB513202053005707AA10046EF2D5CB1705A34AE7E653B875F29
            2DF5F5557597DACE01000000000000C01F2880D123330B5AE54B3336DB8E9111
            76B687E53BCF4FB41DC3020AE0F444018CDE2BAF5DF0052DCE8DB673F896D2A5
            0D17AFA12007000000000000D08902183D76D6B42D7248518BED18696F4F4748
            BEF9B749B6635840019C9E2880D17B65B5153798ABB9B673F892D62D0D556B66
            D88E01000000000000C03F2880D16353F35BA562EA36C90FC56D47496B14C014
            C0E9850218BD535D5D1D7AA9F0B5DB44A9936C67F1252DBF6AA8AA2BB51D0300
            0000000000807F500077CD534AB66B2DA36D07F19B90D2B268EA563998A38007
            14053005707AA10046EF94D494E48425EF0EB3C732C776165FD2DE790D556B1F
            B41D03000000000000807F500077454B8772E446ADE562732B6C3B8EDF4CC96B
            9373676EEE2C83313028802980D30B05307AA7EC96B262698BAC367B2CC7DACE
            E2431DA156EF98B557AEDD653B0800000000000000FFA000EE926A174F9F2E8E
            5A23A287DB4EE3378917CE67C6ED928F8DDA6B3B4ADAA200A6004E2F14C0E89D
            B9B515931DD10D66DB90891BC4EEEC91B68EE31BAE68D8633B08000000000000
            00FFA000EE5A8738FA433A2E172BA5E6D90EE347C3B2A272C1CCCD52148ED98E
            929628802980D30B05307AA7ACB6E20825BA518BCAB59DC5879E8F46724F6F3C
            FF9626DB4100000000000000F807057097744C1CF5391DD7AF2BA5FE663B8D1F
            B94ACBE727EC920F0DDF673B4A5AA200A6004E2F14C0E89DB9D7CDFF801372EF
            B79DC38FCCC7F0C3BB43DB2E7C74E9A3EDB6B300000000000000F00F0AE02EBD
            5500375C54F74859EDA247CCED936D27F2A331391D72F1411B25EC3017707FA3
            00A6004E2F14C0E89DF2DA05276B71EEB09DC38FB496E5EBABEAAEB39D030000
            0000000080BF500077E9ED05F0C272B3AA56992F466CA7F2A34F8FD92D9F1AC3
            F483FD8D02980238BD5000A377CA972FF88CD6CEADB673F81105300000000000
            0080F74201DC354F6BB9707D55DD2D2535F3A68755E811F3B519B643F9D5D70F
            7B9DB980FB19053005707AA10046EFFCEB97B0BE6B3B87DF282DDAECC55D5B5F
            59B7D2761600000000000000FE4201DCB5FF14C04B6E5D126E6EEDB8D9DC3EDB
            7628BF3A61E43EF9ECB85D9DF302A37F50005300A7170A60F40E05F07B7BAB00
            D657D757AEB9D9761600000000000000FE4201DCB5FF14C0891B736F5870A4E3
            38CFD80EE55745E1B82C3D68A31447380AB8BF50005300A7170A60F44E69EDC2
            AF2851BC76DE85021800000000000040572880BBA40D75D9DBE7D62BABAD78C2
            5C7DD47632BF9A336AAF9C366E97ED18698302980238BD5000A377CA6B2BEAB4
            C889B673F84DA20036BEDBB06CCD0ADB5900000000000000F80B0570124AD477
            EB2B575FF69FF5707DC589CA9587CD62D876363F8A385ACE9FB94926E4B6DB8E
            921628802980D30B05307A8702B86B5ACBF2B7FFA21A00000000000000245000
            27F1EE0278D18A4523DA63FA51F31747DBCEE657B38B9A65E1D46D12622EE03E
            A300A6004E2F14C0E81D0AE024B4DCDC50557775E71200000000000000FC0B05
            7012EF2E804BEE2D71239BF2FF478BFE8AED6C7E951B8ACB59D3B6CAE4BC36DB
            51028F02980238BD5000A377288093F0F4237BC285173CBA7425A7DE00000000
            000000F01F14C0C9AD8BEE6B3EABB1BAB1E3DF5F987BC382231DC779CA2C3AB6
            C3F9D511C54DB260CA36DB31028F02980238BD5000A377CA6A2A9E377B2B436C
            E7F025ADFF1ECDCAFBAFC6F36F69B21D05000000000000807F500027A144DD1B
            DEA717D655D7BDE370D6D2E50BEF575A7DDE763EBF729596B3A76F9599052DB6
            A3041A053005707AA10046EF94D5566CB29DC1AFCC7ECA3E9DD5FEE186F31AF6
            D8CE02000000000000C03F288093E8AA002EB966FEC47096FBBAED7C7E362EB7
            5D2E3A68137301F74187E7C8E57F9E623B860514C0E9890218BD43019C849668
            A8CD3B7AED956B77D98E02000000000000C03F288093E8AA00AEAEAE765E2ADA
            F08059FCACED8C7E1576B4944EDADE793A68F45ED533D36C47B08002383D5100
            A377288093D39E77D9FA656BEFB29D03000000000000807F500027F72BE5463F
            5BBFB47EFFBBFFA2ACB6A2C25C7DDF5CB26C87F4AB6905AD72EEF42DE2701470
            AF5100070B05703214C0E81D0AE0E4B4967FACAFAAFB84ED1C00000000000000
            FC830238B93FB6889CF44065DDDE77FFC5DCDA8AC98EC8AFCCE204DB21FDEC4B
            3336CBCC8256DB31028B023858288093A10046EF94D5563C6EAE66D9CEE15F3A
            1619A20EAA5BF4CEB39500000000000000C85C14C0C97559002794D5567CC35C
            5D653BA49F15476252356BA3E485E2B6A304120570B050002743018CDE29AFAD
            A8D32227DACEE1676667EEAAFACABA55B67300000000000000F0070AE0E49216
            C0A75DBBB8203FE26D348B85B683FAD9296377CB2747EFB11D23902880838502
            38190A60F40E0570F7949607EA2BEB2E307B75CCB90000000000000080023829
            252F845ABC13D65EB9765757DF525A5B516B56E2C5B6A3FAD9B8DC7659327D8B
            147014708F5100070B05703214C0E81D0AE01468D9A5C372C6FA0BEBFE613B0A
            00000000000000FB288093D0229B42B1F851EB2E59B7BDABEF29BFA1E283DA91
            1F99C511B6F3FA9532AFB22F4EDC2EEF1F76C07694C0A1000E160AE0642880D1
            3B14C0DD331FB3DA7CD6DE78D7C575D7D9CE02000000000000C03E0AE0245229
            804B6E3E2F3FDCD1F203B37892EDBC7E56108ECBB2596F4A6198A3807B820238
            58288093A10046EF94D72C5CA695AAB29D23009AA35139A1F1D2BAADB6830000
            0000000000B08B023889540AE084D29A856728A5EEB19DD7EF3E32629F9C3E61
            A7ED188142011C2C14C0C95000A377CA6A17969BEDC2776DE70804A5EF6FB878
            CD85B66300000000000000B08B0238B9CD6E76FCC875E7262F8013CA6A2BFE66
            AE66DB0EEC67C591989C356D8B8CC9E9B01D2530288083850238190A60F4CEBC
            DA85A59EA8EB6DE708880366FB73CEFAAAD5FF6B3B08000000000000007B2880
            93D1D216156F7A63D5DA4DDD7DEB5B47014BBD59A521DBB1FDCA31AFB61346EE
            93D3C6711470AA288083850238190A60F4CEBCDA85A77AA26EB39D2330B4FCAA
            A1AAAED4760C00000000000000F6500077C3F3D4C4BB97AD7EB3BBEF2BBDBE74
            B87223661DA9636C67F6B3B0A3E5EB87BD2EB92E7301A782023858288093A100
            46EF94D72E38598B7387ED1C81A2F53D0D556B983719000000000000C85014C0
            DD48B500AEAEAE765E2ADA705562D17666BF3BB2B849CA276F174769DB517C8F
            023858288093A10046EF94D62E384E89F303DB39824469DDEE89BA687D65DD8F
            CD9E1E1FB60000000000004086A100EE46AA0570C2DC958BC73A31AFDBD34567
            BA6CD793C553B7CAF48256DB517C8F023858288093A10046EFCCAB5D7494A7F5
            7D668F25623B4BA068D91A15F7C4C6AA3B77DB8E020000000000006070510077
            C30DC5A7AEBB70DD6BA97E7F794DC5CD5A092547378E197640E64EDCDE392F30
            BA46011C2C14C0C95000A377E6D6564C565AEA9592C9B6B3048F7A3D12D5A7D7
            5D5AB7D5761200000000000000838702B81B5ACB69EBABEA1E4AF5FBCBAE2E2B
            96ECF05FCCAA1D6F3BBB9F65399E2C3B78A30CCF8ADA8EE26B14C0C142019C0C
            05307AA7A2B6624887C86AB3F87EDB59824869FD0B27EE2D5B77C9BAEDB6B300
            000000000000181C14C0DDF01C29BFFBA2BA869EFC9BF2E515376B917345A7B6
            7E3355E214D04BA66F911073017789023858288093A10046EF94D454E6449C3D
            77682D736C67092CADEE8914EB2BEB16D5B5D98E0200000000000060E0510077
            A3370570D9F2852788560F9AC521B6F3FBDDBC29DBE5A8E203B663F8160570B0
            50002743018CDE99535D1D1A5BF8DA6DA2D449B6B30497F6B4380D59A2AFAEAB
            ACDB6B3B0D00000000000080814501DC8DDE14C00965350BFF244A1D633BBFDF
            1D54D8220BA76C936CD7B31DC5976EFFE718F9FBBE5CDB31061905707AA20046
            EF95D7567C5F8B7CD6768E20535ACCA6491E68A8ACBBC0761600000000000000
            038B02B81BBD2D80E7D556CCF1441E338B61DB63F0B3C45CC0F3A76C93438A5A
            6C47F1A53BFE39465EA0000E0C0AE0642880D17BA5D757FC9772E566DB39D282
            962754287459FDD23B36DA8E020000000000006060500077A3B705707575B5F3
            D2900D778B9612DB63F0BB915951B97CF61BB663F8120570B050002743018CDE
            2BBBB1628678F284ED1CE9C2ECFCFD2D5BBBA57756DDB9DB7616000000000000
            00FD8F02B85BEA7B0D95AB7B555A942D9F7F9278EE03662D67DB1E85DF7D7EFC
            4E397EE43EDB317C87023858288093A10046EF2DBE7671415BC4FB87ED1CE9C4
            EC006E35EFCBA579B9597FBCED9CDBA2B6F300000000000000E83F14C0DDEA7D
            015C5273E6D0B0137F58B47CD0F628FC6E6C4E879C3D7D8B148563B6A3F80A05
            70B050002743018C3ED0A2CA6A173E294A8DB71D259D28D1BBB5D6773454ADBD
            D1761600000000000000FD8702B85BBD2F8013CA6A2B2ACCD56ADBA3F03B655E
            89A78FDF291F1EC151C06F47011C2C14C0C95000A36FCA6B175EAA455D643B47
            3AD29EFE5FD7892FBBABF2AE2DB6B300000000000000E83B0AE06EF5AD002EA9
            A9CC09A9DD4F2B5107DB1E89DF8DC88ECA97676D94B0E3D98EE21B14C0C14201
            9C0C0530FA665EEDA2A33CD10FD9CE918E94166DFE7B5E29BDBCBE726D86EEEF
            01000000000000E98302B85B7D2B80134A6B169FA194778FED9104C1A7C6EC91
            4F8FD96D3B866F5000070B05703214C0E89B452B168D688FEB3FDBCE91D6B4C4
            CD8EE143FBF7472E79A8FAB616DB7100000000000000F40E0570B7FA5E0097DD
            726EB1B4B7FEC42CBEDFF668FC2E3F14970B666E9691D91DB6A3F8020570B050
            002743018CBE29A929C909ABBCC4940AC7DBCE92EEB4D6CF2AC75919F59A7ED5
            58D5D86A3B0F000000000000809EA100EE8E92FB1A2EAEFB429FEE438B2A5D5E
            516956F6F592E23ACF548995F3F1D17BE494B1BB595142016C3B494F51002743
            018CBE29292971C3C7E57DC37C3854D8CE92215A95965FE8F68ECB1AAE68D863
            3B0C00000000000080D4510077438B7E6A7DE59A63FB7A3F25DFAD181D0ACB5F
            CC0A1F617B4C7E571C8949E5AC8D9D4703673A0AE060A1004E8602187D575EB3
            68A156DEB7CC76C2B19D256368D9AF945CE7C5DB7FB4FECBEB77DA8E03000000
            000000A07B14C0DDE8AF0238A1ECC6455F164F5F677B4C41F09111FBE4F409FC
            9C99023858288093A10046DFCDADAD98EC88FCDC2CE6D8CE9259B4A7443D274A
            ADCBCB09DF7FDB39B7456D2702000000000000D0350AE06EF467019C50565BF1
            86B99A607B5C4170D1419B64525E9BED18565100070B05703214C0E8BB92EA92
            48A828F769256AA8ED2C19EC8F51ED5E22FBF7BFD158DDD8613B0C0000000000
            0080FF8B02B81BFD5D0097D72EBAC2DCE737CDA26B7B6C7E77ECB003F285093B
            24EC68DB51ACA1000E160AE0642880D13FCA6A2BE69BAB6B6CE7C8685AF69B3F
            1EF374A8EEEE65773E6B3B0E0000000000008077A200EE467F17C05FBC69C1CC
            50D4F9851619677B6C7E979803F8FC999B655476E61E6044011C2C14C0C95000
            A37F9C76EDE282FC88F70FDB396068DD2ECAF949745CD3858D6734C66DC70100
            0000000000F0160AE06EF477019C507663C50DE24995EDB105C191C54D327FCA
            36DB31ACA1000E160AE0642880D17FCA6A16AD12A54FB29D03FFA2252A5AD748
            483DDA7051DDCBB6E300000000000000998E02B81B03510097AF282FD45EF815
            73E7236C8FCFEF1CA5E5AC695B6556618BED28565000070B05703214C0E83F9C
            06DA87B4C445E96D4A9C9F76B87263E3D2D53B6C470200000000000032150570
            3706A2004E28AB5954298EBECE3C00730177637A41AB9C3D6D4B46CE054C011C
            2C14C0C95000A3FFCCAB9937DD53A106613A057FD21235FB4FAB94ABD6372CAD
            7BC5EC6D66DE073800000000000060110570F7763754D60DEBEF3BFDE277174E
            7342F288526AA6ED01FA5D96E349F994ED726851B3ED28836EED8651F2E7DDF9
            B6630C320AE0F444018CFE33A77A4E686CD1A43BCDF6E293B6B320A9AD6647F3
            B79E72EE8D8D3DF07BE60906000000000000060705700A1A2AEB525A4F3D5556
            53B1DC3C0317D91E5F10CC2868952FCDD89CDA0B368DFC7647A1DCF766A69D29
            9C02383D5100A37FCD5BB1F87D5EDC7BC4760E744F1BCA91C73DCF5B1997B6E7
            1BAB1A5B6D6702000000000000D21905700A06AA009E7BC3A209AEA3FFA24586
            D81EA3DF25E6025E34759BCCCEB0A380298083850238190A60F4AFEAEA6AE7A5
            A20DF799C5F7DBCE8294B529AD9FD25A1EF622EECFEFBE70D566DB8100000000
            0000807444019C82812A8013CA6A16568A5235B6C71804C3B2A272E9C16F66D4
            5CC014C0C142019C0C0530FADFBCDA8A399E48BDED1CE8212D8953411F7094DC
            A7DDE8F5F54BEBF7DB8E04000000000000A4130AE0140C6401BCE0A605C3621D
            CEEFCC33C15CC0DD70CCB370DAB89D72FCC87D19732A680AE060A1004E860218
            FDCFBCE7467AAEBB462B39DC7616F48ED27A9FB9BA4F3BF233E5C4FE4C190C00
            0000000000F41D05700A06B200EE3C8565E16BFF234A7D45527C3E32D9C4DC76
            3977E666C9723CDB5106050570B050002743018C01A04595D7569CA3955C653B
            0AFA484B93B9BC264EFCB651E3863F5A7B462DF30403000000000000BD44019C
            82812C8013CABE5B3143C2F294592CB43DD6205838759BBC6F4893ED18838202
            3858288093A100C6C038B3E6CCA1AD2AFE47B398633B0BFA8712BDC9EC77DE14
            13E7975B0FBCB6E589EA2762B633010000000000004142019C82812E8013CA6A
            2BBE61AE38822905F9A1B85C3C6BA30C8DA4FFCF83298083850238190A600C9C
            79B50BCEF2C4F91FDB39D0DFF4ABA2D56F45BCFB1BAAD6FED1761A0000000000
            0020282880533018057042596DC5267335D6F67883E0E3A3F6CAA9E376A5FD39
            B3298083850238190A600C9CC5D72E2E688B788F9BC571B6B36020684F697932
            1492CBB74BE1C64797AE6CB79D08000000000000F0330AE0140C56015C5A5371
            B952F22DB3E8DA1EB3DF8DCCEE9025D3B7A4FD51C014C0C142019C0C05300690
            1655BA7CD1994AEBAF993D1B3E43D394D9198B694F7EAF5CF5C378BBFAF5DD97
            ADDA6C3B13000000000000E04714C02918AC02B87CC559E3753CF6BF6671AAED
            31FB5DE209F9F4D8DD72E2E83DB6A30C280AE060A1004E86021803ABECEAB262
            C98AFCCE7C4014DACE8201A6256AFEDCE988DC735755DD75B6E3000000000000
            007E43019C82C12A8013CA6A177ED93C2DFC303305D9AE27971CFCA614A7F151
            C014C0C142019C0C0530065E594DC55CB3677383ED1C183C5AF46E25CE1AA5F5
            4F3BA4F995C6AAC656DB9900000000000000DB28805330980570A2408A859C3F
            295107DB1E77101C3DB449CA276FB31D63C05000070B05703214C0187825F796
            B8E18DF9B78BD227D9CE82C16376D2B4D9EE6E37CFFB73E6E68D66BFEDCFB633
            01000000000000365100A760300BE084D2E50BFF5B69556F16B36C8FDDEF0AC2
            713973EA569998D7663BCA80A0000E160AE06428803138E6D556CCF1B4BE5594
            CAB79D057668D1BF733C7583CEE978B1E1BC86F49E2B02DD9A7EF28AAC51FB5B
            236DF9B17C89867325E4849517CD7174283BA6A4F3F3DA51FAE87F7FBFD6DA11
            ED1CF55EF7A594F6CCFF3D3DF39F2F68B5D31379DDFCFB26D1F17FC475B85D85
            9C0EED455B9CA8DBB12F2772E0954797B6DB5E07000000000020F35000A760B0
            0BE0929A33878655EC41F3F47CC4F6D8FD2EF1C47C60F87E3963E20EDB510604
            0570B050002743018CC1B1E4D625E1E696E8B7B4E879B6B3C0AAC4A9A0FFAAB4
            7AA023AFE981C6731AF7D90E84C1A0D5319FB8668A16E770256A9CA7E428A554
            A1D23A5F8B8C565A866B2579E61B8B07E6F1D57EF347B3C9B1C33C6E93A7F516
            93639B68EF7951CEEB5E38EB8FCF3EBA343D775A010000000080AF5000A720BB
            D0295C75E6AA0383F99865B51515E6D959253AB5E72893851C2D5F9BFD86E487
            D36F2E600AE060A1004E86021883E7B46B1717E487BDBF9A4FD0B0ED2CB04F69
            151547BEBA7F6FF8FEA3656C5B7575B5673B13FA6ECE9CEA90B90AEDCB195AE0
            465BBF687699CF90C411BD7AA0CADDFE6176ECFF245A3DA3B57E5CF28A1E6ECD
            DE129B2DCFC71B1B1BE3B6B3010000000080F441019C82B8EB1C71CFD255CF0D
            E663268E606A6AEE78D43C439FB03DFE209855D422674DDD9A38859FED28FD8A
            023858288093A100C6E02AAF59FC79ADBCEBCD62B6ED2CB0AF739E60D17F7794
            7ACC09851F5C7BC1ED2FD9CE849E3BF294EB27B9516FB67872A8567284F9D2FB
            CCE510DBB97ACBECB5B69BD7E6B366F1CF5AEBDF4828FC87677E5AF58AED5C00
            0000F09FCBAE5A79794ADFA8D4DF8F3E74E48FCF38E30C7EC1B01F7CE52BDF1B
            1777BD33B4F65299AAF1E16BBF79E15F6D6706807FA3004E818D0238A1BCA6E2
            30EDC81F45F3C3EBEEB84ACBBCC9DBE47DC5CDB6A3F42B0AE060A1004E860218
            83ABA4A62427ACF26E318B9FB29D057EA23DA5D57E51EA876E385EBBF682B5BB
            6C274272DA7CA81E73E2B5A7883897999B079BAFE49AE59CC4E99E6D67EB671D
            E672C08C6BB319D86D4FFDFCB29B6C07020000807F5C7ED54D291DF562F625EF
            6DDAEB2D58B97269BBEDCCE9E08AAB6E3ACEACF89F9AC582EEBFDB5B74CD3797
            D6D9CE0C00FF46019C025B05F0852B2ECCDAE51D5865164B391574F70E1BD2DC
            5902879DF4390A98023858288093A100C6E05B70C3829931E53C683E410B6D67
            810F69D9623E73EAC4D53F9DB967F23F3935B46FA8A3E65C3D4DB9CEA14AD427
            B5923219B0397B7DADDD8CFF61CF93BBC2AEFEDBC421935F6D6CE4280E000080
            4C45016C0705308020A3004E81AD0238A16CF9C213B4568F99272A95D34C64B4
            44F1BBF4A04D322E277DF66FFEBA374F56BF3ADA768C4146019C9E288061852A
            5D5EF149A5A5CE7610F897D9C77A532BF5B39017FFFEDAAAB59B6CE7C954471F
            BD242C45D33F268E9C656E264EEF3CD55C5CDBB97C20F183BE57CD0BF5194FDC
            5B9FFDD9B2C76D07020000C0E0A300B683021840905100A7C066019C50565BF1
            98B93AD1F67A088271B9EDB274E6A6B4390AF8B5E61C59F9E258DB3106190570
            5AD2FA978EC83ADB319022C7FD5DBBA7763456DDB9DB7694BE2AB9B7C40DBF99
            F775A5F462AD1467D3409794E87DE6CFEF2989FD60FABEE9DB382278701C3BE7
            BBA3BDB01C2F5A2E34378FB79DC7DF94D9C590DF2BCFFBAAF91F94BF3EFDC497
            77DA4E848173EFBDF7BA7FFCCBB689A97EBF1392F6EF565FB8D976EEAE5457AF
            CE6E8A358DE9EEFB423177EF35D79CB7C7765E20E8BEF2959B26B52BEDD8CE91
            AAFD13221B6F3BE79C684FFFDDE557DF52ACDABD11AA231EF9F7D76211B577EF
            E6AC6DB7DDD6F3FB03FC8C02D80E0A60004146019C02DB05F0DCDA8AC9AEC86F
            CC87CD38DBEB22084A26EE90E386EFB71DA35F5000070B0530D2488BF9CC795A
            B4BE29B6BFE581C6EAC60EDB81FAA27CC559E3752C769FD9EB196F3B0B0240CB
            6B4AC93D6191757595757B6DC74957C77CECDA83B4ABCE378B1F3597D9C2D1BE
            3D913815F453A2D5BD5157EEFACB63976CB71D08FDEF92EA9B47BB71FD27B351
            4AEDBDA1D50E515EC535DF5CFAACEDECEFE58AAB567E588BBAC7044D5E486955
            7BCDB72EB85EDE3AFA1D402F5D7ED54D2F9BB7519EED1C29739D13AEA93EFF95
            54BFFDD24BAF2D70B2F24ACDFE7DB9D95A24CE1CF29F295FB4683376F570C8EB
            B8FEDBDFAEE2EC2E481B14C07650000308320AE014D82E80134A6B16FE8F52EA
            6BB6D745104CCE6B9333A76D95BC50F0A749A3000E160A60A41F1513E52D6BB8
            78CD0ADB49FAAAF4D625C3554BC73342C98414999DE498F97359C7B8A61F369E
            D118FC9D0A7F5073E6546735B979DFD64A57D90E9326366B2D5585F196FB9E78
            A23A663B0CFACFA5D52BC73A71E78D940BE00425D75DF38D0B2EB59DFDBD5CF9
            B59B3FE669FD73B398BC0056FA9BD77CE3C2AF0B0530D027975F75D30173956F
            3B47AAA2B1F0C1375C7DCE3F52F9DEEAEA6AA72D36E22AB3BD48FC8C2CD93665
            87EBA9A3BFFDEDF3DFB43D3EA03F5000DB41010C20C8288053E0870278DE0D8B
            DFE7B9DE23E67F8333AD0DECB1C4E99FE74EDA2E471637D98ED26714C0C14201
            8C74A494B4C4C529BDFBE2553FB29DA5AFE6D62CF8BC23EA1A33A8C0FC300CB6
            694FB4FA83D9636E7063F19FAEBB645DB3ED4401A58EFAC4758729A54BCC3A3D
            D3DCECF634B0E821ADFF68FEBCA5359E7FDF0B4F9C1FFC9D60F4AE004E50FA0B
            D77CE3C2FB6CE77F370A606070A573017CD955377D5589FE1FB3C1E8F614D75A
            D40339EE8E92EA6A7E490AC147016C0705308020A3004E811F0AE092921237FC
            E1DC6AD1EAABB6D747100C8DC4E4AB87BE6E3B469F5100070B0530D2D85EAD42
            B3D65F7CC736DB41FAE2E4152767157BA3BE265A2A6C6741E07498CFA7BF3B4A
            55DE75F1AA176D870992EA6AED3CF4EBEBBF234A9F656E0EB39D27BDE936F33A
            7D553C99FFF42F2E7DC6761AF44DAF0B60916D12750EF6DB3CBA14C0C0E04AD7
            02F88A2B6E9AA943F2B8594C696A17AD25EE84BCC3AFAE5EFA82ED31027D4501
            6CC7FF63EF4CE0A328B206FEAA7B2607F70D8AF7B9AB8B07A0788B02B278ACD7
            820A8AA0BBA02441CE1C90894D12920920C164028207E001FB81BBBA1EBB2AA0
            E87A4BF05A5D77BD4FEE4B083966BADFF73A414585A4E6ACE999F7FFFD603A49
            4FF7ABEAEAEAEAFE7755B1006618C6C9B00096201E04B0CDA8F2511D1A00EC46
            2BF79A90E0D243B7C3C01E71F5DC236858003B0B16C04CC22200A9C150D6F04A
            4DFECA95CE1E0A77A8313425A55D9BFB11F0424A170F07CD0407829FCACD833A
            B8963F34F1BEFFA80E279EE937A4A29DBFA1EE7AAA3B3C3CFF76CCD94D79FE80
            5B77CF7BFD995D5F011896EA8098E00943001338BF77AFEEE3870D1B1637D76C
            16C00C135B12560017F86E46C4FBA8B270496F1C71A5B7386B98EA34324CB8B0
            0056030B6086619C0C0B6009E24500DB0C9F3B7A0CDD14FB68D1AD3A9678A74B
            AA1F6E3B7E03744AF1AB0E256458003B0B16C04C82F3319A29E72C9FB268ABEA
            40C26574C5E8AE75A6759F00D157752C8CF3108D9D49C40601D6DFB48055C1C3
            42FF0AD177E0EC0B299B4A10E074FA394D754049CC7FE8701457AF9EBA4C7520
            4CF08427806187D0ADF3E2A9C71B0B6086892D892A80733D55E3E8C3078DEFA7
            CAE32DCA0C6A7D8689475800AB810530C3304E8605B004F124806F98F7A7EE80
            81BFD381EBA73A9678C72EDC97F5DC0E1777776E2F6016C0CE82053093F0A036
            68D9A40756AB0E23120C9D3BB2670A684FA380AEAA63611CCDB71A40763DD6BC
            B172D2CA5AD5C1A8A64FFF395D840B331030877E4C571D0FF323CB2D4BCB7BFB
            F929CE9F1F2589085300DBF67463BAEE3ED630C6EE559D161B16C0F18D611829
            35D0B51382E8A607E04221ACE37AF7EA36299E7A9133C191B802B82293AA91CA
            60B75FB3D34A6319C6381D16C06A6001CC308C9361012C413C0960BA0D16C3CB
            478DA723374F75284EA053AA1FB27FFB0DA468CE1CF98E05B0B36001CC243A88
            F0EAF2494BCE551D47A4B8A9FCA6DF9AA82FA06BEAF1AA63619C8B00DC4BE7C6
            8B74862C5A36E9C13755C7A38ADE0366DF4879318132A48FEA589803F21E8236
            63FDEA297F531D082347B802B811C4026F715631C4814C65011C7F18C6C256F5
            A64975B6D98F32FB54CAFCDEF4EBA3A1E9059EE7D3F4AD830DC308A88E93098D
            C415C095E3A81A09BA073095679DCAB3331F0C31CC3E5800AB810530C3304E86
            05B004712580C1EEB53434DD0DAD3FA0A377B4EA589CC085DD77C2953DB7A90E
            232458003B0B16C04C32B06CE292841A3EEDC6F2D1BD2DC447E89ADA4E752C8C
            C34130E9E498DF7058CDEC95C39C3D577630F4EF6FB8F6B8D2172188D1AA6361
            5AC4440105EBCFDDEB057E081EF7444400036C41C001654559EFAB4E0F0BE0F8
            C0300CADD6ECF247BA5EDD443F5E0A073F1E2C801D8EBC0016180FA79B3F8027
            DD559AD5A2009EE6A91A69813D077050D3A2FDC35B947999EA34324CB8B00056
            030B6086619C0C0B6009E24D00DBDC5031FA4230F1593A80A9AA63897752750B
            B24EF80E0E4D775EBB8705B0B36001CC240374DDB9F591894B1E501D4724B969
            DEE87E9685B351C0B1AA63619C8D40BBA33CBE8D20AA76BADABEF0CFF195CE6B
            7C4883E28C0177F535855542F5C20090BCAF609443CD14FC3FCDB2A6AF5B93F7
            99EA6098831321010C5427FDADAC28F38F4D92471D2C80E3835C4FD54ECADAF6
            12ABB2007638B202D8029838AB28D33123CCE5E7DF737C4004ECBAE408C9AF34
            802E4EF61A199FA88E9D61C28505B01A5800330CE36458004B108F0278D4E251
            69FE9DF0285D80F82D4609CEEBBA0BAE3A6C1B686A9F7B040D0B6067C1029849
            0EC4A26513178F551D45A4193E77E44001A20285907928CA302D510B886BA0DE
            9FBB2C6FD90ED5C1441E433B6360EB9B2DC059F44317D5D130C1433781AFB92D
            D7D0D79E9FF4ADEA5898031329016C838813CA8AB3EE56991E16C0F141AEA7EA
            7BCA5A8907D82C809D4EA20A609B1C8F6F185DC7FE4F6E6DBCA777AFEE993C9F
            359308B00056030B6086619C0C0B6009E25100DB8C987BCBD52870393568B917
            700BB4739B30FEC46FA0538AB3EE5F59003B0B16C04C92F0F809BB8EBA36E1E6
            D0421023E6DD7C0E22CC05210E531D0E9320207E4345EBCEE593963CA33A9448
            7146FF593DD00D5974AE4C061E89C6E96C010B7E7F4CE7A3DE5DB9921F8CC71B
            1115C0745B21746DA0D718A7ACD7370BE0F8800570F290C802D8263BBFEA4E4D
            E01DB4D8F120ABECA57FCF8B008C2A2DCD74E69C600CF30B5800AB810530C330
            4E8605B004F12A80ED5EC00D3BE0193A8A17AA8EC5099CD979375C7FE466D561
            04050B6067C102984906A8E1F08665A65CBE7CCAA2ADAA638906C3E7DCDC47E8
            A29C6EF07838682652EC06C4552E40EF83931E74746FCBDE03669FA209ACA0F3
            83DB9E09036E0284DBAAD7E43CAE3A12E6E7445200139610B0B0B430739CAAF4
            B0008E0F5800270F892E80B3B22A52DB74D07A23C2ED748332987ED56DDF9F76
            D1BFB5165A0FEE71E9CFCD3732F6A88E956122050B6035B0006618C6C9B00096
            205E05B0CD88CA51BDD08437E9F6384D752C4E60DCF1DFC1716D6B5587210D0B
            6067C102984912BE4417FC7E79D6928F5407122D46DC35EA2C14703FB5923AA8
            8E854924F043407DEC09DF1FF185037BD08BDEFDE71E2BDCE6A38078AAEA6098
            C88200966EE2D09A2EB54F7DB8D268501D0FD384AC00B6E7F81520AE8296C42A
            E1C2D4638A8BFFFCB98AF4B0008E0F5800270F892E801926196101AC0616C00C
            C3381916C012C4B300B6195E3ECA471F19AAE37002BD3AD4C088A336418AE68C
            E7092C809D050B602649D805685DB26CD2836FAA0E249A5C77D72DA76AC2BC53
            08D14F752C4C0281B013107DBB77A72E7DD258B4577538521886D6F7E5D65720
            E003F45327D5E1305142400322E6B70BD496AF5DCBC2271E90EE012CC424B07B
            C0011EDFF256C50611304F2D2D1DBF25D6E961011C1FB0004E1E5800334CE2C1
            02580D2C80198671322C80258877013C62DEA83310E1495AECAE3A9678275DB7
            60EC71DFC111AD9DD1066201EC2C5800334942AD001CF4C8C4A5AFA80E24DA8C
            9A35AA47834B3C04024F521D0B93388826A9F1D4231397DCA63A1619FA0E9CDD
            1F05AEA1A85BEC5DC8381C011682356EFDAADC85AA43618211C0F84701E222BA
            1F947A2198EAA092D2A2CCE9B14E0F0BE0F8800570F2C0029861120F16C06A60
            01CC308C9361012C41BC0BE0A1C6D014778736F700E268D5B13881D33AEE8191
            476F521D8614DFEC4D85B91F1DA63A8C18C3029861E29C06103868D984A52FA9
            0E24160C9D3B343D45B49E4D377C43E8479E6E81891C08FFD650CC7878F2E257
            55877220FAF7375C7B5CAD8653D95FAA3A1626A620A036FA984E473CBC72E530
            537530C98CFC1CC0E2416F51C6CDB91EDF469079211861872BD57D46B167ECA7
            B14C0F0BE0F8800570F2C0029861120F16C06A6001CC308C9361012C41BC0B60
            9B5155A37A3434E0C774485B6CE0273B1A95FA9B8FD908BDDAD7A80EA545F606
            34C87FEF68D561C41816C00C13EF208801CB272E7E5E751CB1A2F1DCD6B5DBD0
            1E669361228800DC8EC295B16CC2FD71F742C5E91797E5689AF0D0626BD5B130
            B1467C6F09ED9AB7574D5EA33A92642658019C53E0BB52A0788CD697B9C7FF22
            4DDF7A6C2CE72367011C1FB0004E1E5800334CE2C102580D2C80198671322C80
            25708200B6B9A1FCE6E9024421B47453CDC0E1ADEA61DC09DF41AA16B3671E21
            51676A30ED5D16C04E810530932C20C290E593963CA33A8E58337CEEADD70B61
            4EA59BBF1EAA636112090C0814A5C77F7FD47DF1F0A0BD4F9F316ED1F1B83F50
            397F54752C51662FE5FD2E6A77D4D1E71EFAF4D38DD18E1FFF8AB081EE947E39
            4FEA11F4AF43E39F913E45E3BD94FD20C81E1DC09E1F396164391D7F4B80EBB4
            EAD593DE571D4BB212B400BE73DE11C272D9F7EC52D316680267A468DB0A6325
            815900C7072C80930716C00C9378B00056030B6086619C0C0B60099C228087CF
            B9F548D04D7B2EE05EAA638977DC1AC2F5476E86D33BEE511D4AB3B00076162C
            8099640101F3974F5C3A53751CB1C6300CED93F65F9E66A1550C429CAA3A1E26
            A168A033EB513D60190F4D7D48E910257D0795DD84A8CDA778126D5499AD94A6
            97E9E6E763BA037A1F2C6D03086D1B6A586BA1F9BDE6D71BAAD74ED92ABBB1B3
            07CFEDD4506F518BD2DF41B8443A6A7A57B4B0A326F00281E264043883566BA7
            3AD1E121BE040DAEAB7E6EEA1BAA234946A40530C243DEE2CC91F6629EC73793
            CADE34C95D7CE542F1FBE2E28CFFC4223D2C80E30316C0C9030B6086493C5800
            AB810530C3304E8605B0044E11C03637CC1D3D43082C501D871338AA4D1D649D
            F0ADDC49A00816C0CE820530932CA0C0BB964F583A45751CAA18B3708C7B4F4D
            C36C5ABC8A2E226ED5F1308903B549D634A03E61E5A4FBB7ABD87DEF4B665F24
            2C74FEB0BF08B59499B648DF46FF1E032DF078F573D3622A31FB5C61B4C2BDAD
            2EA038AEA6E33A80B2B72B086C43B1396DA49ED7217DEF80EA278DBDAA034936
            E47B00E3C3DEA22C5B00373E14CECDF7EDA472D75E661F42C0C2D2C2CCDB2106
            B29505707CC00238796001CC3089070B6035B0006618C6C9B00096C04902F8C6
            F21B0F31C1F56FD1340C1DD30C9A40B8F1A8CD705A1CF7026601EC2C580033C9
            42B20B609B310BC7B4AAD9E3BF06351C4F3FF6541D0F931850D3842E21F086EE
            724D7928EBBECF63B9EBDE03E75C22C07A8A965DAAF3216410D653FEBDA88178
            3120F0C37756657FAC3A249B33079474F6EB29276B68F5A7233C84B2FB2CD531
            05858095297B5C37BFF6DAA45AD5A12413A10AE09C82CAC160897F0A2177AF2F
            8435A6B470FCBDD14E4FA208E0BC125F676CD07E25D8FD7ECBBC6B66C6578D35
            791C93880278A231B7532AA475F8F55F849506691B0D63749DEA1855C002383E
            B04710DA0B9D7B68A0A7FDF26FF590B2B3DCF8938A97FE22CEC4E9737BA6BAD3
            520FF4B734C0CD869111970FDE0CA3AA4D1DD4776B9ACDE3E7887A6B576969E6
            36D531EE0F0BE096196518693DA07D0F80D49FB537EA1AEA6BE7954CDC10CA36
            1341001B4645BB3A707539D0DFBCC6B8CF54C7C7304CF460012C819304B0CD88
            F2914310B47FA88EC309B4729950F0BBAF20254EE7026601EC2C580033C9020B
            E09F183EF7966340588B69F138D5B13009C52742778D7864FC7DDFC46267FD86
            541CE6F7D7BE274074549DF0E01188683D434DB9897BBBD47EFEE14A0800C466
            4ED3E041D1A7CF221776DC791CDD842DA4D8CF571D911CF6AB097067F59AA945
            AA2349264215C01327CE4D4F6D9362DF0BF697D90F1DDC4F690F17CC32B2BE8B
            667A9C2A80730BABCE80061C4A6D9F53A88EBCA0B1DF349DCB0759DDAE7BBEA5
            BFBF8A427BF40D6DCB3FD7C6994075BA009E36ADFC10CBE53A8F0AC7D974184E
            A20341C7A4F1B9D6C18E895D8E90FE7B860ECFFBB4DAA36545594931B7390B60
            75E47A2A4E07A15D4785F2222A7CBD1A47FF387009B5CBE72EFA7817513C41EB
            AC2D2BCAFC4075FC2DA6AF747E47DC6B5E46D1F7A71AF1483AAFCE6D268D3FA4
            93DA6BF88126E0F980C0775A6B6D1F8BF5CB19138CF20EA956EAB902AC732996
            D3A84EEF0F12F507FDF945BADF7BDBD2E06F74AD5C17CB987F090BE003936B54
            F6474BFC915AAC43E8C743E140C7B431E7F07BFAF880FEFA3468E68AB21913BE
            92D9BE1305F0F4E2053DAD06F30F54B75C41E9EEBB2FF683D44418A0E6CD4774
            4EACB22C783ADDBDE5F578BBFE330C133A2C8025709A001E658C4A6B686FDFE0
            C085AA63710257F4DC06FDBBEF8CCBA1A059003B0B16C04CB28002EE5D3E61C9
            18D571C40BC34B877784D4D40C10783DFDE84081C6C42508AF586895FE65F283
            6F477337A75F3AE748ADC17A82164F519DE420F98F40782CA0C1CA775665BFA3
            3A9850E87B71D999A8C3183AD69753FBA7BBEA785A60AB2E70C89BAB72943EF8
            4C26E405B078D85B94F1A300B6C9F1F8AE17804BE96F2932FB4284AAB2E2CCCC
            68A6C70902D896E7EE56AE5E9AD0CFA738EC1734ECDEFAE19C9BF670F46F21DA
            42583C2F5AB9DF2CCB1DBB2B5AF1E71654ADA07DA535B70EDDF3DA0FC765467A
            B0E7447F1D433C0E0D1D1BAE2B9F14DEA80186B1386DAF7FCFEF340DFA821067
            51393D8BA23941B677FBC1A004FD97FE7F928EF15AD1E07AD5EB1DB7239CEDC5
            2B892E80A99E7B42663D4D88274B668CBB4F88E8F5CE378CFB3AD5076A2FB034
            ED7281F87B086F74205B483D2F84F652C00ABC34BB78FCA7D18A5B965CA3EA38
            34ADB3046867D3B97309FDEA1868A92E97E37D3A2A2F5B42BCAE05CC759F7CD2
            E3BF2B570E332311F398310BDDEDBA98BF75BBACD32D0BFA51BD710EFDFA6408
            7FA49B4D54033D07A678D6F25B2FCC9A15DD97A77E090BE0267272E61D01292E
            2A93E232AAC50687DA8EA6EBCA3AA1E1D3686AABD3DD5BDE340CA3E140EB3941
            00E7E42C6C2FD2036753A53E9012669FA7BF85D0CBFB7780E245D0ACC7FCA678
            F3AE99995FC63A3D0CC3440E16C012384D0013E2C6F2D1B75A80F36999E7266C
            8143D21BE0F6E3BF8336AE88B433230A0B6067C10298491A04BEBD6CC2D2DEAA
            C38827FA1B86AB47EB2FFB68BA550A429CA83A1E2661D88C608D5B3EF1C1D7A2
            B1F1532E99DDDA8DB00410FFA83AA141B091FE95B802F8D8115D8FDE10A90785
            AA1832A4227543A0EE08178AF108F867FA556AD81B8D1202C4D7F5758153DF7F
            392F216549BC212D80111E292DCAB8697FB96118464A9DD9F54BFA630FC9DDD5
            FB2D38319A0FF8E25D00E74CAB1C22743185EAC35E741DB7A753D2C3DEE87E89
            A2E4ECA693E83B01E04DD5BA2D378C610DE16FF7E7E47A7CF6DCE7AD62976B07
            A766E7D6F69595C6F7A17C77CA94D9ADF5F4D46B416813A9141C4AFFBA862B7D
            0F823D24EDB79605A5C71EE15E3676EC58BFDA5C8B2C892E80A545186265AA6B
            DB04AA17A3323AC834CFFCE11658D3A89C1E43A5343D829B36A9D0DB23C1BC01
            01F0949666FE2F1AF137479EC7D78F727012B54F7E7819264A6D140CD07E3651
            7ADFD534513A7346C6CBA16E292BAB22B5753BED523AF0B7D1F1E845DBED0611
            ADCF7FA4DE3E3E54A8E69BEDDA2D9C3375644D74F2E6E724BB00CECD9DDF11DD
            D6245A1C21007BCABEE8D60276DDB08332763DA2B8635671C67F7EB942BC0BE0
            1C4FE58D9A1077D82F4961733D7D83C77E91EB5B14E84BD7B65546AB1E651826
            BAB00096C08102B8716EC23D7B1B5EA7C55EAA637102D71FB919CEECBC5B7518
            BF8205B0B36001CC240D081F2E9BB4E464D561C423FD8DFEAE9E6D8F9E8A1A8E
            00EE0DCC44006AAC7FAAB95C37477E4E6014BD07CE9A2240CC529D46496CF1BB
            0674F7D4EA67439BBF2BCE117D0694F50721E6D0B2DD8E88C403AD68F0E02E77
            DA984FFE99580F14E3917004B0CD94290BBAB9D2035F07F170B44E04E0B068CD
            77189F021845CEF4F9670BCD9A413B1E18FDFDFDC81B688999BBDDF0C2FC08CE
            8BE964013C74E80AFDC813371DA16BFAE502AD6CFAD561B18C17111F46D08B67
            15DFFEBF789FC7591616C04D444B00E71A0B8E8280594C0DB51B2032BD619B63
            17A56482B728634994F70363162E74B7FFA6FE2C0DC504BAAE5C13EDFDFD1204
            7CBA4FAFEE570E1B16DC0B7E13A6951F92AAEB830468B988F09B28BD347230DE
            B02C6BC2CE2DA9D58B1645F745926415C0E38CAA366DFD810142D3A87DA09DD6
            CC540C618235B4E99969AEB485C67EF373C7A300A6EB96C82EA83C4F076D36FD
            D82FEAFB13B88EEA85CC54FDE46AC3B8888787661807C1025802270A609BE1F3
            6EBD00D07C51751C4EC0EEFD3BFEC46FA14B6A7CBDF4CB02D859B00066920616
            C0CD3266E118774D6DC369960519C29E8351F0681C4CB888774DDDCAFABFF14B
            23340CA02D7FE78C12800B208E7B9CFE947CF1A80556D9DB4930FCF069FDCB3B
            B8DCE61580D63C04E8A43A9E03B00B3571CDFAE7A63EAF3A9044275C016C93E7
            A92A45C05C99FD21DA4F53C58C4FFFDBB5381A3DEBE34D00DB439A0A138B6827
            83E8C7CED1DCD701C1C6E1A19FD14C7F464949645E6A71AA00CEC9F1B617EE36
            B751011C4DED2665A3A8D82F5C998893661567490D2D1CEFB0006E22F2021845
            5E7ED565B4E5521418CBFBFEB1DEA2CC45D1DCC1D4FCBB8FD7846ED0B9301854
            D48B360267D235C003415C03A82C8C11026EA5EB983DCF69B465FC01A1607752
            BB7ABAB7286B7E34F7938C0278DAB479DD2DDD3D87727928C4E4BE0503B6EC35
            75D72D738CDB37DBBF8937013C6DDAC24350F37BE8BA698FE2D435FA79F2231B
            3521E6A4685D2BA3319209C330D18105B0044E15C036C3E7DEBC1C84B85E751C
            4EE09C2EDFC3B5476C89ABB98059003B0B16C04CD2C002588AA14387EAAE73D2
            470BD42682C07654BF297920C1240602E13D13C598BF4C5EFC75B8DBEA7DC99C
            3EC232A96D2F62F9C02014BEA7766C49F5AAA965AA038935675C3AAB87D5201E
            A70A37EA6FF4070F6E48E9E83EF6B595E1CDEFC9344F240470AEA7E27400ED29
            5A3C5472B7BB5D29EED38B3D63233EE764BC0860C330B45AB3B3DD86F9AB0071
            7C34F611243580DA5569AECDCF872BA89C2A80730BAAE602E244D531FF005A70
            61BA7BEBCB4E1FEA920570139114C0768F3BAACBCEA4CF17A87D12C9E19E5BC2
            8F807DCA8AB2DE8FC6C60D63454AADB57130DDB3DC473F768B61BA7E493D086B
            B4B770BCF4B3A01C8F6F9800F83F8531FF0C8A65DEB64DEEEC68F5044E26016C
            5FAFEBEABA1D056EA47B163C414108DB740BFACC9C99F9653C09E0E9D3AB0EB7
            34584A75C2450AF2E40796A4E9EE0CC318BB57610C0CC348C2025802270BE01B
            E6DE74A110FA5F41D5DB7B0EA2534A00FE7CDC06E89E163F2F31B10076162C80
            99A4810570508CAE1A7D787D03DE4A19772B4B60262C105ED34DF3E687A63E14
            F23C63F6309B9FEDF8E2715ABC5C75720E8E2DB2AC7FD0F5B46CFD9AEC7FA98E
            4615675F3CB76783F04F02216EA71F63F9A0B96510EEAB5E93FD67D561243291
            10C036D30AAA0A2D444F10BB7E3E4DDF3A28D2F22B1E04F098310BDD1DBB358C
            A373CAEEE1D621D2DB0F832D9458DF671F759B194EEF6BA70AE0BCBC8AAEE8D2
            BEA5C5781931A546A036BCB4789CA37B02B3006E229202382F7FFE5508D6B208
            CFF5DB2294D055E9BAF547C3181FD2BCDACD31C128EF90167019542F66D08FAE
            58A6EB006CD42DBDEFCC99B77F2BFB8551A38CB41E4774FD1A10BB288EFD2750
            4C39FA70574534E6154F26019C53E0BB925A3695B478B8C230DEB074BC4637C5
            91F12080A715F8065908A5B4D847619ED850B9C27BD3F46D93A96E8D9F87E80C
            C31C1016C0123859000FA91892DAD1ECFE24340D6DC5B4C0A5876E87813D76A8
            0EE34758003B0B16C04CD2C002386886AE18AAA77D99D6D974EBF329FFCE561D
            0FE364B07AF7AEEDD73F693C19D21BD77D06CE2AA28FE920791FA00221C45F52
            F75A635E792567B7EA58D463687D06A4FF8132E541907AE81423ECE16B018757
            AFC9795C7528894AA404B06118AE3AB38B5D5FC8CB3544C35B9C352392E98907
            019CE7F14DA28D7A83CA8B18610FC14DE7F95DE9FA969C5045955305F0BED8DF
            A38F5EAAE3DE8F2D75BBFD27CC9B3771A7EA4042850570139112C0F9F915C706
            347D359DAC47C53AAD8878AFB72873ECC1EAF970C82BF0BD8C4DF72671F092AA
            A8F616659C0141D6FF3905558BE838C7D14B6918B0A7012A2DCA7A25D25B4E16
            019CE7B9E76C8480A4708D36F88400E1552D80A90DD38F1A0A8F513C8784999E
            57683B5DA88CD8A3A08473DE5B08D6A36545E3AF8B745A1986892C2C802570B2
            00B6B9FEAE91A76B9A66F79E68AD3A967827DD65C1C413BF899BB98059003B0B
            16C04C12B16AD9C42597A80EC2895C618C69D5AE7DC3F58030946E224FA69698
            1EFE5699E4022DBA562EA673B020D86FF61E3867B010D63FA8FCC5C143BE5F43
            37269B50E0A2EA553941A72DD1E97B71D999A8C112CAA5DFAA8E653F9EAA5E9D
            7D85EA20121569012CE065E187AB4A4B33B71D6C953C4FC5F900DA33282F073F
            1101B88CB6F9BF48A547A5006EEAF95B3F4A087DA1DD352B844D6CA1EF7D8808
            9FD0F2FB42135F094D43CB0C7CAEE9AEC69B350C98BD8410A7208863E9473A4F
            312D84FDD4D3F78D747DCBAC506495A305B051D91F4C61978FE6CAFB26FAF719
            027E4E05E53F94DF9F0B0B77800B3FDB7F254B03B7D6200E474D9C8E88A70910
            BDE87804FDA09B0AE09A745D5C6518197B54E76728B0006E2252023827BFF201
            2A73A383F84A3D95BF77E93BFF4621DED434B1C9B4FCBB34CB952A5C22CD32CD
            3602B5A31BCBA6064752813B81A2ED7EA03A8A7E714E6951E66B91CCBFC946C5
            49EE807E3F65D059E16D49D8EFAF7C41316EA67F3B2993770B01354D7F69EC29
            DDDE5EC6A6A9083AD23F5B5E1DF83C17E2466F61C623C146909B3BFF18705BF6
            33DBE6CAFB360AF473CACCCFA822F808C1FA5CE8623BFDFE67D739CBA4DFEAA2
            A730AD53282DA76A429C40C7B137051764EF68F1B166FACF2F2999B029BCFCFD
            455A135F008B6905BE8B2D047B24CBF6216D01C14FF713DF501E7C09A86D010D
            7F7A69161BDB541DE9BCEC49E5E1185A6E271514C24374665E0352CFD5232F80
            F30CDF097407F864533D21CD0E3A375F17A8FFCB14E64BADF5EEEF1AC6B09F5D
            CF261B0BBB68A679B206663FBA569E47BFB2EB8320A608127596C0DBCA66643C
            188D17541886890C2C802570BA00B6195E7EF36C3ADC5354C7E1047ED77E2FDC
            72EC06D56134C202D859B000669205BAA1BA6BF984A57C4D09839B16DCD4CDDA
            AB5F891A18AA63611C08829FFE2B593669E922D9AFF419E86D2F503C81425CA0
            3AFC83B00B11C6AE5F931D37F3B8C51BA70F2AEBAB2150FB481CA73A962604A2
            15B865FDF3794B54479288C80A6021C47BB4DEA5CD0D996918465ABDD9F51104
            BC463E02F1B0B728E3A648A5479D00469193EFCB1402E6D0C65382FA26C05681
            30D705E2F1406BB1D19B37AED9A1A2B2B22A52DBB64DED64A534FC164C8DDA49
            38248480FD54174E2C2BCE98DF341CBE3C790595B75AA0352B2934C479B4D116
            E534ADF35F107037C51092344BD7B62C0E6658C8A9F9F71CAF8BC00BB4D8F357
            7F14F092A6E9558100BEAB9B81EDA9A9DBB7C9CA3CFB98A4B4D37AB875711E20
            CE8520E7371520724A8B32664394E6A48E262C809B888400CEF1548D1480F783
            E410C954D77EAAE962821FF43767DF79DB96E6C4883D35C7C9277FD37E6F40EB
            EA127A1F4B881CDA80FD3CA1A9AE14626B9A76D22186715120C2F9B78E3E7A43
            8823C2A08077E8FCF81B2DFC0374D81100B147DB9B52DBAAD5D7F53F9CFBF6CB
            371D3AB81AEB1BB7BBA15D83686895E272773603E620D0C4EF299DE7ECBFCD34
            DD6A1FCA30D7E38CAA366D2D7C56FC627B4D88B711CD0520B457A9FED8BA756B
            FA76D9F9790DE3053ADE1F75AA07F34C34C1AE077E135C64E29E347D4B16E547
            C48E5DA20B60C3A86857676AAF82FDA274683C45E7FCBDD4707A3F10D0776E3F
            5ADFB368BFA1B8ED79BCA74E9DD34A6B93D6DE05AE4EA669DD44E7F648FA538F
            16B61BA06BB34E6D0989F325B20278FA74DF91A6C0A7A82E907ECE68F7CC1560
            CDFA5E77FF67BEE44B4C069D47F5601D46653D8FCEEB11B22FAA53967C9DAABB
            7A1BC6D8AD914A33C330918505B0048920806F9C7BE3719670BD084D6FDD31CD
            90AE5B70EBB11BE0983675AA436101EC30580033C9020BE0C8317CFEED1D457D
            ED0CCAD58B104427D5F1300E02C1A43273D3F2498B5F82161F4CA3E833605616
            0871B7EAB00FC276D0B449D5CF4D59AA3A9078A7CF25B3FB81852B68F108D5B1
            D8A03D5726583DAB57E7EE521D4BA21149016C9333BDEA3C21F025907A78D984
            2660604961E69A48A44795009E66549D6699F83C34F53C93650FD5AFAB5D164E
            983933F3CB50F79DE3A9182940CB86E01F646F444B5C5B3633E3D548E4C1FEE4
            7AAABEA7AC951952D39E0B7A7024C54573D8A2A52EF0EF07A940DF403FDAF320
            7F43FF9E45CD3DB36CC6D8AF22B18FBC3C5F6774C1122A5983E82C4895FA9280
            97D2B4B4AB0DE34FDB63910F9184057013E10A60C3589C5667D5ACA272735E4B
            EBDA5D6185068F438376ABD73B2EA4B9C5162E5CE8FE7C43FD8560691E81D0DB
            022BA3AC68FC8311CBB7D2F91DA1D67A42263DBF4A1FC04EBA80BC8CA6754F59
            C9F8A7C38D85EAC85335A167D0760721E27FCB8A327F1FC6B6A6016AC542345E
            3B36D2BF775013A56533325E8E58DE1554CDA3837C2B489C57FBF81AC1BA828E
            5FC49E2727B2009E3B7745FAE6ED9B6CD17971905FADA5E3FE3E5D38F25B695B
            D7047BAE4F9B567E88A9BBB329CF8651CE1D12E24821FB113901BC62C50AFDED
            F736575244B7818CC341F896EA8DE9A5333343BEA7328C15297BFD9B6ED13461
            B7C55A12E34DBB15E29F7B7798573BA9BC314C32C10258824410C063168E71D7
            D434CCA48BC654D5B1C43BF649D1B7F36EB8E1C8CDAA436101EC30580033C902
            0BE0C892559195BA25B0B3972EB41108E22AFA55503D9498E4856EF03FD553AC
            AB1FCC7C705B73EB9D3660CE19BAB0EC1701D355C77C003653B9CF5ABF7AEA0A
            D5813885DE9794F61196BE8416D5B7370458883879FDEA1CC7C9837827D202D8
            26CF53594AE75BAE7C14E263F0C3A55E6FC627E1A6478500CE35AA8E0313837D
            097A17C539B9956BDBE270878CFD21060C58D3E8388D82E07ADABD92A66FED1F
            69011BAF02B831B67C5F1E7DCC400106DD4F3D36AB38E3238870CF5BBB7759AD
            A9CDA0033141F22B015D1317CD8CA0448A152C809B085700E779E69F4FB9F438
            ED4CE645CD37343370652486FDB57BAFB7692F86A4BAF0F9507AC51E88C639E1
            AD2E857456E5401043A2EF9BA3FCEF02CDAA34D7F6B591AE17F28CCADFD8A30D
            941AA14F3B9097EFBB9CEA8E478580FB10F5FBD3F44DEF46A20EDF9FAC8A8AD4
            565BF43B04609974DE81C82B2BCAF0462A864416C0791EDF244ADC5DC17CC71E
            769CEE87F2535C6EBA668FDD1BCC777FC974A3B2AF658A12FB8584F052123901
            9C5DE0BB5943B8072446EE1002DFD43457961B36AD8B44D99F565039D842712F
            2D1E2E976C71A37766F043B8330C137D58004B900802D8E6FAF25147694DF35B
            B855C712EFB8E80A9B77D257D0312566F7BB078405B0B36001CC240B74633DFB
            91094BB255C79188DC583EBA378255D8588F08BE5E332D438DF94FB6EB9B2EF9
            E7F87F1EF0014FFFFE8BD376EB5B9EA615837D9B3E16D40BA1FD79DDAA290FA9
            0EC469340D072D6CB1150FF37D7E0D01AD77F5DA293CF45B048986009E326576
            6B577ABA2DD50E930E0421D75B9C29FDB0FB60C45A000F1D3A543FF63717DE47
            8BA364BF23EC9EBFBADECB6BDCFE45B8E9DD1FBB0761BD59733F25E806084602
            23CCA6BCCF09372FF6279E05B0619477D8B6EDB3DACACACAA80B8B5C8FCF16BA
            E74AAD2CE0256F61667F70D830D02C809B0857004FF3CCBFD144EB4189A15FEB
            D3F4B443E3B9B778AE67DE1900AE7FD1A25C0FF846449DD0706EAAD87A672CEB
            8350989A5F71ECECE2F19F467B3F399ECAD98062B2D470C002BEFAF43FDD8E59
            B9729819897D27AA00CECEAFFAAD26AC6728F26046B8D94BE9BCB8B428F38D48
            C64279FC047D5C0641CE1BFF139111C07979155DC1A57D81726DFD0F40D7FEE0
            35C67D16C9BC6894C0967852F2B9C45AF06BD7843AFA01C330D18305B0048922
            806D86DF352A872E61117BFB2C9139BA4D1D8C3BFE3BD015CE63DF606950F2C1
            E1F0BD5F6AAA9904810530C3C43D026F5E366169C48622637ECE2D65B7B4AD75
            9B438426AE0684B3807B04332D61C1BDFEC36B8A560E5BF9AB874B7D07CEBA16
            011FA613B7C537C7634C0D228E5DBF2687DF140F913307CDBEDA44B4F34F7DCF
            6E4DDC51FDDCD40AD5612412D110C036399ECAE102607110F3E1D66A3A9C5762
            64AE0F273DB116C0D9D32BCED434FD39DA4C7BA92F08F185658A1B66CD1CF77A
            38FB3D68FAA7CDEB6EB95C7751AA4604F1B5883FDC8E67011C4BA64DBBB73BEA
            F5AF50213B56667D11802EA5A599DB64D68D1758003711AE00A673E6293A672E
            6B693D0A666E5951E664D5F972D074180B8E02D37A81223D4AF63BD47EDC4E39
            9841E9FA8BEAF8E3092A4B5A9DD5E505CAA00B64D617605D505A34FE5F91D877
            A20AE05C4F6515456D0F732C255D297D5F0A01B7466A9A8AFDC9CE2E6BABA5B4
            AEA29DDC14DA16C217C0766FFD7AABF35C4491D5725EE07644B8D65B9CB536D2
            7961935B503511106D8FD052BBB14613E28A92C28C17A21107C330A1C3025882
            4412C05718635AB56DDFB09616CF501D4BBC639F1CA38FD908BFEB50A32C06BF
            2560EE4787C1A6BA647AF6CF029861E21D61E1C047262F8DF8CD16F373462D1E
            9516D8096759886520847C6F2D26F940A8D33531FCA1098B7F26094E1A6AA4A4
            EF48FF38C8B7E9A38F000B2C915FBDA6A60C20B2C3F3251B7D06CEB287E39FAD
            3A0EC25FBD3A3B991AAC51275A02B871AE55F3DF9FD337A5AF2BF6BC8F9FF5EA
            D665E5B0D07B30C55A00E77A7CEFD1472FD9F52DB486CE2ACEFA6BE3E0FA51C2
            9E57AF2EB0A99A0E9AF4BD02222C48776D1D1F2911CB02B809A41BB66905F3BD
            082837A28DC07C2A973355C71D0CB20298B01F78D4A988D11EB2B7AC30F3B610
            D3172301ECB3E7A3EE29919ADBBD4559F74431BBC222CFE3BB9B326C7C30DF31
            0356FFD6A9DBFF15E9A1941381BC82CAD19625160A899E9154CF3C5E56947575
            24F69B8802784A7EE5D12E21ECD12AE57BBEA018525A34EE596A0345E59ADD38
            67BC0E74BD862383FF76F802383FBFE2D880A63D4F85A7E57B3801D7780B331F
            87288D52915D767F5B6D4FDDDF68F3035B5A97AEADF7971567FD291A71300C13
            3A2C80254824014C88E173478DA756F01C5A4CA66EA5217162BBBD30EAE84D90
            AAAB69EFB20076162C809924C1024D1BB8EC8E07F8CDCE183174C550DDF56DAB
            6102C5B5F4631F6ABD25D3458191841AF59F36B44AB962E5D845BB9A7E63687D
            06B69A460B45AA63FB45A488008F89F49A9BAA9F34C29AAB8B0138E592D9ADDD
            16DAF3275FAA3A162A8485D5ABB2EF541D46A2102D016C33D1B8AF53AA5967CF
            EBDB51EE1BF6798B46BABEB538E46154632880733C552305E052F96F8887BD45
            1923C3D9A72CB9F9150385D056D28E3A487EA5B6DED28F2F0FE2F836BB7F16C0
            3FE5457EE5C57402AD02A91E67F8CAA71F75BF3052C3B8C6247DF202581D021E
            F11666DE1862FA622380F37D3B29CE964612D803BA18EA35329E89728E8544D3
            F0BA8DF5AFD47CE876CF5F0D61746971D613AA638F579AA4A5F62FCA2D899703
            E0EB1ADDFA5D6504E6724E34014CE7654AADD96505C57BA5E457025496679614
            6619D18E6D7AF1DC9E667D8A3D2A48902F62872F8073F3AB3C5479154AACFAD7
            FA8E0D37954F9A541BCDBCC82DA81A81162E1502F496D6B574EC39CBC8FA2E9A
            F1300C131C2C80254830010C37CC19D3055C0DAF0B941BEE2899715126DD76FC
            77704C1B252FC4B20076182C8099A440401D823668F984075E561D4AB2317CFE
            F08E589F7ABA06D6240471BAEA78983804F1A96593968EB517CF1834EB340BE0
            3940E8AA3AAC9F8508B026BD16AF7EE5959CDDAA634914CEBEB8B8A75F4B798F
            F2B693D24010AAC1E5BFA2FAD9E91B54E74922104D016C935350798740510EB2
            73D2226CD151F4993933E3EB50D2132B016C18465A9DD9C5DE8FECFCAE1FA669
            FA458671FBE650F6172C63C62C7477EAEE7F9416FF20FB1D3A40CB4A8B328319
            3AFAA0B000FE89152B56E8EBDFDFBC05245E841002DEF4EFADBD78CE9CA9EA86
            070B1216C0FB76117E0F60FB1C68B61E6E1C2AD9D2AE2C9B991197F747B976EF
            5F842CA9396B1BD323E61C73986BDAD8B163FDAA638F67723C95CF50960E9658
            75B3D0E1FC5223F37FE1EE33D10470AEE7EE3E747A3D458B3D64D66FBC8FD0AD
            6B8C08C874A9F8F27D5329334B015A169F3F119E006E1C823AB5B52D505BAABF
            ED47C64366456118EC5F6218556DEA4DFC0865464310904BF57A59B463621846
            1E16C012249A00B6197ED7A8A174EB6DCFE311E2A4F6C9C361ADEAE18E13BF55
            3217300B6067C1029849126A2C4B5CF297C98B5F551D48B262F708767FDBFA4A
            6AC4DD4257A6E321DE1FEE31B1A4561338E9E1094B9FE83BB0AC18414C571DD0
            2FD8464D9B6BDF5E95FDA2EA40128D3306CEB9C602CB9E0F58E55CCF2834EDB2
            75CF4D49DAFBC648126D013CD5A8EAA105F06921A077105F5BBB4F0A36049B9E
            5809E09C82CA2102C55F416A6EECC69ECDF965459925A1EC2B1C723CBE1D42BE
            1730DD186A9DBCDE713BC2DD2F0BE05FE44781EF5F54D2CE6B794DFC8AAEA997
            5259F94075CCD2696301DCB48BF005B00512CF4EA92E1E535A98716F54F32B04
            261B0BBBB8CD06BA9608893AB1B1E2FD3C5D17A71846C61ED5B1C73BB9059506
            B57C64463ED98B0286971566FE3DEC7D269800CE29A81A0B1656C9F42C25FCF6
            BCBFA585990FC52ABE3CA3E22434B56721A85EC0E109602A571E2A5732BD7FDF
            F016659E15ABBCA0764B3995AB092DAD47C7685DAAB6F57CAA73D5F4A46218E6
            57B00096201105F0988563DCBBF7363C4705A0BFEA589CC01F8FD802E77489C9
            0B663F8305B0B36001CC2409DB2D3407FF65D243EB540792ECDC52764BDBBD29
            561F0DF13ABAD3BA04D48A1F267EF8E0F3574FB9B26147E033907C9B3E360804
            618DAB5E9513B7F3E3399973FF50D6B66EAFB01F2C5EA43894E7AA5767CBF486
            615A20DA02D8666ABEEF720DE009D95E618DFB03B8A3B428B3128214B4B112C0
            D9F995D335A11535CE2EDA12087E0868DD2321568325D75395491F15527136E6
            8B98E42DCC288FC07E5900EF478EA7F2462AFE2DCA0444A807CDBAB6AC70FCD3
            AA63968505F0BE5D842F80A5F2914EE462AA1B3D51CDAF10C82BF055D8BD7FA5
            56B6CBB9D0CEF5168DAB561DB713C8B973DE11C2727DD9D27AF69B469A800954
            3E2AC2DD67A209E0DC82AA572883CE915A59C047699A3823D62F27E47A2A17D0
            CE8398AB3C74019C6554B46B6DE9CF529EB42876A920FC2E962F25E5E5557445
            9766B7359B9DF79ACADEE7A0C3EF23D1E39D6198C8C00258824414C036C3E78E
            1C488D3B7BA2F8D6AA6389770E4D6F8031C76D8076EED8DEFFB20076162C8099
            A44088B7AD7A71F95F721EE0795DE2881115230E43D3554407E80260119CF4EC
            DED4E1F3EFD61D2A37FC698CA09B8E35EB56670F541D4722D3E7FCF24320D56F
            0FCF1BC430759146604A8DDEFAB5D7A23B175932100B016C939B5F3997363231
            88AF7C66A176E9ACE271FF0D663F31EB019CEFDB2B844CEFDFC61DDC59569429
            D3CB26E24C31E69FE232ADE769B1B35CACF8B7747DDB75E10A5916C007CA1339
            A102421BE62D1CB75275BC41A48B0530842F80F33CBE6D72532CE0F756FDDEC3
            66CD8A9F292EEC615BEB02D66B54C74B3D9FA0EBC9BDA9DA49E30CE3A2843FEF
            23451042B6B0B428D38030E79A4F2401DC342542C31E8A56EA81A770C359A505
            996FC43ACEFCA2CAA3FDF5E253F997E54217C039D37D17D07E1EA73D353B3501
            85F2426951C6C5B1CE0B2A7F1FD1C7892DAC66CF897EADD7C8782ED6F1310C73
            6058004B90A8027844C5887668B9FF46CD8F01AA638977ECB980871EB105CEE8
            1CDBB63C0B6067C10298490A04AC69939EF287456317ED551D0AF373ECA1A15D
            DFA59FAC59E22A689A8FEA480CA25717932058C2E56F48EFB6617D0FA8DD1137
            EF027C8ABAF9FBF5CFE67DA23A9044A7CF25B3F3C0C2980F67FB0BFE51BD3AFB
            32D579E1746225801BF713D09E058141B45FC53DDEA28CDB83D94F2C0470539E
            89AF5BDC4713B5353BAD8EAA1E8E676555A4B6EAA0FF45005E25F70D51AD990D
            5794944C0C6B8E6D16C007CA1339A16209BC655661D662D5F106912E16C01081
            1EC005BE57A83692EBA108F83436A48C282B1BBB2B5A591654ECF91576A70F7B
            CEF1F612AB370814234A8B331E551DB793A072B81364F257402995757B6A1616
            C03FA425BFF24E6AC41832EB52A2FFBB6393BBD7A2456AE6A596149FFB085D00
            E715F86E4684FB68D1D5427E2879812D37BF6A1955AA37B4B41E228E2F2BCEAA
            8C757C0CC31C1816C01224AA00B6193E6FF460AA999F511D8713E891DE00D9BF
            FD3AA6FB6401EC2C580033C90035E61F5E3E69E94DAAE3600E0E1D233162C1B8
            0EB8B7E65A4D17931084CC431F2641B0FCEEF696E56ABD67631BD8FC6117402B
            0EDE0110626EF5AA29531A878166A24ABF01F3BA0744FDDB94D787A88B023F73
            61E09C37D64CDFA43A3F9C4CAC04B0BD891C4FD554015816C477EC9AE59CD222
            F99E38B110C039F9958B283FFE2CB3AEDDA3B6AC28EBDA10F32C22E4782ACB04
            886CC9D54D13F0C2D94559AF84B34F16C007CA1316C0CA708000CEF3F826D08E
            24875FA7760EDD2BA5B95A8F318CD1CAE7BFA4BA7D24D5D54BE4869A17BB02B5
            6D7BCE9933B24675DC4E22D753F99D4C9B0B1116DA2F4ED1358A05F03EF2F22B
            DF4021CE945AB9A96D50A02CD602DF7C3A86922FBE852E80730B7C0F53036544
            B32B2150DD2E86798B3362FE2C3FB7A0CA4385B945F14C85745E59516630A3CB
            300C134558004B90C802D8E686F2514BA820DCAC3A0E2730A0FB4EB8ACE7B698
            ED8F05B0B36001CC240374CB3AFB91494B641F56328A19EA1DDADE9DD2EA3A5A
            BC82FEFD068468A53A26267AD0F547B702299DD0D2DCB40C1BDEEE0EB5DBA546
            428D6654EF57AFCE394575DE2411A2CF8059069DEB1EE9B945234F4008BC65DD
            AA9C16E7D5640E4E0C057023B91EDFEBF4D12F88AF7CAD99FE7EB23D52632180
            290D5FD0C791726B8B2C6F51862F9C3C0B97207B2CDBA7F490701FF826830036
            8C1529F5291BDB43434A5734CDD680566B4AB30BB4C617E27E9DD72856C86C17
            8535A6AC70FCBDAAD3274B1002D89E4F53C9B0FD74957AB4AC30735C88E98B89
            00CE317C170813ECA9D33A06F1B5B5D4289B51B30B5F5329E0723CBED5D41090
            1AF14F13A2A8A4304399608B17A89CB8EA533A756CAA3F305580BF1DB5A90552
            FD21007FFD600EC542902B1B8B4A0B336E6301DC444ECEC2F6C2DDF02D356224
            A624C406B060A47766D6FFA98A37AFA0EA5644BC4F6EED3004B0A7EA7F94DEE3
            5B58ED0BD4DC1796CD18FB55ACF3213BBFF256AA2B64F2E1496F51E61F621D1F
            C330078605B004892E8047CC1DD58B5A10ABA93474531D4BBCD3DE6DC2EDC77F
            0BDDD26233EA080B6067C10298490A501BB46CD203AB5587C104C748DFC8CE81
            7A384568DA75D824839904C432F5345B00FFF0B37FAF1BBE7AF5309521F92DD3
            3AE3ED177213B61D1D8F9C32A4EC30B75FD8C36DA72A0B42888AEA5553EF509D
            174E26D60278FAF4AAC32D0DDFA36B440799F511C1A49DE7961565CC91593F46
            02D896D13D5A5E53D481B046D27E94CFE71A542F4DC419DEE22C23BCFD259E00
            9E3E7D414F53B7FAD355F04481E24C2A38EDA8F4B406D1382C6B1A2DA7D1B24E
            65B6B5FC1C8EBF06058E2F2B74CE9096D2650B61B6E6D21E5611A3890D3BCB66
            4C084962C44A004F9C38373DAD4DCA932829527FDC2FC07614620DA059EA2D1A
            FF76E4734F2A8F36D2477799752DDD3A7C9631FE1B1571AA64B2B1B08BCBF29F
            2B2C3C86AE69E7827D0D4168BBAFFE70D3716C4575875D73D8A2D215C6AE5800
            EFC7B482CAC116C21392F3FF7E2174185C6A64FE4F55BCD905BE411A82E49CB6
            61CC019CEF6BA0EB94BB85D53E4CD35BF75131CA406E41E550BA18DA2F78B674
            8F51ED2DCAEC1BEBF8188639302C80254874013CCA1895D6D01E16D88BAA6389
            77E8420C971FBA0D2EEABE3326FB6301EC2C580033890E02EE593E71A9CC4343
            268EB9B17C746F3A96E311E0743AAA9DA8DE95EB79C4C43D66437A0FC49FCB95
            9D5F74806D9F04D3692572082116B6F1D764AE5D1BFF0221D1E833B06C111D01
            A9A170A38200AB7A55B61EFE869297580B605B6FE5E65765D3B19B493F481E3B
            B12B4D771D671863B7B6B466B405709E67FE8508E6D3B40189DE44F045BDA59F
            571E769E854FAEA7F2258AF97CA9958578C35B98715678FB73B600A678D2EAA0
            7D0FF4BB8F000D2FA34CB98C4ACA49E1885D591255005B0013671565CE531D6F
            08E98B89006EDC9751D91F4C41F50B8432924EBD05B854D7F16EAB36F5DB58CD
            0F6C8BEBD436297B2557DFE82DCA543875446CA0324019D2A99B66EA8708C0C1
            96C0CB040A5B52852376656101BC1F768F5ACBC2855477B7DCDE40FC3704F40B
            BCDE713B54C5BBAF0EB005704B72164215C0B90595D7D28546660EEE0F5C685D
            A9221F02420CA2665C391D94B496D6A53A250EE6216218C68605B004892E806D
            6EBAFBA6DF9996FEBEEA389C40E7543F4CFACD3790AE877CFF200D0B6067C102
            98497410E199E593960C511D07133E8661689FB4FDAA1768D6000B6138B50813
            FEA14FA283A69E6E06527E657A1BF6A4C08677BA43A02E16CFB67E461D6AE2B2
            F5CF4D7D5E75DE2423FDFB1BAEDDAED63BA864289BFF1101CF5EBF3AE775D579
            E154622F8001A6180BBAB94C6B3DEDB367105F7B254DDF7A414B7225DA023827
            DF77BB105001720FF23FDCBEC97DDAA245636333AC533334896B6BADECFADEA2
            0C2D9CF9D49D2A80EDB2A99B0D3702E8670B80BED4263D3216D2777F5800C717
            B114C08DFBCBF7E551899B015202E880D450297A0D50FB870BACC78B8BB33E8F
            66FEE414545C26507B4A72F5FBBC4599EA5E1A8B328651D1AECED287808557D0
            31B4EB8F63247A59461A16C0FBA723DF9743092995A9C729C7D67DF2DF6E67AD
            5C39CC54156F9EC77736C5FB2C2D4A5C3F4313C0799EAA326A3BCB4CB5457589
            F85E4D4E348A5F7BA498168F1B0B6086891F58004B900C02D86678F928BBD1CF
            43B549707697EF61E8115BA2BE1F16C0CE82053093C8D0CD48002DED98BF4C5E
            FCB5EA5898C832D4189A92D2B6F5CDA8412E34CE6DC53D829D88E94FED4CE7E8
            AF87E342808DEF76879AADB19DFE5980F8DFBAD5534F549D2FC94C9F41657701
            8A490A43D85BBD3A5BA6372673005408609B89D3E7F64CD5DC5F05732DB0106F
            99559CB5B8B975A22D80ED87C954F19482DC338E0FD2F4ADA7842B8422415E5E
            455774691B5BCC977DA4E9EED6863156B657DFAFF3C9410218E9A66AC68C19A9
            B556E71281E216FA557B55B134C6C30238AE88B500B6E72CD552FC0FD34E2F8F
            40F8F55451FD3D557767006CD8198DF38CEAC487A9361C21B53242B6B7387376
            A463508CA07C75D75B5DAE43845920353D40546101BC7F3A0A7C2554EEF264D6
            A504979415654E57196F2C04708EA7F219BA7F1AAC329D9184DA107A3CB4B318
            8661012C45B208607B7E40BF5FFC8B2E38BF551D4BBCE3D210269CF80D1C9ADE
            10D5FDB00076162C8099844688B721256DC0B2710B940DBDC44497310BC7B86B
            6AFDD7A18597500BD19E03ABC5A19D98F880AE3B6ECB9FDA893E0F288AFCB56E
            F8EA9598CE05ECD734FDD8B79E9BCC2F8C28A4EF80397F4461D9F374A9399705
            34987E77F777D64E8CCDDC2909862A016C93935FE113421F672B2FA92F08F1BA
            F0E3E5A5A599DB0EB64A6E7E657F04B1BAC5E11E43ED01ECA9CC15A09548C6FC
            86B72833ACA19423853DFFA4DBF47F0792BD0A934500E7E7571CEB17DA088198
            49E5ABAB8A187E090BE0F822D602D8C6AE977553AB44C0AB40F2A58D16A81720
            9E04B41E497569AB0D23634F04F3E765FA38572A8F048C2B2DCC5C10A97DAB26
            37777E477499370AA1DD4C676E1FD5F1EC8305F03EC62C5CE8EEF8AD7F21E5C4
            68C9AF8CA56BF6229531C7A4077081EF2D4448987973A99E3CA5AC288B471A65
            98388005B004C922800931A2FCE65CBA312F86C83466139AF3BBED822B7B6E05
            2D8A835AB00076162C80998445D8ED77285C3661C98CC66526A1193A77627A9A
            D87A9489DA541089F316722283A62BDD0CB89B9DE877C7E71D60FBA7B1990B98
            AA8979EB56E74C549D2FC94E9F2B8C5650DBEA2D5A3C495108F6B56362F59AEC
            BB55E78513512980738DF9C78069D9F7FF27487EC5B284396A56E11D0F1D6C85
            7D431DDB3D809B1FA239E41EC095D329338A65D6A538A697158D2F89547E8543
            5E9EAF33BA808EB3DCDCA2F57BD23A9797FF697BA8FB738200CE995E7185A6E9
            0BA802B17BECC5CD5CE22C80E30B1502D826BBECFEB6FA9EBD8B10C47520F94C
            B545106A694BEFD0C626971665BE16894DE6787C1FD2F6A43A770801234B0B33
            1F925937DE9966CC3FC5B2AC87ECB9C1213673FBCAC202781F86B138ADD6DCB3
            5C80B84A667D4D888B4B0A335E5019736C7A00FB36D171EBA6329D9164FB61EE
            944563D54FB5C1300C0B6029924800C3F0BB471D8F16ACA58271A8EA58E29D36
            2E136E3FFE3B38248ABD8059003B0B16C04C02B30D34387BD91D4B3E561D0813
            5BEC760198702B009E07421CAD3A1EE6C098FED4AE6869CDF61EF3EF75C1376F
            F6042B10F577FC6A84A60D5DF7DC94A4BD778823449F81B39EA1CF4B14C630A7
            7A75F654D519E144540A609BDC7C9FFD125099742F601B5D3FDA6BDCFEC581FE
            146D019CE3F1E553A045522B234EF21667954732BF42659F00FE9216A5864B17
            01E8D25C4FEB968867013C6DDABCEE96CB9D036865514A232D6E6C19BABF08D9
            F6E34B8DD8F8A2438B174716C0F1852A016C630BAC3A6B6F3ED5257FA21FBB47
            3665389FEAD2BBBCC6B8CFC2CB9FCAFF50EA7F239547168C2C9DE96C013C65F6
            83AD5DDFEFBA8916E7508A223CFD0436FC62CED5EFED514E9AFE04C7819C6866
            01BC0F16C007868EAD3DCF601795E98C243C0730C3C40F2C80254826014C8D62
            ED7FEDBE1C47AD64C7DCD8A8A46FA7DD30FCA8CD51DB3E0B6067C10298494810
            1AE866E7CAE593963CA33A14461108E2FA79A38E74019E6B81B01FACF4521D12
            F31374CDD1CC86B416E735436A536CF9B00BECDED8E2B3E0F010A2DA2FE0C2F7
            9E9B5AA33A6F18803EFD4B7E032ED77F54ED5FA0F8E75EB366D8876B8D880D6B
            992CA816C0745F98526F765E4E97806BE4BF850FA7E9DB6E3E906861017C6058
            00373165CA826EAE74F35E5ABC02C2EF55594D85E75321AC75B4FC8D05DA6630
            AD1A975BFBF1CD6DFADD4E57C06C2C6301A155539EB43844060BE0F842A500FE
            3186FC05178330ED9107CE8EE066ED383F4601396585997F0F3D7FE4043022D4
            23E0F5B38AB31E8F74FEC48A46216FEEA53A1D6F05C9E1F49BC98FFF52A1F980
            F2EE5D4DC0976859DF226A0DBA1B7E6CC750C1DBA307B0B1676340887FD0878C
            686701BC8F6005B085E2A459C519CADAB2362C8083870530C3C40F2C80254826
            01FC033794DFFC21CF052CC7E4DF7C0D3D5B45A71770C01250F5F1A1F0654D32
            4DC3C8029861E205B4E7A54251BC6CD262A9211599E460C4DC9157535D3D0685
            3816241F5833D1C30AA474B44C3D5D66DDDD1BDAC0E60FA23B9522B51F67AF5B
            3D355B75BE30FBA04649DF41B3F7A2BA79802DCBD48E79FBF9295FAACE0AA7A1
            5A00DB4CCDAF385607ED2D3A8EB2E3C77FAF0971D5817AEAB0003E30C10AE034
            3DADB36124D610D086715FA73AB3CEEE7D7869085FB7A5CC66047C550878224D
            DBF634C51CD41CC9791E1F7D1F5ABC38B2008E2FE24100FF184B7ED56421F076
            0AC81E2D275243ADD421C2A4CFFEDB6DD1CA95C3CCE0F327397A001BC6C256B5
            56A0828EF3AD217CBD8EFE6DA2ABCDFBE0127F15F5E6D3A5A5E3B704B381BC7C
            5F350AE82DB12A0BE07D042B8045004E2C2DCDFC9FCA985900074DB5B7283361
            E6336618A7C30258826414C0C3CB6F1E41C5C37E0357EA816232F39B767B61E4
            D19BE8663CF2F71326B5241FFABC3BBCB733999EAFB300669878806E70B65023
            A1D29FD2AA7C65C67CEEB9C5FC8CC6FA4ED3CE4221068140BBCD10F571859903
            8074D1F4A7750314527324D2F509BE7CE97030FDD1995291EA8C3A774757A7D7
            564EAA559D35CC4FF419346B0E9595C9AAF66F06CCA3DF599BF785EA7C701AF1
            2080EDD1A16ACD2E33E8DCCE97FF9678BAB470DC15BF7CC89DEB59703A9506FB
            E169F3A28D0570B3A4E9A2AD616484DC2E8B37019C5B3ABF23ECB5ECE70ED706
            F33D04DCA9A17884DA22FFD4FCD6EBE1F48A6601CC0238124C9F5E75B8A9E110
            5ABC85F6DAB7A5BA5B921D02ACCA547DFB8C60E34F06016C182B526ACDCD9EE0
            AE51D034E7B2269EB22C730534C0EBB3668DFF1682BCE6FC000BE0E0E121A00F
            8CAC00A6F2B69EF2EE4595F9D11254EF7E535A943957751C0CC334C102588264
            14C0A3CA4775681074CC11CE521D4BBC93AA5970CBB11BE1F8B6917FD6C902D8
            59B0006E16CB1E805475108C04027653195E0A66CACCE553166D551D0E13FF0C
            9D3B343D055A2DA24B567F16C1B1052D3DCD0CB83B020AE921B66AB6B4868DEF
            768B4E3C02FFB27E55CE0DAAF385F939BD2F997DB1B0708DAAFD0BC079EB56E7
            4C549D0F4E231E04F00FE4E6FBEAE840A64A7F41C78BBC46D6DA9F6DC3283F0A
            2CF7D3747F7952B3DF0D5100E716544D0744C9114BF0616F51D64DD1CAAF6098
            6C2CECE236FDDF81E4B0A569BABBB5618C0DAA87EBCFF229CE04704E812F4320
            548064AF4944404D13EB34B3FEEA99332745A4CCB30066011CF1D8F2AB7E0F1A
            7AA8C09E49455B0F6A2EF503808813BC459915C1C8C3A004B08091A585CE13C0
            D9C6FCB334D3B2C5A0E4282776FEE1FF026660D89C9209EF45220616C0C1C302
            F8C0480B608079654599DCAE6618461A16C01224A300B6B9E1AED1370A0D1DD7
            0854C1291D6A60D4311B23BE5D16C0CE82057073E0826513978E531D05C330D1
            C1EE25F671BB2F4E4684A12070080871A8EA989201CB74B7B102AE76C17CC79E
            0BF8CB970F07B321E2BD800396C0B3DF5E95B34E75BE303FE7F441657D354B3C
            4F777E32D2270AE0B6EAD5398932A45DCC8827019CE7F1F54380E769B195CCFA
            02E06BABC1DDABAC6CECAE1F7E176D019CE3A9CAA5FD9648891621FEED2DCC88
            8BF9EC0D6361973AD3BF015A1A1A7B1F697AB754C31816F2FC43F12480738DF9
            C7A069BE25407492FA02C22E21A070CF4EAB2A92528305300BE06860182FB8EA
            CCFF9C0A8897521017D3AFCEA77FA136BEBEA2C45E5A5694F94110F9F30E7D9C
            2AB3AED3CA7663FA72E777146EEB2DCA976365BF2300BD101073C21931E097B0
            000E9EA087801630AAB43073A9CA985900330CE36458004B90AC0278CCC231EE
            3DB50D762FE001AA638977746AC38D3B7E031CDD26B2BD8059003B0B16C0CDC1
            0298619281FE467FD761ED4FE88A507F0BB51F46A11052B280090DD39FD2C9EE
            051CECF7B67FDA11767CDE21A2B1D04DC55B3AFAAF7863CDF44DAAF385F939FD
            8618ED020DAD1EA38374B1A210B07A75368F0E1024F12480EDDDE41654DE0928
            EE945A1BC10481E3BD4559F37FF855F4057065AE004D4E00037EF8E947DD4F09
            655ECD48939757D1155DDA66D9F5BD459961F5248C27019C57E07B0B1124E708
            14BB5C28FA9D724A974F860D8BEC716301CC02389A20A2C8CD5DD4CEE5327F6B
            6AE60C8A682084364FF08769FAC9A71AC64552E7648EC7B79A2A0BB9677942CC
            F01666182AF22754723D955514B8F4F305446B5CBA6BFBFD540E427E81E640B0
            000E9EA14357E8C7FD76F3DD54FF67C8AC4F092E292BCA9CAE32E69808E082AA
            D7A8A0B6380A27C5B18AF2E31295F9C1308CB360012C41B20A609B1BCB47F7B6
            00D782D4452EB9E996E6873B4EFC06D2233817300B6067C102B8395800334CB2
            31BC7CD46974EE4F0414A7538BB3B3EA78120E7BFEDF86F44342F9EA9E8DAD61
            F3875D1B7B03472E1C7860FDEAEC5B55670B732050F41E387BA508728ECD8846
            0078D2FAD539FF519D134E22CE0430E419BE13D0047BCEB91E525F407C77FBE6
            9433162D1AEBB77FB47B6B418AF5041586F39AFD5E880238CFE39B405FB80BE4
            C4CAFFACFAF4BEB366DDBA3B9A7926434E81EF1E813056665D14E29F65851997
            86B3BF7811C0B9F995FDE960FF83DA07E912ABD750B9184DE5626534626101CC
            023896E4782A870B10E3A944F5A1E8A47AFEFF941831DC5B98F11790A81F733C
            BE72BAEE4F90DB2EFCDD5B9829D51B331E989A5F71AC2E347B6A8B2325563729
            DF4AD2B42D85D1A8CF580087988E82AA426A277864D6458475E9AEADFD549EC3
            D905775FA4A16E0B6089E91A42ED015CB58A523B5062D50F8E3ECC7DFAD8B14D
            ED2B8661989660012C41320B607B5E3F17B47A841A2957AB8E25DEB17B015F7F
            E416E8D32972CF1158003B0B16C0CDC102986192117B68E8FFB5FFE2147BA00C
            BAA45DA63A9E440251739B0DA92D3EB03E10A65F836FDFEC09FEDAE09E3BB6C0
            F8EAD5D98E79309E6CF41954761FA05029E81750F9E0764010C49B006E8C29BF
            F22A01E26F42C83D471028C6941667DCFBC3CF399EAAC704E0552D7C29B43980
            8DAA4BE8E6E931901AA65A6CA538FE505A94F95AB4F3ACC5B83D3E7BD404D989
            D9C77A8B321785B73FF502D8EE119977E7FC223AC2D32487EC7E324DEBFAC770
            86BE6E0E16C02C8063CD146341375720F0672ADB06480EFFDE04BE98A6A75C2A
            330F78CEF479E709CDF52FC90DEF3EFA307767A708A5DC82AA1B00AD0765043A
            55305FA6EA69BD0DE34FDBA3110B0BE010D3915F35994ECE5920F7D2D6FB75BA
            FF8279C6C49DAAE2CD2EF00DD2109E935B3B34019C53E07B804AC7E896D6A363
            FBA930FDE797944CDCA02A3F188671162C80254866016C73FDDDA3CFD1105FA2
            1BB4884F1697681CD7B616C61CBB015C5A586DBA1F6101EC2C580037070B6086
            4976AE9F37BA9F8EE8418493A9059AA23A1EA76336A475A5EB8DC45BE807E6DB
            B70E85BA5DA9118A0603D5AB73428EC5099C34D44839194E32E361C8D850E83B
            70F69508F8B8C210FE5EBD3ADB31BD8BE2817814C036391EDF73026090ECFA22
            60752B2D1DBFA5E9BBD113C08651D5A6CEC4CF4042E4D9D0B5685C5971E68258
            E4D9C1635E9C5667EEA9A1444B0D07AB09B8A4A430735538FB8C07019C9D5DD6
            564B6DFD162D9ED8E2CAF670E201ADABD73B6E47A4E3F80116C02C805541F5E9
            F5549F2EA4C576525F10F00DA2757959D178A9E7939447F6F92BF51CCFB2AC7E
            B3668E7F53759EC840F9F608E5DB709975351306969464AE89562C2C8043A3A9
            ECE34392BDE0BF16BAF5FB5263FC87AAE2CDF554DE46B14AB6194215C0958305
            8A672456DD48FBB894F6F1B6AAFC6018C659B0009620D905B03D9FDFA1ED8F7A
            9816AF531D4BBC63F702FEE3115BA15FE7EF23B23D16C0CE82057073B0006618
            066064C9C8CE569A6B8005E6AD42889351B22DCAFC8230867FFE81FAEF53E19B
            370F8D54406F57AFCE9179F8E508FA5C32E737C2B24EA6E2790835C58EB77F27
            2CEC44E5B50E34B1172CA805B0BE03A1AF6F1BE8BC6EEDDAD175AA636E314D03
            BDED0134653D27A889FCE4BA35D97F509D0F4E225E05709E5171129ADA3F406E
            E84DBBBA9A555694916B2FE6782AFF2A405CD3EC174214C036B91EDF17B27151
            C6CDF41666E4C722CF0E1A6F41D544409C2BB736D6D0397C91B728E3ADB0F619
            0702D81E0E1C5DD6062140E62DA4C7BC4599D748AC17322C805900AB62CC9885
            EE4EDDEBC7D2B92D5FAE84B891EAAE4724F388AE2170B8D47611D7A6B9B60D88
            C77C3A40BABEA18F9E12AB7ED0BB57B753233D6FF8FEB0000E351D15A753B97F
            9516D324566FD000479714652D53152F5D271E41C9970E4215C086B1B8439DB9
            678B8414B77BEADF46D7C60754E507C330CE8205B004C92E806D46958FEAD000
            603F549018522BB949D52D307A7D09A95AF8ED6616C0CE82057073B0006618E6
            27C62C1CE3AEA969984C97B92CD5B1389170867FFE711B9680CF9E3F2A22F168
            680E796B4D9ECC1BEB714DEF41B3AF06CB9A208476BED4B0A4B6D66C72544FD0
            B5BF60FD9AA9EFA94EC3C1183A74A8FED98E33A23297A70C428857D3520297BF
            FC745ED47AF1251AF12A806D720A2AEF13D2438AE306D003E7788D895FE4787C
            F65CD47F6C76F5700470BEEF611030422A2A80EDE9FAD6AE2A654730F1D27A2F
            0B3F5C555A9AB92DAC7DC681009E62DCFD3B97A9BF2FB32E0AEB0F6585E39F8C
            740CFBC3029805B06A282D1FD0C74952E901985C5A9429F5E2484E7EE55FE91A
            21FB02C56ECD0C1C5F52326193EAFC6809D963BFEF7A5210CD585800870EB509
            3609D9291014BFB4955B50F539DD801D25B7766802785F9E7C4C79729C4486CC
            F7166564A8CA0F86619C050B60095800377143F9E832013805E4E668486A2EEF
            B90D2EEABE33EC6E4D2C809D050BE0E66001CC30CCAF197EF7CD7DC0D4E8E615
            2FA48BA6CC1BE00C6105DCED2CD3D5E243DD96D8F47E37D8B329CC360682DF34
            DDDDDE59AB6E5EAE70B07BFBA2655E2B40FC19647B0E1E904619FC2A8278D485
            E90FBDB9263C491305449F81B3543EFCFE964AEE90EAD5B952D287896F016C93
            EBA95C4F7B3F5D6A6521A6780B33EECACDAF5C41CB439B5F370C016C941F05A6
            FB5390BC5F15A0F52F2D1AF7622CF3ED07B2F3E79FA809CB9E4FF00899F52933
            1E4DD7B75E17AEC49215C0B4BF17766C720F5EB428F27382E67A7C77D3C77899
            7535212E2E29CC7821D231FC229E3DF4D1E2C59005707C91480238E7CE794708
            CBF5092DB6389D06222C2E2BCEBC456ABB9ECAE102C58354D9C90C036D51867A
            A8AE2E0D57524693ECFCCA3F50BDF077B9B54586B728637E34E3C92DF07D4C15
            A684B06301FC4BF23C557F4540B91714046C4CD35A1F6D18B11F7527CFE3EB47
            99FEBAFC374217C0B9F9BE2594D69B5B5C11714B7D8DFFC8F2F249B5B1CE0F86
            619C070B60095800373162EEA85E96803542725EA564E6B056F5F0A76337403B
            777823CDB00076162C809B830530C33007C6AE3B032EE8A7813E9B6EAE7BA88E
            C70998FE940E68E9618FCA52B3B9356C7C4FEEC5FB83839FD406DA9CFEE1DA8C
            3DAAF32518EC397D5BED683D0DC11A436D0F3B13A4E6C893C04F6DE56F04EA79
            6FAD99FC7FAAD3B93F7D06CE7E868ED760357B17A625ACC16FAFCA89DA3C7C89
            46FC0BE0AA3328B6D740EADC117569FA96F6F56697A554CF5FDFFCAAA10BE0A6
            B87CF6C350B9178A1A1F286F3D3C1ABD5C5B223BBF72B426B4FBE5461BB06315
            D77B0B33C2AE536405B000F162AADEEAF7D178D84E317C4C31C80813400B2E2C
            9B99F952A463F88169D3E6753735973D1C758BC78105707C914802D80E33CFE3
            FB1225866BA675D69415650E94D9689EA7F25C844659DA59328E776B74EB824A
            637C64E6348B027977FA6650BD20D5AB5703EDA692A2710F47331E2A87F64B32
            32F3D8B200FE0554E6CFA6C4BC2ABB3E0A715B5961C6C258C7999B5FF917BA06
            07312562583D80A5E746766ADDCD304CEC61012C010BE09F18316F541522B0C4
            91E0AAC3B6C105DDC2EB0CC302D859B0006E0E16C00CC334CF48DFC8CEFE7AAD
            5408389F5AA8ED54C713B720083390DA092D4D66EEC466A9DB9106DFBDDDA371
            38E8D0C341DFB11DD74D58B97265D4E6578B34A70EF69EEC32B599B47865F4F6
            827574A816A03B50FAF63FA76D519D669BBE03CABC28448E9ABD0B14680D5EB7
            266795EA7C700AF12E8057AC58A157FF7BCB5D02F10E99F511E001D1F8401347
            36BB62980238C7E39B41359AEC909F169DA7A3CB8A321E8C65DE656797B5D552
            5BDBC3ACA64BE51D42FDDE5D56FB483CC8971E021AE1A53457EBC1D111C0BEAF
            E9E330A9B4475900532C4FD3C7A552B1B0008E2B124C00DB75D772D1D20B3210
            9C00CECAAA486DDD41B34739E8271B8700EB8E122AE7F1DA0B38A87316F0A6B2
            A2ACA809E05C4FE538CAB12AC9D559001F303D95DF51B487C8A5497C8D7E71AA
            D73B2E66D389E419F79C8466C07E79318897944317C0D30C5F6FCBC4A724F3A4
            BEC1AA3F7EEECCC95FC72A3F188671262C80256001FC13232A46B443D3554D45
            47EA8DDD64A695CB82DC93BE8236AED09F87B20076162C809B830530C3302DD3
            DF305C87B6FBAC3F5D0B4A41884355C7139758C21508A476B55F830F77536683
            0E1BDEE90EF5DF87EC92ED8750D3AA57677B55678B2CA70F2A1BA0A178002487
            5D0D173A486B4CD4C6BFBD66CA87AAD37EE680D9679B02A57B5A4421330657AF
            CA7E4E753E38857817C036FB865CFE18647A3F09A073403C0688D39B5F2F3C01
            3CADC037C042788C1665E6B9B577F32F6C48B9A2AC6CECAE58E55B5EBE6F3EDD
            E6DD2EFD051453BCC519774562DF4108E0F72C170E9965647D17E9F4C78B00CE
            2BA9E88AB5DA17B42835A2C6FFB37727F05194E71FC09FF79D3D12C27D83A278
            B41ED413EF7AA0A8ADDA5A6B1B1410091EA0E4A820241B48E248802480099204
            1B5A8FDAD62AD85AB5FAB71250DB5A2FC003EF0B54548470936B77669EFF3301
            2C28C9CE9EEFEEE6F97EC42C6166F6997767E7FACDBCC3017062E100D8613B15
            D514D2FA776E08A5B40A903F51D53D7ED0F9092100A63DE5ACB259397F88451D
            7BC3F517E9E57087A370007CF0F971FC480062D28A783A2D9B0BE3758182AFA4
            662EBD677EB07DB103851F00EBFA524F8BB9C9CE5F2E0A362CA27D593094A56B
            0D77A8E8C98431963C3800768003E0038DADCCBA0525D4D0A6265A5DE5A5AC73
            FBEF805F1EDA10F6B38039004E2E1C0077840360C69873994B976AAE2F9FBE57
            025C88CEBA55EB34D0926E33E08DCEE338A871BF7E7300343584DD9BB4BDABF2
            9B35CBF39DDEFDA08EAECB53FE9D71A65411800A78D5235D97BDF4CFA95B5536
            C15923CA86065CDA3A55EF2F04FE62D5F2822754B64132498600D8165A57D060
            7745DAF19DF71106C053A654A67BBB799EA5B1CF753C921063CA67653F1CEE7B
            86A2B070D105E8927F05E75DB2361ACDDA910B16DCBA291AEFEF2BAAD94AEBA4
            5EC186A386687069D61573F4BC57A3DD06A104C080E2B2F2D9D9CF44BB067BC2
            85C5B5B3693E67381F8303E044926A01B0AFA4F6614074D2CDEC33E5A5399785
            34EDE21A7BFD11CABEE32BD20CFC72EEDC295FAB6E97EFCD4B49ED13D44E3F77
            34F0DEE7CFC7A68E9A5FD28AD2BEBBD8E94E3407C007515854F3333A96B01F6F
            E0B01DC547D2745D3077EEA4982F9BB4BDEE67B9C4870244CFD0C60C3F006E7B
            DF92EA1B2D4BFCCEC9A309C83653838BE7EB396B62DD1E8CB1E4C501B0031C00
            1F686CC5D843D1E3B6AFBA3B51752D89AE87DB809B8FFE1A06A7FBC31A9F03E0
            E4C20170473800668C8526B37C620F779AF10B40AB88FEDA9936841D424BF398
            014FDF684D6FF3BB7D61E7570E6F94FBBE1D02CD5357AD28FC5475BB0473CAC8
            F9174B894B0183071F31B206C095B5BA7EEA5A556D30FCE2F2C300E467AADE9F
            0E3C7FBBAA3EDFF95D8F9D5CB204C0365F71ED1FA9CEEB820E88D84C0577DCED
            718401705B3D25D59980F211C7CFD705D84DB5FDA27C76EECA58B75561714D3D
            CDD84827C3EEBDBBA76AF809FDF3478D1A15956EF67DC535F672E2A8870D0BC5
            AFE6CDCEFE5BB4DB806AB02FC439DB611BE454CCCE89FA4546F6897D746B2BE9
            0D1C1FB771009C58522C0016BEE26ABBA7BD53820D48AB85F28AD2DCC250265E
            5054932D04D8775A3ABF8903F1913497E7065D9FD4A4BA71F6E72BA929A44670
            7A47F37DE5A5393746BB065A96648BD9F749FABC2E0B613BC301F0414CD3EFE9
            AF19E63F69F93CD9F958F8ACD1DCE3EA050BAE6F8C555D4545D54718523C4DCB
            DAB1A18F1D59006CDF5DDEA5877C398436590B9ABCAA5C9F9CF0C7638C313538
            00768003E0EF1B5335E156DAE82E565D47321839703B5C31784B58E372009C5C
            3800EE0807C08CB1F05C73D7CD3FD464C0BEC2FE10D5B5240233E0E9899616F6
            2DBBDFD5B8390336BED93FDCD1BF5A5D9F9FF09FCBD1972DF2F608B4D8779C45
            E7CEE93021C01322BD69F4EA2775252753CF1C5171A8E112CA9E1346079E0FAE
            AACF1FAFEAFD934D9205C0F65DC0F6F902A777B57630439107C0F6540A8AAB3F
            12208E0A619C37FD96F879E59CEC987D477C25352FD25C9DE37804845D1AFA8F
            9B33676AD43E5BDF1DD5D560891C67EF6F4D2B9F9D17F5BBE70A8A6B8A687D50
            EA70F08DE5A5398E9E0F19523B14D7D8BD1138BB8B705F7370009C50522B0046
            41EB517BDF20CDC1C037D377E2F7A14CDDA72F3E124C7C86DEE707A19585F5AD
            8D812BABAAA636AB6EA17D66E80B4FB44C97D3F3B3D6E07E4776C9CBBB3CAA21
            A8AFA47626AD9F4B43087F6D1C00B73B4FB593A92D43BAD0875AFEFE6D1BDD93
            962C991488763D6D3D8974F52E717461DBC10878AC7C56CED511B549D1A28B69
            078FF6AB84A39EB0E8F37ED1AFB9AFBA4B9FD410EDF6608C253F0E801DE000F8
            FBECA0CB7469AFD0CB61AA6B4974192E136E3F6E03F47487FE48060E80930B07
            C01DE100983116BEBD21B07DB7C3A5AA6B51CDF0A70D8AC6F37FF7B10C09EB9E
            3F3CDCD13F595D9F7FB4EA36E9C8095794F572B76A4F0987779BC5182242D99A
            15F933239F54E85407C0B48F67AEAE9FCE5DBA3B944C01B0CD5752530E080511
            4F283A013014EAD5C7A229EC3B4D43B9EB7F2504C4A4F2F2EC8FA3D9367B4F26
            FF965600E31C76E9B8A729006E2F2BCDAEB21B255AB5149454FF44A070DAA5F2
            C6C1FDACA17979D10D10A6E895BDBDA66733BD944E86A74DDE9515B3B2FF0151
            E8A27B4A257D16DBDD0534D13B421D9703E0C412AF0098C6B3B75B562C03645F
            71ED3DB484DDE260D0165A0EAFA6E530E4F3B385C53579D4607787389A695FDC
            234D6DE6DCB993DF8AD5FC878A3EFB9DE0F039EFB41E9DEBD51A8AA3F1F94D9C
            58E7EE3BC0186D01DA01BC3BC4D13900EE78BE5EA61F678630CA2EDA01BA2B4D
            BAE647F32EF599B3EF39C4F29BC5B4BF7E138472C7FCFE043C5E3E2BE7AA48EA
            B85DAFEBEB3603CBE8E58810467B426AE28EB97AF61BD16A0FC6586AE000D801
            0E800F6ECCC2F1E7238A676921F2AAAE25D19DD27B378C1BFA4DC8E3D901F043
            EBFBC3EBDB821EB7A5100E80531307C08CB1C8D8EB5843D3EE100247D3B6C2D1
            49E39483B491F4A747F54E28B4047CBA7268B8632F5D5D5FE0E47975AA88E197
            CC2B06147A887769C4120A943F59B562DAF278BF3107C0C925D90260FBC478EF
            0181D721D20B84A31400B7D5D33F702F081817E2A8EFA365DE5831E73751795E
            B8AEDFDFB3D9DCFD307DF32F16229493C9F8609AB66542B443A7CCCCA5DA51C7
            6EB2030147B5D08AF3E1B9B3B2C7441A5A1CD826553D5B4DF717E8209CDC5BC4
            BB9AA95D1A8D65BCA0B866EADEBB8F43EE498303E0C412AF00D857547B29ED41
            5CE2EFD55A523535FA77C2D232398A9649BBA79BA08122AD43DE1086F1D3B973
            6F0BF9E412AD8BD25ACDC67F51A39D1E46995F8225A6A7B9373F12AB203C575F
            D4BD5ACFDBE964D8C2A29AD5F4999CEA70D2BB04E06565A5B92F465AE3CC92EA
            5F99287E07A15D58B40F07C01DCD975E3D4298E249C7DB853D4C9AD1BF4BC39B
            3D77EECDA19F70FD8EBDDD3E3FB8B7A78EF08F35A31000DB5399515273B185F0
            6C88A3AD07614DA3FDA8BF46DA1E8CB1D4C101B0031C001F5C66EDE4AEEED6E6
            BFD01EF5CF54D792E8DC12E1862337C231DD43BB30CDDEB37BEC8BBEF09FCD3D
            54CF421C71009C9A3800668C456E84AEBB06775F378FF6607FE5B44BAC548208
            D2F4A70F8CF6743FFBF76160B4867E91BB0071D5AAFAE98FAB6E97F69C3972CE
            0043789EA7960BE3F95DB143FB772B3403AE0B80BB259EEFEBD5CCC186B0DE51
            38E3B87A457EE7BC78230CC91600B7D53C73D15942CAFF13003DC39E48940260
            9B1D286498D20E72430DA5BFA2C5B500FC9E272B2A26ED08E7BD757DA9A739B0
            E92C21B0963EA4908E0D68C6D70158BFAC28CD8BFA3988CCCC4CEDA8E3466CA4
            0D8AB367C923EC92026EF2680D8F462BF8D1F5E75CCDC6DB4B68D99DE0BC4DF0
            C15D9ACC5EAC67EF0EE73D67CEAC39DC9450422F6F08B76E0E80134BBC02E082
            E29A2A5AA7DD462F37D19F42D0E4F369B0697D34BE0FF63A534AF900BD3CC6D9
            18E24FA79ED02F2BDC67821714D4F5109E807D77E0D0F02A164F015A0BC0D0DE
            2C2F9FBC2DD2F99FAED70E7499780482B80EC11AD3D40F07563BE871A0B0B87A
            1A8D53014E433AC495E09293CAF5F07A77289C5BD3079BF037428A02DA17F784
            39BBF7A5690D3747BADCA46A009CBB6891B7CB26514DDB859B431E19F16D9490
            2FFCDACBE12C973366540D02E9FDB525AC3BA1FD70DF4F8DBA8C364663834E30
            3A01709BC23BAACBD012B74388779C0B843A13F1F7CD3B716D2C96017B5D42DF
            84C3D00A8C94127E9DA65997EB0E2FE0608CC51F07C00E7000DC2E31A632EB1A
            5A8A1E0287CB5267767AEF5D30EAF0CDA08570C11F07C0C98503E08E7000CC18
            8B8ECCA5999AFB8B2E1369CFE33610A233759101686A69A6E1E91DEDE96E5FDF
            13B67C1CFACD0CABEBF3137AFFEFD491F37E2B044C525DC741B4D24EDEDBB40C
            C7FB59C0F649CB50BAD78B2E0E8043928C01705D5D9D7BFD86C003740C3326EC
            89443100B61515D51D65C8C0D334B51F8651CC3302ADBAB2D9B98F8752CF8C19
            8B4FB434733A8D7F31FD35E48B76A41017CD9D35F9F96876FDBC0FD2818AAFA4
            E64F820EE543186D332D674F582230ABE2CEDB3EEF6840BBEB6DABB9F1EB8A0A
            5F87C1B9AFB8368BAA5902219DD416CF6A9A35738E9EBBCAE918D3A6CDCFD0D2
            BA5C471BAB1C6ACEE32182BBBA38004E2C71BB03B8B8663DFDD8EF5919E2036A
            B515A8C93F7FFA4EBF57962D0B3D8CF5F9CA7AA1BBEBCDF43DCCA6BF1EE67844
            4D3BA25CBF757DB86D466D205BADBE6311C1BE8B35BC9EFC101BA90D5EA7FDAB
            7F0A4DFBFB5CFDD6B743197D9A7E4F7F6958E74BC02B693F88BE93E2389A68DB
            1DF9F481FEA8A23427E8856AF6DDA2608ABF416877E2BE2B50147FFC41BFC79D
            7E66B9B98BBC19BDC45554187D4EE22C08BDDBE7FF11F8C227EF0D1819CEF272
            C0BCA768006C9B39B3768829F15F10DE050A2DF439ADA25DCDA5C2A53D55AE4F
            FEB4A381EDEF82DFDFEF444BE2186AD091B43C9F48BF6EF7E262FACEBC81204A
            A5C0E077D6463100D6F5DAAE2D06FE9976F67E1E466F46DF507BACA1821E04FF
            EEFF0BB65D0E26BFE2DE6EAEC696D3A88A4BD1B2CEA6F638467CBB8F639D5A5E
            9AF77A34E69931167D1C003BC00170C7C6DC9DF50A1D359CA1BA8E44E7910833
            867D06DDDDCEF7F738004E2E1C0077840360C65814D111E7E8AAEB6F95421460
            27BA13D832DC1996E98AFA4E41EB4E0F6C78F59090C6A183889655F5F9E9AADB
            A43D275E3A3FC36D6158778AB118E1003824C91800EFE32BAED94E3FC25B5745
            3900B61514578F11D0D66D67C8DDFEEEF5190A5186D27C4AB6B81A1BD30C13B6
            40DB49F5F4F40C8FBFCB4E2DBD5573A3571B0E26DACF413E1FC20B1A5B50C0B5
            15B37262DAB382AFB8FA166AE8DA306A6CA205EE0544EB4DD0E47BF656092D71
            AAFD5C636989D311F164DA38EC949AF899936710FA8A6B3FA18FF9C8500AA06D
            CF6EFA2CEE461158428DBFA3E9CBD696F3CE1B68D87744DA618DEB08437AFC19
            1E6D6753174BBAB368043B600BB6816BA1297B839F5C178BCB4BB3B3A3FF89C4
            0607C07B441200FB7CB547831B3FEA6090AFE80DEE17683E19D0BCEB64BAA739
            B0718761182E6BE3C681C6B061EF8A2D5B7A6B7DFA78355A65B8BAF9AD7453D3
            C6D157268FC61DE2B40E447BCF178A2A4A73E646A5ED662ECAA16F6D254D33FC
            40F37F0DFC36CDCF6A5A9DBC6081F995618AF7D34033F6FD73C06D9D2D0DFC01
            CDC25142CA336966DA3F5722C49DE5B3B27547F35052FB344DEBB210AB6DA57A
            FF2E02A204516E4E4BDB6477E96D3FDFD96FF7DAB063C706CDE3F17B34AD4F9A
            E96A3D4B20CCA17FB72F1CE968DDD0429F8F3B5817FFB4765933FC47FDCF08F7
            EEED6FE73B8503E0B6F9D3E93B67A2FD3CE03E914D09DFA5867A825EBC839AFC
            B6C71D694257DA569D419F97BDEC0C753425845629E44F34848D86B0DE0F3A42
            1403605B4171CD30FA3CED4CC6F13AE32076515DF5F43D7C4E4AF14F03C44E0B
            5C86FD6B5773B780940197DFEB6E5BCE3DADADC2F40A37185A3729ADE369ED33
            02F6741D6F5F447AD0FD06B4E0F68A393995D19A67C658747100EC0007C01DBB
            E6AEEB7FA869DA6ADA2A76AABB70C2F1836ECD70F3D15F83CBE1C5DC1C002717
            0E803BC20130632CCA10C498AA09B7D18BDF44E50456123003DE3E68C9F0EED8
            E880BFD1035FBC145A004CEDFEE9EAFA82A354B7497B865F3CCF473FCA54D7C1
            0E94E8778D2792640E80F38B6AAF960297413821680C0260DBDE10F81E7AD93D
            82C9D8A1C67BB4CDD981081B68E62C041C42FBFE1942B4DD053338C2326F4CD3
            1A1ED475DD88703A1D6ABB2B1AFCFFA68527AACF94DFAB012DF3174E9EA15C50
            B2F83281961D7687B30DB7839B776985F2117D1EDB6861D94987D84350880C40
            3C94FEED387016F87F41D35848BB143A2D72DD3A1A1005FE5FC5ACDCCB63D066
            31C101F01E9104C005C5B58F094027418E3DEDCDB42C7E84880D124413ADC1B6
            21ED9FD2F2D515F7AC777AD1FA6218AD8742EE229FA6F3AA66185786F3ECDF76
            DBAFA47626D558106CB98FB3F7691D7882937520ADD34FA0B67C01C2791E2F42
            803EABF7E9B3798FDAB659A0F806C1A2F537AD3F683D4EBF3F069D3DCAA01185
            75BB4039058274E3CD01B033F69DB92D56BFD1B41EFF2D84F63CE058D949DBFB
            1915B373EC8BA69CB57F940360DB0CBDF664D3C07B85F3675F072B92B60F6877
            976DD13437D1CE4C5FF1BF3BA05D34CF03825DD470E02CC32765A5394747739E
            1963D1C301B0031C0007377661562D6D2038DC7160ECD04D30BCF72E47C37200
            9C5C3800EE0807C08CB1E8B39F097C488FCF740474FC1CC16466FA3D7D11B570
            9F3DD62EA3D9059FBD18DA45E512C443AFD54F0FFE1C2C053233976A9F6E5B6F
            5FF59F3427EA3B0B0E809D4BE60078625D9DBBD797813A8110FABA394601B0AD
            B0A8E66728E01108FF4EE058D90988BF282BCD79813ECFA8CFF7C11494D42E11
            88A13F6B3128AA5F58D7D067B8CCC9D0BE92DA59F4491785D1B56534EC30B58C
            63DDFEE6FE96349FA52FD3808E06E60038B1C43A00B6BB5E6D36ADCF0488A83F
            7A2354B49F7B624569EEDA684EB3AD0B5CA3EFAD96801AD5F3B7DF9C7E6D682D
            272FD0A76F7232B46F66F5AF400A7B9DEE38A88A1ED124C0FC2918F03EB8E5D3
            88705A901176A669C3FAE8FA85115DE093EA01B0ADED5105C5B5936973584973
            12F5E39E102D69DC6EE5ED6B475501B0CDBE13987E3C499FED118ADBE4A0344B
            1C36674EF617AAEB608C7D1F07C00E70001CDCB50B279C2911FE419BEABEAA6B
            4974C7F568827143BF81342DF8F10707C0C98503E08E7000CC188B8D11CFE9AE
            C16FACBB77EFB31653176D5CDAEE008E4500DCAAC1172F1D0A96E1F4663D8164
            F49A15F98FA86E968339E3D2F94798163E4D2F8F555D0B3B1007C0CE2573006C
            2BD06BCE1726D443A87777C63000B6F9F4DA4B8585731C9CAC8F97D704C8E965
            A5935F88F71B1714D5AC8EDEDD44FF431FDC3515A5394B9D0C3B7366CDE1A606
            0FD248E7C773DE6945B4CE143069DEAC9CE5BABEA87B8B2957D3AF83DCBD848D
            E5A5B98970479A231C00EF116E00EC2BA9B5EF427C805EAA0CA036A0809C5876
            0B4FF3790DCDE76C08BAFCC71E7D2FEDC7075C5E569AF39293E173E9BB9B61CA
            BBE8E54D712EB5C912704B17D9F0677BB9A265D13E5FFED360236DFDC6ED59B2
            6452209237EE0C01F03ED3E93BA82156D1CB01114F2C743BE9CFC346F7EE5317
            4CBFBE71DF2F9DB43F0DB091B681B1E86183F60D7F77A8345B7E0B282E4DB41E
            B050C89F55CC9AFC94EA3A1863DFC701B0031C0007473B3DAE8F7AAC7BD07E24
            9FEA5A129D475A30E9E8AFE188AE2D4187E50038B97000DC110E801963B19359
            9BD9D5D3DAE51E14E222D5B5C40CED64ED098065D44F445A01095FAD1904ADBB
            9C4D5A502974947FEDAA15D31E55DD2C0773DAC88A4B6859B08F5D14DC11C23A
            C201B073C91E00DB0A4B6AC623C203218D14E300D83673E63D8798D22AA7B7B8
            4E55DB50BB04A480F98626AAE7EBD91B55D45030B3F65C21ADA5D4E8D13D512D
            C498F259D98E8FE5EC655D18E22921E0E478CCB74058832E714DD91D933FD977
            C7B5AFB8E62DFA7142B0715FFE7783FBF9E763DB4577B47000BC473801B07D07
            62E11DB573682D54A87016375B96BC72DE9CC92FC7F24DDABADC851E8709D33D
            9F1AF4D70AE7D766D1FEE5B4F2D9D9554E47B84DAFEA9966B817D2CEE9F87814
            486DB40E34F3BA4FDF19F4CAB2657BBA732E28AEFE23ED1B07DF9E68F2A8727D
            F2A791BC7F670A8075FD395753E0ED93A5948F84FABCF80835D22AE0F66D9B5C
            F77D37B0A7F65F4F3F0E0F3681F2D29C98EDEFB65DB464881B695B9B58CFDC15
            727EF9ACC9F9AACB608C7D1F07C00E7000ECCCB5D5370C9686651F38F5515D4B
            A21B94E68729C76D08FA2C600E80930B07C01DE1009831165BA3175E7FA240F9
            477A9992BD91D0B6455A86FD0C6011F5ABBDD114B0716D7F686A70DC2B6A0085
            79CD9AE5858FA96E978339FDA2F93FB7243EA1BA0EF67D1C003B970A01B0ADB0
            A4E6154438C3F108710880BFAD6D66CD7894E0A3FA7E10CAB3EE22D44233F90E
            5A585A3127FB89B63852A1C2A2C557A1B0EAE865FFE84DD59A505E9AF7402863
            E8FA3DFD5B0CF37720E06710CEB3A39D40D8469FF3FF09D398FADD67A9FA4AAA
            5F021467059B448F2EB27761E1E46D31A92FCA3800DE239C00D8BEC1A1D5EC7B
            27BDC14488F37E256D249BE87DEBD3346B9CAEE7ED8CD7FB2E5DBA545BB376F3
            24FAA2E4D25F7F08B1FA1E763CF7480D30B77CD6E4E250D68DBA7E7F5AB3D5B8
            90C6C8A2BF7A6354DC6E2AE815A9C1E4323DE7C3FDFFA1A0A87A096D8B8376A9
            2F3579D25C7DF25B9114D19902E07DA6D1F6C16D9AD5F4F2728CED7381EDB077
            8D0059D05EAF1CBE929A0F685BF2C360138A6500BCCF0CBDEE54CB0CCCA19717
            D09FF458BF5F10060AB8375DF6CFD3F5517EC5B530C6BE830360073800766E74
            65D6743AA89AA7BA8E64F0EB219BE19C7E1DEFCF73009C5C3800EE0807C08CB1
            981363164EB81410EF535D484C58C26518DE3E8022FA2105ED70347CD007766C
            E8EE748C9D96C0AB5F5F5EB04275B31CCCE917575C6D81F8ABEA3AD8F77100EC
            5CAA04C0BEA245178390766F01CE0E68E21800DB66CEAC1D6209EB5214C20E3D
            4E8AF1DB3D29413E6CB47A9F9C37EFC65DF1983F270A8B175F00C2AA448C5677
            D0A107C06D7514D6F44197DDA318DA775D0E8EF26C3E6309A85CF75EFF95FBEE
            DADB9FAFB8C6DE9E05ED45C4D2AC21F3F4BC0D51AE2D263800DE23DC2EA0A74C
            A94C4FEBEA3999D644E350C01870BA0E8B04C2F39A84858196C695F3E6152859
            474C2BAA3EC225E41542C0CD8878621CDF7A1335C052696ABF9B3B37F49074CF
            339BC55502AC6910E57539B5C3CB42C2823489CB0F16CACF28A9996B39B85B1C
            4DBCBC626E6E44E7D63B63006C9B5249DFC7AD9E0BE94B6CB7F38F69F98CF6FE
            E4460079A734FD8F7DF702A1FD390D80D3B4B43EBA7ED3D658B74B4141790FCD
            DBFD1C13AD4912E0125A381C5FCD1B150801FA2CFE8A021FD54CD7CBB42FFA15
            C469FF8D31E61C07C00E7000EC5C66E57547BB407B4A08117483D8D90D4AF743
            F60FBE822E2EB3DD6138004E2E1C0077840360C6587C8C5E78FD2469C9628CFE
            8901A5D0921ECBF0F6468CC11D19A106C008EB419397AD7E76DAFBAADBE56086
            5F32EF4EAAB144751DECFB3800766EC68CBA41A805DEC78377652E685DD0D61B
            8094B0569AFE2BE7CC999A9001B0ADB0B876A58578AE936169D53DA77C76F62C
            88F30944FB0EB296C0AE5F82100554C59154887D1235D20B6E5A69269AE967BD
            A9C9D20511DEF9154B0505753DA4C72842C01B614FD015EEB6C640B06EAC28CD
            7B30DC5A6E9B5135C8ABB9678B3DDDD16640189F037D3F4C21A099FEBC8F120B
            CAF5DC951D0DEF2BAEF91B8DF3B3A0D3053166DEECEC847CFCC141E6692BCD53
            F0BBE524DE5E312BB75A75BDA12A28AA7176979980DA74ADE1F65003E0FDE9FA
            EF7BB7582D378285D7D33A6228FD2A8DFEB8229E096CBBE3B04508F10A153ADB
            AB6DFA772475469B4FAFFD291A78277D8F8EA565295D44EF99A396DD0D3EECF9
            8EBE8B96F580D9A3F5A105D3A737463A61BB4B68AFE9B2D7E3B708405AFE4538
            9F93FD19B4D0FAFB0BFAA95794E63CDCD1C0F97AF555C210419F7B2E243E5A3E
            2B774C24F3E774B9970296EDDE6EDD902A01F0016D5052FD1381A29456F4C7D3
            F7D1FE2E86B1AD16B4B9C3165A0677D3CBBB5B7B062AABA64E6D0E3696AFA87A
            2D6D078E09369C0BB523E27D615E51E9A2A34CBF9C45CBEDC5B46EE946F366DF
            0D1FCDE346FBF107F6F2672F53AF080B1EF2BADD7FD5F5494DF19C4FC658E838
            0076800360E7ECE7877CD87DBD8F96AC39AA6B497476F7CF570D698073FAB67F
            173007C0C98503E08E7000CC188B8F310B6E3C5C48F38F28E028D5B544135A5A
            9A19F0F48ED5F41B3EEC033B3E777C07F00700D6A5ABEB7D9FAB6E9783197E71
            C523B43F314A751DECFB3800764ED7977A9A039BCE3AD8E976CD129A89E690B6
            BF086D5BBA74AD48E413707BEECC32AF7632AC656A6FCD9F9BFD86AA5A274EAC
            73F71ED04AFBF2DA8F11AD13859047D01A98FE2E06D0CF0E975F3A76DB4E036C
            A79F6B05E25BF48BB5E0365E29D7A7AC57353FA12A2CAC3E960E542FB768552A
            004FA6F93E3EE848023EA7F9DE48C7401F522BBC60B5E2D3F3E6E57E15692DD3
            66DCFD23B7A65D8408A7817D479F00BB96F6C31C845D34CCDB80B85E08613F37
            F5B541FDAC357979C103109FBEF848348DA01729581A2D9FBABAE53314BE92DA
            D18866D0C00E517B6DDEECECF754D71BAA82E245D73B190E2D787FDE9CBCD720
            0A1795D8178AB49A8DA7D0844ED8BB7EA0F530FE10410CA4EF404F07D534D217
            A6817E7E40E3BC2D05BC6548F166A22F5333F47B7E649AD6A952E069F47D3C0C
            DABA8846DACF161E879368A436DB40EB948DB416FD5058F20301E63A0DC4EBA5
            A539EBF73D8B3B9AF6DCC92C46D2CB3361CF1DC1F6FA23A3DD11109A69FDF119
            BD7A875EBF26A578D5DFD4F4EA8205C143E9E97AED40699A97061B8EE6B3B17C
            566E443DD4385DEEC192EBD3DD0DFF49A40B0AA22937779137AD279CE102399C
            66F04CB1E719EE76CF11BD3A18CD0E78D70B101FA0B0D64A8017FD4D2DFF71F2
            19EFE32B5A74292DC303830D97AE791F55B55F46FB5C039BFDD629C2257E44BB
            2D27DADF556A9FC3E84B764808936946C0AF6899FD062CF10548DC40DF8BF769
            83F1A996E6FA604E5162F63AC3183B380E801DE000383463178DED8E96FB33DA
            3838D801EEDCFA7A03306358FBE74E39004E2E1C0077840360C658FC5C5B35E1
            D712F06ED57544532205C028C47FD72C9F76AEEA6757B68703E0C4C501304B26
            F67340E987ABA96988DBDF65A7966EB8CF011748B0C4210878843D8C90F01FFB
            A77F97FBE56EDD5AFD763C0FD0CFAFEBA3EC3BFB12721DE9841D8477EFBED3E3
            F1B8BB9A2EED542985665A380040B668127740DBCC59FE563056F500AF7F47F7
            56B3F1FD0C63C992498158D4327830B89BD3C06DB6B40C718336F4BBC308BFF7
            358FA7B979C70E23D0D8D856870149DCFE2CF165662ED5860D036DF7EECFDC5D
            BB7AB5ED60CA7470B77B11416B40BCE93676ED4C4FEF666EE96D06FA6CDD1A48
            B6706EFF79D6B4EE2EF0040E951AB4AD0B2DB32D106FDB91149678155CE837DA
            C612AB64F3AE66D3D48CAE5DFB9A009F1934DF46BC6AB6D7E33BBA77777BBEF1
            7B447AF73E02AC63E13B77452288F7B1D9B5D93477528D8DF4B9DC1148D47D5C
            F63D62625D9DABFB473B3DF6F7B0A5C5E82BD23CDFBB70094DEB4BF47B3FDDF3
            191F1EB8E38ECC402C2E3C483082B69FAE8C8C4697DB1D70F9BB78B42EE03E12
            3B78C4821530B7B6BAAD77BDCD5D7057BA617A77D0B6FDD80C63F0D75F9BC9B6
            BE628CFD0F07C00E70001CBA31555959F4A38EFE38BD22B0D3FAF9A15BE0C2FE
            DB0FFA6F1C0027170E803BC20130632C7E46E8235C837B0CFD07ECB91A3C25C4
            3A00DEF2616FD8FEB9E3FD8D1757D7E73BEACE5585D32E9E3F130167ABAE837D
            1F07C08C31C618638C31C6587C7000EC0007C0A1CBAC9BD8C3D5E4FF1B2D6017
            A9AE25D175739B70DB311BA097E7FB174172009C5C3800EE0807C08CB1F81A5D
            75FDD90264523CA7CF09345DE9A6E1EE15F9940E6ECB47BD61FB67A911009F7E
            71C5D5168888BAD863B1207075FDF4E83FC39A31C618638C31C61863DFC301B0
            031C0087674CE5F88920C43D10DD87CEA71CFB4B78F1C06DF0D3C15BBFF785E4
            0038B97000DC110E801963F1653F92C2325CF70A21CE515D4B347000ECDCA923
            E7FD4C087852751DEC3B1070F58A7C3E2E608C31C618638C31C6E28003600738
            000ECF5555593DBB002EA7C5EC34D5B524BADE1E03A61DF705A469073E528103
            E0E4C20170473800668CC51982185D95552004E4AA2E252AB3C301B063C34756
            5C08423C03FC28924463D172A3A92E8231C618638C31C618EB0C3800768003E0
            F05D7BD7F5A748295FA3977CB227889103B7C11583B71EF03B0E80930B07C01D
            E1009831167F6316DC783868E67F55D7110D1C003B77F6459587F885F914083C
            49752DEC00CDB4DC74515D04638C31C618638C31D6197000EC0007C091195395
            653F83ED6AD575243AAF449872EC86A6FE69FE6F4F8CD901F0E31BFAC2BF3671
            009C0C3800EE0807C08CB1F81BA18F701DD27DE82B2860A0EA5A22C501B07399
            9999DAA7DB4E7B82F6292E575D0BFB1F01425F553FFD4ED57530C618638C31C6
            18639D0107C00E70001C99EBAAB24658007608DC5B752D89EEEC7E3B77640ED9
            9C412F5DFB7EB77C632FF8BFAF3A53D371009C9A3800668CA9715DD5F8B11688
            79AAEB881407C0A139F5E2F9370BC025AAEB60FB0844302F5B53EFFBA7EA4A18
            638C31C618638CB1CE8003600738008ECC658B72BDBDCC9D8FD1E27699EA5A12
            5D4FB7B13DE7982FED6702F7DCF7BBFA8DBDE0690E80930207C01DE1009831A6
            46E6A209FDDC26BEA1BA8E482554008CB01E3479D9EA67A7BDAFBA5DDA737CA6
            EE49DFD6E56BE00B1013C59700D665ABEB7D6B5517C218638C31C618638C7506
            1C003BC00170E4AEB9FBC61F6996F932BDCC505D4B221302CC9F0EDCB6F69241
            5B4FDEF73B0E80930707C01DE1009831A6C6C4BA89EEDD4DFE7720C9F7413800
            0EDD6917CFFF0502FE5D751DACCD9FBB194D59CF3FAF1BAA0B618C31C618638C
            31C63A030E801DE000383AC6564D988D8033C0E172D759B9A5F5E1EC133F6BA6
            9F27D97FE70038797000DC110E8019636AE8BA2E3FEABEEE0F28C445AA6B8944
            4205C00001401CB57A45414287AB678C9CDBC794AE17006198EA5A3A2D017EB0
            C47BAB574C3F39F28931C618638C31C61863CC290E801DE000383A46D78C1F26
            02E2297A79B8EA5A12DD597D773E3AEAB0CD57D0CB740E80930707C01DE10098
            31A6CE759559D32D01B7A9AE23120916001B0878CD9AFA82BFA96E9720C4A923
            2BC608211EA4D75275319D8F785720FEC1DDE4AA7EE9A5A9CDAAAB618C31C618
            638C31C63A130E801DE000383A3297666AEEAF327E0F0859AA6B4974699AB5FE
            8E1F7DB6C1AB59E772009C3C3800EE0807C08C3175C6DC353E0FA428505D4724
            38000E136D94875F32DFDE8F3F41752974E065028A0554D44ED5B5C4126AB85B
            BAC4D2D79ECEDFA8BA16C618638C31C61863ACB3E200D8010E80A3E7DABB260C
            9112DFA2973D55D792D870F79583B72E1B3170FB040E80930707C01DE1009831
            A6CE98AAF1B7D2F6A548751D9148B0003829BA80DE67F8F03A37F4DABE929681
            73D55521903EC5873C8DAE9BF96E58C618638C31C618638CC51A07C00E70001C
            5D63168ECF031477ABAE23D16912FE3CFFE44F06D66FEC359203E0E4C0017047
            3800668CA933F6AEAC9B5182AEBA8E48245A008C425CB366F9F4C754B78B53A7
            5E5A365C58F229DACF18A0E2FD11E0DD16A3E9CC779FD777AB6E0BC618638C31
            C618638CA53E0E801DE00038BA32EB26F67037079E03C45354D792E09A4EE8B9
            BBBA9FD72858F94D67BA619A03E0D4C40130634C1D0E80836BF8B00FECF8BCBB
            A361050813D0BA76D58A824755B74B284EBFB4FC1CD3920FD001D00FE2F8B616
            7D7ACB57D717FC54F5FC33C618638C31C61863ACF3E000D8010E80A30C518CA9
            9A900712EE02044D7539894C0ADCD9C76374DFDCEA565D4A1C71009C9A380066
            8CA9931201B0A5A599014FCCBA04E90C01B0EDA40BCB87B9A4FC03CDC4F0B8BC
            A110F75AAE40E1EBFF3763B3EA79678C31C618638C31C658E7C101B0031C0047
            DFE885370D1018789D16C141AA6B61898603E0D4C40130634C1D0E80836BF8A0
            0FECF822F503605B66E652EDD36DEB1EA239B98CFEDA2D16EF81009BE8CFECD7
            EBF3AB55CF2F638C31C618638C31C63A1F0E801DE0003836465766FD5C087842
            751D2CD170009C9A3800668CA9C30170B089EF0D8037380B80695B8D34CAB56B
            EAA72F55DD2EE11A3EBCCE0DBDB65D0A200BE9AF3F8EE2A49BE8CF6312E5DD43
            7B1FB666D9B251A6EA79658C31C618638C31C658E7C301B0031C00C7CE98AAAC
            67E8C74F54D7C1120907C0A9890360C6983AA911004B8F15F0F4461032FA1307
            D8FC411FD8E93800B623606BF4AA15BE8755B74B349C7AF182AB0558B5F4B22F
            CD99460DE2E81869FFD6B09FD22C04BC6D4A2BEBF57FFAF8B88131C618638C31
            C618634A7100EC0007C0B173EDDDD7FF525AF20F10A3EEF75832E20038357100
            CC185327150260B084CB30BC7D00ED8032CA9336247CFDC64068D9EE753E125A
            B7AF5EE1AB54DD2CD1A3CB532E49BF50025C40FB226701C29174A47404FD3C78
            E02EC0A2FF7D480DF11E6DF7DFD4503CFDDA8A69AFA99E0BC618638C31C61863
            8C311B07C00E70001C3B999553D25DB0AD5E083847752D2C5170009C9A380066
            8CA933B62A2B17017CAAEB88C89E00B837A070457BD2664083AF560D027FA3DB
            F13802C483ABEAA78F57DD2CB170CC8F2BBA75E99E9E26034DE9203CC74ACBE8
            75C0009AF68565053680E16AF2F4938D2F2D9BDAACBA66C618638C31C618638C
            B1FD7100EC0007C0B135E6AE1B2E44613E2B44F44F68B264C401706AE2009831
            A6CE98CAACDFD05E6FBEEA3A228220CC80B70FA2F4447BD2468B0B3EFBCF9050
            477B7A757DFE15AA9B8531C618638C31C618638C7D1F07C00E70001C5B994B33
            35CF862E0FA010D7A9AE8525020E80531307C08C31754657664D17026E535D47
            44621800079ADCF0F97F0F0D75B486D5F5F9FD54370B638C31C618638C31C618
            FB3E0E801DE00038F6C656669D800257D222D957752D4C350E80531307C08C31
            35745D971FF658F7206D5F2E545D4BA44CBFA72FA216F500D8DFE8812F5E3A24
            C4B170F7EAFA826EAADB8431C618638C31C618638C7D1F07C00E70001C7B597A
            569ABF3BDC4B4BE418D5B530D538004E4D1C0033C6D4B07B1A716FE8F22608D1
            2BF2A9A9D57607B025BDD19E6EEB4E2F6C787570C8A3ADAECF4F53DD268C31C6
            1863ACF3D1F5A59E66D87C9A04ECE964782FF4AFD7F5517ED57533C61863F1C4
            01B0031C00C7C7358BC61FA559E223BB8B43D5B5309538004E4D1C0033C6D4C8
            ACCBECE16ECA7857751DD110AB0078F37BFD60E7975D431E6F757D3EEFB331C6
            18638CB1B89BA6DFD35F338C278510673819DED0B4010BF45B37A9AE9B31C618
            8B270E801DE000387EC6546695D35259A0BA0EA61207C0A9890360C6981A6316
            8C1F0E9A7842751DD18086BB9B69BAA2DEEDB2DDFDB3DD0D74A83484F35F5D91
            FF6FD5EDC218638C31C63A170E805967E4D3EF192A4C73C0C1FE0DC1B03023FD
            C30ADFA41DAAEB648C250E0E801DE000387EC6DD33AEBFD9A2BD422F87AAAE85
            A9C201706AE2009831A6C698CAF17F0121CE575D4754989AD7303C7DA23949DA
            66C1A72B868635AE40A85BB522FF16D5CDC218638C31C63A170E805967939BBB
            A87B462FF9121D830D3CD8BF23FD2740CC2B2BCD9EA7BA56C658E2E000D8010E
            80E347D775F961CFF53EDA6A95D25FA5EA7A980A1C00A7260E801963F197BB28
            D7BBC5DCF5A9EA3AA2850EF665C09F3E30F229FD8F654A58F7DCE1E156F4FEEA
            FAE9C7A96E17C6D881A65456A67BB6798E9460F546809384943F400B4FA2EF6C
            6FFAE77EF4E780F58800D849C37DD6F61714EF0B890D6D7FB7C4EBA6850D9E2E
            DA3787F5939B264D9A14503D6F8CC59BAE2FEADE68403FCDA509D330D16834BE
            AAAA9ADAACBA2EC60E46D7EF4F0330BBA8AE23B49A6FDA1ACE781C00B3CE44D7
            754F8BD5AF1C10A70419741BEDC39D57519AF38EEA9A99733366540DB23C9E0C
            7B3F035DEE5DBCAE62D1C401B0031C00C7D7B885130F33D1FF36BD8C7A17872C
            1970009C9A3800668CC5DF98AAAC93E9C753AAEB881AA48DA43F7D503427D9B2
            3D0DBE5C15F6243F5B5D9F3F5475B330C6F698A1DFFD23D394E32588E1087014
            FDCA0E7C437FC0F7FF98B4E2690021BEA1F5CF7A01E225D4C4D2727D72CA5C58
            C358470A8A17CD10A0FD945EF6873D17A85BF4DFC788F878BA6BEBFDBAAE1BAA
            6B646C7F05C5D563685D9DA7BA8E509497E69C15CE781C00B3CEA4B0B8E66C3A
            147C82F6CBFA061B96F601DF4BD7D2CE0DF7E20A161FF64D70CD81BEE782C0DF
            08218F40B0BAD2FA1B85809D96856F4A175696E979EFAAAE93253F0E801DE000
            38FEC62ECC9A8C08D5C0770177421C00A7260E801963714647C863ABB22A50C0
            58D5A54493D19A3E389AD3DBF2611FD8FE79F770476F68EED574C8BBCB74BFEA
            7661ACB32A28A8EB015EF35C89D6ED0870613CDE5300BC2805DC6505E05F6565
            395B54B70163D1847430E72BAA3D4F4A7C9C76257AB63B1CE0DFD235CF245D9F
            D4A0BA66C6F62928AE994AEBE8BB54D7118AF2D21C47E7A6BF8B0360D659E8BA
            9ED662F55D411B9E739C8E6301D674D1B64CE10B9512937D4777B3D1E7562160
            01ED59BBDA196C0B68DAA84F8EEFF3C2B251A34CD535B3E4C501B0031C00C7DF
            C4BA89EEDD4D8117E8B0EA6CD5B5B078E30038357100CCC237E239DD35E48D4F
            7E60A1FB583A90E929C1DC2EA4EBDD3FDD76DF07AA6B6389CB5E279B52D68114
            710944E2C50CA4F5414B78A3323104F8FACD01D0D410764F818D74D0FA9355CB
            F35F54DD2E8C753653A654A67BBB7AC6D1CBD1F4C73E21E889730906EDB7BF29
            403C815AEB83E5FA94F5AADB84B168289C5BD3079BC1DEAE1D136C5801F0A857
            6B18CD27D859A2E000B87D1C00B364E52BA929A7E3B682D0C6120D96257E3E6F
            CEE49755D7CF0EB474E9526DCD5BDFF84088D9C18645C4668130AE7C76CEDF68
            78545D3B4B4E1C003BC001B01A632B278C4701BFA7D59D2BF2A9B1E4C101706A
            E2009885E7DABBC78F949628A36568505B6738F69E0BDA8F2844B40F6AD012BF
            FDCBEDF7D7A9AE93251E5A27FFC87269CFA0C3FDDD6481A6BBAB69B8C2BE65F7
            8069590236DA01F096F4702761D19771FAEA15D32B55B70B639DC9B469F3335C
            E9E94FC09E3B7E95AFE310ACF115A5790FAAAE83B168282CA97985F6321D054A
            6D50FCA47C76F6B3AAEB66CCC60170FB380066C9A8A0A4FA3281E2517A19F215
            BBB42DDBF28D2BE3D007F4092DAAE783FD4FBEBEF82C695AF67E7C3F67638817
            D0EFFA4545C5A41DAA6B67C98903600738005623735ED640B71B9FA4C5F434D5
            B5B078E20038357100CC42935979636F0F98D351C0F5410746D88D880F82864F
            FEE5B607DF525D3B4B0CA3ABC6CF1520C6ABAE23DAD0D23C66C013F4D94F4EF8
            1B3DF0F5EB03C06809F75A3B415F3D2C5AB3227FAEEA7661AC33985259999EB6
            C533CA925849EBB7DEAAEBD9E7D413FABB4671D7742C054CD76B076A267E4E2F
            DD4EC7A1EDE0ABDB3679CE5DB264524075FD8C7100DC3E0E8059B2D1F5A59E56
            73D3D30830B29D419E478447E90B743708D00E3A8484458D5BADFCEAEABC56D5
            F3C3F6F095D4EAB4F37087E311109A5158675794E67136C5C2C201B0031C00AB
            33BA2AEB2A5A481F535D078B270E80531307C02C3463AAB2EEA0F5FF0D74B0E3
            289912685FE00A5B69E778997007EEFE73DE9F77AA9E07A64E66F9C41E6E8F7F
            6DBB07C2C9CC122E2390D63F1A93B2EFFCFDFAF581914EE69E237B0DCD5DB68C
            C31FC662CD57547B3B6DF04AE965D8B7ED471D0ABD7C76F69DAACB602C1A0A8B
            6B7DB44B5916CA3842C01AAF1417E87AF66ED5F533C60170FB380066C9666FD7
            CFD3E8E5C18E690D14F0EBE13FEAFF8F356B37FD8DFE7E653B93D9690971D5BC
            59D9CFA99E1FB687AFA87A39ED3C5C1CCA38B49EBBA96C56F6BDAA6B67C98903
            60073800566B6C55D6BF10E03CD575B078E10038357100CC9C1B577DC369A661
            3D1EF604103F4061CDDEBD23FDE527F5254DAAE787C597AEEBF2C3EEEB2B692F
            3753752D3181523303DE7E8820239DD4AEAFBBC2A6771CF63CD5BE7569CD78D2
            8B2F16EC52DD348CA5AADBF4AA9E69A67B3EBDBC49752DDF95A6F5F7EAFA28BF
            EA3A188B065F71ED3DB4A1BD25C4D1BE90A679F9DCB9BF795B75FD8C7100DC3E
            0E8063AFB0B0A68FE5828160419F7477C65BBA3E61BBEA9A92D58C92DA0B2DC4
            95EDFDBB007C78CB379EEBEDDE277CC58B870358FFA05FB77765EF6B56D7F491
            F30A6EE4E3B504E02BAEF9887E1C1DD24842DC593E2B5B575D3B4B4E1C003BC0
            01B05AA317DC70AE74597F47843EAA6B61F1C001706AE200983993599999EE11
            19FF4480A322990E1D1035D1FF57F8853977D96D7FFC5CF57CB1F8195735EE38
            13E51FE9206990EA5A6202415886A797656969914EEAAB3503A1796B8437120A
            F09B01F780379E9FC22778188B115F496D312016D14B4FA4D3A2ED6B03FDFF1B
            21EC97F62F84DDD3C6E110C65DC5747CF69F8AD9397CA12E4B19E104C0F4455A
            2735F869999EF3A1EAFA19E300B87D1C00C746C11D0B0F9386B800A5763EFD75
            18FD3994FE784C34CF9B3FFB371FA9AE2F1915162EEA876EF9286D60CE6F6790
            4F21204F2B2F9FBCCDFE8BAEEBAE16A36F391D97DDDEDE3405E2BD5ED7965B68
            5843F5FC7576BEE2EA77E813393EA49138006611E000D8010E80D59AA84FECD2
            D833F02744FCA5EA5A583C70009C9A380066CE5CB730EB1244F8BDD3AE9F8311
            209A2C69CDEC96E6FDC792497C377067307A61D67481709BEA3A62C90C787AA2
            A57589641A6809F874E5D0A8D4A3A138E7D515D35F52DD2E8CA5A299FA3D6798
            A6F5B29DD4863C32C23614B89EB6864FD1D8CFCFBB337B250881071BD4EE3DA1
            097A9F212C395C205E09204FA00964D0363943B4D79D3E8AA9E5B3B3AB54B711
            63D152505C338ABE688F84320E7D47D6A4BBB80B689618420C80FDB4FCA2C361
            63A662764E58173572001C7F757575EE75EBCCAE569A91210D2D13245E45FB02
            E71D641F65B389E68F39000E4F6149ED8D88F8FB83FD1B7D674DDA95CB2B2FCD
            5DBCFFEF2B2AEEEDB6ADB1E50D1AE0C87626BB4B1362EC9C59D94FAA9EBFCEAE
            B0B8F6315AF55E15CA38F4D95DC99F1D0B1707C00E7000ACDEB8AA091799802B
            54D7C1E28103E0D4C401300B6E6FD7BDA5B4779215E549DBCF26FD17487828B0
            ADB17E99BE8CBBAA4C51D7548C3B4EF36876F75711DF1D9BC82CC3DDC3325D19
            914CA3657B1A7CB92A3A3749D301C54BABEAF3CF51DD2E8CA59A7C7DD119D294
            2F40E8EBB44F01F13E10F874E37678B7BA3AAF35D4F7B6EF3EB1A43C4E483C1E
            415C48BFBA88BEEB7DF71B64B740B8A66C76CED3AADB89B1689932A532DDDBD5
            FB0D1DBB740B61B4C7D3B486AB693FD6525D3F63A104C008504C3F3E565D7345
            69CEC3E18CC70170FCF94A6A0A69B9F9356DFFEDBB173BDA37E100384CD38A6B
            CED6009F16207A1E7400812FB7CAC01555FAD4ADDFFD275FD1A28B4148FB79C0
            ED6CC3F0F5460D4754EB793B55CF676756585233CEB2E05E21C0ED7094AF40D3
            7E5CAEDFBA5E75ED2C397100EC0007C009418CA99AF05BDA584D545D088B350E
            80531307C02CB82B2B6EE8D6D56DFD91F64E4E8FC91B200450C25386D558BC6C
            EAB2AD914F902592DC45B9DE2DC6CE7F811087AAAE25D6D0D4BCA6E189E8D118
            51E9FEF97F9A57D7E74774473263EC404B972ED55E7F7BD3DD88901DCA7888F8
            BBA61D981B4EE8DB9ECCCCA5DA61C3B6F5721B8109B48D2EA75FD9CF20FF78EB
            37EEE3ED67CFA96E2BC6A2A9B0A8F66A14B80CF62CE741A569DA009D43259620
            42098069B8B3CA4A735E515D73B838008EBF82E2EA7F0A10973A189403E030E4
            EA8BBA6718F229FA729EDBDE30C2700D2B2BBBE5DD83FD5B96AEA70D32FA2E41
            01E3DA7D13C465E5B37347A99ED7CE6CC68CBA4196F43F0BC2F1B9E3FBD2B486
            49DC7D370B1707C00E70009C18AEBD6BC21029E135DA5A0D505D0B8B250E8053
            1307C02CB8710BC71D665ADA0BB47712F1330E8368A09DED7B85D4FEF6E7BCDF
            6F503DDF2C72482BDEEBAAB2A62288DF407B5D95A6129A51C39F1EF6EDBB9629
            61C32B8321D0E4F4A26307255962E49A95D357AA6E1AC65285AF78D1298872B5
            10CE8ED9C916815850363BF7DE98D6E55BDC4BB8ADF128C461E5B3B2A7AA6E27
            C6A24DD7EBBAB49801BB6BF39BA0E310789385D6ADF366E7FD4D75CD8CEDC301
            70FB38008E1C07C0B15548DF5F042CA36FE7C1CE8798F4A59D573E2B67469069
            9C493F9E4580EEED0E64893165B3273F2CDA792C088BBD1925D53FB150D8DD78
            1FD9E18088F51ACA1BE6CCC9FE4275CD2C797100EC0007C089616FD7A07369A9
            CD0787CB2E4B461C00A7260E805970D72E9C70A6448CD34934B410C497D2827B
            BFDC35F4FEE7F96ACAA43676D1D8E3D1703D064274555D4BBC18ADE983C31DB7
            694B3A7CB3B63F5886A39B9B1C41C09A35F505B9AADB85B154E12BAEFD84BE59
            473A1D1EA5382F5D6CFE6FBCBAA19D38B1CECD77FFB25465DF85D5D594597BBB
            C8EDFBDD7FA7DFAFA02D68B1576B788DEFC861898403E0F671001C390E8063E7
            F6993587BB25AC82836C73DA08780B85F1F38A3B6FFB3CD8B4681F3287B654D5
            EDFD3B0A78C394DA4FF8FBA056A15E7D2C9AC25E5F5F7E907F6EA4E3EB59E0F7
            D455544CDAA1BA5696DC3800768003E0C43176D184E3D1C47FD3CBDEAA6B61B1
            C201706AE200980577DDC209932CC49278BFAF40780B84B56897DFF59F270AEE
            DBA5BA1D586832E7DF7484CB15784280E854FB0668B8BB9AA6AB7B38E3EEF8BC
            07347C18F5E67ABC9BD174EDF3CFEB2DAADB86B1645750BCE82401DAEB6DA7E8
            823369DFF3F68AD9D977ABAE9BB1543345AFEC9D66B82E4229CF0204B710F20D
            D382FFCE9B3DF903D5B53176301C00B78F03E0C871001C1BBA7E7FCF16B36925
            EDF79DD2FE50786B7969EE6F9D4D4F972D663F7B7A17B4378C40ACF6BAB64CE5
            8B98D4B38360CB1476083C84FE34D1CAF955E197FF2A2F9FBC4D756D2C357000
            EC0007C089A3ED2EE01EEB2A68D19DA6BA16162B1C00A7260E805970632AC7AF
            04218E51F2E688B4A32D560B61FDC93FB8F9D965A396F955B7070B2E73D1847E
            2EC35A2C843847752DF146DB1A69FAD3068633EEC6370740E3E6A83FB2970E50
            AD0B56D7FBD6AA6E1BC6929DAFB8C6EEC6F90627C322C073AD5AC6D50BF509DB
            55D7CD18634C2D0E80DBC70170E438008EBEB6B0D6EA7B3BEDD0CDA5BFBADA19
            ECB1C1FDACD1797979AD4EA75B50B2F80A81D6C3F4B2BD1EB2FC96B06E98372B
            EFCFAADB8031165B1C003BC0017062B14336D3A5BD05C1FAC967498A03E0D4C4
            0130EBD89E0B7CD62B7FAE89B07335C0D78466CC7477737FFAC08407F86EC604
            95A567A5F9BB430D7D6897A9AE4509DAD81881F4818022A4C762D8DD3EAF7BFE
            F0985444358D5CBDA2E039D54DC35832CB5CBA543B6AED26FB7108573A191E11
            6FAB989DCB77FF32C618E300B8031C00478E03E0E89B5857E7EEF379600C6AA2
            6F7BC304A4EB0F77E9931A429DB6AF64D15800ADA30B86BF4A93FDFEAAEBA3F8
            E277C6521807C00E70009C78C6544DB81500ED131D6ED5B5B068E30038357100
            CC3A3666F1985ED0EA795B751DFBD00E92810257A0251EF3F682E51C042796CC
            CA1B7B7BC09A419FD168D5B5A86419EE1E96E9CA08659CAD9FF6826D9FF68C4D
            4102DF5CBDBCE064D5EDC258329BA1D79E6C99F82CBDECE764F8342D5BD37511
            97E7FE32C6184B6C1C00B78F03E0C87100CC1863C98703600738004E3CD7DE35
            618894B89C5EAAE92A94C51007C0A9890360D6B1CCF9E38E70BBB4FFA8AEE3FB
            D07E26CE8712CC823F4DF9D31AD5D530FBEEB84CCDBDA1CB23B4177B266D33A4
            EA7A54B24C7757CB70FE1C60B444DBDDBFF6CFD810189030F0AD67A7F3C935C6
            C2E42BAA1E8120560AE1E0585DC05FCB67E5FC5A75CD8C31C6120307C0EDE300
            38721C0033C658F2E100D8010E8013D33595E3276A42D4A9AE83451B07C0A989
            0360D6B1EB16DE708C85D64AD57574C004C47A04F19848F3FFE7A1C90F6D535D
            5067347A41D6B1428339F4F22CD5B5240234A5D7343DBD9D7603DDD4D005BE7E
            63406C8B12F0C0EAE5F91354B70D63C9CAA7578F0053D2F610837EAFD1123FAE
            9893FD5FD53533C6184B0C1C00B78F03E0C87100CC1863C98703600738004E4C
            6DCFFEEB012FD14BEE6A30A570009C9A3800661DBBAE72FC284B882AD5753860
            7705FD850478A2151BEF59367559B3EA823A8BD195E32E10A0DD457BAF8354D7
            924084E14FEB0F28B4A0432240C3877D60C7178E6F180ED7FB96C091AF2F2FF8
            4A75E330968CF24B6A2F94888E2E880A68EE7EE13C138E31C6586AE200B87D1C
            00478E0360C6184B3E1C003BC00170E21A5D99F57329E16144E8A2BA16162D1C
            00A7260E8059C7C6564E188F02E7AAAE232488AD528A7B4CB0FE69B4A47DB6CC
            B76487EA92525166DDC41EEEE6C0786AEF02D5B52422CBF0F6B24C991E6C38A3
            C5051B5E3904CC40CC7BCD365188AC35CBA7FF4975DB30968C42098085017DCB
            CA72B6A8AE9931C65862E000B87D1C00478E0360C6184B3E1C003BC00170E2BA
            A1E2866E2D1E6B19BDFC89EA5A58B470009C9A3800661D1BBB30AB0C11AE575D
            4798B609C0F710E5728FC0A50F4C7960BBEA825284B8AE6AC22916E20C7A3D9C
            F65A3DAA0B4A4816B88C407AFF6083356ECA808D6F051D2C2AE800E39955F5F9
            97A96E1AC692512801B0D1DC3C60C1027EE636638CB13D38006E1F07C091E300
            9831C6920F07C00E70009CD8462F1CFF2B4058463B218E966796E838004E4D1C
            00B38E8DBE2BEB5E21E1A7AAEB880E7C481356350460CB518D4735EBBA6EA9AE
            289920AD44AF5F707D17C3256F13286EA6BD55B7EA9A129D19481B8056FBDD40
            D3BFC1A72B87C6B32423AD197BBFF862C12ED56DC358B209250036055E3B7F56
            EE23AA6B4E04B4AD953BBA77F7F6D8D9CBDB646C1F245CAE53C0849304C21004
            71F801030BEB6521648325F11DAD155F32CD8C96A38E325A264D9A14503D1F91
            CACC5CAA0D1BB639DDEF3786A2749D6D49EB743A4E3E0E2DD8D3FD8306AF4A21
            5F28D36F7D9C1A0255D7CBA2CBFEFC0F3D7483C7E3C9F0405A730F0DB561268A
            738400AF403CC34271E03E95C01D4288B76949D840DF9397D234D7BAA674576B
            F386467F9F3E5B03AAF761ED7DC23BEF7CC0DBDCECF7BADDFEDE01294EA4FDC2
            D3A85E2F2DD33FFEEEF0742CF1222DE9EF4B4BACC300BEE5F58AD6AF06B95A97
            A4C077DB290E80DB970801307DA73C4D4D43BCD8A5254358388C96E53305E021
            20C489DFAEA76D0236D0F7F6335A497F2603B8C2EB3536EEE88EAD9553A6B4D0
            FC2A5B77779600983E27177D4EE95A97A643D010BF408947812586EDFB7794F0
            92047CA97C56EE5F635DCBC48975EEEEDDD33D66D7066F9A298EB1C075042D03
            F6A3107F48CB4CBF0387C6F784145B11CC1701CD8F5B35F1A5A0E5A6C7CE9DAD
            AAD7E7312474FD7E2FFD4C6B36770F018411F47D3A92B679C7D376ADEBB70309
            F116FD788796DFB51880B75AFBB7B4A478BBC4088ADCDC6A4F9F3E9A7B07B47A
            BA04D28F36DDE68968E20FA8ED697914C7EC3F34ADC75A6885F516ADB676D026
            FD5DA9B9DEC616EB6BC368F4EFDCD9DDBF6449FCB6CF13EBEADCAEAF0D6F7FF0
            BB5AA1CB40B402C721C230AAB13B557A185A38E4DBBA2518F4E31534AD9DB4DF
            BCC6D28CB7D385DC0ED0CDAFEB135A547F0AA1E200D8010E80135BD6FD5969FE
            EDF030BDFC85EA5A583470009C9A3800661D4BAD00D846876320E80003FF4D07
            192FB67A1A572DCB5EB65B7555892EB33233DD2DBA6451DBFD92FE3A2CD2E975
            1696A975B50C4FBB0FF7DDF96537D8FC5EDFF81625E0E5D5CBF3CF56DD368C25
            9B5002600478A7A234A753EF7716CEADE9832D703EB5C679B40F7EA20038817E
            1D4A7707ADF4E7135A69AD41C497A5CB7AAE4CCF7B375EF5FB4A6AF560C38880
            595B5696B739D87033F5C56799967535ED775C42F37222FDAA9D3EFF71719AB6
            25F760273D0B8A6B6608219CF6B8B12B4D6EAE5279F2345FAFBE4A5AF26427C3
            0A84DD65A5D90B824E33BFA29BE6ED9A8D02D29C4CB77C56B6AE6AFEBFADB968
            E13152B8CF16024FA515C30F69DD700C221C2E84B3737EFBA371DFA3FDD77701
            C57A90F88A69E19A79A5B99FC63374BA5DAFEBEB318C1196B086EFFD4E9F40DF
            EF2121CECF36AAF83394B0162DEB252AFFD5346DDB9BB4BC1AF19A0F1538006E
            9FAA00D8BE30E3D863371DEB471841C7BB67D397EC14FAF551F4C71BC264BEA1
            4F6C2D7D37EDF34D2FA6B936D7477B599E51529D6B81ECD3D130B46DB94EECA9
            3D98261AFA3E1032ACC754206A8F5594DEE2E83C7CA15E7D2C5AF2DAA0D31481
            FB2AEEBCEDF360C315E835E74B0346A1C00BF78659ED5D64BBA4BC34675238F3
            178C1D40FB61C0B196698DA0CA87D3AF8EDBFBA77B8893FA9256DCEFD3CFB5B4
            6FF982D7E5FAAFAEE822085FC9E24C9A970E8FEF05A29FD6498E1E0B665F4CD1
            6AF639DD02BC4080B42F083A0D9CEFFF511BE05BB4127C5193DA336ED8B42ADE
            DB86C2A29A9FA114A7051FD2A2637DF8C7BC39B9ABE259DF77E97A6DD7260BCF
            1626ADC3246D97118EA46DF20FE99FBA863A2D04DC4AE37E482FE88F7C4B4A7C
            C3DFD4FCF28205D31B6351778B01E7D0FECC29D494C3E8333F96BE1343683D36
            308CC97D4CD57F4075BF2684B6D2AB6D7A2959F6293800768003E0C4376EE1B8
            C34CD4EC8D5AD067E0B144C701706AE20098752CF502E03D44DBFE2DFA51885D
            F4F3092FCA25F7DF7EFF17AAEB4A34972DBACCDB2B30E04A21F14E5A8776A586
            D3229F6AE78196E6B1029EDE789093FD962161E31B03A079BBA3F3D8D1D40452
            5CB4FAD9E9497B629131157C7AF50830851D003B3A56FFE484FEAE65A34699AA
            EB56C1575C7D0BADF7A60A1087416827D20F0EED6798C32E9ADEDFB77EE39A18
            8FBB127CC5354143356158C3CACADA0FA57D658B7B4193B98886BC9AE6211D82
            8664ED07C0BEE2DA3FD2BF5FE7B0FC8D4673F3D1B13861E7B8FD8AAABF022106
            3919961A7A66858313CB3366540D3235F7BBD4883D9D4CB7BC3447594F6485C5
            8B2FA039BB03DB4E7CA3BDA18F72AF29E8A7E5AA957666FFA30951357756CEF2
            58CE4FBEBEE85069B8F268EF250B04F6A0F78ECAE33F90BEDBF65D4834CDB5C2
            12A55E57C333A97AD71707C0ED531100FB8AEF1E2EC0E5A3EF907D9C6B9FAF8C
            F018C7BE10035BE9E736DA5E4D2ABF73F23FA27571066D533FA0E9FE309EEDD3
            EE5C0AEDFAB259B7FED1C9B085C535675203BC1C7440949794CF9E5CDFDE3FE7
            EBD583A509BF03141752016976641C648A31098067CEAC3DD794D60C6A85F320
            2ACBCCB7EC0BDEECBB31EF755962E19C39D9713D2741FB177FA0360DF2C82F81
            E5A5D932D8B40A66DE7D8ED4B459B46E3F9BFEA48773B1938DC6451AB799C65E
            81C2C87172814014DBE31EAAE0162765D29F5B68595B12AFDAF667AF673D9631
            D9B2C40DD44EFDA8CDBCE1B6773BEC6D712B4D710BADC91E0003169695E58475
            E1C8FE7CBEC54782C79A4CF5DE48C5A645BD6E6C5B6E3E16A0DD5A567AEB8B51
            6C8F98E000D8010E8013DF087D84EB901E43EB68F33C81BE84DC157452E30038
            357100CCDA3742D75D837BACBF8F5E8E545D4BCCD927A000ECEE879E46B4DEB3
            0CD7070F17DCF795EAB2D4B4058A710BAE1F6668F2746A937174A07D4CE413ED
            A468DFC70C78FB20CAEF9D286DDCD405BE79BB7F5B37D0712F4B405DF74053CE
            F3CF27C795B18C2582C2E245E721C815E030C84180E28AD29CD9AAEB8E17FBCE
            409765FC4A20FE06F6DC0D1323C2BE80ABD07069F7C73230F015D7D8DDC87518
            5E771400CF28A919499B800588E8E82ED83D3ABA03B8FA3A01E25E7AE92478F3
            D37BDF5C519AFD60ACDAA72333F47B7E6499A67D9E26E8C9626AC55D16FACF9C
            377BCA7B41A79BE001F09E90425C4E2F73E8CF49F17C6F44B867DB10F76FA2D9
            A5B27D77E451C76E3911A5752D5878033566ACBB2C318480E768DD798F08C0BF
            A271A239917000DCBE7805C04B972ED556BDB971B8945AAE00BC9A96B52EB17A
            2FFA0C9F338528DDBED1F59F482F5A4AD600D8575C7B3AAD9D5E0D361C1D0A5D
            3AEF2017B1E87A5D979680FFE720C57CFAEB9060D3D94FD402609F6F712FF458
            E70B1439B43DBF50C4FE62E8065A78EE07D4FEF2C9FB2BDF5AB66C59CC2F24F4
            95D43C403BADE3830DD7D136D5577CCF298846367DE7C781B3FD945034519BE8
            6952FB433CEE924EE40078CA94CA744F17EF70DA151E23055C4305F48ED77BD3
            3EE8D7D28233C3B94061C68C85034C4DB3CF29DAFBB21741342E0E0DCEBEB0E2
            1F689995E9EE135FD5F50B13F2BC0707C00E70009C1CAE5D38EE4C89DAB3107A
            97182CA170009C9A380066EDCB5C9AE9717F996107C017AAAE25AE10ED838C8D
            B4CE784F0AEB594B78FEFD97DB7EFF8DEAB262CD0EFC0FE9F1E925087222B5C1
            E1F695A46D4F596111B14C7777CB701DD805131DAD6D78F51068DD15EDE36387
            84D8090171D4EAE7A735A86E1FC692C5ED336B0E774B780A9C76832FE043CD84
            4BE7CCC9F94C75EDB136BD78D1791A685576F7C6223ECF87F7D38AF463B4E4CD
            1573B2FF1B8B37F015D7D877CF060907E4ADE5A5937FBBFF6FEC67A3CE285E3C
            110556D05F7B84F6AEED07C03366D40DB2B4807D27D561CE2685A5E5B373EF80
            3D2728E32A94BB95A9B847D3B58C714E9EDB96A801B0AE2FF5B4989B6FA2B9C9
            A5BF1E01F139B179006AC787CA67655F17CDEEA07D2535F300C518B09F831A5F
            F69D702F49CD9553A6DF12B76EDF638D03E0F6C52B00A6CFE04E6ADB89105E17
            A3216BEB4E15E10F9FB8B6F896E9BA3FDCE9246B004CED3D8CDAFBED60C3B517
            00FB8A6AA6D397C1DE8E658458665402E0FCA2DAE368955A4D1FE4B9F6F3DAA3
            D586CEE0D708E2B715A539B362FD4E7BD6F5303DD87096E61D324FBF79C3FEBF
            A3FD15D962F6CDA297A5B0E77B15AB730701FA0CDE94A676D59C39B77E19D3F6
            48D00058D7AB07B7585049DBE58BE9AF7D229E6088E8BBBCDDABF51FA0EBA31C
            AFCB32972ED58E5CBB712CAD37A6D37EE9D1F4ABB8777D461FD2265A282B689B
            5A19EFF7768203600738004E1E63AB263C423B3FA354D7C122C101706AE20098
            B5AFD306C0DF85605F79FB321DC02F37DDDA2A0DC466B769EC7E60CA033B40C1
            89D568C9D4333DAE9E3D7AB9C01C6A59D6E53423BFA2A3FA5EAAEB4A41C2F0A7
            0FDCBF2794A6862EF0F51B031457052F760B348DE0BB801973CE5752F3287D97
            7FE5747821C53CAFD85CAC4770E23791B53DBFCBB2AE0014751072D819150D28
            E0A68A59D94FECE97E337A1C05C0121797DF999BBDFFAF0A8B6AAF46818FD04B
            57E8EFDA7E00BCB726FBDC8FB3C77208F878AB6C386989AE3745B35D8299A257
            F6F69A1EFBE2EFE1CEEAC43BCB67E5EA4E064DB400383333533B7AD805478129
            2A10F017E0F03C5E4CA07549F9ECBCFAC82704A2B0B8E60C4BC062FA469DAA6C
            7EFE6752EB6EFF1FABAAA636AB2E24521C00B72F9601B07D514E71F1E2630312
            1FA065DA513D51AF01E03197A5E5861B5C256B00BCA7F6E08F53F86E004CDBC0
            B416B3AFDD25710D84D77D7E4401B0BD6FD36AE24D5478192808AC0E80F03CED
            E7E45494E6BC13ABB7A075FE0C9AD739C186334D71CAFCB9D96FECFBBB7D7734
            7870327DC974086B9F272C5FD2FB5D5F3E3BE7B968EFF77D3B5F091600DB77C2
            37050299524215FD55E1B91AF1787969F655A18C515054BD84B60337ABAB79BF
            EA018A03CDCD552A1F8FD24E5DC17100CC0170B2B8B6FA86C12260AD16223E57
            DAB158E00038357100CCDAC701F04160DB73CABE0214DFD0C1D817B41FF626ED
            B4BD6F1AF2F364E8329A0EA83D1F77FBEC340BACD340C209B46E3F5C201E8D42
            C4FD6E95CEC40CB87BA2E56A0B12EC67FF7EF9DA60F037C6E326B90E08B0E8B0
            79C2AAFA7C255D8432968C7C25B5B300B1389471681B51E9D532663AB9C33199
            E4E7DFDB4D4B6B9E63599013E5678E85EA1BDA26D796954E9E1DCDBB1F0B8B6B
            76D1C4BA7638D07702605F49F5AFA8163BFC0DB38BC88E03E082E2EA13A8A95F
            773E7DEBD4F2D2BCD7A3D5264EF8F4EA8B84291E0FDA76FB9AD0740F9E3B77D2
            D74E864DA400B8ED4EEF3B16DF443F4BE8AF87C6EA7D9C6AD4AC1ED57ADECE48
            A7935F543D410AA183D33BCD63CFEE95E7B1D69EFE9BABA6267708CC0170FB62
            190017E835E70B13EC9E1A62F86882A02C04F18208885F95974FDE16EAC89D29
            00B6EF286D36FAD85D09DB77EB851B2A861D00DBBDBD7824CCA5A27F097B9EF3
            AB9ADD7E1F82C0E2F259B9CB62F106E104C0F677DC65188B6881B8464183ACA3
            4DF015F36667077D744438122900CED7171D2A4CAD4A005E06A1DF091F4DF435
            C582B2D2DC05A18C545052B388F6CC7315D6FDADB6E74A4B286FEC6BDD599D97
            D7AABA9E7D3800768003E0E432BA2ACBDEE1B55716FC2CE0A4C401706AE20098
            B58F03E090358005EF0901FFB2BBA60497FB5DD9DABA6D7B633A0EEDED35376E
            DD88703C98C3DE1D86ED9DDC8D947D37CAB061C3C42BBDB76843BCAD5A636BA3
            0B4CD70974787229BDE10974307DA6EA46EA8CD0926E33E0ED67BFDEF9653768
            78BF8FFDA865D565D99E330DF7D56F3C3F65BBEA42184B160545D5015A978674
            52928ED9670E3DCC3D7F52149FCFA952EEA245DE8CCDE2AF346757843EB61DD2
            A2897B7AD7D8F39B3DAB433BD40CEF642F62A30578FDBCD9797F8BD63CFA8A6B
            3643B0679EEE17004F2BAA3EC225C433F4328293F41D07C0B6C292DAB588E8F4
            9866757969CE69D16A13270A4A6A6EA54F78B1A3B9A56D504569CE454EA79D28
            01F0C48975EE5E03020534711DC20EFBA347FC3F7B67021F4591FDF17ADD33C9
            041090CB7BBDFDABBBAE07BADE8A8207DE57F00015BC58992472666642263699
            24331390606606050F0E0515C47BD70B14773D7655D45557F140D15557E43E42
            8E99AEF77F1DC0052499EAB97A32D4F7F3093309D55DAFAAABABABFA57F59E02
            CFF82738AF4CE61CAD6E3C79CF0A8670B7D5E5D935B8D0A12A576A9A7393D596
            248A1480DB261D02B0B148C33D61EAA9A0E36B2C31B7ECC673CAE88B7FED8FB7
            2E76329E5309B9B9A53E6F396BB11F170C0E5F6FE6B85C1780151586D568CE99
            C6778F163A127530423B24B3D331210178F4F8C801790A7F9E4A99D118EEA220
            536E0C54DE3927958BDD0CDCE5610FB5EC9A78E940E5857EADE449C3ADEFA19F
            FC623CE7EFB0B03AD6A242F7D284E1DFA7FAC4D922008F2BBFF77055519E6259
            F01E9B3ABE0DD4A51606AA9CAF98396EAB1BF88F59427DE696F9C2AFBF1ADED4
            5210831B54B8DAAF399F6659E2C94F0AC0024801B86371ED3D371D419D97D15E
            0FB1DA164922480138379102B0A46DA4009C021056D01C6D338D2E57D22F0D8C
            C30A1AFEAEA3E1E606307660726CDD356C8C6C1506A6DC8221E305744C0F5414
            1A37F2BDA89FB623B2DE74DE6EF4B90F25D91718EE2577F766013461D163F93D
            B8AEE61BBB7F9B375814FBF7B7183B12C67CB070DC14AB0D9188D1AF5FA4CB66
            75FDBE88CADEA8C281DBFE0E1C56523FD200B6E8D74B5E1E2FB49B4E9218EE8A
            C82886683E8E14C21360E39A5F2B5E6A75199241D3EABA37C56CD31940A1C943
            D7537FF33A20FB88011A2EFCBEF9B56A1466A77FE839C68F0263BC0E86870A76
            A0A9B303FB89F3D8B9B55523BF484539CD0AC0D42E1EA7BE7E9071A113CF35BE
            004CF95C4F75F728137C99E650EDBD356D78C6E2BD7BBCE1AF69CC73A850E2A8
            D2C3CC6EB86C10804768912E5D63AC8ADAF05D293CAD3116DC617108D5613E19
            DF87095C6754E0CCE004E79BC918E0F146DC34AE2CA71B29C11D46F05F1A737E
            4AF7F80AE3FEA6FBBCB53CB8256EE6DE8CB383E91E3D8C251E7B55A7E31F6FDE
            D8727B4775072D05E0B64987005C56113E8F33984EFDE541E68E84F768EEF63E
            5D837FC7385FA1D8600DDB162C45617BD233EA40BA4007E11677D2273173C206
            A77B62DAE6B57C542824BE032DD70560EA299C015FF154976B5A37C88BBE4C7F
            4876C1B26901D8D869A972E561CED980C4BC9A401343FE355DDFAF8DF93FCDCE
            57FEEFBF584FE4D8832AEF48FA2D717119710575F86302D5CE3949D6CF0EB82B
            428564F3BCB8250465E8EA9F3F9ADB7DEF63CB14447A5E64CCED731BF5C1E638
            6CF0E7542F0CCA0601B8AC22720E223E203C9E8A8FE185C868933B8C2FA9A177
            43B131D5F7D44F9F64B69F36E60CCDDCFE2AF597228B11575399BF0545F996DA
            FA7FA94DAE41A6FF84C6325A82EE293BDD9AFBA0E175C5184F709A2B40420B45
            E85EC58181AAE2C529AADBA49002B0005200EE5818AB4ABFECB6DC709194A5AB
            4A25ED2305E0DC440AC092B691027006C0ED5FF8A1B99D6140D353DC32F1A26F
            36941E36B21AAEDBBBACFEA277D735DF0ABDB7CE249BB9DD71D0872F96AC4CFE
            54927471C2807B4E01D04BE89E3F8B6D710166673BC6458BB5EE336568C49AFD
            1C99B200397BEAC3D7C67E67B5EDB9466BCC33BBFE26D5F7D1E68E0464881BA8
            A71E1BF0391F4A57ECB2B497BF22341E394C00D155F8081B99C2824A2CFA605E
            5EB7F5EDBBC2461835AACED1AD5BD78266BDF1166AC73477C43D446DA387E0BA
            7CB5CF5E9A3628E998CB6604E0F115E12B75640B58D2CF610101D85B7F3C65F3
            22FD88059247F405AA8A2B92AD0F115C95A16320AAFC4B480407782250E9BCCE
            CCF9B34100F694D7871114435848F8C537DDF8BF80824F22B2E750619F4459B4
            29BFC9B1437FE070E4414BCB267BB30AFBDB40398D7A8B4BA8D2FAD17FEDBC82
            6C93438D1EA069897BF2707923411A508E4EAC4CF89602365F9E627F8F319DEE
            EDFFC6A8FD46D9D69D35C62ECC091326D0B3AA775E7333E6739B3290F22AA7FF
            F93FD339A1B1018EBDD3D2BD65404774072D05E0B649B500AC69937B34E9F9FF
            A6566366C1C1527AACDDA637E77D7CE2897B6C1E346890DE56C2C2C279EAC107
            7FDB49550B0E4055BD971EE78627035121384A37C74D415FD1E3A28675640198
            DAFD6A6ACF3DDA4FB54500A6F1452543A53CB98554AD981280C78F8F1CA0ABB8
            90B23D3C91BC41815A6A030FF1C64D2B0A0AF66A66EC3BA31FDCB66C80CD9B37
            4FFDFBDF7FB6F5ECC9F21B98DAC916C332CAC5D83D9BC822ED2606EA9040E59D
            0B92ACA35FF178A79E898CFF2D6E3941194AE39E8DA8A371FD3BC53D71EB7B0E
            7883CAFA1100BEFDEB7918EBC2199E44D7FA427A1E1C9E84E9317A365EE9AF2A
            7A2155756160B5003C5E8B9CA6EB68B8FBDE3799F3D033F34DAAFB054CC537D5
            3CFCAEA925A6EF3CD6883A5415622D7BD86D70145DD7817475CEA63F1FB38BD3
            3D47E5BC8299DD356B7862B83B524D4779DAA8C075D471BEC24199A92BB044D9
            9CD7D8B87F434BCF356BA26D8D850D2F2C5D0F2FC8C3865F0AF279C1601DB11C
            E28DD77F9BEFEBACC57EA5596F0CE9400AC0024801B8E371CB43B7ECD1B49E7F
            422DDCDC8A6E49162005E0DC440AC092B69102B044923A50876FBE7CE9A81398
            C88439D3B621FECBC6F4FEEF2E2A5B6DB52D922D18EEDCBF5D75E261A8281733
            C012667637E41656D10CF71960F04417BDE1CDC58BB59C8A416B256E6FF836FA
            30620A261AEBF5158EECBEA82DFAB73A6DF41AABCB235CEE8AD0B50C612E137A
            D18D2DD4FE5E526CAAB7461BF17122F98D2BAF3FD4064A1522BB9CE68F82B1F8
            5A45D4BBB67FF99A505905046060B84CEFD2E978B5A171E1D6DD60718DA39FA5
            F4F10B43E51700FCF5451A67AC37207BD1EF734E6ACFBDE31DD3A6D9F7FC21BA
            0018BB54B0280B1CEAAA21541F69BFFFDDDEC8AB54B6010249757AEE8C0A5615
            87CC9CDF4A0178D4A8C905F99DF37C74D1C7247402C04FE9DE795B51D9B43CB6
            EAA344428194061FDAC3D6D0780A47B88AEAF974FAD3EFE9C473D7ACB0DD327D
            7A62EEE5DD1511BAA7711A7DED66EE487C0510EEF55715FD35A17CC753BE0A8E
            31760599DC6D17A39BC357A0AEAA49F61ECF3452006E9B540AC06565D3F6E14A
            F425AAC43F8AA4A7BAFE0E81DDB76F2F3EA52481B890D40EF39AF4DEB721C3D1
            D4731FC204DA33B5FB8DD4279C1EF4157F928A321BB8BCA19729EBF30592AED4
            513F7D62D55D5FA52AEFF67057843FA727DF91716AC4C9557C4EE1EA8B4C2CC4
            4133A5FB8A6A7A35185E07FE771E1B03D893EB6C71B0BAA852C43EBA7E8EA658
            EFD9743DCC7A35F9D1F04AA0376E9E347162E9CF66EB659C56BBB7AA77324431
            2386AED882AEFFB15C57D9D513B5A20FCCE6BB2BC40560761F8D5D8FA006DEBF
            9D642D94EE0DBAE62F806E9F5F5333BC5DAF44E5E50F1CAC43CB9FE9FE31C4C5
            4416397CCEBB149C5CEBBA75632AEAC2C04A01B8BC3C747014E02F9048CC7264
            6BE9222DA1F1D553368417AAAB9DFF49A8FCEEA987A00DCF63C02FA5FBCBF072
            D08786AB97FBAB8A9F4BE47CAE8AA91703F267D8D645665469AB6812F1367D3E
            1B559B9EBB471B9B94979AB26AEAF39B632E2AF7CDA2E3436233DDF337052A8B
            53B6902251A4002C8014803B2683EF1D7A037296529715924C2005E0DC440AC0
            92B69102B044922290451500CFBFFF72949D263CB3AC36E737006B611C3C4B16
            8D33EFD6569206104E18505B4693EE5BE99783933D1B4D2C37D224FBEF4C898D
            59F24A5987763F9C2D68DA0C4793DE60B8E1BD3AE193203630808F15954DA9D1
            8AE2BADEB39AB2B2C871A8F245C8A087407223CC81BB6963CBCC64DDB58E1D3B
            B1B3ADA0F38D887CAA88504409D630959DEAD78ABE4C265FA11DC0CC70498717
            D11CE3496C7F718FE16EEE694A773FD8A3DF3B185BB7F38E4D972BD00DB137AF
            AD8DFF1273EB028407048BF23353E1CC80E6FC3A99FA88C7186D522FBB5EF011
            35ECFD446CE218EB67D65DB79502B0BB227C25209B4DD7B98B99E390E11A3262
            3C2AFA5F0B60DD4FA9102D8DDD87071CB172DF3C959D46BFDA0295CEB92C8158
            76A3B4C93DF2F5FC8F05AFD9367EA27EABD4A1E4BFA869B725B37805E87AEECD
            15FB18BA694732738B69D6EB8C5F3ED157F246B2759949A400DC36291480C1E3
            0D57D1CDE062226D0AD8978A02D7D668CE8F92CDD8E5AD3F16509946E714725F
            4CD778EEA675FC1633AEA0DBCFBF630BC0F434DD4C9FC673AD3D4F044D946636
            57D519F628FE68B7B76CDCFE596AF48D871CB2B60B80AE88861720FB6AC9BE51
            CC840704BA76AFAB08CE2FBEE8FDE5FCF96DEF148F87B193B17BEFE6BE2AA80F
            200809DF5B6A8B1E2C00B828E02B3E2FD1BCB747540046637C85AC5B3B1E603E
            03440F8FE6BD616667656B0C7AD6E720E07C24220EA71A36172B09F9D8405589
            50DF2A825502B0D16FDA385F24B8086267535ED119D64073E307B5B5AE9488E1
            9A36AD53931EFBBD21ACB634B48C4B743CBF651C5F6078A4EA4A6DE7615094A9
            2D9B1A964D9A34AE2115766EB155CB6B8EF6BA1E153653F418EA2F5FF7FB9CE7
            A6CA86449102B0005200EE98DC14BEA96734AA3C4D8DFC4CAB6D9198410AC0B9
            891480256D230560892435D004E3FD16DC741D7BA7B0E59B35CBBF366287596D
            D32E68D181FDE1A3574B33F24248B26BFA9E3FE948C6F519D46A4E49FDD96103
            432859B2686CF62D42E8A0B8CAC34BE8E3F8C4E2C5FD0F047C9721BBD7C6A36F
            D8ED1B5664DBCE364D9B97D714FBE5412AE58D02C91B1560E36A2A8BA6B20444
            A9B6F0544C1D6688C0F4D5113F353CEDAF1C71757B3B69E3212A0033807B19EE
            3A1E2C228B52DB789F31EE0CF84A3E4C555DB4D68737BC9E0AD755242D02BF2C
            5859F27C2AF3DF19973772136C79792FF2E2F6AD654BFB9C6DF6C5B95502F0D8
            F2D0C1360686173333F1719B11D87B365DBDAEBAFACE1F5361472A698D65CCF9
            3BCCC4FC98BAB91F19F2227F55F1B32C95F7B63734D6ACBB7762B543558FD652
            1C37369D981280915D1CB3414A76F725C24947F75ED99E0BE4785825006FF51A
            F151BC851AAD021A837F838EFDFCFEA29479BF71BB2387311B2E14F178682C0E
            418E17D75697FC23157977640198EAC243B65F465F4FDDE5FF236BA6C7F9CB3A
            DAC74EACFA73CAEC2EAB080DE40866BC18E8F4CC7F32AAD88AEED18627B56B71
            7B3C9EFADE68579EA58A38D5CC715467AEAF8FE97DCFFC24EED5D6FC0505E076
            682663FEC915BCBE562BFE29D193D0D8D7D6ACF7F2527B709B1481FFADAB3060
            A2E634BD137B575821001BDE5D7AFCD03299CAED64E6C289ACA2FA0A16A8ABA7
            64DBDC617BE8F9E7439D2DEE94B7EAF5443CA088326E7CE85A555166D2A51198
            2B30A6AAFCE46AADE45D2BEB460AC0024801B8C30283EB860EA39EF221AB0D91
            98410AC0B9891480256D23056089247900B199D9944BE694CCF8CCF8BDEF805A
            1F7D945B6DD7AEC1FF72D536F0C397C7C8F1B5059C747EE034CE61469AE3BC35
            21B2C9D0A95BF592E7876FB6BACC1D1D4318B22B60C4F23C21252704FC1418BC
            C5101FF1FB8ADFB2BA7CDB28D5EA4F5174F57581172ACDC05899DF5754C75228
            1019182E781D5DF266D24907891DA19C18F08D5892687E6E6FD87821749240D2
            4DAC2DB101B0BA59894E4E879BEF2DB112C12B9418F153876DF5B1E97AE966EC
            DE698CF59E0CB06B21FCB7A827047C779A16C4AD1080476A75DD1DBADD78317E
            8CF85146BC6F3E81EFD169722ADD52A610705584FF4C56DECB768C25DF1EFF42
            3BDE18AC489DCBDA6D6C7DE95F42F7762D33B11398FACA49F9EA4A4F36BFF4DE
            1E33023095EE0BC6B865CF6854F42B8213467E9FE8F15608C0AD9E3978C3BFE8
            C9233286FA82235C595BE5FC3CC555C74AC7D3F352519EA6AF22F1871FA47EEA
            F654E4DB910560C270556BB841DE95E8D78088E3B165F3C3A9DAD968A0511B6D
            E2FA02B2ED0CB12330860CEAF5C6C68A54EE5CDC4669F994FF53407D8CEEFDE3
            C58F82F55C850B6BB511492D22484E00C616EABBEBF7DA73AF8AD1A307251D9B
            DDD815DDA34FAC881EA3C6F3407057366CA4F9F675898624D8192B046057C5D4
            81548627CC2C844260EF2BC8477FBD74EFB793D9899E4B14CE9BA71EFAC92FC6
            F518C684B455981DF0396FB6D26629000B2005E08ECB506DA8A3B92BFB164068
            5024C90AA4009C9B480158D236520096489205B902CCF9E8C859BFC6CCE97B6E
            EDA14C61C6247B5FABADDBA5C5C89E8FA970FDC7AFA4FEE586A46D4EEC3FF13A
            049CCDC45FC627054D361FC6B5DDFEBC6449627123253BE2F68697D1BD7370B2
            3B8177E2170476C7E65EFCA5FAE2E2966476B32643AB6B3EBD9721728AC4E07D
            DAA176BE41D386A525DEACDB3D754F66E746BC3F91FBE43587BAEABC44454F77
            4544A30EF1EE044DD5816199DF575C9B8E7A30183F3E7280AEA0E14259283632
            14B05EFEB2D4ED74DB9E2D2ED137FF4C4F90F87164013E0D543A4D88A9FFC30A
            01B8AC3C328A034E624271AF99F13A584786638255C5F7269B77BAD0B4489726
            1D8DF76887081EB2817A9FEB53F572BD2DCA2A2263748E134DF4A36B91F17382
            BE920EF14ED09C006C2D7A9EED8889DEC4775A5A2100BBBD9122BA0145E28AEB
            C8A15FB0DAF9668AABED575CDED0586AC64126D06F7015F74B66D7E476797664
            01B80D602330F502BFEFCFEFA4DA2E97B7FE26608AB12949D4F5F36B2CAA5C23
            EA5A3A51683CB99C3EE2EE20DF068D3D2305B65525C92CF04A5C0036C6A5F8DC
            9A15F6C244E3D0EF0A63C15F7EE7FC59A6E23203BB275059343615F9675A0076
            05A67583CDD1A5743633FAC867A8C40626B3502757F178EF3B9D8662C67845C4
            4BCE7710E327F9FD252BADB2570AC0024801B863737DDD4DA72AA02CA40756A7
            E4CF26493F5200CE4DA4002C691B29004B244982EC23549A6F796CE4632BFEF7
            474DE9DBBF603C03A8B4DABCB6AC4606F7E6EFA996BD333FB9D89D1231FA0E08
            1CC39862C4804DF0055962D0851EFFC1A2D21AABCB9F0B8CD1A6F5CA8B453504
            E64CF9C9817DCD38CE66C0FF1AF0DD95F08ED644717BC3B73021CF4DB051C758
            DF74BF542EF34686EA880FC71789E02BA6B28B128D7D9BB8000C86F81BCC5757
            4DD034AD255DF53076E2ECCEB60D1B8C7EE32291F4D4AFD7067D4E374BF1CE6C
            83326DEA1FB9CE8D1DBD71C50E00BCC55F593C23A17C322C006F15B68D18B987
            0B1ED2C2106A0255CE09C9E49B6ECA2AC2018EAD315285A04AACA4F6EC4BF74E
            5B8DFAD1463D3A0F4CCD3B201CF0398BD36957AA900270DB242B007B3CE19E68
            87E7A8CF3E2D5E5AEA0B3DD41706D253735B70DD3DE577C06D86681977B12775
            C8930BD455E392F5D0907B02B0212EC20887FACBF4547BAFD0B4BAEE4D31FBA7
            D4B909C53F6F757FAFEAE7FBB592CFD25D5FA5E5F55729A018A15A04E3CD6383
            CAE1F7D5D545DF259A671202F01B0EB5D3159A366C9DF963E3D9544F36C16B94
            87A0408F9F047CC57F4C45DE9914800D0F184DBCB731DE1C6FE2B02F29E3AB82
            BEA27FA7A2BCB9C656AF222F501D5D103731B2F58A0257D6543A5FB7CA5E2900
            0B2005E08E4DE1BC42D5FE43E747A9B55F67B52D1211A4009C9B480158D22E86
            CBFE0769F074A1D58648241D0E44CE01CE7C7CD4CCE53BFFD7C081F5F9BF449B
            8C98803DAD3673D7003D3271EA07AF9616596D49AED3AF9F66DB68EB642C10E8
            6141F63A202B7B7F5169DA7629EE4E1417D7E777EEA95ECF7436456827A4198C
            5D85C0362A8CFD35A6C29854C5398B4769E9437B407EE3D3C058FF7869A92D5D
            EAAF2A7A21DD366DD991DCFB07AA947DE224E52AB06BAA2B8B9E4E249F840560
            605F376FECF3C7BABAE45D21C6A38C6CE4C82A5A1D01C6B50BFED1B056EF170A
            9534A7DA0EB7376CBC843C5A20E97F1455BDA846BBF3D384CA9B6101D87D7728
            C2B872A750FD32E3B18FFF586BCBEB3F5DCB5EF7FA9A56DFB549578C9DE0A2AE
            35173AD49517A77331C3F6B8BCF5C702533E327148CCA13AF6D2B4DB52EE663D
            F5659302705B242D007BC3A7D27C75318B1F0ECF64690000590D4944415483FC
            9F10E3976662B7575945B886FA678F40D2A50ED57EA696644CD91C148067AE59
            61BB23953B4B7FB5A93C3C899ED563842DC9D0F8C6A0D505F25ED127E8EB95C2
            F63136D7EF2B1A9C689E090AC0BF50BE9751BEFF4C473DB48EF562BD9EA7C289
            2D7233E27ADBD44302DA9DCB93CD3B9302B0470B1D893A18BADE4122E9A9CED7
            E8AA7271B26EBF731D4F79E42A045C102F9DD16EE8C319AC2ABACF2A5BA5002C
            8014803B3E374C1E7639283857EE02EE08480138379102B0A47DAEBF67E843A0
            4801582231490B47167C7CF4CCFBDB4A70E279C11BE9B964ECAACB88CBDF0468
            4460E33E78B53462B521B94ABF7E9A6383BD60062058B818129602C62E7E7F91
            E71BABEB2357F078C32733806A4434E2CAE5A7FAFCC0D83A1ABF55A31A7B32A0
            8D5A9ECEB2B8C647CEA0B9DA6216272E2795F5DD029BD25FD39C9BD269CF36DC
            E5618F51C702C25C7DC05724189776A73C121380573854FB215A860440B776DF
            414CD78D1896F162331B6C60C8AF0E54952C4CA50D5B841EFD0700A167D9F36B
            56D8AF4EF4857E2605E0522DB4AFA283D12F0ADDC3C8E0AB02959D90A97B2051
            DC15216AD720DAAED7D33D7045A0AA7871466DF4860DF7D9C6AE5EA1EB070C02
            F9EACAF1E98A719D2AA400DC36C90AC0F44CF83B3584B8B15CA9818CAAF539EF
            DDB2BB34FD905DEBC8AE76178419CF745DD7AFA9ADB96B513279E594000CF069
            C35AFDC4742C582A2B9BB217576D465DFF5EEC087CCEA1AEBE96FA97B484B6D8
            A58DD5646393CDD03AF6123D268678C8A4AAE26F13C92F3101983FE850D7DC99
            4ECF1065D5D3F6E18DD16FE926111B4BABECD68056F470B2F96652002EAB083B
            39B2B0F001003E87B2B232DD1E3972011A4B6CA08FF8319553E83E3C11A4002C
            8014803B3E85930B0BECD0891E3470A2D5B648E22105E0DC440AC092F69102B0
            44621E40F617FB9EAC64E6B0996DBE2CF853FF9A9E3AD8FE425F4FB6DADE7668
            A2C24C5CF2AAABC26A437291BEE7D49CCC14DBAB34F38B3F394D27084F2E5934
            4E3CCE96242E463C2FD610BD8026F5752C3DF1BE75FAF90A8005FC95CED9E97A
            99EDF6864274EE789E003865EE0DFA9CFE4CBD54F79447AE41C047587CE1B361
            D9D23EDDE6CF1FA49B2E7B0202305D6FAFDF575495893AF8D54E6FE403BA898F
            17B20FE0366A2F02EEBCC5F178C36574D1AB45D22A8017D5541627FCFE2A9302
            B0BB3C544915E6154B8D2D1C95C1B555CE2713CD2F136C7193CB9E62C8CE123B
            021636EFD97C59DDE8CC868318A745F6567534DCDD8BF59D889F3A6C78BAA695
            6CC8A49D66910270DB2423007BB4F011A8B34F58FCDDBF944F23E5332EA958C3
            66707BC3CFD2C765ED2632762E021B4BCF8EC9C9E495430270942AA43858E99C
            960E7B5C15914B01F171FA2AB009095BE8C13E2450593C3F1375B53DF46C2DA1
            67AB702C796038CEEF2B9E94585EE605601BEA475465A00D79BC91BFD12D72A6
            501D003EE4AF2CBE2DD93C332900D37DFB25DDB7426126A89FF8125B9453D21D
            873A57A0FEF76DFA385520E902BA86D75865A71480059002706E60C402A626FF
            3710F6ED2FB1062900E726520096B4CFE0BAA1F534B2BDDA6A3B24928E02205B
            17B3E1654F94CC5A162FED89FD275D83C033FE52C12486DBC7B16C6DB7FB972C
            49BD1BB6DD18386140ED3310EFC56066C018B71DF0AFD746FF68B521B9C8D61D
            77C3E8EBEF527F764060B80055755C2ADCDEFDC6766FD858C4126FE7C57A359F
            1D5B5D9E78FC39B3783CF5BDD1AEBCCF307E9D2A7A6CEF9A9A912B44CEBB43D9
            4D0AC0468C40CEF8C0A0AFF8934CD583C1B87191BD55071AF76EDCF8BBC4BF02
            95CEE38DB7A4A9C8DB88B3D6A8F79C41651F22907CD39A15F61EC9B8F3CC9400
            EC7205BA415EE727E9AA0E10494F95F97A81CAAFC87601B24CBBEF0F3C16FB07
            5DFFCE22E933E9F6747B5A6322EA3D8D5D9A827354D848176150A0CAF952A66D
            35831480DB261901D8ED0D4544DA0ADDA777077D4595E9ABB55DD85611B91639
            3E163F663D7B90FAABDB93C92B570460AAA86551553D2D991DE171ECA96162AE
            B90DFEE350571D497D52C6DDFAD3F53C86AEA7A1F788C6297EA669CFE61B1259
            B0635E00C685015FF17999A8872DA12E84C7622B033EE75EC92E46CC94004CF3
            836B697EF0B8586A6C41CECF0956DFF5763265DB9D709747E6515388BBC099FA
            E777FD9545962DC89702B0005200CE1DAEAF1B361F185AB6E242228214807313
            29004BDA67F0E4613723608DD57648241D026451A6E04D7347CE129A446F8DFF
            3A9BBE5E6FB5E9710AB69926A873F37AD84ADE999FD99D40B9CAC9E7F8FBC654
            F57DABEDD8064D3EDF787F61693FABEDC855C696870EB68172317DBD85EEA763
            999858270EC2A7740DEFF657398D78B72911F73CDED0E9C894BF0BB8597ECF5F
            E93C1952242A0ADB5711F90411E38EED13DD1563560046647F2BB0AD3AC70A37
            B464EB274CA02E0C6C7978489537313791BFC9D71D398CD991DA08DB5BA07E8A
            825545498514C89400ECD1EA8FC698F20F51EF0C9CC390DA6AE75C96A27B2F5D
            D03D732B5D870704631AFFE8503B1FA669C332E6F674075BCB23D7708673055D
            8B1B5B2847062B9DC2BBE5AC400AC06D93A800AC69331CCD7AC35FE9C63B275E
            5ADECC0FA8AD2DF921BD35B723AE8AD00580607806E8D27E4AFC3EE02B3E30A9
            BC724400A6B4FE40555159BAECA1FB7029DD87FF27640AF23F07AB4AD2B21339
            1EC5C5F5F99DBBC33C1AC5882D1405F63542AC7F70C2C8EFCDE665560046C08B
            824978F330837B7CE85A1A311B9E6EE2EEF037E2E3E6AB2D876BDAE8A462C267
            4C00F6868D3A14F2B447192DDADC9B5F1C2A49BD5BF45C85EEF57BA84D8C1648
            FA255D43A13E211D480158002900E70ED74FB9E50C40FE3C139CCC49AC400AC0
            B989148025ED3364CACD377104BFD5764824D90F720594AA4747CE30F5A2E094
            0BEB0E8AC6A21FD1D76E668EB3029AA03C9BDF8837BEF5966BA3D5B67470A0EF
            805AE39AFFD16A43B6E3676478EE070B5D9F5B6D48AEE3F1864F45C6EEA3AF34
            2E0545508C11A19171B83D9022218AEC7C1B455CA7A9FCBC8096DAB8B222B8BD
            E177E9E32481A4DF077C45A65FAC9B158039E8E7D656DEF57AA6EB616B5DDC86
            C8A60BEC32335EDCBE18AC2CBE2815F9966991E3F81657BDED2E6820BB36A0A2
            1E9BEC2EF58CED00D6EA6F025D9925989C37ACE39DD211AB32D5B8BD916FA905
            1C24921640BDC95F79E723D6DA1BFA852CE92D961A67077CC5375B696F3C4C0A
            C086DB7ACB1614E8A81F9D8C40982901B84C0B9FC07566845389B308055FA3F6
            61ECE8CFEC42256FF864CAF039FADA275E5A88B15E7E7FD1EA44F3CA150198AB
            05FBD56AB7FE940E5BC68E9DD8C7565020E411849EA95860B377D1B4E119DFFD
            BB0D4FC5D461885C38A62DF52FA7F97D45EF98CEC78C000CEC0770F013FC6525
            2B335107AEF1913340C167E86B4F81E46BB98A7FA8D58A936A3F991080CBCBEF
            3F3C06B1D7E8EBFE713341A6535F5A12F039A72653AEDD0D7779E46E06A80924
            DD4CD750C8334A3A9002B0005200CE1D5A6301B3CEB3A8E5CBF863598B148073
            1329004BDA67F0A46147A38AAF5A6D874492EDD0E4EC5570B48C9A3B62AEC9B8
            3C0827F69F380E0102291482D2042015F475456163DE7BB5F423ABADE9A8F41D
            10F81D3065313276B0D5B6EC002ACE258BC6CA970B1940D3B4BCC668EF134165
            17D13DD58FEEADD35276FF232B6D58CFEB9315A43C15E125D4AF9D102F9D435D
            954FE569C94CCDFD0F7745A492EA2E6E8C56AAD4FFAC5EF1F1A1D3A74F37E57A
            D8AC00DCB08E3BAC12015DE3C36701B067A8B07B0A245F852DF6C382C1E1EB93
            CDD7ED0DBF491FA7C74D88F858C37A1C966CFD644C002E0F2FA1FA8CDBF6B732
            3C99F87F99C4ED8D34D2C5881737BBD59B09D8F08F7EAD78A9B5F60AC44FFD9F
            CD6B977DD1A77722F1BE3385290118F01A9B3DCFB271D6017DD8F7C38727EEAE
            3D5302B0BB3C723E0D4C9FA3FBB5FD5005C08281CA2277DA2B6E67FBDC750731
            7BDE2BD440E3C6F8E49C9F5C5B5DF26EA279E582004CA3A00F8295457DD3658B
            C71BF6D1D8BB5C2831E21381AAE2EB3251476D5156FDC05EBCA9D9F0D8512064
            326049B0B23864BE5E4C09C07FE39D0B2EA975DD9A91C5C05B627CE322CA38AE
            504AFDEB0650D5D36BB43B3F4D26CF4C08C09EF2F02574BD1E27AB4584C70D4A
            0ACA958B8CD3227B03D36D60ACC3E74A4F9A5FFF3AC6E188B7D233E85691F324
            3A5E4C05520016400AC0B9C5B575434E50996D89D57648DA420AC0B989148025
            ED5338E5C6DFD95135BD925422D9AD40F603D8A2E7CD29999350FCBFD32F0BEE
            D1D4009FD10C20EEE4364BF80FD97ADB92574B5FB1DA908EC649E7DF7300E7FA
            FD6C8BCBAFD4BA014E126050FEFEC271D556DBB13BA1699AB28E75EB9A1783BD
            14B0D7516762BCBC55933C6D8C7EEE0CF88A1E4CF404A5E591A314685DFCD57E
            EC3960DF042A8B0ECD78C5B15671E80EFA10F1B8F043F3A69623EAEACCB9AF37
            2500037B9BEA21BE109A260A0BE7A9871CF5CBBB2020D813CDC8D8D0A0AF4830
            EEDCAED1B4077B34E94DC60EA076FB3163171540E22E12B727530230B5AD06FA
            E824921662ECFFFCFEA22F932D5BBA716B91F3998E2F0B267FCFA146CFD7B451
            EBACB4D9E3091D893610F64A9168BCEF4C614600A674A7F87D45FFB4DAE644C9
            9800EC8D8CA05E26AE6B79AACF51549F53325D0FAD71D263BDDEA23E306E3D80
            CA2EF66B457F4D34AF9C108019AF0CFA4A84175E99B6C51B7A9B6A3ABE6713D6
            DA66EEA236539F893A6AD7E6F2D03B0CE014B1D4F062C0E734EDE1C38C004C8F
            F4A75A364587981D53255C7EF7D43D999DFF83BE1E21907C133D09FA057C2392
            D215322100BBCA4377012875228B3F8D8511DF7CDEE74FD9BCC029DD8CD5EEFD
            83CAD54381615FC6D911A0C0C154FBBDE902E4B7FA99D9528F766A9FBFCEA1A8
            3F34C4E0F88BDE981480B31E2900E71E374CBEF94126B842439269A4009C9B48
            0158D23E43EB86766F61ECDF56DB2191642DC8FEAB837EE313A31E49CA75EE9F
            CE9F78B0CED158F9DFCBEA220915DB78A9AF60485779DD472F79965B6D4FB673
            D20581DFEBBA7A334D5CC7B02C137EB74113D0F7DE5F582AF4B256921EC668A1
            23F3B8321A118D050207247E26D8880ABB2838C1F96622479779C38338C347E2
            C55C43C6E62A315662455D711BBB594C4CC1158A9E777C4DCDF0FF9A39BF1901
            5861CA8D35BE118F5A510FDB7095879D001012DA490E58E750568F4D265E31D5
            CF64AA9F510249A30ED5DE3D156E34332100976AF57F52744550788325AC139C
            17F08C30E9F923F3782AC2617A6E3B05933FBC6685FDCFD3A727BE033455B8BD
            6163619D502C6660B6D3FCBE3F67EDA2552900B74DA202B0CB1B5A000CAE8A93
            6C3303B803A2F892157581B6D677F6F1C31500CE0A54160F4D349F5C10801987
            21816AE79C74D8B125A6AE62C4861559DCD38400838295CEE7335147EDE1F186
            CB68AC25B63813B1215055DC4528ED0E7998DA013CEBE0FDECB727E321C02CD4
            86FE456D48246C4EC71180BDE1C7A89F17DA618E1C5CC16A676D3265EA28B802
            D3BAA91B1A0F44C5B63F2A701A20FB13323C8EFE4B301C4462480138CB910270
            EE3164F2AD8771D08D95A987586D8B6467A4009C9B480158D23E85F30A55FB8F
            9DBFB7DA0E89241BA149498CA67ED71EBEF1A077937991BE8D13CEAB2DA37356
            B2E4770066A80218A7F22F45C6277CB0D03DCF6A73B291E3CF0BEEAB30BAA608
            46EC39D37148330932C63F5858DA31DA5E0E63B8876E617B1DC1B93E842E4A31
            13DC89B80BD6D2353D33E82B32BD88CBED8D0CA516F1108B17DB95B16F298F55
            165595F132E8A078890C9780548CCBFCBE116F98AA03333B80112E0854392DF5
            88B0F5E5B6712DE2BEFCA53A59166D6C3C76D2A4710D89E7A5BE4A053F337EDD
            6075A0AAD870D59D74ECCD4C08C02E6FB88E0E1A2998FC6187FAFBE19A764E2C
            D9B2A51B9737F23430BC42242D957F4A4DA5733400581683761B1E6F78398A3E
            3B11356A6B13ACB6B92DA400DC36890BC0E1AFA9AEE279A13076CD2DA39FA4DD
            DE27C8514CA05F9602308B72800B6A2B9DAFA7C38E2DAE8499A11FC4DD11486D
            EA3BA6E28556BBC1377079EF3F16584CD81DBC43C5FD34933170A500BC537E99
            7101FD21023B4E2C353F21E02BF9309932653B63CBA6FED166E33720C7B3E9B9
            61784433E2BADB3295BF1480B31C2900E71EFDB47EB67DBB1D64B866115D9D2A
            C9185200CE4DA4002C89CFE0C9435FA401AAC8A05B22D97D40B68933EE7E7CF4
            ECA75375CAE3FA69DD155BA7574064A740F63107555D3BB4EBA1DFEECE2EAA0C
            FAF69D66B7F559B7572CC6EE6008716394660DC870C9A2D2ACDC9DBCBB52A645
            8EE33A1A63EF8398A01BB31DC1D96B56E4DD6676279FA73C742B0224EC423A9B
            C88400CC75FDDCDA9ABBD2F2D2DA0C2E6F28080C4A45D2DA108EAEAA7226E4B9
            C2E30D9D8E0C8CF8AC3DE3248DEED9A5A0A72B45B102332100BB2BC24F515F78
            A5485A0016CA57568D4CC502B074E32E0F2D2283CF8D97CEF0EEA100B8FDBEEC
            D86DE42A0F3D281AC38FEEC4D9015FC9CD56DBDC6659A400DC2609BB80AE88AC
            A046DBC7EAF2A6881FA8CF4AD8F34787178081FDA428CAC01A6DC4C7E9B0C355
            11BE1C90CDA7AF7681E49F2B7AEC9C6C70295FAAD5EF0F3A7C42D756E8B907AA
            FD28BF36DC94702D05E09DF2CB8000ECF686FF431FF1433F218B06AA8AF2E29F
            B1E3A16975DD1BB9FD6CBA2F5DF4AB906BF6742105E02C470AC0B9C9D65DC0C6
            0A279160E8928C2105E0DC440AC092F80CB9E7A6E15C512AACB64322C91E9003
            80FFC775CBA72FD616A774E7CF09038247D124FF35B665E56B47E327B27D8E82
            D107DF5D5496F53111538D21FC42F70D67A38283E9D77E34693FC86A9B4C2105
            E0ACC48813DC18EB590C860B4000B3F3A30650D9097ECD5C8C527779D8C380D5
            585DF65490090118189EE1F715BF6575594BB5A9A7283A5FC8C4E6D10BFC95CE
            C24476797A2A22C311712A8BE7CE1ED99C4055D19054952F2302B037F4321312
            51A8DE80790395CE0E1137DDED0D1BEEE045E254C7A86497FBAB128F459A4A3C
            DEF06814144D890D74CDBB596D735B4801B86D9288014C6370CC15CF259BA9FD
            26FC0EB4C30BC08C7D1E43BC785255F1B7E9B0C35311BE9973F610407C2F4B08
            ECA38D0A9C3955736ECA441DB54759D9037BA1DAFC0EF583078BA4E7C0CEAFAD
            2C7AD554DD480178C7FC3223000B8EBDF0B380AFF8F7C99427DB28D6EABB76E2
            CAE05617D8C88CF8D6960BDC5200CE72A4009CBBDC306558094DB8EFB5DA0EC9
            F6480138379102B0243E83270D3D89A6D6CF586D87449245DC3F77D44C5FBA4E
            7EE279B51721B2BF585DC884416313119B58D084556FBDE54AC9CEAF2C07FA9E
            577B1E20ABC28EB97B7B0B5200CE6A468DBF6FBF7C857F67F66537DD8CEF07AB
            8A4CB54B8F37B400E3C755EC10EC4E02B0A6D5776DD2E139B2E86C91F40D2AEF
            16D24A3698CDC7E50D2FA57AFDBFF829D119F0154F4D55F932B403F8EFD4179E
            113F25E81CF541B555254FA5AA7CE9C2AD450E031D5FC2F8AE720D9A79331E52
            5B6BCE8568BA7079EB6F02A6CC124C2E05E02C211302B0A64DEAD5A43B565A5D
            D614B25B0BC000EC7D88C52E49D7AE5B8F373C72EB62129171EE3FE95A9C9289
            FA896BB7A7BE37DA95C55487478BA447C08B8295C5A674222900EF945F9A05E0
            D2F1F57F521445AC7FA7FA0E54160D4DA63CD904B5E7A3B90A2FD0B341684143
            A6900270962305E0DCC558E9FE45B7E56FD38D70B2D5B648B62105E0DC440AC0
            92F85C77CFB00314050DD7860556DB2291584C13309C3667D4ACB4BA461C38B0
            3E7F4574B31F9832CAEA022705B2E500F80C4DF29E69E8BEF99DCFE66B2D569B
            942A4E1E58DF95B7349D8600E722C3CB98901892E5480138EBD9F292CE70098D
            FB99394E47FB6113AB862F13CF470AC01D5100DE6AF764B25BE8D98188238355
            C5A6165D8FD526F6B1E9053FB0B86E34F17B95C359D5D545DFA5AA6CD9250033
            9D031B6876A79515746401D85D11BA96213CCA0462011AF7FAD7C7F4E9317F50
            7686A1900270DB2422007BB4C855A8E302ABCB9A32807D1CA82C3A36D1C3A500
            DC3E1D550036DCE436E976C32383908B5C290067BF00ECAA085D00082F0925CE
            1101B8B8B83EBF5377C545CFB6B1F4EB1E56DBB3335200CE72A4009CDB0CA91B
            763D67F810938243962005E0DC440AC092F85CAADDD1A96BD7E66928103B4C22
            C9658041B887DA6572A824D49CEEBC4EBF2CB847D3E6D6188BE7585DEE14B08E
            7E5628C0EE8B4637CFFA68B1B6CE6A8312A5EFF9938E44CEEFA0C9DA15F46B2F
            6A155D5A9DC5E5067CC9C2D25C71A59893200D664BC74F3D5651F00300B17706
            AD003C11A8745E279A5C0AC01D5800764FDD136D7CA5889B4BA35D3894954334
            4D130E65E0F28667509D0E1548FAB4BFD27975222EA6DB22CB04E0A843C58334
            2D3B84D276CBD48105604F79E41A6438976E3281B89DB091376FDAAFB6363B3D
            8F4801B86DA400CC0CAFF2B30295C543133D5C0AC0ED634600A6FBEF55BAFF44
            EA32ED68DAB44E8D7AF471B2E95291F45200960270B6D1EAC6DCD6FC1C223B81
            092CE612804E85CBA96E56D208F3DDD63F80F2295378C3F689802B2752CABB44
            4E2805E02C470AC0B9CDD0BAA1DD5B18FE956E074B83814BB62105E0DC440AC0
            92F8185E19BEDC63B946D3A55BADB64522B188469A693CF8D8E899814C667A72
            FFEABD62603776DF1F657505A40A9AB0ADA549EF029A95BD0E8AFA710B63DF7E
            FCCAB886E4CF9C16E0F8F382FBA80C0E26BB4F21BBAF46C115F81D112ADBDA0F
            1696F6B0DA0E497C3CDED058644AADF8E2037CC3A176B950D3863589A4767BC3
            8DF4E1B0BA9C2901D80FCDDD5B8EA81B3DBAD1CC611D5500DE6AFB3B64BBC8EE
            A5EF6D79B60155DE3F0B0901C5F5F5F99D57C29754E2DFC54D1C85C30301E7D7
            A92C57BA05E071E5F71EAE826ABC943D44207934A6AAFB2712B734D3EC2E0270
            EB0EE0A57D7ACC9F2F77005B8D14801300B02E50593C3AD1C3A500DC3E660460
            447C2058557C4726EA271E5200960270471680C76991BD551D1FA0AF97247038
            A79B7105750EDF23B2CFE879F237AEEA9FD56A25EF8A1C5C5A5E7F95028AD033
            420AC0598E1480739FEB26DF72A20AF8060DFA3B596D8B440AC0B98914802562
            DC30F9960100FC214CCDAA3D89A46301AC3ECA1BEAE78F9E6F4A404805279E57
            7B3A4D7A0C115860F74B47028C48C13F52DD7E0D0C3FA2E7D162D5DEE9F57FBE
            683E1E652A3116BCBCF04EC1894C6767537F77364DEDF7A789A72106649DBBAA
            9403306BC9ABE3865A6D86243E23B5BAEE8E987D01DD3FA29E397E44C62F0EFA
            4A84E6CE39250033F6C3CF6AE7C3670A8ADFBFD641471680BDF5C733A6BCCF04
            5E747360E78BBA317657840AE98047A8C0F9ED5708BCE850565E42FD294F65B9
            D22D00BBFD53F78446FE1A3D738F8B9796D2E860C30101AD78712ACB980E3AB2
            00ECF28607D1FD35871A95C8FC43C600CE12A4006C1E40E54A7FD58867123D5E
            0AC0EDD3515D408FD226F7C88BD95FA67BE94491F45200960270B6A06933BA37
            E90D4FD3D7B398D87DF72B48FD018D50A703D267D4B63C10B8735DEBBB031348
            0138879002F0EEC10D75C326D2C3680C1843028985480138379102B0448CA133
            863A5AD6B2776984D2D36A5B24920CD2C01027CD1D3DCBD4C42ED51CDF7FD2D1
            0A7063B56B67AB2B24037C4B03BE77392ACF03D37FE20AFB228FC7F466BD5373
            77D6BD55C059BCD89C9063D0AF9F6663EC40DB9ABC55AAD262B3ABF99B0B6832
            61D75B947C350F4EA23C8F438617B02DB17CF3CD9E3F17A0C976D107AF9646AC
            B6432286BB225CC3907944D303B24BFD55452F88A41575014D73B49B83BE92D9
            56D7453AE8C802B0C713EE89367887AED0E1F1D2D27DFF76B0B2C870791CEFC5
            1AB8CB23E554D809EDED3C37FCF2290CAFF057153F97EA7265970B68D039EA83
            6AAB4A9E4A7539538D3901185B546E3BA4BAFACE1FADB6DBC0E5ADBF0998324B
            30B91480B384EC1280E1C728C7D3EF49613CF26C440AC0EDD35105608FA7BE37
            DA95C55487470B1D80303050E51413177FAD1B2900EF905F3609C00C1E0DF89C
            3726531E2BB8E38E69F63DFBB444E81970BBF041C8A2345959AA00BFABA6F2AE
            D793B5410AC039841480770F864CBEF5300EBA11F43EEE0456924EA4009C9B48
            015822CE0D93875D4E83B2A956DB2191648846505845CB3E0D4FCC1F34DF7277
            82C70FA8BD45616C327DCDDA979BE98026452B6876BD893E7FA1CF1FB6FC0D7F
            4450B6EE2CE3BF285CFD4DBC3F045DA13407B77EA701000076A53F76A5DF3A01
            831E34C93C0081EDC9760F515D00D800C8AF797F914B6827A0C47AB6BA553344
            1AA155F5A0E2957EAD58687791780C607E6BC057F2B0D575910E3AB2006CF479
            65155303C8B054243D5771BFDA38B16C478D9A5C90DFC5FE0E95F6D838A7FB52
            477ED1C4AA9265A92E573609C086D04DCF95A280AF38EBC7C5E3C7870FD455F6
            0A95EB88F8A931064C1D60366676BA28F5864752075727921680BDEBAF2C3AD9
            6A9BDB420AC06D2305E0E4910270FB981380F1C3E64DD1D3EBEACC858E48075B
            C67AFC9F42A1175AE127D0B8EC4373752305E01DF24BB7003C3E7C16284CEC19
            0BECED4065D1E9C994C70A4ACB23572980C6FC40F4BDC54A1A58F941C747FDFE
            9295A9B1410AC039831480771F064FB9790CCD6327596DC7EE8D148073132900
            4B4C0137D40D35763A084DE625920E0BB2161BE367CC1E3DFB27167F57544630
            5C133FFF56C1448690707CB0DCC47007D5E62592DE6384C12F962C7419B1A6B3
            A2BD4BC4707B238D74C9845C350342A1BFCAF9A4485A710198DD1AF015490138
            CB0460035745FDA574CD9F12749D3B9DAEE3F0F61294061FDA43D9D4B886C50F
            05F29C435D7565AADD3F1B644400F6868D5D27FD841203BB2750593436D5E54C
            03E02E0FBF49F69E269096AE1BD07DED9C69B5D106AEF2D0C300304C2C350F07
            7C25C556DBDC6659A400DC268908C0C6B8B849EF25B240732DF2D865C1EA916F
            5A5D2FE9440AC0F1EC885C4FCF74C36389C833F19326357AD6146DD4BA4CD451
            7B8C1F7FDF7EBAA21B826E6FA10354383CA039BF369387148077CA2FCD0230B5
            43A0F628364602F6338D33F649A63C5640E5A36B8622D76C6B31F9597E5F89D1
            47A76C1E2A05E01C420AC0BB0F868017B3A92FD28D71A6D5B6ECBE4801383791
            02B0C41C43EA6EBE98333056E2CB5D73925CE55D8581EFD151333EB0DA90DF82
            D077C0C44AFA328AC97B50924A10CB962C72F9AD3643620E7779E87906708948
            5A730270B80419BB375E3A4A3337E82B1A6C753DA4838E2E001BB8BC9115645B
            9FF829F1C35863D39993268D6B68FB5CA1BF028381F1CEA4009C5B53E94CDA75
            DFAEC89000FC3C7D08DD53086CDA377FE8E39C3F6890E55E4204CAB5883EC462
            8603D6052A8BC7B02C581044762F655B4233C485AEC715C1CAA267ADB6B92DA4
            00DC368908C006D43E5AE8C3DE6E22648DD4770DA1E75FD6BB6B4F062900C7A9
            9F8AA9170372231EA95D20F97250D9057EADE8CB4CD451BB767BEB8F05A67C24
            9AFEE0FDED7966C5592900EF945FBA05E0D63CC2C678AB93485A88F13EA9DA15
            9B09A86CB7D1C70362A9E1BF3AD3AF9FE82B49B9D7112900E7105200DEBD181C
            1A7A0CEA6C1175B1622B9F2429460AC0B989148025E628D40AF3F2BA750A2283
            4156DB2291A41240C36B263E13055BC5FCD10FADB1DA9EB6E8D74F736CB277F2
            22B232AB6D91E40C4BF7886D3E66F1622D66B5211273B8C6872B403162B2C6C7
            8C005C5A1EBA5501785020E9C680AFA8ABD5F5900E724100765784AE660822D7
            7C13EA784DB0A6F8E55DFDA7CB15E806795D8C97F2F1E2A3AF5CB6B4CF3EF3E7
            A74710CD8400ECF1861F43C6AE134CFEBC43B55FA769C337A7A3BCA9C4E30D3D
            4D63F72B04934F77A8AB9C9A66FD33C1ED0DAFA70FA13EC6A12A876ADA886FAC
            B6B92DA400DC364908C046BF1467910B3DFD188EA6FA9C6275BDA4132900B74F
            9936F58F3CC6DFA59B2BDE73CCB8FFD651DBBD2A5D8B99CC40CFA40A7A26898D
            F31274832F05E09DF2CB8C00BC9C3E0E14494BD7E6E6A0AF64763265CA1423B4
            4897AE317C8BDA89C8F5D2A9705EBFCF19306235A5DA162900E7105200DEBDB8
            63DA1DF68D9B5B6AE9E61869B52DBB29CDA0B333E78C9DF99ED58698450AC0ED
            2105608979FA69FD6CFB743D701E4D324EA2218B50EC418924CB690484391BA3
            30E939D7C31B933F5DBA4138B1FFC400027332B913589214B89931F582250BC7
            E6B46BC45CC55D7EEF850C54A1F701660460B7373294DAC6434C20565EC3BA2F
            1CA150A8D9EABA4835B920001BB8BCE1D5347FEE11BF0C6C8CDF573479D77511
            1EC790D5C63B07025E18ACDCB5889C0A322100BBCA43C500502F92964EBE46E1
            705C75B5F33FE92A73AA70DF1DBE9771562298FC2D6CB15F1C0C0E5F6FA9CDDE
            FAE3A90B12F5C6126BDEB34FD7BAD1832C8FD9D91652006E9B440560AAD3A520
            B0431C1804FC3EA7C7EA7A4927520016B0C51B5E451F3D45D222B211C1AAA2FB
            325147716C7E9F3EFA0A2506A80E543ACBCDE62105E09DF2CB8C00FC17FAB848
            242D327CAA405D5D988ED01AA9A6AC227C1E4766CC3544166E2D8718FF53BA76
            374B0138879002F0EEC7E0FADBF6E77AEC1F7483EC67B52DBB218D6A4C3FE891
            718F981E985B8D1480DB430AC092C4B87ECA6D7B018F96D344432446A04492CD
            7CCB50D1BA74B6BD317DF8F48C4D6693E5E8C279798E75CB6F0764864B761177
            6612C96F00064FB528ECA68F5F69DBF5AB247B715784AE65088F8BA4352300BB
            C6DF7B3928EA5C26E09E4E5159DF1AAD280B5DE62747CE08C07787EB800B2DA0
            FE57C05774DCCE7FD434CDD614EB35930A19CFD5F74F5CC5936AB5E29FD25596
            4C08C063B449BDECBA43FC6524C2C04095F3A5749539558C2D9BF2479B6A137A
            7746CF852615F53F5455952CB3D2668F37FC2C32769960F2B7E87A9F61A5BDF1
            900270DB24BE0338F208DD8443E2A5A3FA7C95EAF30296056ECDD3851480056C
            F1865EA79CFA092546362B505534341375D4169E9A704F6C447AA6429E98C9EC
            DAA0AF689EE97CA400BC637E191080E97EF5D3FDEA164CBE1615FB71C109C3BF
            4FA65C9960EB736E221358404A63ECF240557175BA6C9102700E2105E0DD93C1
            93871E83C08CC17081D5B6EC66FC77EEA899FB5A6D44224801B83DA4002C491C
            6327F0BEDD0EAC375E7ED1C84568622291640DC87460B80C997AEBDCD10F67AD
            CBC078F4BD60E20D4CE70FD0F441288E9044B20D40B6E2FD45A57B5B6D872471
            3CDEFA09C8940A91B4A662007BEA7B731BBC050C0E8F9B18E1D34095F318ABEB
            22D5E48A00ECAE985AC8507F54E405B243857D34CDF9F30EC76B91C3988EAFD1
            D703DAAD0360A17C65D5C874EE50C98400DC5A666FD80803B1A7485A64ECF302
            75D51F3AC2CE1C777968135D2821AF211CE1EA5A0B63A616D7D7E7775E093F52
            CB12DBADC7D8F8A0AFA8C62A7B45900270DB24BE033834049832BB3502741CB0
            6553F760D06DE9AEF674220560813A2A0FDD456D52D415F82687BAAA27F5ED2D
            99A8A75DE1F6464650CB8D88A4A51B60938EF027EAB73F379B8F148077CA2F23
            0270E426D8E269C72690BC996E909B0395CE2792295726F094871FA6DE789840
            52AEABB0DFC49DC69CA9440AC039841480775F6E983CAC9C011A2F3BE48E974C
            81F8C2DCD1B32EB5DA8C449002707B480158921C867BFE4D8DB1EB19F25226F8
            B24C22B11C64EBE89F07559D4F7F64DC231D7EE7E389036AAFA619E85416370E
            9A44B215807FE9D1D8151F2DF62CB7DA1449E2B82AC2EF01B213851203BB2A50
            59F4B4F0B9CBE9DC2074EEB531B5F1C849DAB80EE725A83D724500D6B469BD9A
            F4A8F162F7A8B8E540769FBFAA688779814B0B9FC562EC356A0B6A3B87C6E8E0
            EB0295C5422FDA12255302B0C71B9E43CFD41BC48F504E4CF685732670978717
            51633D5730F9CA8675FC8050A8C412F7EE5B843D36835A65DC97E3882C4AF3FC
            61B5D5CE3956D82A5E262900B745A202705945E41C8EF81C7DED122F2D22BF23
            5855F280D575932EA4001C1F8F27DC1355F6A3481CE0ADDC4ECF910733514F3B
            A369912ECD3A3E49CFA20B040F790B62EC72BFBF68B5E97A9102F08EF9654000
            2E1D5F7F8AA228CFD3D75E22E991E1A305EA1F8669DA39B164CA966E445D961B
            8BF069DC7C583A6D7179EB6F02A6CC12492B05E02C470AC0BB2FB73C74CB1E8D
            EBF537684079BCD5B6EC2E20E0358F8D9C95D6497DBA9002707B480158920290
            41E1C4A17BD96DF828CDDEE2BE609448AC8406D93FF218BF6DEED8599FD03822
            575CC141DF0181AEF4F115FDF4B6DA1849D6D3C214E5D825AF8C5D6AB52192E4
            707BC3C6CE14A105B1087059B0D2F9BCE8B95D15E1A9D443DE299054A77E75B4
            DF57241437B5A3902B02706B59CA4373697C767DFC72B0359BD6F17DB717FD5C
            DEC85FA97C03E31CDAE4503BEFA969C39AD2598E4C09C0655AF804AEB3F79888
            0BC32D3CB76C699FABE6CF1FA4A7B3FCC9E2290F5F84C0FE227C80AAF60F6877
            BE96693B35ED755B93FE6F23F6E66D22E9E9222F5338EB5F5D5DF45DA66D3583
            1480DB265101785CF9BD87AB8AFA579A8B0A0809185BA3E6759BAE0DDF6C75FD
            A40329000BDA531EFE17DD602262A2C1AA5863E3419326653E4C4A59193D87D4
            56BD476C712FB247967DD1675822CF212900EF945F0604E051A32617E477C933
            C2A7C4BD370C8C1DDEF92AFE9F96C6301BA9809E73CBC8D643E226447C2C5055
            6C62A15D22B68482D427968AA4950270962305E0DD9BEB27DFFC7B1A501A1398
            03ADB625F781557347CDE8B02F94A500DC1E520096A48E1BEFBBB18FBE592D62
            0A5E4EFD86D06A46892453D0E07A2372368FB5B4D4CDF5CC5D6BB53DE9E0D873
            ABF6B3297946DC9DB82FFA25BB25C6AAF1D7548CDDF0EEA232D33B0424D985DB
            1B3989C671EF0A26FF3EA6EB174FAAB9EB53D1F3BB02D3BA4143D470851B5704
            43C65E6ED9D472655DDDE846ABEB2555E492005CAAD5EFAFE8CAB72CBEABC1CD
            F4AC1CE0F715BD63FCA269331C4D7A83D106DA0DBD44C78CA26344DD6A264CA6
            04E071E5F587AAA0BCCEE2B8BDDE06B5FF5574935CB6ADDEB295D2F2A9FFA700
            FF3B7D159BD7235BECB0C1A59AE6DC94693B55E0EFA3C0AECE2D66B2D7D7AEB0
            5F307D7AE6048944900270DB242A001B78BCE127A80D0C124C3E3C50E97C80E5
            CE02D05F312100AF5654B55F8D76A7F0782019B24D00A67A2AA57AF23391B10D
            B2A8A2B0DBFD9545B35986E34753BD4DA21CC788A6A7167DA9BFAAE88544F292
            02F04EF9654000DE5AAE009DC1257E04BCE2506D576A59BC88C5ED0D1BE385F8
            A12690CD095415C58DDF9E0CAEF2D07BF40C12F2922405E02C470AC092EB270F
            BD94060A8FD2D7AE56DB92D3205B3077F4CC6BAC362351A400DC1E520096A496
            C2C242D57E72A7E39802F7D068267EEC4089240320C3F7155DF1B46CDAF4F57C
            6DBE65B19C32C1E99705F768DAC446D03D18B0DA16495661BCA4B8CB6677CCFA
            E78B251BAC3646923C1E6FF81EBAA8A345D21A024981DAE7424D1B64AAFF737B
            C31FD1C7B102497545657FAAD18A3EB0BA5E52452E09C0ADE5F146FE412DE1E4
            38254106BC3250593C817E41D178890E755581A66969DDFD6B90290198CA626B
            8AF57A902EECCD260E5BBC6C699F01D9BC0B98CA95D7A8F79A4595729DE0218D
            0AB04B6B2A8B1665D24EB777EAEB8CF17EA2E95505CEAC9EE07C339336268214
            80DB261901989E53B7D0C74382C95FC316FB55C1E0F09C8B054CED6B3EB51B81
            7776D880C00A8395C519D112B24D00769787CE458005A2CF119A43BEDCB2299A
            D1056E63B4FAA3ED31789F2AA540F090EF1C6AE72313F5C22105E09DF2CB9000
            3C7E7CE4005DC12FE9AB43F41800BCCD5F592CDADF651CEA8FC5164AA4590076
            7BEB8FA7B6602C921589B12C05E06C470AC0124368C83BB573153DC0C7520F22
            74634B4C02AC893AE7C17347CD7CCA6A5312450AC0ED210560497A28D40AF3F2
            BA751A870C2EA741CDBE2838B691485205180BB791FDCC001F8FE2E6C8FCD1F3
            7366679A48F1FBF69F7439033E99BE1F6CB531124B59493F6F71AE8CFCF0B5B1
            59ED1E5322CED61D8A0BE9EB4122E901D80C7F65D12D66F3F1944FBD8C33FE0C
            1D2FF40C77A8FC004D2BF9C1EAFA4905B92600BB2AEA2F06549EA5AF6A9CA40F
            3AD45586EB6FDECC7BBD42CFD1FEED25A6F1DD94A0AF685426CA902901D8C053
            11BE91CA6EC48E133F07E084353FE75567F34E5457C5D462402EEEAE1DD9DB0E
            1B5C90895DC03468037745783075378F9838ECDFD45E8FD3342DABE3221A4801
            B86D9211800DDCDEF07FE8637FB1D4CA9D0EF597E9D466B8D5F5944ADCDED07D
            D4724444AB1664FCF6A0AF647646ECCA3201D888ADDBA4A3317E3A59F418AAAF
            9B33555FA5C187F65036351A71ADFB091EA233CE6F0C54973C96689E5200DE29
            BF0C09C006263D18187C6143B8B2AACAF97932654C17C202303DBBA9DED2F27E
            DE58ECD6ACF79A85E28BDDA4009CED480158625038B9B0C0C63A4FA001C338AB
            6DC949807DC69B95F31E773D9CD5B106DA430AC0ED210560491A4106D74EB9F1
            4815D59BA92FB9D16A7324BB13C81550E6638C3D3867EC8CCFACB6C622E0D873
            0247DB55750C3234EE3FB9506EB7C1706D889FD0C75C44DB1B1BECF60FBF7EF1
            7F313D251D1FF19D3E5B5039FCAEBADAF91FD3F9DC3DE577A0AB7F6120368626
            9BE6F116FB1DB9B0BB2AD70460B776DF414C8FBD48D6C67B11BF1A62ECFF301F
            F6643ABECCDA8FE5D6AC3036B4C657F47826CA904901D87881D8A4F732DE3509
            C5E7DB4A03200CF557399FCC447D24C2D8B1133BDB0A0ABE61A271255BC1F09A
            1579A3D32D6C9797870E8E29F002CD1F8E163E086048A0D239279D76A50A2900
            B74DB202B0A722723B22DECFC4E2766F3476F7072A8B9EB6BA9E5289BB225C4B
            F78ED03B516A5F55D4BE2A5806DC1A679B006CE029BFF72204553C1E3A3D1755
            152FACD68ADF4FB76DAD9E371804E922E50B1EF28E43B50F48C62DB0148077CA
            2F8302B0EBEEC8190AC767E9443D840F42F6B798ADB17092362EE13E335DB8BD
            E19FE963AFF865C086E68668EF74ECAC7797D70F00509E160D23612005E02C47
            0AC0926D144E1E556057D63E481D615A8388EF8670A6806BEE5D3326596D4832
            4801B83DA4002CC90C43EA871CCBB95AC7381C42A31CBBD5F64872146486EBC5
            AF50E1A31E1B39FB63ABCDC90A344DE9FB56E77154376554417B30B91BBF23D3
            4C17EF4DBA8EAF2383A3808131B13D0A19FF8A214499829FD0EF3FE583F2D4DB
            AF64DF4B815CC0E30D9FAC37177C160CDEB2092C8821A869AFDB9A629F7A1840
            A5F851B834E02B3E2AD13CDDDED034EA36EE103F42B973D9D25E0F64B32B5CA1
            72E79800DC5AA6F2F06C91057910C3A398AA1C8D8086B0DBDE98ED33876A3F29
            53F1E8322900B7D6977BEA21CCCE97C6A9839DD9407577BC83FDB23C5B77188E
            D7EE3D4DD755E3657FBCDDE05B406C608A726BA0D2F944BA6CAAAFAFCFFFF117
            E55100F1852D64D8426C69B82618747788052752006E9B6405E0522DB4AFA283
            B1AB53E85947F5FB1D32E5EA6485A26CC23561EAC510E362316091CD5AF6C51B
            B7CE9F3F3FEDCFE96C14800D3CDED0DF682C7DA6687A44FC875AE0B8A266FCED
            E9B10F11464F881C6ED7D93B202E06C614C4D13555C5A1E4EA420AC03BE49741
            0158D366389AF486F9F4F512530702FC4357D8951335E7CFC99435D5B8BDE12F
            E8E308C132DC40E38A8477AEEF8A5193271738D6E53D8BC8CE33739C1480B31C
            29004BB6E7C68937F6D16DCA02BA7DCEB0DA961CE2ADBCEE6CC0CC6133D31ED3
            299D4801B83DA4002CC91C85D3EEE896D7D8742143B80A655F2D4929C8690AF6
            114D2416449BF39E9EEF9EDE215E06669213CE9FD4173837DC740EB6DA168959
            0001F9DF518130736CFECB92E7B58C882D921DD1B469BD9A78EC79E068A367D8
            DCA8ADF1917BB4B1AB326983BB22ECA267E8F8AD8B394468A6F67366C0E77C2F
            D13CC768937AD975872182F5143DC6D85DD4A236DD9BE9FA49253929005784AE
            A6F6137F772AB07B18672BE8B3B6BD6408ECBE606591936560179941A605E03B
            EE9866EFB157F409AA902B5A4B2B8E11677D94435D353B1B5D134F9B36CDFEED
            0F51E385F3E5C20701FB9E9E4343FCBE92BFA7DA1E57605A37B6291A0460C34D
            1DC8F1BA4075F13C96A1F6977439A500DC26C90AC0749F294DB1DE5E1A2E69C2
            0701FB0C10EFE8087DB7086E2D7218D3F12BC1E46B55AE1E535D7DE78F69B72B
            6B05E0A96723E3C62EF03D850F0236C7A1F0119A56B22195B6B4BABF9F103913
            74F68C297B182C81983ED0EF2F5999645D480178FBFC3228001B8CF3D69FAD32
            78852A37CFC4619C9E137F652A77F9B592ACF176E62E0FCDA39BB95030F9126C
            D9D43F558BB85AC7363FC626D20D658C4B4D793E93027096230560C9CE0C9D31
            D4D1B29EBD4CDDF05956DB92036CA0FEE582396366FEC36A4392450AC0ED2105
            6049E619583F30BFBBDEFB04E010600A1C66B53D920E0EB2A8A270BF6D9D326B
            A6D6B1172CA59BBE7DA7D979CF8DA7AA3A9F83201A2B4D6225C0B049579461DD
            5A1A9E59BC5893EDDB425C5AF82C88B1D7E8A218BBE674BA3A9B19E36E87BAFA
            414DD35AD29EBF37FC1030761333F35203F00987B27A28D99754DB19E79D7AA6
            CAF00D132218A7CC5F73A82B2FC8D65D90F1C84501D810491A63BDD600B06E71
            92EAC8D8FA78BB901A62BC4F28C917CF66C8B4006C60ECFA47062F53DB8F5767
            3BD23A36C19AAFFEB0976FFEA0ECDB0D5F5A11EE6FB89D64009D4D94A91115FD
            FA60E55DCFB1148AAEC60B63AAE3AB000477241B99237BBCC0B66A7047EA5FA4
            00DC36C90AC0065BE23EF6FE19199A10D0D85A64FA88A0EFAE8CB8B14F371E6F
            643D95BFAB586A7C34E02B4E7B88A66C15808B8BEBF3BB74531EA2518D9985B1
            4876BEC61CEC5A7F59D1EA54D952A64DFD23D7F92B4CC475EEF675A6DA8FF26B
            C397269BBF148077CA2FC302300134E6BC871E6CA34C1E46CD17D7A20A83FD77
            8F78D90ACF443BE3F186C6D2F37CA26072238CC84D35BEA279C9E65B58384F3D
            F4A8155EBA43BD4C2C14C00E64BD007C43F8D60359545F6E95915683D0BCF763
            231FCBC8C341D27128AC1FD6DBCEB19EBA62E180DF925D802C18DDD050315F9B
            9FF6175AE9C61080759BFA267D3DCE6A5BB20D1AC1DEF3D8C81963ADB643B27B
            521819D1C5D6B4E90A05E0526A8B7DE94F0556DB24E918D0F486E616EC2B44F6
            6ABE0D1E98513223632FA07381532EAC3BA825161B4193C66BE9D7DF596D8F64
            977C6CECD4CBB3A991775E1EBDC66A6324C6CBFBD00DC0E0B7B1260196D3886A
            01C6F0553DCFF661B22FB1B7C7E3A9EFADABEC6C4551C730C453CC1E8F1CCE0C
            563BDF4CD68E51A32617E475C99B4DE5BFDAE44EC89FA8BB1E0751F5C54060C4
            DA54D5CBCE183B35BBEFDB7CBCC2E11287A2D46A9A7353B2E7CC4501B8B55CDE
            D09F1953A69ABC8EBF81AEEB53415FF1D599B4DD0A01D8C0E30D97537927D095
            36FD52911AC7DF80639DBE47A745B5AE5B37A6AA2E0C81CD1EE3673005BAE52B
            473DA269E798DE696CC40C45CEC602980A0DF10B25AE6631FE5832BBCE8CC508
            2DACD7715C872A6A4D034D56EA874D1B5BCE9D3265D4BA54D56726900270DBA4
            420036D8B258893FCB4CEDA264C602A9D98A0EF77DF555EF4FD219BEC08873AD
            DB94BE18837581AA110B537D7EEADF3FA0D673BC687A4028CCB7AD7C2A9D0B29
            B255003618575E7FA80D945791B1834D1D48FD3AE378B7C3B6FACD64BC3C9406
            1FDA43DDD838849EC63E66C2CB0A19D0048C7B69DC9192507D5200DE29BFCC0B
            C0CCE59AD60DF2A2C606CF53CD1F8D0D1CE17E05E089352B6C1F4D9F9E9A6B33
            76ECC4CE4A7EFEEF15152E02AE7EE0AF1AF15CDCBAD32217321D0D4157CC5311
            E2A79C29836AAB9C9F276A676969FDFE8A0346330E234CC4CEDE815863D72E93
            26DDD4908A7A338BD000AC55D450D5FF526A511750B903B2EFE68E9E7990D566
            48B293C1F583BB72DDE6A6B98C216CC9589326A1C1D74B4C895E3BA7644E4A5D
            9B5845A1569867EFDAF951EA2B455D51EC3E20BB9EFAD29C58F12AE9B8DC12BC
            658F0668395C556D83A9FFB912131CB849761390FD800CEF47BBFAF2E3C50FFF
            64B5391D178413FA4F3A0614369A265F375B6D8DE457FE4313412DCA5B5EFED7
            59B1FFB20EB4BB29D7717BC3FFA18FF676CE1BE2CE8F743F7D4963CE17996A7B
            29A0DDB93C91BCC695DF7FB80D747A1ED2BD89EC50FA93F9E722E0A04065F1FC
            94955F9B7C18E8794B9031C1DD455B41D648F5F10D0084F215362715E2EC360C
            811C5518010A5C82D8BA98A50F475E585B5512DFCD71BCF2E6A800DC5A673665
            397DED94CC7914502EA9A91CF1974CDA6E9500BCD515B4F182D7785626704E30
            FA86CF904178EDFEEA13D3937871EEF1864F4545B985717E1AFD7A0833766BB7
            6CDA2F11178AADE5EA137D804A64760C10A5FBFA9F004AB9DF37E20DB3F96A5A
            7DD7CD3118A500DC4EBFEE67F2F006E4707EB0DAF90EEB20AE9FB7614600269E
            A6F950CA1613250370FC2250555C67E618AB0460C35C7779A48C9E7F1398688C
            EBFF61CC295E5054B8AF46737E949ADADB826B7CF8729AE35E4DF7DAE9F4EB3E
            348FF921E82B168B9369261F6FC44DCF23BF89435672044F6D95F3A154DBB28D
            6C16800DCAB4C8713C86867717338B068C07C11A04788415C08480C7FC02B771
            65E1136C2A4C4263711F985B044F1DDFF3052A1F922A57D45200DE293F0B0460
            025CE323A783C217997405BD3D46E88EB775E4759DD535EF24BA3861F4F87B0E
            B02979972A0C0CAF4307D14F6F3AEF6381CAA221F18E1DA9D57577E87623EC8C
            192F7FCB91B39B83D545626D703BCA2AC2E7511F16A44B61B40FB37DFEAF58B9
            E84A68505938AF30CFFE63E757E9EBEEE8EE76F2DC5133C7586D84247B29AE2F
            CE5FAD6F2AA68E601CFDDAC76A7B3A08342FC5C551FBE6CBE63BE7A7ECE58CE5
            50A9AEAF1BEAA24165354BC01D440ED310CDEBB4F77CE7D4DCB9D6928E0E5C5B
            7BF321AA6AACDEC3936934746042BB2D24B907A211F3F41B50E0C93977CD7CD0
            78DB6EB549B9C449E7D51E4713AF4A0466BC5036B1025D92120C81CC68DF0C42
            08FAE34B16A626169224758C9D38BBB3BA7EC346933BE58C8EEA0B0594D790E1
            32407C5BE71C4151362A2AFFB50F0366B3C5A2B14E2AC0DEF49FE7D19F4EA623
            FB2661AE4E764EF5571695A4BA1ECACB43E7C6A07517F4DE891CDFFAC294E1E3
            80F0A2CE60998DDBD6E93ADBBCB68045A76BC377886DAD69F3F218FBD9B19EC5
            6C7666EBA434A90E5DC1AE0AB0034005EAB3F88500B08B5DD1707FC0E71CC192
            148772550036DCA436F15E0F52ED24E3FAF33D458F5D9AF117F51609C006E5E5
            F587C698FA288D4F4DEFC4DF0963D7ECB30C6181CED9CFA8F0F5F9686BD96C6F
            6CECC66C31BA7D95F551ECDC89E52B51804E0AC43A81AA1E8C3AEB4FF7CE05D4
            051DB2F3EE6D50F128BF569C901B5063079C0ACA02FA7A6C42A541F6021933AD
            05D927D0DCB86AD2A471BBDC41E3F1847B02A8FB70855FC08053DF0489781F59
            4D377551D057D421172F9B1480B389D7E85EEA6FE6000B0560A38F7334F1DE4F
            21C70BCD3EB3B762085B6FD15DF62460EC5DA6E6AF545A9A1BF3F294C6BBEF2E
            DEB8B39B55637CD0A5619DDADC4C37ADA2748A29AC8BC2782FBA318FE48803C8
            840BE846F9CDA6AD263DBAEF949A51FF4D4599B7E11A1F3E8B66CEC62E42530B
            7CA8ACEFD2843B4CC7FE1B19FF356404EAB602AAC02E548EE318E3C7280C9EF1
            5715BD60E6DCD92E001BF1773D15E1E164C11496C8623B0686DBED49D4DE5EE2
            76DBF75DD88A75BB0A0B3276ECECCEF9F91B7A313BDF4BD75527E56C78AC342B
            F471A39E58945F926CDCDFED9102F04EF9592300B7E2290F5D865BC6D95D923C
            D552EA7B5EE0A02F66A82CE7C89BC0C69A774EA432E8024CCD8BC6F8EF5405FA
            523BB890C6E8BB1AE77CB3418563A70A2CE2749747C6D058C9ECEE74E3F93E85
            A3FE44AC87FE43DDE8D18DBB4A64B86E2FE8093D555D3D9C33BD84CA78553BE7
            3404706002C2307276762202742A107B4821831BEA868D44E0B5546853018E3B
            383FA936DB198F143FF8ADD58648B29BC27985AAEDA73D4E05C42AEA80CE6A75
            18296913685D2DC4063F3E6AE672AB6D4935D7DD33EC004541E3C5CC0156DB92
            25E834D0F73C3672A6687C068924A3DC34F9A6FD74C6FE84A8F4A79E7B20FD38
            ACB649620518A349C813F4B9B073E7FC7F4E1F3E5D0A6369A25F3FCDB141ED74
            92026C084DC08632F32F2524E669A039DC3CAAEF05DC9EFFEE872F662E96A6C4
            1CEEF2B08B9E4381149D6E25FE7F7B7702264575EE0DFC7D4F75CFCAA288208A
            8E51A2510CF12AAE3737316EF7C9EA350673D5B85EA3D1992142040666202503
            CC2004741614BFB8C4250B932FB9B97E51E32789467389BB80915C21820A2A8B
            C83E4B779DF7BEA7070C4E18A667A6BBABA7F9FF9E67A6AB67AABA4E55579D3A
            55EF59F60A4E1A3DD724C98056927E630AA237CDAABC31A50F96F79832B5FE72
            4B7C3725DBBD5BA7643D33AF233706A3488BDE887CB23B57710FB0A5BFFEDDE5
            4507B1507F691F1F6FFF0FB6991E29309BAEEBEDB8CCB91A00762655D57F5FF7
            FD3CEA71C55879B0C0FBF0DA4C8FBF1A6600D8A9AABAF3D371364FF53078B90F
            BC5DC87EA0E59C66FD26B690B01EB312D17BF2834412BD98B9ED74630F77F120
            586EAAAD2EBFBBA7A99858593FDA18FE15F5F43E5928A627C12A9D58A3D7B48F
            029137F5F84A74A3CB2283F4F710DDBE12B27482CED7D34A667D3AF8EB2000DC
            B95406801DD7D30145BD3BF5DAE2863AE94D65E25D7ACCAED5EF6D8B086F1392
            4D7A7E7EB28B6871C7B47B1E2F6E3C6DD78AF4103D7F077539A6B5D80B6A678C
            4D6937D0BEDF78584B601FEB4E37D01DB6A55998B6EFF57E20EFD533979E833F
            D473707A773E32DB03C04EA292DFB6EDE5FA3DEBB6494F7B9074AD7157681EE8
            CA35AB2CC95EFB518ED2BF1FA9C7D2D1D4DE32B267F11B91A7DAC45C376F66E9
            BBA9DC7E04803BAC2FC4007062FD55F5E3F48470DD8217A7E2F334919BB8FDF8
            DC47052D19AC658F22FD5E0776F131EBF573CED3F3FF2F5DADCFF71716B50431
            97B7F5A03B6B7A5BF3D9D70DF1AB7A4CAE66CF4BDC1BD8B80C63A33F62466A3A
            4A34DD2E4FD97FCB79913FEBF1B0430B22E777B98FB23E00ACAE987DFD70C98B
            2DD1458627BB4C1FA7D7239EB36EEBEACAA7FDA77BDCD73E1C58125D00F72F9E
            C71E5D2B2E934020B8A380597EF6C82D3FE94D4DF0AC77F91D577F812CFF0E81
            24479EDAD1E67DF3BF26DD97B2B1A800D2E5B23BAE1FCA12BF4127BFC9220385
            195D44E7306EAFADD9CC420F7210DCF9D0848742198FE54076F6B9734B5A8D75
            0F782ED62FA458CB4D68899F3A717137D12C0F066CEE58F6E484ACE8E211F6AF
            A2AA61A99E0BC93C7C0A930BC63D5633BDF41B1D5B28A5DA94698DE3AC88EB59
            A75BDD1666C87253907FC1ACCAEFF6EA21722E0780DDB8836647B37B80DCD503
            BF7D8A4870DC8C19DF5F99E974871D00767CFFAE212D41E0C6C13B23D3DBDF19
            11593E7B4679AFF2273736699CF9F7D4DEDD63B669D10CEDDABE1CFC751000EE
            5CAA03C08E6B754E11FA99109FDFDB31CFD382657EEDF4F2F1A9FED8C9531BAA
            759B2BD3B1CDB91A00DE2BAD9335ADEEBA9F6DCF1A2C8BBC4DC180D36A6AAEFE
            30D51F8E007087F5851C0076F47A314D4FE0C93A992DCFAE5D6598EFD44E2FFB
            7532334F9CD6709E1172F3863564ED2E2BF15398BC1BF53A34AEAB99B51C3556
            CB51F56124B45B19F565F3AF3B8BC93EA093291F4320AB30C544E8A122F126DC
            3BFEDECD612707FA9ECBE65EF979F6CC77F560BA887A78C39B73845693E17A36
            6DF7E6CA98BFFB73F9BC6B2FD2C2769D4EA6A8E6769FE36AACFEDE10573C3CEE
            FE57C24E0C40775C35EBAA43E2F9348A8DE7BAC11BAD7FFA6CD86982D4E0F61B
            2857B3748916D29F6589FEF1E171F7A4A5F51A248D477F69F67136C297B090EB
            96F69CB013D4B7C99BBA4B17BB6EF62236FEE80B8BA7A4FC010EA44765654389
            35F44C7B8DF36CC60B4C90377DD6ACDE053E9335B9AAE12B96E52E4E596BC8D4
            D132C2A8D9D5E5CB7BF319B91C004E6CDFD486FFD4978BBABB9C08BDF2D6FF0C
            39BDA9E9D2A0BBCBF6563604809DC993EB4ED46B6335095FDCC32E6653AEC0B3
            037B3B1EE4A4A90D237573E6E9B7EC5ACB644BC5AFE5C266F2EC0C8F379D0E08
            00772E1D0160C7E519D68B4CD35CFA3ACABA9E6DF8F1D61DAD97CC9FBFEFAE4E
            7B2A3106673CEF59623929E529269A55535D5AE5A2D7C92ED39702C0AE9B66AF
            60CB77984CB56EECA161A5A38336DD3BF771BC5F553A82BF0E02C01DD6970501
            60677777D0EE9AD19DF174D347684AED8CB2A4C618775D35171FCC955A4E9A9A
            F964CACA8835D7CD9C59FA9CEEC3FFD07DF8E3AE17E2AADA19A533339D56A7DB
            85C86FFFE8AAE33CE33D42ED0F4473D12EBD224CEA57185D78CF8DF7642CA381
            DC93680D7C7071090554A367DA2561A7274C2CFC70904F537E7EF3FD6B0F94F1
            147DDF377F1BFAC1E0A0B9E51EDDE66E3FF4E8D3845AC8583F669BEB9AC637A5
            F446032093C68C19E3159C5E50D066E9A848D4BB4A98AE0A3B4DD0735AE87D95
            5916B51AF3F8C1F9D12D28E7651BE153BF7E5B61647BE1A05884E6B26B154C9C
            650FD1B299FC5684EF8EE615FCF1A87E87ED0C236802BD33695ADD57598C6B79
            D6DBF1B8D284B79B802F2B29F19ECCE4033957A68EC70F290998160BF1A7C2DE
            0B9FD8234467D754972DE9CD67E47A007877177D6E58856E7645C9A7D75697BE
            18469AB32500ECB871469B83C12EA0E7EBDB9E76199A327A237F52325D3376E5
            D65BE714470A0B1B74D295ADC30D020B3D5110895EE9FB377E48BD1CD33B1B20
            00DCB97405801D3D5723BB82436F30248D99D859DDB0D4B6DAAFDD7EFBD8B5A9
            FEE0C97EFD676CC04B92CD2B93C542F5ABFE67C8B8EE9465FB5200D87163024F
            A8AC1B19F1BC5FEADBE3C34C8BDA6E3CEF963C3AE461DFBFB457C35AEC0F02C0
            1DD6972501E0C4F8D4B72D38962CFD5CDF9C9A8E75742B3D243F9D5D5D7E45B2
            F32F5CB830FAD6DAD8DD9A0F5D97B144326DD0FD76BEA6F37597E489D31ABF64
            447EDFF572F28BDAE9E5FF9EB1747E22C93D708D7F4D41EB002AD78CF35BFAD6
            F5F91F7A41B4D73B8269B51E657F34621A1E1A7FDF4B61A70772CBD575571F1B
            0BF83B7AA07D518FB34F6BFE308C921820BC0FB39AB1BDADBF9F66C3773D72CB
            03A1DCBC6703373E74F4FDFE5F206BC7EADB93F56256C22EC7C93D6D7A4559AE
            6587272DC51FFAC5B88756849D208054FBBA7F43D1C081AD5FD2E3FCF396E8B3
            EC5AF8F77C8C31483721D7B2F72DCD719FB56C9F397ECB31AF677A1C41E8B9CF
            9DF7A3E3221C9CC76E6C6EE1E3F5FA790CF5742CABDCB34DF39F378568A5BE3E
            15B391DF2DFDFDF87561270A7AAF62EA9DA70A792E9A74A1BE3D3CECF4ECF6A1
            66A87F128A4E9B5DFDBDA56125C2F717E5B5D8F553343FB88CB2A54732E6C76B
            A7977EA5371F91EB0160677255C3F3C294548066F796AEA4189F515B7BF34761
            A4379B02C07B544CABBF44F7CB382DDBB88618E1751BCA525D3BBD7C5ACAB6AB
            72C11832B65227475286AFF15ABE58A6BF1B569D74E87D4D97E64EA52904803B
            97CE00F01EEE3AAE87F26D7ADD3C97B263F882ADC6A37367F96529EF95CD55D0
            DA151B7C8531B4805258794DCFCDFA552B723B00BCC744BFFE70B6663A8B7C4D
            DF0ECDF0EA77B8728C313C63967FF3B274AF0C01E00EEBCB9200F01EAE356DD1
            41668221BA4657786C3AD7B55F4C7FAD9D5E76427716F1FDFB0B9A839D357AED
            BB89D25B466AD104FE92E3724B4D4DD9C72DE52756359E6058DE4862F9E7F57B
            3C338DE9EB54CF0BAA427CE5DD571E6A7779C788C757E8FB7F4F0CEADC973005
            9AC9FE566F227F21717AB1DFC0BC35680D02E974CDFC6B0E6A0DE8308E708990
            9CC39218ACFC8B61A72B55344359A759C362CD0F7E65C8FCA575DBB6779AFCA6
            B4D520EB4BF6B408D7FDF24F36B05FD39B67D7B2294B5B787487BC24621E158F
            9E8AD8D8EA115B47AC4780050E0497CDBD6CB017293C8482E0F880F96B7A33F9
            D5B0D30409EE41C162B1F2FF3C0E96E6C5F2D6DF8731C8FBB45117CE292E201A
            62033E558CFDAA9631B2293096319218978B9ED1C2D69386E9098AD1072F3E3D
            F183B0D305A9E76AB2FFEDDDF80843A2E54572E3F61D16565AF4B8FBB978E6CE
            22DAF09A96EF5AC2DE378B162DF2962D5B7F54CC333773606F22E6E2D01223F2
            0B89F082D97E59720F333B712004802BA636B85619FF87926CE9D99387FFA994
            8D016067F2E4BA4329EAFD9B96717EA807C31121EC9A0FF54AF4FDDA99A53FA5
            14B694ADACBCEB88B8895FC1C4B75166C621DC28622B23E23D317366E9DA546E
            4B364000B8739908003BE57EDD80FED69C16085572FBF3BE705AB933AF1191FA
            562F76DF1DFEB82DE958C598318BBC4F9DB0E11CDDC087F54C4A5579E581026F
            E4777DFF4BF16417E8AB0160C705D25B8343CE12E229FAB65795CA92C78F8BA5
            5941EBAE57E7CE9DB033136B4400B8C3FAB22C00ECB89E0CE2F16125318E7D5B
            AFC91375D5991ED232AE79E62F6BAACB2EEB7EDA1BFBB558BA48CBD4F3F56D3A
            BA567F932C55C45B9B9FEC78CEE87ECB6B0906B726F1192DFA3D86523128A505
            D5CBE75D753AB1F9B266A8676A46E25AC5B84198DD4D992BC41585B1817A9AB4
            697A76E9D9D2ACE9D9CA421FEAF44BECC9638F8CFDC993A1A409602FEE62FFE6
            C035A3885D570B7C0C090FD7E9917AECBA16C27B9D3712D6A0E61DB02B84350B
            49A017841D4CB25ACFA9A7F5EF4B6247EC5CDE746953CED49E4DB7F671D5E59F
            F5BB1DA5FB709466C845A2F9A6E653EE82E0BABD0CB7C6A8EBAE5BA4458F49F7
            C06F87BEDFA5695DAF05D3A59EC873264F163F58F620C61604A0F64A1EF9038A
            CFB59C18C3F464F7D050840ED2F326130FB20E4C4231BD5EBA6E25B7683EB5C4
            185A5C5498F7342AF3E53ADF9C7641D1286BE91A613E5B2F55EE61D300FDC9F4
            0D6ABAB872D6664A3C5C20F7B0EE0566797C4BA4F077AB1E1F9BCC8D25E49889
            D3EAAF35C4AE92D1E7F4BA3298DB8FF7743D4C7679EA463DE69EB122F5B3ABC7
            86D6E2B72B93FD86E36C4037EABDFE57F41A70443AEF95F49E6797168A378BC8
            5A26F3848DE4DD7BBBFFDD9474A7792004802756D68F36861FA5A42A33485B20
            7CF19C19658F8595DE6C0D00EF51575797FFDE46BE568F889BF5983842840FA6
            F48C11ACF7F5BC41BF133DD6ED8305DEE61FA7B322C8CD7E63BFFE814CD00DB9
            54DF0EA7D47687FF916EC71A62F3EB02B3714E365468491704803B97A900F01E
            37DCB0307AC890F8457A768ED56BC8A7F54F43288DC160D172A37EF71BF4E725
            CBE6E1B7560C7E32531569DCD8DEFA72A7AEFB0CEAE5B9AB9FF1F3A38747AFEA
            4EF0AF2F0780F736616ADD173D323FD0C953A83D8895AAE1705CC39C4D7AA9F8
            B378B4B0D62FCD783C0401E00EEBCBC200F0DEA64CB963A8F522AE52827BBEE5
            2A9D0D48C36A023DDFB7EA3DFD7B5ACE58CC31B9A7A6666C322D693B55E1378E
            A0C0FE48C83D27A041D49B3C575C2C91D7EA71FBE342CF2CF0FDD21D9DAE776A
            C3467DE9A2612C8B98D8D1B36FBBE59D34ECCBFDAF392D9FAA7BF9F2DACB0FE2
            68FE3089D8C1627920BB2E1299876B017580583A52D75CA8F3F5D39BCBC375F6
            DD5F866643C425D46597D22E00256E67FD3D2360D9A8377E1FEAE726FEA73766
            DBF50B7AC78AD9AA1BB959BCE0236E2B78377ED4471F2140057D810B26141715
            0FDAF3BE2D1A5EEDFFBD0514B416C6BC8F7646BCB6A6F1F76E0E3B3DB9A2BCAE
            3C7F23EF3C241297C3AC04FABD7BC59AAF1DFC7121D6D0313ABDA7F0F7C9822D
            5344FF976C171DDBF4E7FD0E7F73DD46265AC8B124BA94B49A6FAE1123BB6C7B
            60651B07F4413C8F3F6C1A7BFFC6B0F71540B6BB72CE95C514C93FCA4AEC482D
            E3B8EE6B4ED5736AA47076E4E37D99962377E93E7563CFBDAC85C7E59A47AD89
            89F70EAE4707A6B3CE9A57D8D6DF96D840867B644BF45EE374BD869DA947CAD1
            7A3F908E9BD4747037F57FD59FD7F47AFB0E7BF49AFE6175D0165FEF6D1FB4EE
            E59733F7E003B25B6565E3917AB73CC20A1FAF45B5D32831661C9FD97E0FDD1B
            AECB325EE12AD268497FA927D1153367DED467BA1477018048DCBA07A523C9C8
            59D4DEC3522A7A09F8AB5E749E17E1BF1AB16FB0B56FE5E57DF446AA7BBAA9A8
            5A703E197B7E32F37A01DD357366D9DB69D88D69E55A9434DBC1376A59E8C8AE
            E665A6D67CDE34539709AD17A98913EFED6FF25AC6EBF1945465DCDAE9651561
            A4D38DAFDC1A04A78A045FD01D77B6FEE99F293595A19ED7EFE1057D7D51C47B
            BDC05BBF5CBF8FA45BE2F5D60FFC8583A3F1F868D16BBA96FBFE45F33B3DA7BB
            DFDA5FAFA51FE8727FD6F2E21211FB426B24B66CBE3F3EE7CB8B93A7D6FD8BB0
            E97B3D13195A55EB97FDB83B8B242A0DC4E56A365DE72D4E81E119FB7B809F2E
            2E0F6C090EFE9C903941F341BD4EF1E7F5FA7222F5BEDBF34DFAB3CC5DC799CD
            32FDEC5531432BE6F8A5A1F410E3FB75035AE37CAE9EBBEEF8FB3A75B34B63F7
            EC5E7FBDA8FBE9DE02B3E1FF76E77A3B796AC378BDD71ED2E58CC26B0B3C7A20
            8CE3A03B264DADFFAC613E59CB20170A25CA36C770F72BFAB4E9B22B74A125D6
            F27F47C42CCDCBDBF04626F3F3BDDD5A55FFA988E11B939B5B5EFEDB8AA1BFCA
            644F2093A6D57F5F77F1B0AEE673E51413F7EEE96D59B962DA9D176BC9EE8CAE
            D72712B3C17FCEADBEE5F94CED8B3DDCF8C0E3ABE61F1EF5F24E242B67EB31E9
            BA2F76F720BD19064DEF6DF975FD743754E48B62E94D63ED8A9A9AB1297BD69C
            A87C3334365A33900B0CD35745BA357CADD533ED2DCD2B9E226B9FB2515A72BB
            5FFE5E570B4DAAAA2F67C3FBED9DC57D9741B334A6634CF6AEE4E23894000000
            0059E7F2B9FF5122267E86169CBF2CED0FE93CD7DB8316C622929E961B7D59A0
            FBC6527B97CEDB74F7FC17B37DA1356FD7334DA54D597DC30ED94078F4857347
            5220DFB04CC7EAC9F52D4A54381557E9D43D6C73AFBCFB6FE93AF7763FB010F7
            AAC732EBCD24C7F5E6F9256672377DCFD8C02C7DE50FB7F6AAF638801B778A8D
            9CAB07F2112272B21E6B91DD2D703A1CDBB22A111071C79FC81AF2CC73071744
            975654DCB835EC6D48B5DD0F4E4F1157F94AE42416EE2FACAFC49F08960BC973
            7BA699F959A1E00D3166DDED7EF9CB9463DDC2C281616265DD99C6F0297AAC7F
            430FE07FED6436578E4A1CDFEE1C60366FEAE4BB64F8D7B5FECD6F85BD0DFBE2
            5AC545884FD38BE9B99AE843F57C75AD293F6ED5A3DBBB4DB765B94EACD7FFFF
            B716219F2FF4362FC7D04490AD6E9D33A738DA5C78928DD1052CF419BD460D62
            3223A8BD679BBF13795B4BAAEFBA492D3FBEA6D7B30D01D3F222B3E94FD9DC92
            BD3D00139C6D5DF092EC17F41C750198BD2B72B8608FE63DB2C98DF9A977C38F
            9DF299C3965D9A43E371A7D284AA85C77A26364A8F870B35F32ED9D7B1A279E0
            2A3D4ADE6196653ACF9FBC78F05AB6B67486BE6DD2D4BACF19F6468BD8D1898A
            D74C23F400FCC70A1F4C4BB51CBEDD552AD3E3F37DCF78CFCFF24B5FCB747A27
            F88D879980CF650E4E17A1E33AE4475B24511996D633C91F2242CFCE9831F66F
            61EEDF74C0C346000000800C73ADFE37B7ED38560C1FAE05D1E3C9F2F16478A8
            DED40DD79BFCA3C34E5F089AF567956EFF7B5A3C7D9F0DAFA0C0BE2FECADFEE9
            F8FBB2F26124F42D677CB96E40D0161FCC26F6292B66288BF4134387E9CD50BE
            DE0896246662CED763B05BAD15764B74E3C48920AF241ED2B956BC6C59D8D835
            81351BF3A2916D7F7E62DC9AB0F7030000E4B6F2F2BAFC7E03CD735A9E1CDDF1
            7FCCF44AD0B2F39CDB6F9FB43DEC740200000040FA21000C00000010B21B16DE
            E0BAA489B6ED6ACBA33C2A089ACD88C08B9F27648E62917F22E69E04A5B294C4
            49F8552659CA64D671D4FBFF2DDB831DFD3D6EB1CD36B6F32F3B634D4D18AE03
            32E7C4317E628885211B5D6BA243BBD51D5F6220B943377EDC55E91B4DE1755B
            0A00005031ADF1076465CE3EC6056E16A26B6657972D0A3B8D00000000901908
            000300000064B92BEAAE18C0CDF9C3386A8F0B488609F140C389F1AE8A45E820
            7D2D70D3C49247C2FD120BB971C4135DDCA6D50E126A2512FDE19DFAEAC674D9
            C6CC712BB2D5235A292CBB98789D35F26E2CC2EB9A4A1F08655C2A000000805C
            36CE9F37282F1E7D5CCB61A7EFE3DF8F6E5E1FBDE49E7B30B63C000000C08102
            0160000000803ECAF77DB372D0CA7EB6AD38CFE4D902C3AD512B9142F7BFC052
            7F2FD83DBE299B01CC72D4DECB5AB146FF51C24C459D7CFCDB4CFC0FE3ED8A95
            D73F9E36D4C21EB7498BC4B820D2CC414B209EEC6CF3DA2CC6EA05000000C89C
            8AAA86C9C43483F61A1F77B7B5CD05F1D17756623C4800000080030902C00000
            000000000000007DD42D53E60FCB37D1D5CC94FF0FFF64B9CD5AEF674591968D
            BE3F7E73D8690500000080CC4000180000000000000000A00F1A376E5E615E71
            DE83CCF4ADCEE7E2ADFA6B99903C19B1DEFD3367DEB42EEC7403000000407A21
            000C0000000000000000D0074D9CD6709E117A54270B935B42DE311E5F3CF387
            A5AF32B3849D7E00000000480F0480010000000000000000FAA08AAA863F10D3
            39DD59868976B098292B470D5ED074E9A541D8DB0000000000A9870030000000
            0000000000401F33B1AAF10466B99E894E249293887878F24BF37609ECB767CF
            2A7F3CECED0000000080D44300180000000000000000A08F9B3265FEB0C08B7E
            9145FE8D984FD53F8DD8DFFCCCF44ABED97486EFFBF1B0D30E00000000A98500
            300000000000000000408EF07D3F6F67FCE092087B370B5199FE29D2D9BC26A0
            5367CD2A7B25EC3403000000406A21000C000000000000000090635C20B82D18
            DC6889AEEF6C1E265A54535DF6EDB0D30A00000000A985003000000000000000
            00400E9A32E58EA1D68BACD1C9824E6679AFB6BAEC88B0D30900000000A98500
            300000000000000000408EAA98DAF081BE0CEDE4DF080003000000E420048001
            00000000000000007290EFDF5FD012ECDCA893FD3A9965696D75D9C961A71300
            000000520B01600000000000000000803E62CAD4C66B241EFCB6A666ECC6AEE6
            AD98D63081846793FEDAD7FF9964724D75796DD8DB0400000000A98500300000
            000000000000401F50EED70D288A9B0DCCB491987F4242BFF1AC792F1A6DD9E9
            FBE3B6EA2CE2FB8DFD5AC90E97803FAFEF6750E7DD3F53DCF386CEF56FDA10F6
            7601000000406A21000C0000000000000000D0074C9AD670130B2DD8F35E8836
            E9FBF78869A7BEDD4AA4EF88FA31C9709D28D169B39F8FFB4DCDF4D28B9913CB
            00000000400E410018000000000000000020CB8D19B3C83BF6331B1B88E47B29
            F8B86D86E99BB3A6972D0E7BBB0000000020F51000060000000000000000C872
            95958D470646FEA49347F6EE93783B8B4CCA8F6C5AE8FBBE0D7BBB0000000020
            F51000060000000000000000C87213AB161C6FD8BE41FBEFD6B92B6F9B20FE8D
            59B36E5916F6F60000000040FA20000C000000000000000090E56EBD754EB157
            5474BD11F9B225398D890725B9688C985E3444CF1A1BB977C68CEFAD0C7B5B00
            00000020BDFE17C86AB18BAF8777330000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 5.338590000000000000
          Width = 222.992211420000000000
          Height = 15.118080940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Municipio: [EMP_CIDADE] - [EMP_ESTADO]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 18.677180000000000000
          Width = 222.992211420000000000
          Height = 11.338550940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Ambiente Gerador: 2')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 30.574830000000000000
          Width = 222.992211420000000000
          Height = 15.118080940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo Ambiente: [AMBIENTE]')
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
        Height = 785.142208260000000000
        Top = 185.196970000000000000
        Width = 771.024120000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 725.669760000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 667.756340000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR TOTAL DA NFS-e')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 500.016080000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TRIBUTA'#199#195'O FEDERAL (EXCETO CBS)')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 440.543600000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TRIBUTA'#199#195'O MUNICIPAL (ISSQN)')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 695.213050000000000000
          Width = 200.315090000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR L'#205'QUIDO DA NFS-e + IBS/CBS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 13.897642670000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_CHAVEACESSO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_CHAVEACESSO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 44.244101800000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_NUMERONOTA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_NUMERONOTA"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.590560940000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_LOTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_LOTE"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 44.244101800000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_DTEMISSAO"] / [frxDBDataset3."NFS_HRCADASTRO' +
              '"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 84.039416450000000000
          Width = 204.094620000000000000
          Height = 35.905526460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'A autenticidade desta NFS-e pode ser verificada'
            'pela leitura deste c'#243'digo QR ou pela consulta da'
            'chave de acesso no portal nacional da NFS-e.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 72.590560940000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_DTEMISSAO"] / [frxDBDataset3."NFS_HRCADASTRO' +
              '"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO DA NFS-e')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 44.244101800000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_DTEMISSAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_DTEMISSAO"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 124.724497260000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PRESTADOR / FORNECEDOR')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 136.063079930000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 136.063079930000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 164.299327260000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 164.299327260000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_CIDADE] / [EMP_ESTADO]')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 164.299327260000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_CIDADECODIGO] / [EMP_CEP]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 136.063079930000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_FONE1]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 192.425196840000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_ENDERECO], [EMP_NUMERO] - [EMP_BAIRRO]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 240.889920000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TOMADOR / ADQUIRENTE')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 252.228502670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_TOMCNPJ'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOMCNPJ"]')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 280.354328260000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_TOMNOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOMNOME"]')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 252.228502670000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_TOMFONE1'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOMFONE1"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 252.228502670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_TOMIM'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOMIM"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 309.370098260000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_TOMENDERECO"], [frxDBDataset3."NFS_TOMNUMERO' +
              '"] - [frxDBDataset3."NFS_TOMBAIRRO"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 309.370098260000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_TOMEMAIL'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOMEMAIL"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 330.826808260000000000
          Width = 763.465060000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESTINAT'#193'RIO DA OPERA'#199#195'O N'#195'O IDENTIFICADO NA NFS-e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 280.354328260000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_TOMCIDADECODIGO"] / [frxDBDataset3."NFS_TOMC' +
              'EP"]')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 280.354328260000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
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
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_TOMCIDADE"] / [frxDBDataset3."NFS_TOMESTADO"' +
              ']')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 72.590560940000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_SERIE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_SERIE"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 104.826832670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Prestador')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 192.425196840000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_EMAIL]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 221.212764400000000000
          Width = 574.488560000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_REGIMEAPURACAOISS]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 221.212764400000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_ENQUADRAMENTO]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA NFS-e')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA DPS')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 30.236240000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COMPET'#202'NCIA DA NFS-e')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 30.236240000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA DA EMISS'#195'O DA NFS-e')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 60.472480000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA DA EMISS'#195'O DA DPS')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 90.708720000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMITENTE DA NFS-e')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 90.708720000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SITUA'#199#195'O DA NFS-e')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 90.708720000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FINALIDADE')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 60.472480000000000000
          Width = 181.417440000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE DA DPS')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 104.826832670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NFS-e Gerada')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 104.826832670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NFS_FINALIDADE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_FINALIDADE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530050000000000
          Top = 124.724497260000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 124.724497260000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF / NIF')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 124.724497260000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Indicador Municipal (Inscri'#231#227'o)')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 124.724497260000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 152.181207260000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome / Nome Empresarial')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 152.181207260000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio / Sigla UF')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 152.181207260000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo IBGE / CEP')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 181.417440000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 181.417440000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 208.874150000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Simples Nacional na Data de Compet'#234'ncia')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 208.874150000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Regime de Apura'#231#227'o Tribut'#225'ria pelo SN')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 240.889920000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 240.889920000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF / NIF')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 240.889920000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Indicador Municipal (Inscri'#231#227'o)')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 240.889920000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 268.126160000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio / Sigla UF')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 297.362400000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 268.126160000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo IBGE / CEP')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 268.126160000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome / Nome Empresarial')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 297.362400000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 330.157700000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 347.724458260000000000
          Width = 767.244590000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INTERMEDI'#193'RIO DA OPERA'#199#195'O N'#195'O IDENTIFICADO NA NFS-e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 347.055350000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 363.953000000000000000
          Width = 181.417322830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'SERVI'#199'O PRESTADO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 363.953000000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 363.953000000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo de Tributa'#231#227'o Nacional/Municipal')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 363.953000000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo da NBS')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 363.953000000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Local da Presta'#231#227'o / SiglaUF / Pa'#237's')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 408.307360000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o do Servi'#231'o')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 420.425480000000000000
          Width = 763.465060000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'NSI_DESCRICAO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_DESCRICAO"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 375.291582670000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3a."NSI_CIDADE"] / [frxDBDataset3a."ESD_SIGLA"] / [' +
              'frxDBDataset3a."PAI_SIGLA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 375.291582670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NSI_NBS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_NBS"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 375.291582670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NSI_SERVICO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_SERVICO"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 440.543600000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 440.543600000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo de Tributa'#231#227'o do ISSQN')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 440.543600000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio / Sigla UF / Pa'#237's de Incid'#234'ncia do ISSQN')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 467.779840000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BC ISSQN')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 451.882182670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            'Opera'#231#227'o Tribut'#225'vel')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 451.882182670000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3a."NSI_CIDADE"] / SC / [frxDBDataset3a."PAI_SIGLA"' +
              ']')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 500.016080000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 467.779840000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Al'#237'quota Aplicada')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 467.779840000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Reten'#231#227'o do ISSQN')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 467.779840000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ISSQN Apurado')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 500.016080000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IRRF')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 500.016080000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Contribui'#231#227'o Previdenci'#225'ria - Retida')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 500.016080000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Contribui'#231#245'es Sociais - Retidas')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 527.252320000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PIS - D'#233'bito Apura'#231#227'o Pr'#243'pria')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 527.252320000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COFINS - D'#233'bito Apura'#231#227'o Pr'#243'pria')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 527.252320000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o Contrib. Sociais - Retidas')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 556.488560000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TRIBUTA'#199#195'O IBS/CBS')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 556.488560000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CST / cClassTrib')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 556.488560000000000000
          Width = 385.512060000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'Indicador de Opera'#231#227'o / C'#243'digo IBGE Incid'#234'ncia / Munic'#237'pio Incid' +
              #234'ncia / Sigla UF')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 583.724800000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Exclus'#245'es e Redu'#231#245'es da Base de C'#225'lculo')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 583.724800000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Base de C'#225'lculo Ap'#243's Exclus'#245'es e Redu'#231#245'es')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 583.724800000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Red. Al'#237'quota IBS / Red. Al'#237'quota CBS')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 583.724800000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Al'#237'quota - IBS UF / IBS Mun')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 608.063390000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Aliq. Efetiva Municipal - IBS')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 634.299630000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor Total Apurado - IBS')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 608.063390000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor Apurado Municipal - IBS')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 634.299630000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Al'#237'quota CBS')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 608.063390000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Al'#237'quota Efetiva Estadual - IBS')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 634.299630000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Al'#237'quota Efetiva - CBS')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 608.063390000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor Apurado Estadual - IBS')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 634.299630000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor Total Apurado - CBS')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 667.756340000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 594.063390000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 569.716906450000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3a."NSI_CSTIBSCBS"] / [frxDBDataset3a."NSI_CLASSTRI' +
              'BIBSCBS"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 569.716906450000000000
          Width = 385.512001420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 594.063390000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_BASEIBSCBS'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_BASEIBSCBS"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 594.063390000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3a."NSI_ALIQIBSMUNRED"]  [frxDBDataset3a."NSI_ALIQI' +
              'BSUFRED"]  [frxDBDataset3a."NSI_ALIQCBSRED"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end
            item
            end>
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 594.063390000000000000
          Width = 200.315031420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3a."NSI_ALIQIBSUF"] / [frxDBDataset3a."NSI_ALIQIBSM' +
              'UN"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 618.961032670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_ALIQIBSMUNEFE'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_ALIQIBSMUNEFE"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 618.961032670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORIBSMUN'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_VALORIBSMUN"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 618.961032670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_ALIQIBSUFEFE'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_ALIQIBSUFEFE"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 618.961032670000000000
          Width = 200.315031420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORIBSUF'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_VALORIBSUF"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 707.331162670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_VALORLIQUIDO'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_VALORLIQUIDO"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 707.331162670000000000
          Width = 200.315031420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_VALORTOTALRTC'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_VALORTOTALRTC"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 680.984686450000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALDESCINCOND'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOTALDESCINCOND"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 680.984686450000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALSERVICOS'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOTALSERVICOS"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 668.535870000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR DA OPERA'#199#195'O / SERVI'#199'O')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 668.535870000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Desconto Incondicionado')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 668.535870000000000000
          Width = 200.315090000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Desconto Condicionado')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 695.213050000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR L'#205'QUIDO DA NFS-e')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 695.213050000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Total do IBS/CBS')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 695.213050000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Total das Reten'#231#245'es (ISSQN / Federais)')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 556.488560000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 480.000310000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NSI_BASEISS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_BASEISS"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 480.000310000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataField = 'NSI_ALIQUOTA'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_ALIQUOTA"]')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 480.000310000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            'N'#227'o Retido')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 480.000310000000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataField = 'NSI_VALORISS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_VALORISS"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 511.354662670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 511.354662670000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 511.354662670000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 537.472790000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 537.472790000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 537.472790000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '-')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 646.299630000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORIBS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_VALORIBS"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 646.299630000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_ALIQCBS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_ALIQCBS"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 646.299630000000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_ALIQCBSEFE'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."NSI_ALIQCBSEFE"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 646.299630000000000000
          Width = 200.315031420000000000
          Height = 13.228346460000000000
          DataField = 'NSI_VALORCBS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
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
            '[frxDBDataset3a."NSI_VALORCBS"]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 680.984686450000000000
          Width = 200.315031420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_TOTALDESCCOND'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_TOTALDESCCOND"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 707.331162670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
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
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 707.331162670000000000
          Width = 181.417381420000000000
          Height = 13.228346460000000000
          DataField = 'NFS_IBSVALOR'
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
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_IBSVALOR"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 756.795741800000000000
          Width = 604.724741420000000000
          Height = 24.566936460000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NFS_INFOADICIONAIS"]'
            '[TRIBUTOSAPROX]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 725.669760000000000000
          Width = 763.465054800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 626.087045000000000000
          Top = 1.000000000000000000
          Width = 82.000000000000000000
          Height = 82.000000000000000000
          CanShrink = True
          StretchMode = smActualHeight
          Expression = '<frxDBDataset1."NFS_LINK">'
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'NFS_LINK'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = 
            '68007400740070003A002F002F0065002D0067006F0076002E00620065007400' +
            '680061002E0063006F006D002E00620072002F0065002D006E006F0074006100' +
            '2F00760069007300750061006C0069007A00610072006E006F00740061006500' +
            '6C006500740072006F006E006900630061003F006C0069006E006B003D003100' +
            '3400380039003900320034003800340037003900380032003500310037003100' +
            '3100360032003500390033003600350039003600310030003300370034003500' +
            '3700330037003000300031003100380035003800330035003000310037003500' +
            '34003400'
          Zoom = 0.500000000000000000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 391.071120000000000000
          Width = 763.465060000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."ISS_DESCRICAO"]')
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
        Height = 22.677180000000000000
        Top = 1080.945580000000000000
        Width = 771.024120000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 394.118120000000000000
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
            'NFS02 - Runtime Sistemas')
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
        Frame.Typ = []
        Height = 26.456678260000000000
        Top = 1031.811690000000000000
        Width = 771.024120000000000000
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        PrintAtBottom = True
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA CIENTIFICA'#199#195'O')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 234.330860000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#186' NFS-e / CHAVE NFS-e')
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 11.338590000000000000
          Width = 347.716701420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset3."NFS_NUMERONOTA"] / [frxDBDataset3."NFS_CHAVEACES' +
              'SO"]')
          ParentFont = False
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 771.024120000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object MemoWatermark: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.944890430000000000
          Width = 763.465060000000000000
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
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NFS_BAIXADATA=NFS_BAIXADATA'
      'NFS_BAIXAPOR=NFS_BAIXAPOR'
      'NFS_BASEIBSCBS=NFS_BASEIBSCBS'
      'NFS_BASEIS=NFS_BASEIS'
      'NFS_BASEISS=NFS_BASEISS'
      'NFS_CANCELAMENTOCODIGO=NFS_CANCELAMENTOCODIGO'
      'NFS_CANCELAMENTODATA=NFS_CANCELAMENTODATA'
      'NFS_CANCELAMENTOHORA=NFS_CANCELAMENTOHORA'
      'NFS_CANCELAMENTOMOTIVO=NFS_CANCELAMENTOMOTIVO'
      'NFS_CBSCREDPRES=NFS_CBSCREDPRES'
      'NFS_CBSCREDPRESSUS=NFS_CBSCREDPRESSUS'
      'NFS_CBSDEVOLUCAO=NFS_CBSDEVOLUCAO'
      'NFS_CBSDIFERIMENTO=NFS_CBSDIFERIMENTO'
      'NFS_CBSMONO=NFS_CBSMONO'
      'NFS_CBSMONORETENCAO=NFS_CBSMONORETENCAO'
      'NFS_CBSMONORETIDO=NFS_CBSMONORETIDO'
      'NFS_CBSVALOR=NFS_CBSVALOR'
      'NFS_CHAVEACESSO=NFS_CHAVEACESSO'
      'NFS_CLIENTE=NFS_CLIENTE'
      'NFS_CODIGO=NFS_CODIGO'
      'NFS_CONDICAO=NFS_CONDICAO'
      'NFS_CONDICAOMEMO=NFS_CONDICAOMEMO'
      'NFS_CONSULTADA=NFS_CONSULTADA'
      'NFS_CSTISS=NFS_CSTISS'
      'NFS_DIAPREFERENCIAL=NFS_DIAPREFERENCIAL'
      'NFS_DTATUALIZACAO=NFS_DTATUALIZACAO'
      'NFS_DTCADASTRO=NFS_DTCADASTRO'
      'NFS_DTEMISSAO=NFS_DTEMISSAO'
      'NFS_FINALIDADE=NFS_FINALIDADE'
      'NFS_FORMAPAGTO=NFS_FORMAPAGTO'
      'NFS_GOVERNAMENTAL=NFS_GOVERNAMENTAL'
      'NFS_GOVERNAMENTALALIQRED=NFS_GOVERNAMENTALALIQRED'
      'NFS_GOVERNAMENTALOP=NFS_GOVERNAMENTALOP'
      'NFS_HRATUALIZACAO=NFS_HRATUALIZACAO'
      'NFS_HRCADASTRO=NFS_HRCADASTRO'
      'NFS_IBSCREDPRES=NFS_IBSCREDPRES'
      'NFS_IBSCREDPRESSUS=NFS_IBSCREDPRESSUS'
      'NFS_IBSMONO=NFS_IBSMONO'
      'NFS_IBSMONORETENCAO=NFS_IBSMONORETENCAO'
      'NFS_IBSMONORETIDO=NFS_IBSMONORETIDO'
      'NFS_IBSMUNDEVOLUCAO=NFS_IBSMUNDEVOLUCAO'
      'NFS_IBSMUNDIFERIMENTO=NFS_IBSMUNDIFERIMENTO'
      'NFS_IBSMUNVALOR=NFS_IBSMUNVALOR'
      'NFS_IBSUFDEVOLUCAO=NFS_IBSUFDEVOLUCAO'
      'NFS_IBSUFDIFERIMENTO=NFS_IBSUFDIFERIMENTO'
      'NFS_IBSUFVALOR=NFS_IBSUFVALOR'
      'NFS_IBSVALOR=NFS_IBSVALOR'
      'NFS_IDDPS=NFS_IDDPS'
      'NFS_INFOADICIONAIS=NFS_INFOADICIONAIS'
      'NFS_INTERMEDIARIOCPFCNPJ=NFS_INTERMEDIARIOCPFCNPJ'
      'NFS_INTERMEDIARIOIM=NFS_INTERMEDIARIOIM'
      'NFS_INTERMEDIARIONOME=NFS_INTERMEDIARIONOME'
      'NFS_LINK=NFS_LINK'
      'NFS_LOTE=NFS_LOTE'
      'NFS_MOVIMENTAFINANCEIRO=NFS_MOVIMENTAFINANCEIRO'
      'NFS_NUMERONOTA=NFS_NUMERONOTA'
      'NFS_OBRAART=NFS_OBRAART'
      'NFS_OBRACODIGO=NFS_OBRACODIGO'
      'NFS_OBSERVACOES=NFS_OBSERVACOES'
      'NFS_PROTOCOLO=NFS_PROTOCOLO'
      'NFS_PROTOCOLODH=NFS_PROTOCOLODH'
      'NFS_RECIBO=NFS_RECIBO'
      'NFS_RECIBODH=NFS_RECIBODH'
      'NFS_RETENCAO=NFS_RETENCAO'
      'NFS_RETENCAORESP=NFS_RETENCAORESP'
      'NFS_SERIE=NFS_SERIE'
      'NFS_SIMPLESNACIONAL=NFS_SIMPLESNACIONAL'
      'NFS_STATUS=NFS_STATUS'
      'NFS_TOMBAIRRO=NFS_TOMBAIRRO'
      'NFS_TOMCEP=NFS_TOMCEP'
      'NFS_TOMCIDADE=NFS_TOMCIDADE'
      'NFS_TOMCIDADECODIGO=NFS_TOMCIDADECODIGO'
      'NFS_TOMCNPJ=NFS_TOMCNPJ'
      'NFS_TOMCOMPLEMENTO=NFS_TOMCOMPLEMENTO'
      'NFS_TOMCONTATO=NFS_TOMCONTATO'
      'NFS_TOMCPF=NFS_TOMCPF'
      'NFS_TOMEMAIL=NFS_TOMEMAIL'
      'NFS_TOMENDERECO=NFS_TOMENDERECO'
      'NFS_TOMESTADO=NFS_TOMESTADO'
      'NFS_TOMESTADOCODIGO=NFS_TOMESTADOCODIGO'
      'NFS_TOMFONE1=NFS_TOMFONE1'
      'NFS_TOMFONE2=NFS_TOMFONE2'
      'NFS_TOMIE=NFS_TOMIE'
      'NFS_TOMIM=NFS_TOMIM'
      'NFS_TOMNOME=NFS_TOMNOME'
      'NFS_TOMNUMERO=NFS_TOMNUMERO'
      'NFS_TOMPAIS=NFS_TOMPAIS'
      'NFS_TOMPAISCODIGO=NFS_TOMPAISCODIGO'
      'NFS_TOMSITE=NFS_TOMSITE'
      'NFS_TOMTIPOPESSOA=NFS_TOMTIPOPESSOA'
      'NFS_TOTALDEDUCOES=NFS_TOTALDEDUCOES'
      'NFS_TOTALDESCCOND=NFS_TOTALDESCCOND'
      'NFS_TOTALDESCINCOND=NFS_TOTALDESCINCOND'
      'NFS_TOTALIS=NFS_TOTALIS'
      'NFS_TOTALISS=NFS_TOTALISS'
      'NFS_TOTALSERVICOS=NFS_TOTALSERVICOS'
      'NFS_TOTALTRIBUTOS=NFS_TOTALTRIBUTOS'
      'NFS_TOTALTRIBUTOSEST=NFS_TOTALTRIBUTOSEST'
      'NFS_TOTALTRIBUTOSFED=NFS_TOTALTRIBUTOSFED'
      'NFS_TOTALTRIBUTOSIMP=NFS_TOTALTRIBUTOSIMP'
      'NFS_TOTALTRIBUTOSMUN=NFS_TOTALTRIBUTOSMUN'
      'NFS_USUARIO=NFS_USUARIO'
      'NFS_VALORCOFINS=NFS_VALORCOFINS'
      'NFS_VALORCREDITO=NFS_VALORCREDITO'
      'NFS_VALORCSLL=NFS_VALORCSLL'
      'NFS_VALORINSS=NFS_VALORINSS'
      'NFS_VALORIR=NFS_VALORIR'
      'NFS_VALORISSRETIDO=NFS_VALORISSRETIDO'
      'NFS_VALORLIQUIDO=NFS_VALORLIQUIDO'
      'NFS_VALOROUTRASRET=NFS_VALOROUTRASRET'
      'NFS_VALORPIS=NFS_VALORPIS'
      'NFS_VALORTOTALRTC=NFS_VALORTOTALRTC'
      'NFS_VENDA=NFS_VENDA'
      'NFS_VENDEDOR=NFS_VENDEDOR')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 112
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
      'NSI_ALIQCBS=NSI_ALIQCBS'
      'NSI_ALIQCBSCREDPRES=NSI_ALIQCBSCREDPRES'
      'NSI_ALIQCBSDIF=NSI_ALIQCBSDIF'
      'NSI_ALIQCBSEFE=NSI_ALIQCBSEFE'
      'NSI_ALIQCBSRED=NSI_ALIQCBSRED'
      'NSI_ALIQIBSCREDPRES=NSI_ALIQIBSCREDPRES'
      'NSI_ALIQIBSMUN=NSI_ALIQIBSMUN'
      'NSI_ALIQIBSMUNDIF=NSI_ALIQIBSMUNDIF'
      'NSI_ALIQIBSMUNEFE=NSI_ALIQIBSMUNEFE'
      'NSI_ALIQIBSMUNRED=NSI_ALIQIBSMUNRED'
      'NSI_ALIQIBSUF=NSI_ALIQIBSUF'
      'NSI_ALIQIBSUFDIF=NSI_ALIQIBSUFDIF'
      'NSI_ALIQIBSUFEFE=NSI_ALIQIBSUFEFE'
      'NSI_ALIQIBSUFRED=NSI_ALIQIBSUFRED'
      'NSI_ALIQIS=NSI_ALIQIS'
      'NSI_ALIQISESP=NSI_ALIQISESP'
      'NSI_ALIQUOTA=NSI_ALIQUOTA'
      'NSI_BASEIBSCBS=NSI_BASEIBSCBS'
      'NSI_BASEIS=NSI_BASEIS'
      'NSI_BASEISS=NSI_BASEISS'
      'NSI_CBSCREDITOPRES=NSI_CBSCREDITOPRES'
      'NSI_CIDADE=NSI_CIDADE'
      'NSI_CIDADECODIGO=NSI_CIDADECODIGO'
      'NSI_CLASSTRIBIBSCBS=NSI_CLASSTRIBIBSCBS'
      'NSI_CLASSTRIBIS=NSI_CLASSTRIBIS'
      'NSI_CODIGO=NSI_CODIGO'
      'NSI_CSTIBSCBS=NSI_CSTIBSCBS'
      'NSI_CSTIS=NSI_CSTIS'
      'NSI_DESCRICAO=NSI_DESCRICAO'
      'NSI_IBSCREDITOPRES=NSI_IBSCREDITOPRES'
      'NSI_NBS=NSI_NBS'
      'NSI_NFSE=NSI_NFSE'
      'NSI_PAIS=NSI_PAIS'
      'NSI_PRESTADONOPAIS=NSI_PRESTADONOPAIS'
      'NSI_PRODUTO=NSI_PRODUTO'
      'NSI_QUANTIDADE=NSI_QUANTIDADE'
      'NSI_SERVICO=NSI_SERVICO'
      'NSI_VALORCBS=NSI_VALORCBS'
      'NSI_VALORCBSCREDPRES=NSI_VALORCBSCREDPRES'
      'NSI_VALORCBSCREDPRESSUS=NSI_VALORCBSCREDPRESSUS'
      'NSI_VALORCBSDEV=NSI_VALORCBSDEV'
      'NSI_VALORCBSDIF=NSI_VALORCBSDIF'
      'NSI_VALORDEDUCOES=NSI_VALORDEDUCOES'
      'NSI_VALORDESCCOND=NSI_VALORDESCCOND'
      'NSI_VALORDESCINCOND=NSI_VALORDESCINCOND'
      'NSI_VALORIBS=NSI_VALORIBS'
      'NSI_VALORIBSCREDPRES=NSI_VALORIBSCREDPRES'
      'NSI_VALORIBSCREDPRESSUS=NSI_VALORIBSCREDPRESSUS'
      'NSI_VALORIBSMUN=NSI_VALORIBSMUN'
      'NSI_VALORIBSMUNDEV=NSI_VALORIBSMUNDEV'
      'NSI_VALORIBSMUNDIF=NSI_VALORIBSMUNDIF'
      'NSI_VALORIBSUF=NSI_VALORIBSUF'
      'NSI_VALORIBSUFDEV=NSI_VALORIBSUFDEV'
      'NSI_VALORIBSUFDIF=NSI_VALORIBSUFDIF'
      'NSI_VALORIS=NSI_VALORIS'
      'NSI_VALORISS=NSI_VALORISS'
      'NSI_VALORTOTAL=NSI_VALORTOTAL'
      'NSI_VALORTRIBUTOS=NSI_VALORTRIBUTOS'
      'NSI_VALORTRIBUTOSEST=NSI_VALORTRIBUTOSEST'
      'NSI_VALORTRIBUTOSFED=NSI_VALORTRIBUTOSFED'
      'NSI_VALORTRIBUTOSIMP=NSI_VALORTRIBUTOSIMP'
      'NSI_VALORTRIBUTOSMUN=NSI_VALORTRIBUTOSMUN'
      'NSI_VALORUNIT=NSI_VALORUNIT'
      'ISS_ALIQUOTAESTADUAL=ISS_ALIQUOTAESTADUAL'
      'ISS_ALIQUOTAIMPORTACAO=ISS_ALIQUOTAIMPORTACAO'
      'ISS_ALIQUOTAMUNICIPAL=ISS_ALIQUOTAMUNICIPAL'
      'ISS_ALIQUOTANACIONAL=ISS_ALIQUOTANACIONAL'
      'ISS_CODIGO=ISS_CODIGO'
      'ISS_DESCRICAO=ISS_DESCRICAO'
      'ISS_DTATUALIZACAO=ISS_DTATUALIZACAO'
      'ISS_DTCADASTRO=ISS_DTCADASTRO'
      'ISS_HRATUALIZACAO=ISS_HRATUALIZACAO'
      'ISS_HRCADASTRO=ISS_HRCADASTRO'
      'ISS_USUARIO=ISS_USUARIO'
      'ESD_CODIGO=ESD_CODIGO'
      'ESD_NOME=ESD_NOME'
      'ESD_PAIS=ESD_PAIS'
      'ESD_SIGLA=ESD_SIGLA'
      'PAI_CODIGO=PAI_CODIGO'
      'PAI_NOME=PAI_NOME'
      'PAI_SIGLA=PAI_SIGLA')
    DataSet = QY03a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 304
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select * from NFSE'
      'where NFS_CODIGO=:codigo'
      '')
    Left = 192
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
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
  object QY03a: TFDQuery
    MasterSource = DS03
    MasterFields = 'NFS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR03a
    SQL.Strings = (
      'select * from NFSEITENS'
      'left join ISS on NSI_SERVICO=ISS_CODIGO'
      
        'left join ESTADOS on substring(NSI_CIDADECODIGO from 1 for 2) = ' +
        'ESD_CODIGO'
      'left join PAISES on NSI_PAIS=PAI_CODIGO'
      'where NSI_NFSE=:NFS_CODIGO'
      '')
    Left = 192
    Top = 352
    ParamData = <
      item
        Name = 'NFS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
