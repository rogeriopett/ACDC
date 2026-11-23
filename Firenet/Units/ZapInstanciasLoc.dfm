object FormZapInstanciasLoc: TFormZapInstanciasLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Inst'#226'ncias'
  ClientHeight = 272
  ClientWidth = 560
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
    560
    272)
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 545
    Height = 197
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSZapInstancias
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
        FieldName = 'ZIN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZIN_NOME'
        Title.Caption = 'Nome'
        Width = 445
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
  object DSZapInstancias: TDataSource
    DataSet = QYZapInstancias
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
  object TRZapInstancias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYZapInstancias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRZapInstancias
    SQL.Strings = (
      'select ZIN_CODIGO, ZIN_NOME from ZAPINSTANCIAS'
      '')
    Left = 200
    Top = 120
    object QYZapInstanciasZIN_CODIGO: TIntegerField
      FieldName = 'ZIN_CODIGO'
      Origin = 'ZIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYZapInstanciasZIN_NOME: TStringField
      FieldName = 'ZIN_NOME'
      Origin = 'ZIN_NOME'
      Size = 80
    end
  end
end
