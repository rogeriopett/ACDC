object FormVendedoresLoc: TFormVendedoresLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Vendedores'
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 529
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSVendedores
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
        FieldName = 'VEN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
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
  object DSVendedores: TDataSource
    DataSet = QYVendedores
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYVendedores: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendedores
    SQL.Strings = (
      'select '
      'VEN_CODIGO, '
      'VEN_NOME, '
      'VEN_COMISSAO, '
      'VEN_COMISSAOTIPO,'
      'VEN_CPF,'
      'VEN_SALARIOBASE'
      'from VENDEDORES'
      '')
    Left = 200
    Top = 120
    object QYVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendedoresVEN_NOME: TStringField
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      Required = True
      Size = 80
    end
    object QYVendedoresVEN_COMISSAO: TFMTBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = 'VEN_COMISSAO'
      Precision = 18
    end
    object QYVendedoresVEN_COMISSAOTIPO: TStringField
      FieldName = 'VEN_COMISSAOTIPO'
      Origin = 'VEN_COMISSAOTIPO'
      Size = 15
    end
    object QYVendedoresVEN_CPF: TStringField
      FieldName = 'VEN_CPF'
      Origin = 'VEN_CPF'
    end
    object QYVendedoresVEN_SALARIOBASE: TFMTBCDField
      FieldName = 'VEN_SALARIOBASE'
      Origin = 'VEN_SALARIOBASE'
      Precision = 18
    end
  end
  object TRVendedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
