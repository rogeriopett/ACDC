object FormEtapasLoc: TFormEtapasLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Etapa'
  ClientHeight = 304
  ClientWidth = 584
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
    584
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
  object Label3: TLabel
    Left = 402
    Top = 18
    Width = 26
    Height = 13
    Caption = 'Sigla:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 569
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEtapas
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
        FieldName = 'ETP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETP_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETP_SIGLA'
        Title.Caption = 'Sigla'
        Width = 176
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
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 400
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object DSEtapas: TDataSource
    DataSet = QYEtapas
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
  object QYEtapas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREtapas
    SQL.Strings = (
      'select '
      'ETP_CODIGO, '
      'ETP_DESCRICAO, '
      'ETP_SIGLA, '
      'ETP_TEMPO '
      'from ETAPAS')
    Left = 200
    Top = 120
    object QYEtapasETP_CODIGO: TIntegerField
      FieldName = 'ETP_CODIGO'
      Origin = 'ETP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEtapasETP_DESCRICAO: TStringField
      FieldName = 'ETP_DESCRICAO'
      Origin = 'ETP_DESCRICAO'
      Size = 50
    end
    object QYEtapasETP_SIGLA: TStringField
      FieldName = 'ETP_SIGLA'
      Origin = 'ETP_SIGLA'
      Size = 15
    end
    object QYEtapasETP_TEMPO: TStringField
      FieldName = 'ETP_TEMPO'
      Origin = 'ETP_TEMPO'
      Size = 25
    end
  end
  object TREtapas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
