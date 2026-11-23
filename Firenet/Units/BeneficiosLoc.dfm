object FormBeneficiosLoc: TFormBeneficiosLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Benef'#237'cios'
  ClientHeight = 312
  ClientWidth = 520
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
    520
    312)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 69
    Width = 505
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSBeneficios
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
        FieldName = 'BEN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BEN_TIPO'
        Title.Caption = 'Tipo'
        Width = 343
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object DSBeneficios: TDataSource
    DataSet = QYBeneficios
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
  object TRBeneficios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYBeneficios: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBeneficios
    SQL.Strings = (
      'select '
      'BEN_CODIGO,'
      'BEN_TIPO'
      'from BENEFICIOS'
      '')
    Left = 200
    Top = 120
    object QYBeneficiosBEN_CODIGO: TStringField
      FieldName = 'BEN_CODIGO'
      Origin = 'BEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYBeneficiosBEN_TIPO: TStringField
      FieldName = 'BEN_TIPO'
      Origin = 'BEN_TIPO'
      Size = 50
    end
  end
end
