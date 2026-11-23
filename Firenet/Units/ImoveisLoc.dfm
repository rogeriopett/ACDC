object FormImoveisLoc: TFormImoveisLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Im'#243'veis'
  ClientHeight = 376
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
    376)
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
  object Label3: TLabel
    Left = 490
    Top = 18
    Width = 24
    Height = 13
    Caption = 'CEP:'
  end
  object Label6: TLabel
    Left = 250
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Propriet'#225'rio:'
  end
  object Label4: TLabel
    Left = 418
    Top = 18
    Width = 43
    Height = 13
    Caption = 'Contrato:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 66
    Width = 769
    Height = 303
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSImoveis
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'IMO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMT_DESCRICAO'
        Title.Caption = 'Tipo'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_CLIENTE'
        Title.Caption = 'C'#243'd. Cli.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Propriet'#225'rio'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_AREALOCALIZACAO'
        Title.Caption = 'Loc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_FINALIDADE'
        Title.Caption = 'Fin.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_TIPONEGOCIO'
        Title.Caption = 'A/V'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_VALORALUGUEL'
        Title.Caption = 'Valor'
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
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit6: TEdit
    Left = 248
    Top = 32
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit6KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 488
    Top = 32
    Width = 73
    Height = 21
    EditMask = '99999\-999;1;_'
    MaxLength = 9
    TabOrder = 4
    Text = '     -   '
    OnKeyPress = MaskEdit1KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 687
    Top = 3
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 416
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object DSImoveis: TDataSource
    DataSet = QYImoveis
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
  object QYImoveis: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRImoveis
    SQL.Strings = (
      'select '
      'IMO_AREALOCALIZACAO,'
      'IMO_BAIRRO, '
      'IMO_CEP, '
      'IMO_CIDADE, '
      'IMO_CIDADECODIGO, '
      'IMO_CLIENTE,'
      'IMO_CODIGO,'
      'IMO_COMPLEMENTO,'
      'IMO_DESCRICAO,'
      'IMO_DESCQTDE,'
      'IMO_DESCVALOR, '
      'IMO_ENDERECO, '
      'IMO_ESTADO,'
      'IMO_FINALIDADE,'
      'IMO_NUMERO, '
      'IMO_STATUS,'
      'IMO_TIPOIMOVEL,'
      'IMO_TIPONEGOCIO,'
      'IMO_VALORALUGUEL,'
      'CLI_BAIRRO,'
      'CLI_CEP, '
      'CLI_CIDADE, '
      'CLI_CIDADECODIGO, '
      'CLI_CNPJ, '
      'CLI_COMPLEMENTO, '
      'CLI_CPF, '
      'CLI_ENDERECO, '
      'CLI_ESTADO, '
      'CLI_ESTADOCIVIL, '
      'CLI_NOME,'
      'CLI_NUMERO,'
      'IMT_DESCRICAO'
      'from IMOVEIS'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYImoveisIMO_AREALOCALIZACAO: TStringField
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = 'IMO_AREALOCALIZACAO'
      Size = 1
    end
    object QYImoveisIMO_BAIRRO: TStringField
      FieldName = 'IMO_BAIRRO'
      Origin = 'IMO_BAIRRO'
      Size = 50
    end
    object QYImoveisIMO_CEP: TStringField
      FieldName = 'IMO_CEP'
      Origin = 'IMO_CEP'
      Size = 10
    end
    object QYImoveisIMO_CIDADE: TStringField
      FieldName = 'IMO_CIDADE'
      Origin = 'IMO_CIDADE'
      Size = 50
    end
    object QYImoveisIMO_CIDADECODIGO: TIntegerField
      FieldName = 'IMO_CIDADECODIGO'
      Origin = 'IMO_CIDADECODIGO'
    end
    object QYImoveisIMO_CLIENTE: TIntegerField
      FieldName = 'IMO_CLIENTE'
      Origin = 'IMO_CLIENTE'
      Required = True
    end
    object QYImoveisIMO_CODIGO: TIntegerField
      FieldName = 'IMO_CODIGO'
      Origin = 'IMO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYImoveisIMO_COMPLEMENTO: TStringField
      FieldName = 'IMO_COMPLEMENTO'
      Origin = 'IMO_COMPLEMENTO'
      Size = 80
    end
    object QYImoveisIMO_DESCRICAO: TStringField
      FieldName = 'IMO_DESCRICAO'
      Origin = 'IMO_DESCRICAO'
      Size = 120
    end
    object QYImoveisIMO_DESCQTDE: TIntegerField
      FieldName = 'IMO_DESCQTDE'
      Origin = 'IMO_DESCQTDE'
    end
    object QYImoveisIMO_DESCVALOR: TFMTBCDField
      FieldName = 'IMO_DESCVALOR'
      Origin = 'IMO_DESCVALOR'
      currency = True
      Precision = 18
    end
    object QYImoveisIMO_ENDERECO: TStringField
      FieldName = 'IMO_ENDERECO'
      Origin = 'IMO_ENDERECO'
      Size = 100
    end
    object QYImoveisIMO_ESTADO: TStringField
      FieldName = 'IMO_ESTADO'
      Origin = 'IMO_ESTADO'
      Size = 2
    end
    object QYImoveisIMO_FINALIDADE: TStringField
      FieldName = 'IMO_FINALIDADE'
      Origin = 'IMO_FINALIDADE'
      Size = 1
    end
    object QYImoveisIMO_NUMERO: TStringField
      FieldName = 'IMO_NUMERO'
      Origin = 'IMO_NUMERO'
      Size = 15
    end
    object QYImoveisIMO_STATUS: TStringField
      FieldName = 'IMO_STATUS'
      Origin = 'IMO_STATUS'
      Size = 1
    end
    object QYImoveisIMO_TIPOIMOVEL: TIntegerField
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = 'IMO_TIPOIMOVEL'
      Required = True
    end
    object QYImoveisIMO_TIPONEGOCIO: TStringField
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = 'IMO_TIPONEGOCIO'
      Size = 1
    end
    object QYImoveisIMO_VALORALUGUEL: TFMTBCDField
      FieldName = 'IMO_VALORALUGUEL'
      Origin = 'IMO_VALORALUGUEL'
      currency = True
      Precision = 18
    end
    object QYImoveisCLI_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYImoveisCLI_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYImoveisCLI_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = 'CLI_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYImoveisCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYImoveisIMT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRImoveis: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
