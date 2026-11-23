object FormForosLoc: TFormForosLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Foros'
  ClientHeight = 312
  ClientWidth = 552
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
    552
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 386
    Top = 18
    Width = 26
    Height = 13
    Caption = 'Sigla:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 537
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSForos
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
        FieldName = 'FRS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRS_NOME'
        Title.Caption = 'Nome'
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRS_SIGLA'
        Title.Caption = 'Sigla'
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
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 384
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object DSForos: TDataSource
    DataSet = QYForos
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
  object QYForos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRForos
    SQL.Strings = (
      'select '
      'FRS_CODIGO, '
      'FRS_NOME, '
      'FRS_SIGLA '
      'from FOROS'
      '')
    Left = 200
    Top = 120
    object QYForosFRS_CODIGO: TIntegerField
      FieldName = 'FRS_CODIGO'
      Origin = 'FRS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYForosFRS_NOME: TStringField
      FieldName = 'FRS_NOME'
      Origin = 'FRS_NOME'
      Size = 80
    end
    object QYForosFRS_SIGLA: TStringField
      FieldName = 'FRS_SIGLA'
      Origin = 'FRS_SIGLA'
      Size = 10
    end
  end
  object TRForos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
