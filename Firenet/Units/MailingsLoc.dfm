object FormMailingsLoc: TFormMailingsLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Mailings'
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
    DataSource = DSMailings
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
        FieldName = 'MAI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAI_DESCRICAO'
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
  object DSMailings: TDataSource
    DataSet = QYMailings
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
  object QYMailings: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMailings
    SQL.Strings = (
      'select * from MAILINGS'
      '')
    Left = 200
    Top = 120
    object QYMailingsMAI_CODIGO: TIntegerField
      FieldName = 'MAI_CODIGO'
      Origin = 'MAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMailingsMAI_DESCRICAO: TStringField
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      Size = 50
    end
    object QYMailingsMAI_DTATUALIZACAO: TDateField
      FieldName = 'MAI_DTATUALIZACAO'
      Origin = 'MAI_DTATUALIZACAO'
    end
    object QYMailingsMAI_DTCADASTRO: TDateField
      FieldName = 'MAI_DTCADASTRO'
      Origin = 'MAI_DTCADASTRO'
    end
    object QYMailingsMAI_USUARIO: TStringField
      FieldName = 'MAI_USUARIO'
      Origin = 'MAI_USUARIO'
    end
  end
  object TRMailings: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
