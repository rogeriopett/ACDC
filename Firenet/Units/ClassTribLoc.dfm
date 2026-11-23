object FormClassTribLoc: TFormClassTribLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Classifica'#231#245'es Tribut'#225'rias'
  ClientHeight = 304
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
    304)
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
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSClassTrib
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CLT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLT_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 335
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLT_TRIBUTACAOREGULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Trib. Regular'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLT_ALIQCBSRED'
        Title.Alignment = taCenter
        Title.Caption = '% Red. CBS'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLT_ALIQIBSRED'
        Title.Alignment = taCenter
        Title.Caption = '% Red. IBS'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLT_REDBASE'
        Title.Alignment = taCenter
        Title.Caption = 'Red. Base'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLT_CREDITOPRESUMIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Cr'#233'd. Presumido'
        Width = 87
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
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object DSClassTrib: TDataSource
    DataSet = QYClassTrib
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
  object QYClassTrib: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClassTrib
    SQL.Strings = (
      'select '
      'CLT_ALIQCBSRED,'
      'CLT_ALIQIBSRED,'
      'CLT_CODIGO,'
      'CLT_CREDITOPRESUMIDO,'
      'CLT_DESCRICAO,'
      'CLT_MONODIFERIMENTO,'
      'CLT_MONOFASICO,'
      'CLT_MONORETENCAO,'
      'CLT_MONORETIDO,'
      'CLT_REDBASE,'
      'CLT_TRIBUTACAOREGULAR  '
      'from CLASSTRIB'
      '')
    Left = 200
    Top = 120
    object QYClassTribCLT_ALIQCBSRED: TFMTBCDField
      FieldName = 'CLT_ALIQCBSRED'
      Origin = 'CLT_ALIQCBSRED'
      Precision = 18
    end
    object QYClassTribCLT_ALIQIBSRED: TFMTBCDField
      FieldName = 'CLT_ALIQIBSRED'
      Origin = 'CLT_ALIQIBSRED'
      Precision = 18
    end
    object QYClassTribCLT_CODIGO: TStringField
      FieldName = 'CLT_CODIGO'
      Origin = 'CLT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYClassTribCLT_CREDITOPRESUMIDO: TStringField
      FieldName = 'CLT_CREDITOPRESUMIDO'
      Origin = 'CLT_CREDITOPRESUMIDO'
      Size = 1
    end
    object QYClassTribCLT_DESCRICAO: TStringField
      FieldName = 'CLT_DESCRICAO'
      Origin = 'CLT_DESCRICAO'
      Size = 300
    end
    object QYClassTribCLT_MONODIFERIMENTO: TStringField
      FieldName = 'CLT_MONODIFERIMENTO'
      Origin = 'CLT_MONODIFERIMENTO'
      Size = 1
    end
    object QYClassTribCLT_MONOFASICO: TStringField
      FieldName = 'CLT_MONOFASICO'
      Origin = 'CLT_MONOFASICO'
      Size = 1
    end
    object QYClassTribCLT_MONORETENCAO: TStringField
      FieldName = 'CLT_MONORETENCAO'
      Origin = 'CLT_MONORETENCAO'
      Size = 1
    end
    object QYClassTribCLT_MONORETIDO: TStringField
      FieldName = 'CLT_MONORETIDO'
      Origin = 'CLT_MONORETIDO'
      Size = 1
    end
    object QYClassTribCLT_TRIBUTACAOREGULAR: TStringField
      FieldName = 'CLT_TRIBUTACAOREGULAR'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      Size = 1
    end
    object QYClassTribCLT_REDBASE: TStringField
      FieldName = 'CLT_REDBASE'
      Origin = 'CLT_REDBASE'
      Size = 1
    end
  end
  object TRClassTrib: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
