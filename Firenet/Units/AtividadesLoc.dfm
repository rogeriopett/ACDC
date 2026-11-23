object FormAtividadesLoc: TFormAtividadesLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Atividades'
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
    DataSource = DSAtividades
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
        FieldName = 'ATI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATI_DESCRICAO'
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
  object DSAtividades: TDataSource
    DataSet = QYAtividades
    Left = 120
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYAtividades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAtividades
    SQL.Strings = (
      'select * from ATIVIDADES'
      '')
    Left = 120
    Top = 120
    object QYAtividadesATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      Origin = 'ATI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAtividadesATI_DESCRICAO: TStringField
      FieldName = 'ATI_DESCRICAO'
      Origin = 'ATI_DESCRICAO'
      Size = 50
    end
    object QYAtividadesATI_DTATUALIZACAO: TDateField
      FieldName = 'ATI_DTATUALIZACAO'
      Origin = 'ATI_DTATUALIZACAO'
    end
    object QYAtividadesATI_DTCADASTRO: TDateField
      FieldName = 'ATI_DTCADASTRO'
      Origin = 'ATI_DTCADASTRO'
    end
    object QYAtividadesATI_HRATUALIZACAO: TTimeField
      FieldName = 'ATI_HRATUALIZACAO'
      Origin = 'ATI_HRATUALIZACAO'
    end
    object QYAtividadesATI_HRCADASTRO: TTimeField
      FieldName = 'ATI_HRCADASTRO'
      Origin = 'ATI_HRCADASTRO'
    end
    object QYAtividadesATI_USUARIO: TStringField
      FieldName = 'ATI_USUARIO'
      Origin = 'ATI_USUARIO'
    end
  end
  object TRAtividades: TFDTransaction
    Connection = DM.FDConnection1
    Left = 120
    Top = 152
  end
end
