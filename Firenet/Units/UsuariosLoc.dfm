object FormUsuariosLoc: TFormUsuariosLoc
  Left = 193
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Usu'#225'rios'
  ClientHeight = 408
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    408)
  TextHeight = 13
  object Label2: TLabel
    Left = 130
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 761
    Height = 337
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSUsuarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_LOGIN'
        Title.Caption = 'Login'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOME'
        Title.Caption = 'Nome'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_VENDEDOR'
        Title.Caption = 'C'#243'd. Vend.'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Vendedor'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_LOGADO'
        Title.Caption = 'Logado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_SENHAEXPIRADA'
        Title.Caption = 'Senha Exp.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USU_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_TEMA'
        Title.Caption = 'Tema'
        Width = 267
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 128
    Top = 32
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DSUsuarios: TDataSource
    DataSet = QYUsuarios
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
  object QYUsuarios: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRUsuarios
    SQL.Strings = (
      'select'
      'USU_CODIGO, '
      'USU_LOGADO, '
      'USU_LOGIN, '
      'USU_NOME, '
      'USU_PASSWORD, '
      'USU_SENHAEXPIRADA, '
      'USU_STATUS, '
      'USU_TEMA, '
      'USU_VENDEDOR, '
      'VEN_NOME'
      'from USUARIOS'
      'left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO'
      '')
    Left = 192
    Top = 120
    object QYUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYUsuariosUSU_LOGADO: TStringField
      FieldName = 'USU_LOGADO'
      Origin = 'USU_LOGADO'
      Size = 1
    end
    object QYUsuariosUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYUsuariosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 80
    end
    object QYUsuariosUSU_PASSWORD: TStringField
      FieldName = 'USU_PASSWORD'
      Origin = 'USU_PASSWORD'
      Size = 40
    end
    object QYUsuariosUSU_SENHAEXPIRADA: TStringField
      FieldName = 'USU_SENHAEXPIRADA'
      Origin = 'USU_SENHAEXPIRADA'
      Size = 1
    end
    object QYUsuariosUSU_STATUS: TStringField
      FieldName = 'USU_STATUS'
      Origin = 'USU_STATUS'
      Size = 1
    end
    object QYUsuariosUSU_TEMA: TStringField
      FieldName = 'USU_TEMA'
      Origin = 'USU_TEMA'
      Size = 50
    end
    object QYUsuariosUSU_VENDEDOR: TIntegerField
      FieldName = 'USU_VENDEDOR'
      Origin = 'USU_VENDEDOR'
      Required = True
    end
    object QYUsuariosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRUsuarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
