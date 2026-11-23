object FormIcmsLoc: TFormIcmsLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Icms'
  ClientHeight = 320
  ClientWidth = 784
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
    784
    320)
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
    Top = 67
    Width = 769
    Height = 246
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSIcms
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'ICM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 558
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_CALCULACREDITOSN'
        Title.Caption = 'Calc. Cr'#233'd. SN'
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
  object DSIcms: TDataSource
    DataSet = QYIcms
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
  object QYIcms: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIcms
    SQL.Strings = (
      'select '
      'ICM_CODIGO, '
      'ICM_DESCRICAO, '
      'ICM_CALCULACREDITOSN '
      'from ICMS'
      '')
    Left = 200
    Top = 120
    object QYIcmsICM_CODIGO: TIntegerField
      FieldName = 'ICM_CODIGO'
      Origin = 'ICM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYIcmsICM_DESCRICAO: TStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      Size = 120
    end
    object QYIcmsICM_CALCULACREDITOSN: TStringField
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      Size = 1
    end
  end
  object TRIcms: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
