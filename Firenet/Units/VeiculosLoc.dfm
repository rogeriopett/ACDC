object FormVeiculosLoc: TFormVeiculosLoc
  Left = 183
  Top = 389
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Ve'#237'culos'
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
    DataSource = DSVeiculos
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
        FieldName = 'VEL_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEL_DESCRICAO'
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
    TabOrder = 0
    OnKeyPress = Edit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 11
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object DSVeiculos: TDataSource
    DataSet = QYVeiculos
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
  object QYVeiculos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVeiculos
    SQL.Strings = (
      'select * from VEICULOS'
      '')
    Left = 208
    Top = 120
    object QYVeiculosVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = 'VEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVeiculosVEL_DESCRICAO: TStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      Size = 50
    end
    object QYVeiculosVEL_DTATUALIZACAO: TDateField
      FieldName = 'VEL_DTATUALIZACAO'
      Origin = 'VEL_DTATUALIZACAO'
    end
    object QYVeiculosVEL_DTCADASTRO: TDateField
      FieldName = 'VEL_DTCADASTRO'
      Origin = 'VEL_DTCADASTRO'
    end
    object QYVeiculosVEL_HRATUALIZACAO: TTimeField
      FieldName = 'VEL_HRATUALIZACAO'
      Origin = 'VEL_HRATUALIZACAO'
    end
    object QYVeiculosVEL_HRCADASTRO: TTimeField
      FieldName = 'VEL_HRCADASTRO'
      Origin = 'VEL_HRCADASTRO'
    end
    object QYVeiculosVEL_STATUS: TStringField
      FieldName = 'VEL_STATUS'
      Origin = 'VEL_STATUS'
      Size = 1
    end
    object QYVeiculosVEL_USUARIO: TStringField
      FieldName = 'VEL_USUARIO'
      Origin = 'VEL_USUARIO'
    end
  end
  object TRVeiculos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
