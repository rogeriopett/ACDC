object FormMdfeFast: TFormMdfeFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de MDF-e'
  ClientHeight = 320
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 260
    Top = 8
    Width = 330
    Height = 200
    Lines.Strings = (
      '01 - DAMDFE rodoviario (antigo MdfeQ01Rodoviario)'
      '02 - MDFe emitidos (antigo MdfeQ02)')
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
    ReportOptions.Name = 'MDF01'
    ReportOptions.LastChange = 46350.000000000000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure Overlay1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <OVERLAY> <> '#39#39' then'
      '  begin'
      '    Overlay1.Visible:=True;'
      '    Overlay1.Height          := Engine.PageHeight;'
      '    MemoCancelada.Left       := 0;'
      '    MemoCancelada.Top        := 0;'
      '    MemoCancelada.Width      := Overlay1.Width;'
      '    MemoCancelada.Height     := Engine.PageHeight;'
      '    MemoCancelada.Font.Size  := 70;'
      '    MemoCancelada.Rotation   := 45;'
      '  end else'
      '  Overlay1.Visible:=False;'
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
      end
      item
        Name = 'OVERLAY'
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
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object MemoCancelada: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[OVERLAY]')
          ParentFont = False
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
        Height = 158.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object ShapeQRShape7: TfrxShapeView
          AllowVectorExport = True
          Left = 400.905611340000000000
          Top = 28.000000000000000000
          Width = 354.403620770000000000
          Height = 72.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape8: TfrxShapeView
          AllowVectorExport = True
          Left = 400.905611340000000000
          Top = 1.000000000000000000
          Width = 354.403620770000000000
          Height = 26.456692913385830000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape6: TfrxShapeView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 400.629921259842500000
          Height = 126.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.020116060000000000
          Top = 2.000000000000000000
          Width = 122.413927130000000000
          Height = 62.000000000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 127.514507420000000000
          Top = 5.000000000000000000
          Width = 267.270407560000000000
          Height = 61.000000000000000000
          DataField = 'EMP_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_NOME"]')
          ParentFont = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 33.663829959514200000
          Top = 65.000000000000000000
          Width = 29.583365721997300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.605483750000000000
          Top = 4.000000000000000000
          Width = 85.689748990000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DAMDFE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 550.612743630000000000
          Top = 3.000000000000000000
          Width = 201.212792130000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento Auxiliar de Manifesto Eletr'#244'nico de Documentos Fiscais')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Top = 127.000000000000000000
          Width = 36.841491480000000000
          Height = 26.897650000000000000
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
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 305.014701754386000000
          Top = 138.000000000000000000
          Width = 40.804642375168700000
          Height = 15.000000000000000000
          DataField = 'MDF_ESTADOINI'
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
            '[frxDBDataset1."MDF_ESTADOINI"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 36.844874490000000000
          Top = 127.000000000000000000
          Width = 42.059385130000000000
          Height = 26.897650000000000000
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
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 78.629400810000000000
          Top = 127.000000000000000000
          Width = 56.759257540000000000
          Height = 26.897650000000000000
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
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 43.864990553306300000
          Top = 138.000000000000000000
          Width = 32.643713900134900000
          Height = 15.000000000000000000
          DataField = 'MDF_SERIE'
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
            '[frxDBDataset1."MDF_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 83.649516869095800000
          Top = 138.000000000000000000
          Width = 48.965570850202400000
          Height = 15.000000000000000000
          DataField = 'MDF_CODIGO'
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
            '[frxDBDataset1."MDF_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 135.063006770000000000
          Top = 127.000000000000000000
          Width = 45.956228480000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 184.641006747638000000
          Top = 138.000000000000000000
          Width = 61.206963562753000000
          Height = 15.000000000000000000
          DataField = 'MDF_DTEMISSAO'
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
            '[frxDBDataset1."MDF_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307932523617000000
          Top = 138.000000000000000000
          Width = 134.655319838057000000
          Height = 15.000000000000000000
          DataField = 'MDF_PROTOCOLO'
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
            '[frxDBDataset1."MDF_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 568.204645074224000000
          Top = 138.000000000000000000
          Width = 167.299033738192000000
          Height = 15.000000000000000000
          DataField = 'MDF_PROTOCOLODH'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 400.965959510000000000
          Top = 127.000000000000000000
          Width = 354.403620770000000000
          Height = 26.897650000000000000
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
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 400.965959510000000000
          Top = 100.000000000000000000
          Width = 354.403620770000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel125: TfrxMemoView
          AllowVectorExport = True
          Left = 162.198453441296000000
          Top = 138.000000000000000000
          Width = 16.321856950067500000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '/ [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRSysData1: TfrxMemoView
          AllowVectorExport = True
          Left = 138.735784075574000000
          Top = 138.000000000000000000
          Width = 21.422437246963600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel127: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 111.000000000000000000
          Width = 343.779112010796000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAVEFORMATADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 138.000000000000000000
          Width = 32.643713900134900000
          Height = 15.000000000000000000
          DataField = 'MDF_MODELO'
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
            '[frxDBDataset1."MDF_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 181.620890690000000000
          Top = 127.000000000000000000
          Width = 119.404584750000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA DE EMISS'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 301.362204720000000000
          Top = 127.000000000000000000
          Width = 47.343586320000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF CARREGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 348.919924430000000000
          Top = 127.000000000000000000
          Width = 51.724984790000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF DESCARREG')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 351.940040485830000000
          Top = 138.000000000000000000
          Width = 45.905222672064800000
          Height = 15.000000000000000000
          DataField = 'MDF_ESTADOFIM'
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
            '[frxDBDataset1."MDF_ESTADOFIM"]')
          ParentFont = False
          WordWrap = False
        end
        object BarCodeQRAsBarcode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 436.609673410000000000
          Top = 39.000000000000000000
          Width = 293.793425100000000000
          Height = 50.000000000000000000
          AutoSize = False
          BarType = bcCodeEAN128C
          DataField = 'MDF_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 3.193406794565217000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 249.928434547908000000
          Top = 138.000000000000000000
          Width = 48.965570850202400000
          Height = 15.000000000000000000
          DataField = 'MDF_HREMISSAO'
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
            '[frxDBDataset1."MDF_HREMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 65.000000000000000000
          Width = 99.971373819163300000
          Height = 13.000000000000000000
          DataField = 'EMP_CNPJ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 194.842167341430000000
          Top = 65.000000000000000000
          Width = 67.327659919028300000
          Height = 13.000000000000000000
          DataField = 'EMP_IE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_IE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 309.095165991903000000
          Top = 65.000000000000000000
          Width = 78.548936572199700000
          Height = 13.000000000000000000
          DataField = 'PAR_RNTRC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PAR_RNTRC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 175.459962213225000000
          Top = 65.000000000000000000
          Width = 13.261508771929800000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 265.230175438596000000
          Top = 65.000000000000000000
          Width = 37.744294197031000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNTRC:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 77.000000000000000000
          Width = 59.166731443994600000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 19.382205128205100000
          Top = 89.000000000000000000
          Width = 43.864990553306300000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 77.000000000000000000
          Width = 325.417022941970000000
          Height = 13.000000000000000000
          DataField = 'EMP_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 34.683946018893400000
          Top = 101.000000000000000000
          Width = 28.563249662618100000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 45.905222672064800000
          Top = 113.000000000000000000
          Width = 17.341973009446700000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel43: TfrxMemoView
          AllowVectorExport = True
          Left = 94.870793522267200000
          Top = 113.000000000000000000
          Width = 33.663829959514200000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel44: TfrxMemoView
          AllowVectorExport = True
          Left = 315.215862348178000000
          Top = 113.000000000000000000
          Width = 23.462669365722000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 113.000000000000000000
          Width = 19.382205128205100000
          Height = 13.000000000000000000
          DataField = 'EMP_ESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 134.655319838057000000
          Top = 113.000000000000000000
          Width = 174.439846153846000000
          Height = 13.000000000000000000
          DataField = 'EMP_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 344.799228070175000000
          Top = 113.000000000000000000
          Width = 47.945454790823200000
          Height = 13.000000000000000000
          DataField = 'EMP_CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 101.000000000000000000
          Width = 325.417022941970000000
          Height = 13.000000000000000000
          DataField = 'EMP_BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel45: TfrxMemoView
          AllowVectorExport = True
          Left = 69.367892037786800000
          Top = 89.000000000000000000
          Width = 325.417022941970000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_ENDERECO"], [frxDBDataset1."EMP_NUMERO"]')
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
        Height = 327.000000000000000000
        Top = 423.307360000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Left = 454.121240720000000000
          Top = 13.228346460000000000
          Width = 151.181102360000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTDE NF')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel27: TfrxMemoView
          AllowVectorExport = True
          Left = 151.373746900000000000
          Top = 13.228346460000000000
          Width = 151.181102360000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTDE CT-e')
          ParentFont = False
          WordWrap = False
        end
        object ShapeQRShape16: TfrxShapeView
          AllowVectorExport = True
          Left = 454.121240720000000000
          Top = 64.000000000000000000
          Width = 301.228346456692900000
          Height = 92.976377950000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape15: TfrxShapeView
          AllowVectorExport = True
          Left = 302.747493810000000000
          Top = 64.000000000000000000
          Width = 151.181102360000000000
          Height = 92.976377950000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape5: TfrxShapeView
          AllowVectorExport = True
          Left = 151.373746900000000000
          Top = 64.251968500000000000
          Width = 151.364820890000000000
          Height = 53.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape27: TfrxShapeView
          AllowVectorExport = True
          Top = 64.251968500000000000
          Width = 151.364820890000000000
          Height = 53.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Width = 755.304131520000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MODAL RODOVI'#193'RIO DE CARGA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Top = 13.228346460000000000
          Width = 151.364820890000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIOT')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Left = 605.494987620000000000
          Top = 13.228346460000000000
          Width = 149.809143900000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PESO TOTAL (Kg)')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Top = 40.220470000000000000
          Width = 302.362277950000000000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VE'#205'CULO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Top = 52.220470000000000000
          Width = 151.364820890000000000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PLACA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464240000000000
          Top = 25.000000000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_CIOT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_CIOT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 607.989171390000000000
          Top = 25.000000000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          DataField = 'MDF_PESOBRUTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_PESOBRUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933870000000000
          Top = 68.440940000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_CPF1"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel73: TfrxMemoView
          AllowVectorExport = True
          Top = 129.661410000000000000
          Width = 111.360969620000000000
          Height = 26.834645670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONS'#193'VEL CNPJ')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel74: TfrxMemoView
          AllowVectorExport = True
          Left = 111.212766530000000000
          Top = 129.661410000000000000
          Width = 108.601555680000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORNECEDORA CNPJ')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel75: TfrxMemoView
          AllowVectorExport = True
          Left = 219.968503940000000000
          Top = 129.661410000000000000
          Width = 82.393700787401570000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#186' COMPROVANTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel85: TfrxMemoView
          AllowVectorExport = True
          Top = 156.850393700000000000
          Width = 755.304131520000000000
          Height = 147.842610000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 155.057641030000000000
          Top = 25.000000000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDECTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_QTDECTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel26: TfrxMemoView
          AllowVectorExport = True
          Left = 302.747493810000000000
          Top = 13.228346460000000000
          Width = 151.181102360000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTDE NF-e')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 306.034817810000000000
          Top = 25.000000000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDENFE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_QTDENFE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 151.373746900000000000
          Top = 52.220470000000000000
          Width = 151.364820890000000000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RNTRC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Left = 302.747493810000000000
          Top = 40.220470000000000000
          Width = 452.787401574803200000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDUTOR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 457.011994600000000000
          Top = 25.000000000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDEMDFE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_QTDEMDFE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Left = 302.747493810000000000
          Top = 52.220470000000000000
          Width = 151.181102360000000000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel122: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464240000000000
          Top = 140.661410000000000000
          Width = 104.051838060000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel128: TfrxMemoView
          AllowVectorExport = True
          Left = 114.252998650000000000
          Top = 140.661410000000000000
          Width = 103.031722000000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 454.121240720000000000
          Top = 52.220470000000000000
          Width = 301.228346456692900000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Top = 117.543307090000000000
          Width = 302.362277950000000000
          Height = 11.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALE PED'#193'GIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel133: TfrxMemoView
          AllowVectorExport = True
          Left = 5.100580300000000000
          Top = 169.661410000000000000
          Width = 738.564026990000000000
          Height = 132.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."INFOADIC"]')
          ParentFont = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933870000000000
          Top = 84.440940000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_CPF2"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933870000000000
          Top = 100.440940000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_CPF3"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933870000000000
          Top = 116.440940000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_CPF4"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 307.054933870000000000
          Top = 132.440940000000000000
          Width = 142.816248310000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_CPF5"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 458.032110660000000000
          Top = 68.440940000000000000
          Width = 290.733076920000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_NOME1"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 458.032110660000000000
          Top = 84.440940000000000000
          Width = 290.733076920000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_NOME2"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 458.032110660000000000
          Top = 100.440940000000000000
          Width = 290.733076920000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_NOME3"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 458.032110660000000000
          Top = 116.440940000000000000
          Width = 290.733076920000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_NOME4"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 458.032110660000000000
          Top = 132.440940000000000000
          Width = 290.733076920000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MOT_NOME5"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 224.425533060000000000
          Top = 140.661410000000000000
          Width = 74.468472330000000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464240000000000
          Top = 68.440940000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_TPLACA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_TPLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464240000000000
          Top = 84.440940000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_RPLACA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_RPLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 155.057641030000000000
          Top = 68.440940000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_TRNTRC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_TRNTRC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 155.057641030000000000
          Top = 84.440940000000000000
          Width = 143.836364370000000000
          Height = 15.000000000000000000
          DataField = 'MDF_RRNTRC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MDF_RRNTRC"]')
          ParentFont = False
          WordWrap = False
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
      'select M.*,'
      
        '  EMP_NOME, EMP_CNPJ, EMP_IE, EMP_ENDERECO, EMP_NUMERO, EMP_BAIR' +
        'RO, EMP_CIDADE, EMP_ESTADO, EMP_CEP, PAR_RNTRC,'
      
        '  substring(M.MDF_CHAVEACESSO from 1 for 4)||'#39'.'#39'||substring(M.MD' +
        'F_CHAVEACESSO from 5 for 4)||'#39'.'#39'||substring(M.MDF_CHAVEACESSO fr' +
        'om 9 for 4)||'#39'.'#39'||substring(M.MDF_CHAVEACESSO from 13 for 4)||'#39'.' +
        #39'||substring(M.MDF_CHAVEACESSO from 17 for 4)||'#39'.'#39'||substring(M.' +
        'MDF_CHAVEACESSO from 21 for 4)||'#39'.'#39'||substring(M.MDF_CHAVEACESSO' +
        ' from 25 for 4)||'#39'.'#39'||substring(M.MDF_CHAVEACESSO from 29 for 4)' +
        '||'#39'.'#39'||substring(M.MDF_CHAVEACESSO from 33 for 4)||'#39'.'#39'||substrin' +
        'g(M.MDF_CHAVEACESSO from 37 for 4)||'#39'.'#39'||substring(M.MDF_CHAVEAC' +
        'ESSO from 41 for 4) as CHAVEFORMATADA,'
      
        '  replace(replace(M.MDF_INFOADICFISCO, ascii_char(13)||ascii_cha' +
        'r(10), '#39' '#39'), ascii_char(10), '#39' '#39') as INFOADIC,'
      
        '  (select MDM_CPF from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODIG' +
        'O order by MDM_CODIGO rows 1 to 1) as MOT_CPF1,'
      
        '  (select MDM_NOME from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODI' +
        'GO order by MDM_CODIGO rows 1 to 1) as MOT_NOME1,'
      
        '  (select MDM_CPF from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODIG' +
        'O order by MDM_CODIGO rows 2 to 2) as MOT_CPF2,'
      
        '  (select MDM_NOME from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODI' +
        'GO order by MDM_CODIGO rows 2 to 2) as MOT_NOME2,'
      
        '  (select MDM_CPF from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODIG' +
        'O order by MDM_CODIGO rows 3 to 3) as MOT_CPF3,'
      
        '  (select MDM_NOME from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODI' +
        'GO order by MDM_CODIGO rows 3 to 3) as MOT_NOME3,'
      
        '  (select MDM_CPF from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODIG' +
        'O order by MDM_CODIGO rows 4 to 4) as MOT_CPF4,'
      
        '  (select MDM_NOME from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODI' +
        'GO order by MDM_CODIGO rows 4 to 4) as MOT_NOME4,'
      
        '  (select MDM_CPF from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODIG' +
        'O order by MDM_CODIGO rows 5 to 5) as MOT_CPF5,'
      
        '  (select MDM_NOME from MDFEMOTORISTAS where MDM_MDFE=M.MDF_CODI' +
        'GO order by MDM_CODIGO rows 5 to 5) as MOT_NOME5,'
      '  '#39#39' as VAZIO'
      'from MDFE M'
      'left join EMPRESA on EMP_CODIGO=1'
      'left join PARAMETROS on PAR_CODIGO=1'
      'where M.MDF_CODIGO=:codigo')
    Left = 48
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
    ReportOptions.Name = 'MDF02'
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
    Left = 112
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
        Condition = 'frxDBDataset2."MDF_STATUS"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 57.126499325236200000
          Width = 580.446037786775000000
          Height = 20.000000000000000000
          DataField = 'MDF_STATUSDESC'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_STATUSDESC"]')
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
            'C'#243'digo')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 430.488977058030000000
          Top = 18.000000000000000000
          Width = 35.704062078272600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CTe')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 51.005802968960900000
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
            'Dt. Emiss'#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 660.015090418353000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Carga')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 123.434043184885000000
          Top = 18.000000000000000000
          Width = 81.609284750337400000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave Acesso')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 468.233271255061000000
          Top = 18.000000000000000000
          Width = 35.704062078272600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 505.977565452092000000
          Top = 18.000000000000000000
          Width = 35.704062078272600000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MDFe')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 562.083948717949000000
          Top = 18.000000000000000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Bruto')
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
          Left = 51.005802968960900000
          Width = 70.388008097166000000
          Height = 15.000000000000000000
          DataField = 'MDF_DTEMISSAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 42.844874493927100000
          Height = 15.000000000000000000
          DataField = 'MDF_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 430.488977058030000000
          Width = 35.704062078272600000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDECTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_QTDECTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 660.015090418353000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'MDF_VALORCARGA'
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
            '[frxDBDataset2."MDF_VALORCARGA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 468.233271255061000000
          Width = 35.704062078272600000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDENFE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_QTDENFE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 127.514507422402000000
          Width = 274.411219973009000000
          Height = 15.000000000000000000
          DataField = 'MDF_CHAVEACESSO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 505.977565452092000000
          Width = 33.663829959514200000
          Height = 15.000000000000000000
          DataField = 'MDF_QTDEMDFE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MDF_QTDEMDFE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 562.083948717949000000
          Width = 90.790329284750300000
          Height = 15.000000000000000000
          DataField = 'MDF_PESOBRUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."MDF_PESOBRUTO"]')
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
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
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
            'Quantidade: [COUNT(MasterData1)]')
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
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
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
            'Quantidade: [COUNT(MasterData1)]')
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
          Left = 379.081609280000000000
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
            'MDF02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
    Left = 112
    Top = 112
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      
        'select MDF_CHAVEACESSO, MDF_CODIGO, MDF_DTEMISSAO, MDF_PESOBRUTO' +
        ', MDF_QTDECTE, MDF_QTDENFE, MDF_QTDEMDFE, MDF_STATUS,'
      
        '  case MDF_STATUS when '#39'A'#39' then '#39'ABERTO'#39' when '#39'C'#39' then '#39'CANCELAD' +
        'O'#39' when '#39'F'#39' then '#39'FINALIZADO'#39' when '#39'V'#39' then '#39'VIGENCIA'#39' end as MD' +
        'F_STATUSDESC,'
      '  MDF_VALORCARGA'
      'from MDFE'
      'where MDF_DTEMISSAO between :datainicial and :datafinal'
      'order by MDF_STATUS, MDF_DTEMISSAO, MDF_CODIGO desc')
    Left = 112
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
    Left = 112
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
