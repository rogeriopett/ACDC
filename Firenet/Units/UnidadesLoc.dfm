object FormUnidadesLoc: TFormUnidadesLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Unidades de Medidas'
  ClientHeight = 331
  ClientWidth = 512
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
    512
    331)
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
    Width = 497
    Height = 256
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSUnidades
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
        FieldName = 'UNI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNI_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 406
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
  object DSUnidades: TDataSource
    DataSet = QYUnidades
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
  object QYUnidades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRUnidades
    SQL.Strings = (
      'select * from UNIDADES'
      '')
    Left = 200
    Top = 120
    object QYUnidadesUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      Origin = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QYUnidadesUNI_DESCRICAO: TStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      Size = 50
    end
    object QYUnidadesUNI_DTATUALIZACAO: TDateField
      FieldName = 'UNI_DTATUALIZACAO'
      Origin = 'UNI_DTATUALIZACAO'
    end
    object QYUnidadesUNI_DTCADASTRO: TDateField
      FieldName = 'UNI_DTCADASTRO'
      Origin = 'UNI_DTCADASTRO'
    end
    object QYUnidadesUNI_USUARIO: TStringField
      FieldName = 'UNI_USUARIO'
      Origin = 'UNI_USUARIO'
    end
  end
  object TRUnidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
