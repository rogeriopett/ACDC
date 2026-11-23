object FormClassificadosLoc: TFormClassificadosLoc
  Left = 222
  Top = 455
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Classificados'
  ClientHeight = 296
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
    296)
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
    Left = 298
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Ve'#237'culo:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 221
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSClassificados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 3
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
        FieldName = 'CLA_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLA_NOME'
        Title.Caption = 'Nome'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEL_DESCRICAO'
        Title.Caption = 'Ve'#237'culo'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLA_OBJETIVO'
        Title.Caption = 'Objetivo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLA_CATEGORIA'
        Title.Caption = 'Categoria'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLA_ANOFAB'
        Title.Caption = 'Ano Fab.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLA_ANOMOD'
        Title.Caption = 'Ano Mod.'
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
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 296
    Top = 32
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object DSClassificados: TDataSource
    DataSet = QYClassificados
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object TRClassificados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 296
    Top = 120
  end
  object QYClassificados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClassificados
    SQL.Strings = (
      'select * from CLASSIFICADOS'
      'left join VEICULOS on CLA_VEICULO=VEL_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYClassificadosCLA_ANOFAB: TStringField
      FieldName = 'CLA_ANOFAB'
      Origin = 'CLA_ANOFAB'
      Size = 4
    end
    object QYClassificadosCLA_ANOMOD: TStringField
      FieldName = 'CLA_ANOMOD'
      Origin = 'CLA_ANOMOD'
      Size = 4
    end
    object QYClassificadosCLA_CATEGORIA: TStringField
      FieldName = 'CLA_CATEGORIA'
      Origin = 'CLA_CATEGORIA'
      Size = 1
    end
    object QYClassificadosCLA_CODIGO: TIntegerField
      FieldName = 'CLA_CODIGO'
      Origin = 'CLA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassificadosCLA_NOME: TStringField
      FieldName = 'CLA_NOME'
      Origin = 'CLA_NOME'
      Size = 80
    end
    object QYClassificadosCLA_OBJETIVO: TStringField
      FieldName = 'CLA_OBJETIVO'
      Origin = 'CLA_OBJETIVO'
      Size = 1
    end
    object QYClassificadosVEL_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
