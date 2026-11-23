object FormNfeLoc: TFormNfeLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar NFe'
  ClientHeight = 384
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
    384)
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 314
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 163
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 242
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label7: TLabel
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 11
    Top = 58
    Width = 87
    Height = 13
    Caption = 'Chave de Acesso:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 100
    Width = 769
    Height = 277
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSNfe
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
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
        FieldName = 'NFE_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 302
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_CHAVEACESSO'
        Title.Caption = 'Chave de Acesso'
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
    Left = 312
    Top = 32
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
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
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'FINALIZADAS'
      'CANCELADAS'
      'INUTILIZADAS')
  end
  object MaskEdit3: TMaskEdit
    Left = 8
    Top = 72
    Width = 297
    Height = 21
    EditMask = '!99999999999999999999999999999999999999999999;1;_'
    MaxLength = 44
    TabOrder = 5
    Text = '                                            '
    OnKeyPress = MaskEdit3KeyPress
  end
  object DSNfe: TDataSource
    DataSet = QYNfe
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
  object QYNfe: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNfe
    SQL.Strings = (
      'select '
      'NFE_CHAVEACESSO, '
      'NFE_CIDADE, '
      'NFE_CIDADECODIGO, '
      'NFE_CLIENTE, '
      'NFE_CODIGO, '
      'NFE_CNPJ,'
      'NFE_CPF,'
      'NFE_DTEMISSAO, '
      'NFE_ESTADO,'
      'NFE_STATUS, '
      'NFE_USUARIO, '
      'NFE_VALORTOTAL, '
      'NFE_VENDEDOR,'
      'CLI_NOME,'
      'CLI_TIPOPESSOA  from NFE'
      'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYNfeNFE_CHAVEACESSO: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      Origin = 'NFE_CHAVEACESSO'
      Size = 50
    end
    object QYNfeNFE_CIDADE: TStringField
      FieldName = 'NFE_CIDADE'
      Origin = 'NFE_CIDADE'
      Size = 50
    end
    object QYNfeNFE_CIDADECODIGO: TIntegerField
      FieldName = 'NFE_CIDADECODIGO'
      Origin = 'NFE_CIDADECODIGO'
    end
    object QYNfeNFE_CLIENTE: TIntegerField
      FieldName = 'NFE_CLIENTE'
      Origin = 'NFE_CLIENTE'
      Required = True
    end
    object QYNfeNFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
      Origin = 'NFE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNfeNFE_CNPJ: TStringField
      FieldName = 'NFE_CNPJ'
      Origin = 'NFE_CNPJ'
    end
    object QYNfeNFE_CPF: TStringField
      FieldName = 'NFE_CPF'
      Origin = 'NFE_CPF'
    end
    object QYNfeNFE_DTEMISSAO: TDateField
      FieldName = 'NFE_DTEMISSAO'
      Origin = 'NFE_DTEMISSAO'
    end
    object QYNfeNFE_ESTADO: TStringField
      FieldName = 'NFE_ESTADO'
      Origin = 'NFE_ESTADO'
      Size = 2
    end
    object QYNfeNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      Size = 1
    end
    object QYNfeNFE_USUARIO: TStringField
      FieldName = 'NFE_USUARIO'
      Origin = 'NFE_USUARIO'
    end
    object QYNfeNFE_VALORTOTAL: TFMTBCDField
      FieldName = 'NFE_VALORTOTAL'
      Origin = 'NFE_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYNfeNFE_VENDEDOR: TIntegerField
      FieldName = 'NFE_VENDEDOR'
      Origin = 'NFE_VENDEDOR'
      Required = True
    end
    object QYNfeCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYNfeCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRNfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
