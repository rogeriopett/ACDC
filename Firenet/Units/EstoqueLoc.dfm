object FormEstoqueLoc: TFormEstoqueLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar movimenta'#231#227'o do estoque'
  ClientHeight = 368
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
    368)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 154
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 234
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'N'#250'm. Docto.'
  end
  object Label2: TLabel
    Left = 314
    Top = 18
    Width = 65
    Height = 13
    Caption = 'C'#243'd. Produto:'
  end
  object Label6: TLabel
    Left = 386
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 769
    Height = 294
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEstoque
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 6
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
        FieldName = 'EST_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NUMDOCTO'
        Title.Caption = 'Num. Docto'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_DATA'
        Title.Caption = 'Data'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_TRANSACAO'
        Title.Caption = 'E/S'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_QUANTIDADE'
        Title.Caption = 'Qtde'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_ESTOQUEANTERIOR'
        Title.Caption = 'Saldo Ant.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_ESTOQUEPOSTERIOR'
        Title.Caption = 'Saldo Post.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_VALORUNIT'
        Title.Caption = 'Valor Unit.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOME'
        Title.Caption = 'Produto'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_CLIENTE'
        Title.Caption = 'Cliente'
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
  object MaskEdit1: TMaskEdit
    Left = 152
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 232
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 384
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSEstoque: TDataSource
    DataSet = QYEstoque
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
  object QYEstoque: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREstoque
    SQL.Strings = (
      'select '
      'EST_CLIENTE,'
      'EST_CODIGO,'
      'EST_DATA,'
      'EST_DESCRICAO,'
      'EST_ESTOQUEANTERIOR,'
      'EST_ESTOQUEPOSTERIOR,'
      'EST_NUMDOCTO,'
      'EST_PRODUTO,'
      'EST_QUANTIDADE,'
      'EST_TRANSACAO,'
      'EST_VALORUNIT,'
      'PRO_NOME'
      'from ESTOQUE'
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO')
    Left = 200
    Top = 120
    object QYEstoqueEST_CLIENTE: TIntegerField
      FieldName = 'EST_CLIENTE'
      Origin = 'EST_CLIENTE'
    end
    object QYEstoqueEST_CODIGO: TIntegerField
      FieldName = 'EST_CODIGO'
      Origin = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEstoqueEST_DATA: TDateField
      FieldName = 'EST_DATA'
      Origin = 'EST_DATA'
    end
    object QYEstoqueEST_DESCRICAO: TStringField
      FieldName = 'EST_DESCRICAO'
      Origin = 'EST_DESCRICAO'
      Size = 50
    end
    object QYEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEANTERIOR'
      Origin = 'EST_ESTOQUEANTERIOR'
      Precision = 18
    end
    object QYEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEPOSTERIOR'
      Origin = 'EST_ESTOQUEPOSTERIOR'
      Precision = 18
    end
    object QYEstoqueEST_NUMDOCTO: TStringField
      FieldName = 'EST_NUMDOCTO'
      Origin = 'EST_NUMDOCTO'
    end
    object QYEstoqueEST_PRODUTO: TIntegerField
      FieldName = 'EST_PRODUTO'
      Origin = 'EST_PRODUTO'
      Required = True
    end
    object QYEstoqueEST_QUANTIDADE: TFMTBCDField
      FieldName = 'EST_QUANTIDADE'
      Origin = 'EST_QUANTIDADE'
      Precision = 18
    end
    object QYEstoqueEST_TRANSACAO: TStringField
      FieldName = 'EST_TRANSACAO'
      Origin = 'EST_TRANSACAO'
      Size = 1
    end
    object QYEstoqueEST_VALORUNIT: TFMTBCDField
      FieldName = 'EST_VALORUNIT'
      Origin = 'EST_VALORUNIT'
      currency = True
      Precision = 18
    end
    object QYEstoquePRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object TREstoque: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
