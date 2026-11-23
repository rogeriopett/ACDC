object FormMarkupsLoc: TFormMarkupsLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Markups'
  ClientHeight = 312
  ClientWidth = 480
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
    480
    312)
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
    Width = 465
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMarkups
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
        FieldName = 'MKP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_MARKUP'
        Title.Caption = 'Markup'
        Width = 58
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
  object DSMarkups: TDataSource
    DataSet = QYMarkups
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
  object QYMarkups: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMarkups
    SQL.Strings = (
      'select * from MARKUPS'
      '')
    Left = 200
    Top = 120
    object QYMarkupsMKP_CODIGO: TIntegerField
      FieldName = 'MKP_CODIGO'
      Origin = 'MKP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMarkupsMKP_DESCRICAO: TStringField
      FieldName = 'MKP_DESCRICAO'
      Origin = 'MKP_DESCRICAO'
      Size = 50
    end
    object QYMarkupsMKP_MARKUP: TFMTBCDField
      FieldName = 'MKP_MARKUP'
      Origin = 'MKP_MARKUP'
      Precision = 18
    end
  end
  object TRMarkups: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
