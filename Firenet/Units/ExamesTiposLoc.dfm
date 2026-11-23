object FormExamesTiposLoc: TFormExamesTiposLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Tipos de Exames'
  ClientHeight = 416
  ClientWidth = 776
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
    776
    416)
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 304
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 80
    Top = 18
    Width = 54
    Height = 13
    Caption = 'C'#243'digo Alt.:'
  end
  object Label4: TLabel
    Left = 192
    Top = 18
    Width = 26
    Height = 13
    Caption = 'Sigla:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 761
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSExamesTipos
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
        FieldName = 'EXT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXT_CODIGO2'
        Title.Caption = 'C'#243'd. Alt.'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXT_SIGLA'
        Title.Caption = 'Sigla'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXT_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXT_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 480
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
    Left = 304
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 80
    Top = 32
    Width = 106
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 192
    Top = 32
    Width = 106
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object DSExamesTipos: TDataSource
    DataSet = QYExamesTipos
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
  object QYExamesTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRExamesTipos
    SQL.Strings = (
      'select '
      'EXT_CODIGO, '
      'EXT_CODIGO2, '
      'EXT_DESCRICAO,'
      'EXT_SIGLA, '
      'EXT_STATUS,'
      'EXT_VALOR'
      'from EXAMESTIPOS')
    Left = 200
    Top = 120
    object QYExamesTiposEXT_CODIGO: TIntegerField
      FieldName = 'EXT_CODIGO'
      Origin = 'EXT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYExamesTiposEXT_CODIGO2: TStringField
      FieldName = 'EXT_CODIGO2'
      Origin = 'EXT_CODIGO2'
      Size = 15
    end
    object QYExamesTiposEXT_DESCRICAO: TStringField
      FieldName = 'EXT_DESCRICAO'
      Origin = 'EXT_DESCRICAO'
      Size = 120
    end
    object QYExamesTiposEXT_SIGLA: TStringField
      FieldName = 'EXT_SIGLA'
      Origin = 'EXT_SIGLA'
      Size = 10
    end
    object QYExamesTiposEXT_STATUS: TStringField
      FieldName = 'EXT_STATUS'
      Origin = 'EXT_STATUS'
      Size = 1
    end
    object QYExamesTiposEXT_VALOR: TFMTBCDField
      FieldName = 'EXT_VALOR'
      Origin = 'EXT_VALOR'
      Precision = 18
    end
  end
  object TRExamesTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
