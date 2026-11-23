object FormCstLoc: TFormCstLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar CST'
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
    DataSource = DSCst
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
        FieldName = 'CST_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 362
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_EXIGETRIBUTACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Exig. Trib.'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_REDALIQUOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Red. Aliq.'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_REDBASE'
        Title.Alignment = taCenter
        Title.Caption = 'Red. Base'
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_TRANSFCREDITO'
        Title.Alignment = taCenter
        Title.Caption = 'Transf. Cr'#233'dito'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_DIFERIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Diferimento'
        Width = 62
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
  object DSCst: TDataSource
    DataSet = QYCst
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
  object QYCst: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCst
    SQL.Strings = (
      'select '
      'CST_CODIGO, '
      'CST_DESCRICAO,'
      'CST_DIFERIMENTO, '
      'CST_EXIGETRIBUTACAO, '
      'CST_REDALIQUOTA, '
      'CST_REDBASE,'
      'CST_TRANSFCREDITO '
      'from CST'
      '')
    Left = 200
    Top = 120
    object QYCstCST_CODIGO: TStringField
      FieldName = 'CST_CODIGO'
      Origin = 'CST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYCstCST_DESCRICAO: TStringField
      FieldName = 'CST_DESCRICAO'
      Origin = 'CST_DESCRICAO'
      Size = 50
    end
    object QYCstCST_DIFERIMENTO: TStringField
      FieldName = 'CST_DIFERIMENTO'
      Origin = 'CST_DIFERIMENTO'
      Size = 1
    end
    object QYCstCST_EXIGETRIBUTACAO: TStringField
      FieldName = 'CST_EXIGETRIBUTACAO'
      Origin = 'CST_EXIGETRIBUTACAO'
      Size = 1
    end
    object QYCstCST_REDALIQUOTA: TStringField
      FieldName = 'CST_REDALIQUOTA'
      Origin = 'CST_REDALIQUOTA'
      Size = 1
    end
    object QYCstCST_REDBASE: TStringField
      FieldName = 'CST_REDBASE'
      Origin = 'CST_REDBASE'
      Size = 1
    end
    object QYCstCST_TRANSFCREDITO: TStringField
      FieldName = 'CST_TRANSFCREDITO'
      Origin = 'CST_TRANSFCREDITO'
      Size = 1
    end
  end
  object TRCst: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
