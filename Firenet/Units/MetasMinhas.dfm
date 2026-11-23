object FormMetasMinhas: TFormMetasMinhas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Minhas Metas'
  ClientHeight = 504
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  DesignSize = (
    592
    504)
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 30
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data Inicial:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 30
    Width = 130
    Height = 20
    AutoSize = False
    Caption = 'Data Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 316
    Top = 30
    Width = 77
    Height = 20
    Alignment = taRightJustify
    Caption = 'Data Final:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 400
    Top = 30
    Width = 130
    Height = 20
    AutoSize = False
    Caption = 'Data final'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 56
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Meta Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 136
    Top = 56
    Width = 130
    Height = 20
    AutoSize = False
    Caption = 'Meta Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 295
    Top = 56
    Width = 98
    Height = 20
    Alignment = taRightJustify
    Caption = 'Total Vendas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 400
    Top = 56
    Width = 130
    Height = 20
    AutoSize = False
    Caption = 'Total Vendas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 80
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Meta Atingida:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 136
    Top = 80
    Width = 130
    Height = 20
    AutoSize = False
    Caption = '0 %'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 16
    Top = 6
    Width = 113
    Height = 20
    AutoSize = False
    Caption = 'Meta Atual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 16
    Top = 158
    Width = 169
    Height = 20
    AutoSize = False
    Caption = 'Metas Anteriores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 112
    Width = 561
    Height = 33
    Position = 100
    Smooth = True
    BarColor = clBlue
    Step = 1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 577
    Height = 313
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMetas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MET_CODIGO'
        Title.Caption = 'C'#243'd.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_DTINICIO'
        Title.Caption = 'In'#237'cio'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_DTFIM'
        Title.Caption = 'Fim'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_METAVALOR'
        Title.Caption = 'Meta Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_TOTALVENDAS'
        Title.Caption = 'Total Vendas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_METAATINGIDA'
        Title.Caption = 'Meta Atingida'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MET_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Width = 28
        Visible = True
      end>
  end
  object DSMetas: TDataSource
    DataSet = QYMetas
    Left = 144
    Top = 256
  end
  object QYMetas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMetas
    SQL.Strings = (
      'select '
      'MET_CODIGO, '
      'MET_DTBAIXA, '
      'MET_DTFIM, '
      'MET_DTINICIO, '
      'MET_METAATINGIDA, '
      'MET_METAVALOR, '
      'MET_STATUS, '
      'MET_TOTALVENDAS, '
      'MET_VENDEDOR'
      'from METAS '
      'where MET_STATUS<>'#39'A'#39' and MET_VENDEDOR=:vendedor'
      'order by MET_CODIGO desc'
      '')
    Left = 216
    Top = 256
    ParamData = <
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMetasMET_CODIGO: TIntegerField
      FieldName = 'MET_CODIGO'
      Origin = 'MET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMetasMET_DTBAIXA: TDateField
      FieldName = 'MET_DTBAIXA'
      Origin = 'MET_DTBAIXA'
    end
    object QYMetasMET_DTFIM: TDateField
      FieldName = 'MET_DTFIM'
      Origin = 'MET_DTFIM'
    end
    object QYMetasMET_DTINICIO: TDateField
      FieldName = 'MET_DTINICIO'
      Origin = 'MET_DTINICIO'
    end
    object QYMetasMET_METAATINGIDA: TFMTBCDField
      FieldName = 'MET_METAATINGIDA'
      Origin = 'MET_METAATINGIDA'
      Precision = 18
    end
    object QYMetasMET_METAVALOR: TFMTBCDField
      FieldName = 'MET_METAVALOR'
      Origin = 'MET_METAVALOR'
      currency = True
      Precision = 18
    end
    object QYMetasMET_STATUS: TStringField
      FieldName = 'MET_STATUS'
      Origin = 'MET_STATUS'
      Size = 1
    end
    object QYMetasMET_TOTALVENDAS: TFMTBCDField
      FieldName = 'MET_TOTALVENDAS'
      Origin = 'MET_TOTALVENDAS'
      Precision = 18
    end
    object QYMetasMET_VENDEDOR: TIntegerField
      FieldName = 'MET_VENDEDOR'
      Origin = 'MET_VENDEDOR'
      Required = True
    end
  end
  object TRMetas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 256
  end
end
