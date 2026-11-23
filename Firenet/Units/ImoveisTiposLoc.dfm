object FormImoveisTiposLoc: TFormImoveisTiposLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar tipos de im'#243'veis'
  ClientHeight = 304
  ClientWidth = 544
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
    544
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
    Width = 529
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSImoveisTipos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'IMT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMT_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 437
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DSImoveisTipos: TDataSource
    DataSet = QYImoveisTipos
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
  object QYImoveisTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRImoveisTipos
    SQL.Strings = (
      'select IMT_CODIGO, IMT_DESCRICAO from IMOVEISTIPOS'
      '')
    Left = 200
    Top = 120
    object QYImoveisTiposIMT_CODIGO: TIntegerField
      FieldName = 'IMT_CODIGO'
      Origin = 'IMT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYImoveisTiposIMT_DESCRICAO: TStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      Size = 50
    end
  end
  object TRImoveisTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
