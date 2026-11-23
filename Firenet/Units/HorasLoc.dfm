object FormHorasLoc: TFormHorasLoc
  Left = 0
  Top = 0
  Caption = 'Localizar Banco de Horas'
  ClientHeight = 368
  ClientWidth = 784
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
    784
    368)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 242
    Top = 18
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Vend.:'
  end
  object Label3: TLabel
    Left = 314
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label5: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSHoras
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
        FieldName = 'HOR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_DTCADASTRO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_TRANSACAO'
        Title.Caption = 'D/C'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_SALDOANTERIOR'
        Title.Caption = 'Saldo Anterior'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_QUANTIDADE'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_SALDOPOSTERIOR'
        Title.Caption = 'Saldo Posterior'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_VENDEDOR'
        Title.Caption = 'Vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOR_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
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
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 312
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 160
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object DSHoras: TDataSource
    DataSet = QYHoras
    Left = 136
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
  object QYHoras: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRHoras
    SQL.Strings = (
      'select '
      'HOR_CODIGO,'
      'HOR_DESCRICAO,'
      'HOR_DTCADASTRO,'
      'HOR_QUANTIDADE,'
      'HOR_SALDOANTERIOR,'
      'HOR_SALDOPOSTERIOR,'
      'HOR_TRANSACAO,'
      'HOR_VENDEDOR,'
      'VEN_NOME'
      'from HORAS'
      'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO'
      'order by HOR_VENDEDOR, HOR_CODIGO desc')
    Left = 208
    Top = 120
    object QYHorasHOR_CODIGO: TIntegerField
      FieldName = 'HOR_CODIGO'
      Origin = 'HOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYHorasHOR_DESCRICAO: TStringField
      FieldName = 'HOR_DESCRICAO'
      Origin = 'HOR_DESCRICAO'
      Size = 50
    end
    object QYHorasHOR_DTCADASTRO: TDateField
      FieldName = 'HOR_DTCADASTRO'
      Origin = 'HOR_DTCADASTRO'
    end
    object QYHorasHOR_QUANTIDADE: TCurrencyField
      FieldName = 'HOR_QUANTIDADE'
      Origin = 'HOR_QUANTIDADE'
      Required = True
    end
    object QYHorasHOR_SALDOANTERIOR: TCurrencyField
      FieldName = 'HOR_SALDOANTERIOR'
      Origin = 'HOR_SALDOANTERIOR'
    end
    object QYHorasHOR_SALDOPOSTERIOR: TCurrencyField
      FieldName = 'HOR_SALDOPOSTERIOR'
      Origin = 'HOR_SALDOPOSTERIOR'
    end
    object QYHorasHOR_TRANSACAO: TStringField
      FieldName = 'HOR_TRANSACAO'
      Origin = 'HOR_TRANSACAO'
      Size = 1
    end
    object QYHorasHOR_VENDEDOR: TIntegerField
      FieldName = 'HOR_VENDEDOR'
      Origin = 'HOR_VENDEDOR'
      Required = True
    end
    object QYHorasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRHoras: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
