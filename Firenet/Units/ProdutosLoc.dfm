object FormProdutosLoc: TFormProdutosLoc
  Left = 265
  Top = 254
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Produtos'
  ClientHeight = 528
  ClientWidth = 1016
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
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 194
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 698
    Top = 18
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label4: TLabel
    Left = 338
    Top = 18
    Width = 78
    Height = 13
    Caption = 'C'#243'd. Fabricante:'
  end
  object Label5: TLabel
    Left = 450
    Top = 18
    Width = 58
    Height = 13
    Caption = 'C'#243'd. Barras:'
  end
  object Label6: TLabel
    Left = 586
    Top = 18
    Width = 75
    Height = 13
    Caption = 'Palavras Chave'
  end
  object Label7: TLabel
    Left = 802
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label8: TLabel
    Left = 906
    Top = 18
    Width = 60
    Height = 13
    Caption = 'Localiza'#231#227'o:'
  end
  object Label9: TLabel
    Left = 82
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
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
    Left = 192
    Top = 32
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 696
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 336
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 448
    Top = 32
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 584
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 800
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 904
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnKeyPress = Edit8KeyPress
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      'TODOS'
      'ATIVOS'
      'INATIVOS')
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 1016
    Height = 464
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 9
    object Splitter1: TSplitter
      Left = 0
      Top = 289
      Width = 1016
      Height = 6
      Cursor = crVSplit
      Align = alBottom
      ResizeStyle = rsUpdate
      ExplicitTop = 91
      ExplicitWidth = 985
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 295
      Width = 1016
      Height = 169
      Align = alBottom
      DataSource = DSProdutosCodigos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PCO_CODIGOFORNECEDOR'
          Title.Caption = 'C'#243'digo do Fornecedor'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCO_PRODUTO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCO_FORNECEDOR'
          Title.Caption = 'C'#243'd. Forn.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_NOME'
          Title.Caption = 'Fornecedor'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 1016
      Height = 289
      Align = alClient
      DataSource = DSProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 1
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
          FieldName = 'PRO_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_CODIGOFAB'
          Title.Caption = 'C'#243'd. Fab.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_NOME'
          Title.Caption = 'Nome'
          Width = 298
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_UNIDADE'
          Title.Caption = 'Unid.'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRU_DESCRICAO'
          Title.Caption = 'Grupo'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_ESTOQUEATUAL'
          Title.Caption = 'Qtde Estoque'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECOVENDA'
          Title.Caption = 'Pre'#231'o Venda'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_MARCA'
          Title.Caption = 'C'#243'd. Marca'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAR_DESCRICAO'
          Title.Caption = 'Marca'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO1'
          Title.Caption = 'Tabela 1'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO2'
          Title.Caption = 'Tabela 2'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO3'
          Title.Caption = 'Tabela 3'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO4'
          Title.Caption = 'Tabela 4'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO5'
          Title.Caption = 'Tabela 5'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PRECO6'
          Title.Caption = 'Tabela 6'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_CODIGOBARRAS'
          Title.Caption = 'C'#243'd. Barras'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PALAVRASCHAVE'
          Title.Caption = 'Palavras Chave'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_LOCALIZACAO'
          Title.Caption = 'Localiza'#231#227'o'
          Visible = True
        end>
    end
  end
  object DSProdutos: TDataSource
    DataSet = QYProdutos
    Left = 64
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 160
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object DSProdutosCodigos: TDataSource
    DataSet = QYProdutosCodigos
    Left = 176
    Top = 256
  end
  object QYProdutos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProdutos
    SQL.Strings = (
      'select '
      'PRO_ALIQISS, '
      'PRO_CEST, '
      'PRO_CLASSFISCAL, '
      'PRO_CODIGO, '
      'PRO_CODIGOBARRAS, '
      'PRO_CODIGOFAB, '
      'PRO_COMPOSTO, '
      'PRO_ESTOQUEATUAL,'
      'PRO_LOCALIZACAO,'
      'PRO_NBS, '
      'PRO_NOME,'
      'PRO_PALAVRASCHAVE,'
      'PRO_PRECO1,'
      'PRO_PRECO2,'
      'PRO_PRECO3,'
      'PRO_PRECO4,'
      'PRO_PRECO5,'
      'PRO_PRECO6, '
      'PRO_PRECOCUSTO, '
      'PRO_PRECOVENDA, '
      'PRO_PRODUTOREAL, '
      'PRO_TIPOISS, '
      'PRO_TIPOITEM, '
      'PRO_UNIDADE,'
      'GRU_DESCRICAO, '
      'ISS_DESCRICAO,'
      'MAR_DESCRICAO,'
      'NBS_DESCRICAO '
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO'
      'left join ISS on PRO_TIPOISS=ISS_CODIGO'
      'left join NBS on PRO_NBS=NBS_CODIGO'
      '')
    Left = 64
    Top = 160
    object QYProdutosPRO_ALIQISS: TFMTBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = 'PRO_ALIQISS'
      Precision = 18
    end
    object QYProdutosPRO_CEST: TStringField
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
    end
    object QYProdutosPRO_CLASSFISCAL: TStringField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRO_CLASSFISCAL'
    end
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_CODIGOBARRAS: TStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      Size = 60
    end
    object QYProdutosPRO_CODIGOFAB: TStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = 'PRO_CODIGOFAB'
    end
    object QYProdutosPRO_COMPOSTO: TStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = 'PRO_COMPOSTO'
      Size = 1
    end
    object QYProdutosPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      Precision = 18
    end
    object QYProdutosPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
    end
    object QYProdutosPRO_NBS: TStringField
      FieldName = 'PRO_NBS'
      Origin = 'PRO_NBS'
      Size = 15
    end
    object QYProdutosPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      Required = True
      Size = 100
    end
    object QYProdutosPRO_PALAVRASCHAVE: TStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = 'PRO_PALAVRASCHAVE'
      Size = 120
    end
    object QYProdutosPRO_PRECO1: TFMTBCDField
      FieldName = 'PRO_PRECO1'
      Origin = 'PRO_PRECO1'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO2: TFMTBCDField
      FieldName = 'PRO_PRECO2'
      Origin = 'PRO_PRECO2'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO3: TFMTBCDField
      FieldName = 'PRO_PRECO3'
      Origin = 'PRO_PRECO3'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO4: TFMTBCDField
      FieldName = 'PRO_PRECO4'
      Origin = 'PRO_PRECO4'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO5: TFMTBCDField
      FieldName = 'PRO_PRECO5'
      Origin = 'PRO_PRECO5'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO6: TFMTBCDField
      FieldName = 'PRO_PRECO6'
      Origin = 'PRO_PRECO6'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = 'PRO_PRECOCUSTO'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRODUTOREAL: TIntegerField
      FieldName = 'PRO_PRODUTOREAL'
      Origin = 'PRO_PRODUTOREAL'
    end
    object QYProdutosPRO_TIPOISS: TStringField
      FieldName = 'PRO_TIPOISS'
      Origin = 'PRO_TIPOISS'
      Size = 15
    end
    object QYProdutosPRO_TIPOITEM: TStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = 'PRO_TIPOITEM'
      Size = 30
    end
    object QYProdutosPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      Size = 3
    end
    object QYProdutosGRU_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYProdutosISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
    object QYProdutosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYProdutosNBS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NBS_DESCRICAO'
      Origin = 'NBS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 64
    Top = 208
  end
  object QYProdutosCodigos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProdutosCodigos
    SQL.Strings = (
      'select '
      'PCO_PRODUTO, '
      'PCO_FORNECEDOR, '
      'PCO_CODIGOFORNECEDOR, '
      'PRO_CODIGO,'
      'PRO_CODIGOBARRAS,'
      'PRO_CODIGOFAB,'
      'PRO_ESTOQUEATUAL,'
      'PRO_LOCALIZACAO,'
      'PRO_NOME, '
      'PRO_PRECOCUSTO,'
      'PRO_PRECOVENDA,'
      'PRO_PRODUTOREAL,'
      'FOR_NOME,'
      'MAR_DESCRICAO'
      'from PRODUTOSCODIGOS'
      'left join PRODUTOS on PCO_PRODUTO=PRO_CODIGO'
      'left join FORNECEDORES on PCO_FORNECEDOR=FOR_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO'
      '')
    Left = 176
    Top = 160
    object QYProdutosCodigosPCO_PRODUTO: TIntegerField
      FieldName = 'PCO_PRODUTO'
      Origin = 'PCO_PRODUTO'
      Required = True
    end
    object QYProdutosCodigosPCO_FORNECEDOR: TIntegerField
      FieldName = 'PCO_FORNECEDOR'
      Origin = 'PCO_FORNECEDOR'
      Required = True
    end
    object QYProdutosCodigosPCO_CODIGOFORNECEDOR: TStringField
      FieldName = 'PCO_CODIGOFORNECEDOR'
      Origin = 'PCO_CODIGOFORNECEDOR'
    end
    object QYProdutosCodigosPRO_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYProdutosCodigosPRO_CODIGOBARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QYProdutosCodigosPRO_CODIGOFAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGOFAB'
      Origin = 'PRO_CODIGOFAB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYProdutosCodigosPRO_ESTOQUEATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYProdutosCodigosPRO_LOCALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYProdutosCodigosPRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYProdutosCodigosPRO_PRECOCUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_PRECOCUSTO'
      Origin = 'PRO_PRECOCUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYProdutosCodigosPRO_PRECOVENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYProdutosCodigosPRO_PRODUTOREAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_PRODUTOREAL'
      Origin = 'PRO_PRODUTOREAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYProdutosCodigosFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYProdutosCodigosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRProdutosCodigos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 208
  end
end
