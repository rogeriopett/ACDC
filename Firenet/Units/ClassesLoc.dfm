object FormClassesLoc: TFormClassesLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Classes'
  ClientHeight = 304
  ClientWidth = 544
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
    DataSource = DSClasses
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
        FieldName = 'CLS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLS_DESCRICAO'
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
  object DSClasses: TDataSource
    DataSet = QYClasses
    Left = 120
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
  object TRClasses: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYClasses: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClasses
    SQL.Strings = (
      'select * from CLASSES'
      '')
    Left = 192
    Top = 120
    object QYClassesCLS_CODIGO: TIntegerField
      FieldName = 'CLS_CODIGO'
      Origin = 'CLS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassesCLS_DESCRICAO: TStringField
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      Size = 50
    end
    object QYClassesCLS_DTATUALIZACAO: TDateField
      FieldName = 'CLS_DTATUALIZACAO'
      Origin = 'CLS_DTATUALIZACAO'
    end
    object QYClassesCLS_DTCADASTRO: TDateField
      FieldName = 'CLS_DTCADASTRO'
      Origin = 'CLS_DTCADASTRO'
    end
    object QYClassesCLS_HRATUALIZACAO: TTimeField
      FieldName = 'CLS_HRATUALIZACAO'
      Origin = 'CLS_HRATUALIZACAO'
    end
    object QYClassesCLS_HRCADASTRO: TTimeField
      FieldName = 'CLS_HRCADASTRO'
      Origin = 'CLS_HRCADASTRO'
    end
    object QYClassesCLS_USUARIO: TStringField
      FieldName = 'CLS_USUARIO'
      Origin = 'CLS_USUARIO'
    end
  end
end
