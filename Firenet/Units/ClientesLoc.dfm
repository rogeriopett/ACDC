object FormClientesLoc: TFormClientesLoc
  Left = 222
  Top = 399
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Clientes'
  ClientHeight = 432
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
    432)
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
    Left = 242
    Top = 18
    Width = 74
    Height = 13
    Caption = 'Nome Fantasia:'
  end
  object Label4: TLabel
    Left = 370
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label5: TLabel
    Left = 490
    Top = 18
    Width = 30
    Height = 13
    Caption = 'Bairro:'
  end
  object Label6: TLabel
    Left = 730
    Top = 18
    Width = 28
    Height = 13
    Caption = 'Setor:'
  end
  object Label7: TLabel
    Left = 610
    Top = 18
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label8: TLabel
    Left = 10
    Top = 58
    Width = 45
    Height = 13
    Caption = 'Telefone:'
  end
  object Label9: TLabel
    Left = 115
    Top = 58
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label10: TLabel
    Left = 219
    Top = 58
    Width = 30
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label11: TLabel
    Left = 346
    Top = 58
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object Label12: TLabel
    Left = 490
    Top = 58
    Width = 82
    Height = 13
    Caption = 'Reg. Profissional:'
  end
  object Label13: TLabel
    Left = 610
    Top = 58
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 106
    Width = 777
    Height = 319
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 13
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
        FieldName = 'CLI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_VENDEDOR'
        Title.Caption = 'Vend.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_TELEVENDA'
        Title.Caption = 'TeleV.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FANTASIA'
        Title.Caption = 'Nome Fantasia'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_SETOR'
        Title.Caption = 'Setor'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE1'
        Title.Caption = 'Fone 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE2'
        Title.Caption = 'Fone 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE3'
        Title.Caption = 'Fone 3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CNPJ'
        Title.Caption = 'CNPJ'
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
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
    Top = 32
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 368
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 488
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 728
    Top = 32
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 608
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit7KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 7
    Text = ''
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 112
    Top = 72
    Width = 97
    Height = 21
    EditMask = '999\.999\.999\-99;1;_'
    MaxLength = 14
    TabOrder = 8
    Text = '   .   .   -  '
    OnKeyPress = MaskEdit2KeyPress
  end
  object MaskEdit3: TMaskEdit
    Left = 216
    Top = 72
    Width = 119
    Height = 21
    EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    MaxLength = 18
    TabOrder = 9
    Text = '  .   .   /    -  '
    OnKeyPress = MaskEdit3KeyPress
  end
  object Edit8: TEdit
    Left = 344
    Top = 72
    Width = 137
    Height = 21
    TabOrder = 10
    OnKeyPress = Edit8KeyPress
  end
  object Edit9: TEdit
    Left = 488
    Top = 72
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
    OnKeyPress = Edit9KeyPress
  end
  object ComboBox1: TComboBox
    Left = 608
    Top = 72
    Width = 113
    Height = 21
    Style = csDropDownList
    TabOrder = 12
    Items.Strings = (
      'TODOS'
      'ATIVOS'
      'INATIVOS')
  end
  object DSClientes: TDataSource
    DataSet = QYClientes
    Left = 128
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 144
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object TRClientes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 288
    Top = 144
  end
  object QYClientes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClientes
    SQL.Strings = (
      'select'
      'CLI_BAIRRO,'
      'CLI_BAIRRO,'
      'CLI_BLOQUEARVENDA,'
      'CLI_CEP,'
      'CLI_CIDADE,'
      'CLI_CIDADECODIGO,'
      'CLI_CNPJ,'
      'CLI_CNS,'
      'CLI_CODIGO,'
      'CLI_COMPLEMENTO,'
      'CLI_CONDICAO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_DESCONTO,'
      'CLI_EMAIL,'
      'CLI_EMAIL2,'
      'CLI_ENDERECO,'
      'CLI_ESTADO,'
      'CLI_ESTADOCODIGO,'
      'CLI_FANTASIA,'
      'CLI_FONE1,'
      'CLI_FONE2,'
      'CLI_FONE3,'
      'CLI_FRETE,'
      'CLI_IDESTRANGEIRO, '
      'CLI_IE,'
      'CLI_IM,'
      'CLI_LIMITECREDITO,'
      'CLI_MAILING,'
      'CLI_NOME,'
      'CLI_NUMERO,'
      'CLI_OBITO,'
      'CLI_PAIS,'
      'CLI_PAISCODIGO,'
      'CLI_PONTOS,'
      'CLI_RG,'
      'CLI_SAME,'
      'CLI_SITE,'
      'CLI_SUFRAMA,'
      'CLI_SETOR,'
      'CLI_TABELAPRECO,'
      'CLI_TAXA,'
      'CLI_TIPOCONSUMIDOR,'
      'CLI_TIPOPESSOA,'
      'CLI_TELEVENDA,'
      'CLI_VENDEDOR,'
      'MAI_DESCRICAO,'
      'TAX_DESCRICAO,'
      'TAX_TIPO,'
      'TAX_VALOR,'
      'VEN_NOME'
      'from CLIENTES'
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO'
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO'
      'left join TAXAS on CLI_TAXA=TAX_CODIGO'
      '')
    Left = 208
    Top = 144
    object QYClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 50
    end
    object QYClientesCLI_BLOQUEARVENDA: TStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      Size = 1
    end
    object QYClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 10
    end
    object QYClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 50
    end
    object QYClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
    end
    object QYClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
    end
    object QYClientesCLI_CNS: TStringField
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
    end
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 80
    end
    object QYClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      Required = True
    end
    object QYClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      Size = 80
    end
    object QYClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object QYClientesCLI_DESCONTO: TFMTBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      Precision = 18
    end
    object QYClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object QYClientesCLI_EMAIL2: TStringField
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      Size = 100
    end
    object QYClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 100
    end
    object QYClientesCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      Size = 2
    end
    object QYClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
    end
    object QYClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 80
    end
    object QYClientesCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
    end
    object QYClientesCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
    end
    object QYClientesCLI_FONE3: TStringField
      FieldName = 'CLI_FONE3'
      Origin = 'CLI_FONE3'
    end
    object QYClientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      Size = 50
    end
    object QYClientesCLI_IDESTRANGEIRO: TStringField
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
    end
    object QYClientesCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
    end
    object QYClientesCLI_IM: TIntegerField
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
    end
    object QYClientesCLI_LIMITECREDITO: TFMTBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      currency = True
      Precision = 18
    end
    object QYClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      Required = True
    end
    object QYClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      Size = 80
    end
    object QYClientesCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      Size = 15
    end
    object QYClientesCLI_OBITO: TStringField
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      Size = 1
    end
    object QYClientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 80
    end
    object QYClientesCLI_PAISCODIGO: TIntegerField
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
    end
    object QYClientesCLI_PONTOS: TFMTBCDField
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      Precision = 18
    end
    object QYClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
    end
    object QYClientesCLI_SAME: TStringField
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
    end
    object QYClientesCLI_SITE: TStringField
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      Size = 100
    end
    object QYClientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
    end
    object QYClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = 'CLI_SETOR'
    end
    object QYClientesCLI_TABELAPRECO: TStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      Size = 1
    end
    object QYClientesCLI_TAXA: TIntegerField
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      Required = True
    end
    object QYClientesCLI_TIPOCONSUMIDOR: TStringField
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      Size = 30
    end
    object QYClientesCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      Size = 1
    end
    object QYClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = 'CLI_TELEVENDA'
      Required = True
    end
    object QYClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      Required = True
    end
    object QYClientesMAI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYClientesTAX_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYClientesTAX_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYClientesTAX_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QYClientesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
