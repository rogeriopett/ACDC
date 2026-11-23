object FormNfceLoc: TFormNfceLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar NFC-e'
  ClientHeight = 384
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
    DataSource = DSNfce
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NFC_CODIGO'
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
        FieldName = 'NFC_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFC_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFC_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NFC_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NFC_CONTINGENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Cont.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFC_USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFC_CHAVEACESSO'
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
    TabOrder = 5
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
    TabOrder = 6
    Text = '                                            '
    OnKeyPress = MaskEdit3KeyPress
  end
  object DSNfce: TDataSource
    DataSet = QYNfce
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
  object QYNfce: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNfce
    SQL.Strings = (
      'select '
      'NFC_CHAVEACESSO, '
      'NFC_CIDADE, '
      'NFC_CIDADECODIGO, '
      'NFC_CLIENTE, '
      'NFC_CODIGO,'
      'NFC_CONTINGENCIA, '
      'NFC_CNPJ,'
      'NFC_CPF,'
      'NFC_DTEMISSAO, '
      'NFC_ESTADO,'
      'NFC_STATUS, '
      'NFC_USUARIO, '
      'NFC_VALORTOTAL,'
      'NFC_VENDA, '
      'NFC_VENDEDOR,'
      'CLI_NOME,'
      'CLI_TIPOPESSOA '
      'from NFCE'
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYNfceNFC_CHAVEACESSO: TStringField
      FieldName = 'NFC_CHAVEACESSO'
      Origin = 'NFC_CHAVEACESSO'
      Size = 50
    end
    object QYNfceNFC_CIDADE: TStringField
      FieldName = 'NFC_CIDADE'
      Origin = 'NFC_CIDADE'
      Size = 50
    end
    object QYNfceNFC_CIDADECODIGO: TIntegerField
      FieldName = 'NFC_CIDADECODIGO'
      Origin = 'NFC_CIDADECODIGO'
    end
    object QYNfceNFC_CLIENTE: TIntegerField
      FieldName = 'NFC_CLIENTE'
      Origin = 'NFC_CLIENTE'
      Required = True
    end
    object QYNfceNFC_CODIGO: TIntegerField
      FieldName = 'NFC_CODIGO'
      Origin = 'NFC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNfceNFC_CONTINGENCIA: TStringField
      FieldName = 'NFC_CONTINGENCIA'
      Origin = 'NFC_CONTINGENCIA'
      Size = 1
    end
    object QYNfceNFC_CNPJ: TStringField
      FieldName = 'NFC_CNPJ'
      Origin = 'NFC_CNPJ'
    end
    object QYNfceNFC_CPF: TStringField
      FieldName = 'NFC_CPF'
      Origin = 'NFC_CPF'
    end
    object QYNfceNFC_DTEMISSAO: TDateField
      FieldName = 'NFC_DTEMISSAO'
      Origin = 'NFC_DTEMISSAO'
    end
    object QYNfceNFC_ESTADO: TStringField
      FieldName = 'NFC_ESTADO'
      Origin = 'NFC_ESTADO'
      Size = 2
    end
    object QYNfceNFC_STATUS: TStringField
      FieldName = 'NFC_STATUS'
      Origin = 'NFC_STATUS'
      Size = 1
    end
    object QYNfceNFC_USUARIO: TStringField
      FieldName = 'NFC_USUARIO'
      Origin = 'NFC_USUARIO'
    end
    object QYNfceNFC_VALORTOTAL: TFMTBCDField
      FieldName = 'NFC_VALORTOTAL'
      Origin = 'NFC_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYNfceNFC_VENDA: TIntegerField
      FieldName = 'NFC_VENDA'
      Origin = 'NFC_VENDA'
    end
    object QYNfceNFC_VENDEDOR: TIntegerField
      FieldName = 'NFC_VENDEDOR'
      Origin = 'NFC_VENDEDOR'
      Required = True
    end
    object QYNfceCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYNfceCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRNfce: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
