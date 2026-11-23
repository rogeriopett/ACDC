object FormBoletosLoc: TFormBoletosLoc
  Left = 247
  Top = 79
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Boletos'
  ClientHeight = 384
  ClientWidth = 896
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
    896
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
    Width = 73
    Height = 13
    Caption = 'Nosso N'#250'mero:'
  end
  object Label3: TLabel
    Left = 458
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label4: TLabel
    Left = 530
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label5: TLabel
    Left = 298
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 378
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label7: TLabel
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel
    Left = 194
    Top = 18
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label9: TLabel
    Left = 786
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Num Docto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 881
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSBoletos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 10
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
        FieldName = 'BOL_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_NOSSONUMERO'
        Title.Caption = 'Nosso N'#250'mero'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_NOME'
        Title.Caption = 'Nome'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_DTVENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_DTCADASTRO'
        Title.Caption = 'Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_CONTA'
        Title.Caption = 'Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_BANCO'
        Title.Caption = 'Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOME'
        Title.Caption = 'Nome Banco'
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
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 456
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 528
    Top = 32
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 296
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 376
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'BAIXADOS'
      'CANCELADOS')
  end
  object ComboBox2: TComboBox
    Left = 192
    Top = 32
    Width = 97
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'VENCIMENTO'
      'CADASTRO')
  end
  object Edit5: TEdit
    Left = 784
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit5KeyPress
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 72
    Width = 881
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSBoletosItens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BOL_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_NOSSONUMERO'
        Title.Caption = 'Nosso N'#250'mero'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_NUMDOCTO'
        Title.Caption = 'Num. Docto'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_NOME'
        Title.Caption = 'Nome'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_DTVENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_DTCADASTRO'
        Title.Caption = 'Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BOL_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOL_CONTA'
        Title.Caption = 'Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_BANCO'
        Title.Caption = 'Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOME'
        Title.Caption = 'Nome Banco'
        Visible = True
      end>
  end
  object DSBoletos: TDataSource
    DataSet = QYBoletos
    Left = 440
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 160
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object DSBoletosItens: TDataSource
    DataSet = QYBoletosItens
    Left = 520
    Top = 248
  end
  object TRBoletos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 440
    Top = 200
  end
  object QYBoletos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBoletos
    SQL.Strings = (
      'select '
      'BOL_CODIGO,'
      'BOL_NOSSONUMERO,'
      'BOL_CLIENTE,'
      'BOL_NOME,'
      'BOL_DTVENCIMENTO,'
      'BOL_DTCADASTRO,'
      'BOL_VALORTOTAL,'
      'BOL_CONTA,'
      'BOL_STATUS,'
      'CON_BANCO,'
      'CON_NOME'
      'from BOLETOS'
      'left join CONTAS on BOL_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      '')
    Left = 440
    Top = 152
    object QYBoletosBOL_CODIGO: TIntegerField
      FieldName = 'BOL_CODIGO'
      Origin = 'BOL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYBoletosBOL_NOSSONUMERO: TStringField
      FieldName = 'BOL_NOSSONUMERO'
      Origin = 'BOL_NOSSONUMERO'
      Size = 30
    end
    object QYBoletosBOL_CLIENTE: TIntegerField
      FieldName = 'BOL_CLIENTE'
      Origin = 'BOL_CLIENTE'
      Required = True
    end
    object QYBoletosBOL_NOME: TStringField
      FieldName = 'BOL_NOME'
      Origin = 'BOL_NOME'
      Size = 80
    end
    object QYBoletosBOL_DTVENCIMENTO: TDateField
      FieldName = 'BOL_DTVENCIMENTO'
      Origin = 'BOL_DTVENCIMENTO'
    end
    object QYBoletosBOL_DTCADASTRO: TDateField
      FieldName = 'BOL_DTCADASTRO'
      Origin = 'BOL_DTCADASTRO'
    end
    object QYBoletosBOL_VALORTOTAL: TFMTBCDField
      FieldName = 'BOL_VALORTOTAL'
      Origin = 'BOL_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYBoletosBOL_CONTA: TIntegerField
      FieldName = 'BOL_CONTA'
      Origin = 'BOL_CONTA'
      Required = True
    end
    object QYBoletosBOL_STATUS: TStringField
      FieldName = 'BOL_STATUS'
      Origin = 'BOL_STATUS'
      Size = 1
    end
    object QYBoletosCON_BANCO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYBoletosCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRBoletosItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 520
    Top = 200
  end
  object QYBoletosItens: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBoletosItens
    SQL.Strings = (
      'select '
      'BOL_CODIGO,'
      'BOL_NOSSONUMERO,'
      'BOL_CLIENTE,'
      'BOL_NOME,'
      'BOL_DTVENCIMENTO,'
      'BOL_DTCADASTRO,'
      'BOL_VALORTOTAL,'
      'BOL_CONTA,'
      'BOL_STATUS,'
      'CON_BANCO,'
      'CON_NOME,'
      'REE_NUMDOCTO'
      'from BOLETOSITENS'
      'left join BOLETOS on BOI_BOLETO=BOL_CODIGO'
      'left join CONTAS on BOL_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'left join RECEBER on BOI_RECEBER=REE_CODIGO'
      '')
    Left = 520
    Top = 152
    object QYBoletosItensBOL_CODIGO: TIntegerField
      FieldName = 'BOL_CODIGO'
      Origin = 'BOL_CODIGO'
    end
    object QYBoletosItensBOL_NOSSONUMERO: TStringField
      FieldName = 'BOL_NOSSONUMERO'
      Origin = 'BOL_NOSSONUMERO'
      Size = 30
    end
    object QYBoletosItensBOL_CLIENTE: TIntegerField
      FieldName = 'BOL_CLIENTE'
      Origin = 'BOL_CLIENTE'
    end
    object QYBoletosItensBOL_NOME: TStringField
      FieldName = 'BOL_NOME'
      Origin = 'BOL_NOME'
      Size = 80
    end
    object QYBoletosItensBOL_DTVENCIMENTO: TDateField
      FieldName = 'BOL_DTVENCIMENTO'
      Origin = 'BOL_DTVENCIMENTO'
    end
    object QYBoletosItensBOL_DTCADASTRO: TDateField
      FieldName = 'BOL_DTCADASTRO'
      Origin = 'BOL_DTCADASTRO'
    end
    object QYBoletosItensBOL_VALORTOTAL: TFMTBCDField
      FieldName = 'BOL_VALORTOTAL'
      Origin = 'BOL_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYBoletosItensBOL_CONTA: TIntegerField
      FieldName = 'BOL_CONTA'
      Origin = 'BOL_CONTA'
    end
    object QYBoletosItensBOL_STATUS: TStringField
      FieldName = 'BOL_STATUS'
      Origin = 'BOL_STATUS'
      Size = 1
    end
    object QYBoletosItensCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
    end
    object QYBoletosItensCON_NOME: TStringField
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      Size = 80
    end
    object QYBoletosItensREE_NUMDOCTO: TStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = 'REE_NUMDOCTO'
    end
  end
end
