object FormChequesLoc: TFormChequesLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Cheques'
  ClientHeight = 368
  ClientWidth = 872
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
    872
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
    Left = 82
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 234
    Top = 18
    Width = 34
    Height = 13
    Caption = 'Banco:'
  end
  object Label4: TLabel
    Left = 546
    Top = 18
    Width = 40
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label5: TLabel
    Left = 706
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 786
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label7: TLabel
    Left = 386
    Top = 18
    Width = 42
    Height = 13
    Caption = 'Ag'#234'ncia:'
  end
  object Label8: TLabel
    Left = 466
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Conta:'
  end
  object Label9: TLabel
    Left = 626
    Top = 18
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 857
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCheques
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 8
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
        FieldName = 'CHE_CODIGO'
        Title.Caption = 'C'#243'd.'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_CLIENTE'
        Title.Caption = 'C'#243'd.Cli'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_BANCO'
        Title.Caption = 'C'#243'd.Bco'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_NOME'
        Title.Caption = 'Banco'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_CONTA'
        Title.Caption = 'Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_NUMERO'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_BOMPARA'
        Title.Caption = 'Bom Para'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_ESPECIAL'
        Title.Caption = 'Especial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_DTCADASTRO'
        Title.Caption = 'Dt Cadastro'
        Width = 78
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
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 232
    Top = 32
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 544
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 704
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 784
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 7
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit5: TEdit
    Left = 384
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 464
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 624
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit7KeyPress
  end
  object DSCheques: TDataSource
    DataSet = QYCheques
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
  object TRCheques: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYCheques: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCheques
    SQL.Strings = (
      'select '
      'CHE_CODIGO,'
      'CHE_BANCO,'
      'CHE_CLIENTE,'
      'CHE_VALOR,'
      'CHE_BOMPARA,'
      'CHE_AGENCIA,'
      'CHE_CONTA,'
      'CHE_DTCADASTRO,'
      'CHE_ESPECIAL,'
      'CHE_STATUS,'
      'CLI_NOME,'
      'BAN_NOME'
      'from CHEQUES'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'left join BANCOS on CHE_BANCO=BAN_CODIGO'
      ''
      '')
    Left = 200
    Top = 120
    object QYChequesCHE_CODIGO: TIntegerField
      FieldName = 'CHE_CODIGO'
      Origin = 'CHE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYChequesCHE_BANCO: TIntegerField
      FieldName = 'CHE_BANCO'
      Origin = 'CHE_BANCO'
      Required = True
    end
    object QYChequesCHE_CLIENTE: TIntegerField
      FieldName = 'CHE_CLIENTE'
      Origin = 'CHE_CLIENTE'
      Required = True
    end
    object QYChequesCHE_VALOR: TFMTBCDField
      FieldName = 'CHE_VALOR'
      Origin = 'CHE_VALOR'
      currency = True
      Precision = 18
    end
    object QYChequesCHE_BOMPARA: TDateField
      FieldName = 'CHE_BOMPARA'
      Origin = 'CHE_BOMPARA'
    end
    object QYChequesCHE_AGENCIA: TStringField
      FieldName = 'CHE_AGENCIA'
      Origin = 'CHE_AGENCIA'
      Size = 10
    end
    object QYChequesCHE_CONTA: TStringField
      FieldName = 'CHE_CONTA'
      Origin = 'CHE_CONTA'
      Size = 15
    end
    object QYChequesCHE_DTCADASTRO: TDateField
      FieldName = 'CHE_DTCADASTRO'
      Origin = 'CHE_DTCADASTRO'
    end
    object QYChequesCHE_ESPECIAL: TStringField
      FieldName = 'CHE_ESPECIAL'
      Origin = 'CHE_ESPECIAL'
      Size = 1
    end
    object QYChequesCHE_STATUS: TStringField
      FieldName = 'CHE_STATUS'
      Origin = 'CHE_STATUS'
      Size = 1
    end
    object QYChequesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYChequesBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
