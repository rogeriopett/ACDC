object FormFornecedoresLoc: TFormFornecedoresLoc
  Left = 254
  Top = 237
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Fornecedores'
  ClientHeight = 384
  ClientWidth = 792
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
    792
    384)
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
    Left = 274
    Top = 18
    Width = 74
    Height = 13
    Caption = 'Nome Fantasia:'
  end
  object Label8: TLabel
    Left = 458
    Top = 18
    Width = 45
    Height = 13
    Caption = 'Telefone:'
  end
  object Label9: TLabel
    Left = 563
    Top = 18
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label10: TLabel
    Left = 667
    Top = 18
    Width = 30
    Height = 13
    Caption = 'CNPJ:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 309
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSFornecedores
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
        FieldName = 'FOR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_NOME'
        Title.Caption = 'Nome'
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_FANTASIA'
        Title.Caption = 'Nome Fantasia'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_FONE1'
        Title.Caption = 'Fone 01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CONTATO'
        Title.Caption = 'Contato'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CNPJ'
        Title.Caption = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CPF'
        Title.Caption = 'CPF'
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
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 688
    Top = 3
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 272
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 456
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 5
    Text = ''
    OnEnter = MaskEdit1Enter
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 560
    Top = 32
    Width = 97
    Height = 21
    EditMask = '999\.999\.999\-99;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '   .   .   -  '
    OnKeyPress = MaskEdit2KeyPress
  end
  object MaskEdit3: TMaskEdit
    Left = 664
    Top = 32
    Width = 121
    Height = 21
    EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    MaxLength = 18
    TabOrder = 7
    Text = '  .   .   /    -  '
    OnKeyPress = MaskEdit3KeyPress
  end
  object DSFornecedores: TDataSource
    DataSet = QYFornecedores
    Left = 104
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
  object QYFornecedores: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFornecedores
    SQL.Strings = (
      'select'
      'FOR_BAIRRO, '
      'FOR_CEP, '
      'FOR_CIDADE, '
      'FOR_CIDADECODIGO,'
      'FOR_CNPJ, '
      'FOR_CPF, '
      'FOR_CODIGO, '
      'FOR_COMPLEMENTO, '
      'FOR_CONTATO, '
      'FOR_EMAIL,'
      'FOR_ENDERECO, '
      'FOR_ESTADO, '
      'FOR_ESTADOCODIGO,'
      'FOR_FANTASIA, '
      'FOR_FONE1, '
      'FOR_FONE2,'
      'FOR_FONE3,'
      'FOR_IE, '
      'FOR_NOME, '
      'FOR_NUMERO,'
      'FOR_PAIS,'
      'FOR_PAISCODIGO,'
      'FOR_RG,'
      'FOR_TIPOPESSOA'
      'from FORNECEDORES'
      '')
    Left = 192
    Top = 120
    object QYFornecedoresFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Origin = 'FOR_BAIRRO'
      Size = 50
    end
    object QYFornecedoresFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR_CEP'
      Size = 10
    end
    object QYFornecedoresFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR_CIDADE'
      Size = 50
    end
    object QYFornecedoresFOR_CIDADECODIGO: TIntegerField
      FieldName = 'FOR_CIDADECODIGO'
      Origin = 'FOR_CIDADECODIGO'
    end
    object QYFornecedoresFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
    end
    object QYFornecedoresFOR_CPF: TStringField
      FieldName = 'FOR_CPF'
      Origin = 'FOR_CPF'
    end
    object QYFornecedoresFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFornecedoresFOR_COMPLEMENTO: TStringField
      FieldName = 'FOR_COMPLEMENTO'
      Origin = 'FOR_COMPLEMENTO'
      Size = 80
    end
    object QYFornecedoresFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR_CONTATO'
      Size = 80
    end
    object QYFornecedoresFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      Size = 100
    end
    object QYFornecedoresFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      Origin = 'FOR_ENDERECO'
      Size = 100
    end
    object QYFornecedoresFOR_ESTADO: TStringField
      FieldName = 'FOR_ESTADO'
      Origin = 'FOR_ESTADO'
      Size = 2
    end
    object QYFornecedoresFOR_ESTADOCODIGO: TIntegerField
      FieldName = 'FOR_ESTADOCODIGO'
      Origin = 'FOR_ESTADOCODIGO'
    end
    object QYFornecedoresFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Origin = 'FOR_FANTASIA'
      Size = 80
    end
    object QYFornecedoresFOR_FONE1: TStringField
      FieldName = 'FOR_FONE1'
      Origin = 'FOR_FONE1'
    end
    object QYFornecedoresFOR_FONE2: TStringField
      FieldName = 'FOR_FONE2'
      Origin = 'FOR_FONE2'
    end
    object QYFornecedoresFOR_FONE3: TStringField
      FieldName = 'FOR_FONE3'
      Origin = 'FOR_FONE3'
    end
    object QYFornecedoresFOR_IE: TStringField
      FieldName = 'FOR_IE'
      Origin = 'FOR_IE'
    end
    object QYFornecedoresFOR_NOME: TStringField
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      Required = True
      Size = 80
    end
    object QYFornecedoresFOR_NUMERO: TStringField
      FieldName = 'FOR_NUMERO'
      Origin = 'FOR_NUMERO'
      Size = 15
    end
    object QYFornecedoresFOR_PAIS: TStringField
      FieldName = 'FOR_PAIS'
      Origin = 'FOR_PAIS'
      Size = 80
    end
    object QYFornecedoresFOR_PAISCODIGO: TIntegerField
      FieldName = 'FOR_PAISCODIGO'
      Origin = 'FOR_PAISCODIGO'
    end
    object QYFornecedoresFOR_RG: TStringField
      FieldName = 'FOR_RG'
      Origin = 'FOR_RG'
    end
    object QYFornecedoresFOR_TIPOPESSOA: TStringField
      FieldName = 'FOR_TIPOPESSOA'
      Origin = 'FOR_TIPOPESSOA'
      Size = 1
    end
  end
  object TRFornecedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
