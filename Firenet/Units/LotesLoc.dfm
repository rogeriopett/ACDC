object FormLotesLoc: TFormLotesLoc
  Left = 186
  Top = 108
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Lotes'
  ClientHeight = 392
  ClientWidth = 808
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
    808
    392)
  TextHeight = 13
  object Label1: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'digo Lote:'
  end
  object Label4: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label13: TLabel
    Left = 554
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label5: TLabel
    Left = 218
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label6: TLabel
    Left = 290
    Top = 18
    Width = 71
    Height = 13
    Caption = 'Nome Produto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 793
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSLotes
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
        FieldName = 'LOT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_PRODUTO'
        Title.Caption = 'Produto'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_LOTE'
        Title.Caption = 'C'#243'digo Lote'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_FABRICACAO'
        Title.Caption = 'Fabrica'#231#227'o'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_VALIDADE'
        Title.Caption = 'Validade'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LOT_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOT_COMPRA'
        Title.Caption = 'C'#243'd. Compra'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LOT_PROPRIO'
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#243'prio'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 80
    Top = 32
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object ComboBox1: TComboBox
    Left = 552
    Top = 32
    Width = 113
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'BAIXADOS')
  end
  object Edit3: TEdit
    Left = 216
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 288
    Top = 32
    Width = 258
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSLotes: TDataSource
    DataSet = QYLotes
    Left = 128
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 136
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYLotes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRLotes
    SQL.Strings = (
      'select '
      'LOT_CODIGO,'
      'LOT_COMPRA,'
      'LOT_FABRICACAO,'
      'LOT_LOTE,'
      'LOT_PRODUTO,'
      'LOT_PROPRIO,'
      'LOT_QUANTIDADE,'
      'LOT_STATUS,'
      'LOT_VALIDADE,'
      'PRO_NOME'
      'from LOTES'
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO'
      '')
    Left = 200
    Top = 136
    object QYLotesLOT_CODIGO: TIntegerField
      FieldName = 'LOT_CODIGO'
      Origin = 'LOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYLotesLOT_COMPRA: TIntegerField
      FieldName = 'LOT_COMPRA'
      Origin = 'LOT_COMPRA'
    end
    object QYLotesLOT_FABRICACAO: TDateField
      FieldName = 'LOT_FABRICACAO'
      Origin = 'LOT_FABRICACAO'
    end
    object QYLotesLOT_LOTE: TStringField
      FieldName = 'LOT_LOTE'
      Origin = 'LOT_LOTE'
    end
    object QYLotesLOT_PRODUTO: TIntegerField
      FieldName = 'LOT_PRODUTO'
      Origin = 'LOT_PRODUTO'
      Required = True
    end
    object QYLotesLOT_PROPRIO: TStringField
      FieldName = 'LOT_PROPRIO'
      Origin = 'LOT_PROPRIO'
      Size = 1
    end
    object QYLotesLOT_QUANTIDADE: TFMTBCDField
      FieldName = 'LOT_QUANTIDADE'
      Origin = 'LOT_QUANTIDADE'
      Precision = 18
    end
    object QYLotesLOT_STATUS: TStringField
      FieldName = 'LOT_STATUS'
      Origin = 'LOT_STATUS'
      Size = 1
    end
    object QYLotesLOT_VALIDADE: TDateField
      FieldName = 'LOT_VALIDADE'
      Origin = 'LOT_VALIDADE'
    end
    object QYLotesPRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object TRLotes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 136
  end
end
