object FormClientesLoc: TFormClientesLoc
  Left = 222
  Top = 399
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Clientes'
  ClientHeight = 424
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 106
    Width = 777
    Height = 311
    DataSource = DSClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 11
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
  object CheckBox1: TCheckBox
    Left = 688
    Top = 3
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 10
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
    EditMask = '!\(999\)\ 9999\-9999;1;_'
    MaxLength = 15
    TabOrder = 7
    Text = '(   )     -    '
    OnEnter = MaskEdit1Enter
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
    Width = 121
    Height = 21
    EditMask = '99\.999\.999\/9999\-99;1;_'
    MaxLength = 18
    TabOrder = 9
    Text = '  .   .   /    -  '
    OnKeyPress = MaskEdit3KeyPress
  end
  object DSClientes: TDataSource
    DataSet = QYClientes
    Left = 128
    Top = 120
  end
  object QYClientes: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRClientes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CLIENTES')
    Left = 216
    Top = 120
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Required = True
      Size = 50
    end
    object QYClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = '"CLIENTES"."CLI_ATIVIDADE"'
      Required = True
    end
    object QYClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = '"CLIENTES"."CLI_VENDEDOR"'
      Required = True
    end
    object QYClientesCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 40
    end
    object QYClientesCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object QYClientesCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 30
    end
    object QYClientesCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 30
    end
    object QYClientesCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
    end
    object QYClientesCLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object QYClientesCLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object QYClientesCLI_FONE3: TIBStringField
      FieldName = 'CLI_FONE3'
      Origin = '"CLIENTES"."CLI_FONE3"'
    end
    object QYClientesCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object QYClientesCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"CLIENTES"."CLI_IE"'
    end
    object QYClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object QYClientesCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object QYClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
    object QYClientesCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
    object QYClientesCLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"CLIENTES"."CLI_ESTADOCIVIL"'
      Size = 10
    end
    object QYClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object QYClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object QYClientesCLI_OBSERVACOES: TMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = '"CLIENTES"."CLI_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYClientesCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object QYClientesCLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CLIENTES"."CLI_SITE"'
      Size = 100
    end
    object QYClientesCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"CLIENTES"."CLI_EMAIL"'
      Size = 100
    end
    object QYClientesCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
    end
    object QYClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object QYClientesCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object QYClientesCLI_USUARIO: TIBStringField
      FieldName = 'CLI_USUARIO'
      Origin = '"CLIENTES"."CLI_USUARIO"'
    end
    object QYClientesCLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 40
    end
    object QYClientesCLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object QYClientesCLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 30
    end
    object QYClientesCLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 30
    end
    object QYClientesCLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object QYClientesCLI_NUMEROCOB: TIntegerField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
    end
    object QYClientesCLI_COMPLEMENTOCOB: TIBStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 30
    end
    object QYClientesCLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object QYClientesCLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object QYClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = '"CLIENTES"."CLI_TELEVENDA"'
      Required = True
    end
    object QYClientesCLI_TABELAPRECO: TIBStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = '"CLIENTES"."CLI_TABELAPRECO"'
      Size = 1
    end
    object QYClientesCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 50
    end
    object QYClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = '"CLIENTES"."CLI_SETOR"'
    end
    object QYClientesCLI_EMAIL2: TIBStringField
      FieldName = 'CLI_EMAIL2'
      Origin = '"CLIENTES"."CLI_EMAIL2"'
      Size = 100
    end
    object QYClientesCLI_LIMITECREDITO: TIBBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = '"CLIENTES"."CLI_LIMITECREDITO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYClientesCLI_BLOQUEARVENDA: TIBStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = '"CLIENTES"."CLI_BLOQUEARVENDA"'
      Size = 1
    end
    object QYClientesCLI_DESCONTO: TIBBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = '"CLIENTES"."CLI_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object QYClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = '"CLIENTES"."CLI_CIDADECODIGO"'
    end
    object QYClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object QYClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGO"'
    end
    object QYClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
  end
  object TRClientes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 296
    Top = 120
  end
end
