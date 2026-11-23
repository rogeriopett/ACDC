object FormMensalidadesLoc: TFormMensalidadesLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Mensalidades'
  ClientHeight = 368
  ClientWidth = 1008
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
    1008
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
  object Label6: TLabel
    Left = 554
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Receita:'
  end
  object Label7: TLabel
    Left = 482
    Top = 18
    Width = 65
    Height = 13
    Caption = 'C'#243'd. Receita:'
  end
  object Label8: TLabel
    Left = 714
    Top = 18
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Conta:'
  end
  object Label9: TLabel
    Left = 785
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 993
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMensalidades
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 8
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
        FieldName = 'MNS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_VENCIMENTO'
        Title.Caption = 'Vecto'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_VALOR'
        Title.Caption = 'Valor'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_PERIODO'
        Title.Caption = 'Per'#237'odo'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_CONTA'
        Title.Caption = 'Conta'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOME'
        Title.Caption = 'Conta'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_RECEITA'
        Title.Caption = 'Receita'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_DESCRICAO'
        Title.Caption = 'Receita'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MNS_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
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
    Width = 161
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
  object Edit4: TEdit
    Left = 552
    Top = 32
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 480
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 712
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 783
    Top = 32
    Width = 218
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit7KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 903
    Top = 3
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object DSMensalidades: TDataSource
    DataSet = QYMensalidades
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYMensalidades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMensalidades
    SQL.Strings = (
      'select '
      'MNS_CLIENTE, '
      'MNS_CODIGO, '
      'MNS_CONTA, '
      'MNS_DESCRICAO,'
      'MNS_DTCADASTRO, '
      'MNS_PERIODO,'
      'MNS_RECEITA, '
      'MNS_STATUS,'
      'MNS_VALOR, '
      'MNS_VENCIMENTO, '
      'CLI_NOME, '
      'CON_NOME, '
      'REC_DESCRICAO '
      'from MENSALIDADES'
      'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO'
      'left join CONTAS on MNS_CONTA=CON_CODIGO'
      'left join RECEITAS on MNS_RECEITA=REC_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYMensalidadesMNS_CLIENTE: TIntegerField
      FieldName = 'MNS_CLIENTE'
      Origin = 'MNS_CLIENTE'
      Required = True
    end
    object QYMensalidadesMNS_CODIGO: TIntegerField
      FieldName = 'MNS_CODIGO'
      Origin = 'MNS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMensalidadesMNS_CONTA: TIntegerField
      FieldName = 'MNS_CONTA'
      Origin = 'MNS_CONTA'
      Required = True
    end
    object QYMensalidadesMNS_DESCRICAO: TStringField
      FieldName = 'MNS_DESCRICAO'
      Origin = 'MNS_DESCRICAO'
      Size = 120
    end
    object QYMensalidadesMNS_DTCADASTRO: TDateField
      FieldName = 'MNS_DTCADASTRO'
      Origin = 'MNS_DTCADASTRO'
    end
    object QYMensalidadesMNS_PERIODO: TStringField
      FieldName = 'MNS_PERIODO'
      Origin = 'MNS_PERIODO'
      Size = 10
    end
    object QYMensalidadesMNS_RECEITA: TIntegerField
      FieldName = 'MNS_RECEITA'
      Origin = 'MNS_RECEITA'
      Required = True
    end
    object QYMensalidadesMNS_STATUS: TStringField
      FieldName = 'MNS_STATUS'
      Origin = 'MNS_STATUS'
      Size = 1
    end
    object QYMensalidadesMNS_VALOR: TFMTBCDField
      FieldName = 'MNS_VALOR'
      Origin = 'MNS_VALOR'
      currency = True
      Precision = 18
    end
    object QYMensalidadesMNS_VENCIMENTO: TIntegerField
      FieldName = 'MNS_VENCIMENTO'
      Origin = 'MNS_VENCIMENTO'
    end
    object QYMensalidadesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYMensalidadesCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYMensalidadesREC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRMensalidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 296
    Top = 120
  end
end
