object FormMetasLoc: TFormMetasLoc
  Left = 0
  Top = 0
  Caption = 'Localizar Metas'
  ClientHeight = 368
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    784
    368)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Vend.:'
  end
  object Label3: TLabel
    Left = 154
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMetas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'MET_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_DTINICIO'
        Title.Caption = 'Dt. In'#237'cio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_DTFIM'
        Title.Caption = 'Dt. Fim'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Width = 294
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MET_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_METAVALOR'
        Title.Alignment = taRightJustify
        Title.Caption = 'Meta'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MET_METAATINGIDA'
        Title.Alignment = taRightJustify
        Title.Caption = 'Atingida'
        Width = 84
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 152
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object DSMetas: TDataSource
    DataSet = QYMetas
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYMetas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMetas
    SQL.Strings = (
      'select '
      'MET_CODIGO,'
      'MET_DTFIM,'
      'MET_DTINICIO,'
      'MET_METAATINGIDA,'
      'MET_METAVALOR,'
      'MET_STATUS,'
      'MET_VENDEDOR, '
      'VEN_NOME'
      'from METAS'
      'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO'
      'order by MET_VENDEDOR, MET_CODIGO desc'
      ''
      '')
    Left = 200
    Top = 120
    object QYMetasMET_CODIGO: TIntegerField
      FieldName = 'MET_CODIGO'
      Origin = 'MET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object QYMetasMET_VENDEDOR: TIntegerField
      FieldName = 'MET_VENDEDOR'
      Origin = 'MET_VENDEDOR'
      Required = True
    end
    object QYMetasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRMetas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
