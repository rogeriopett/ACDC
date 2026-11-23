object FormEmailsLoc: TFormEmailsLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Emails'
  ClientHeight = 408
  ClientWidth = 792
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
    792
    408)
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
    Top = 58
    Width = 52
    Height = 13
    Caption = 'Remetente'
  end
  object Label3: TLabel
    Left = 242
    Top = 58
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label4: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label5: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label6: TLabel
    Left = 314
    Top = 58
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label8: TLabel
    Left = 10
    Top = 58
    Width = 64
    Height = 13
    Caption = 'C'#243'digo Rem.:'
  end
  object Label9: TLabel
    Left = 242
    Top = 18
    Width = 48
    Height = 13
    Caption = 'C'#243'd. Ass.:'
  end
  object Label7: TLabel
    Left = 314
    Top = 18
    Width = 41
    Height = 13
    Caption = 'Assunto:'
  end
  object Label10: TLabel
    Left = 554
    Top = 58
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Vend.:'
  end
  object Label11: TLabel
    Left = 626
    Top = 58
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label12: TLabel
    Left = 554
    Top = 18
    Width = 59
    Height = 13
    Caption = 'Destinat'#225'rio:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 107
    Width = 777
    Height = 294
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEmails
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 12
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
        FieldName = 'EMA_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_DTULTENVIO'
        Title.Caption = #218'lt. Envio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_ASSUNTO'
        Title.Caption = 'C'#243'd. Ass.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASS_DESCRICAO'
        Title.Caption = 'Assunto'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_CLIENTE'
        Title.Caption = 'C'#243'd. Cli.'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_VENDEDOR'
        Title.Caption = 'C'#243'd. Vend.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_DESTINATARIOS'
        Title.Caption = 'Emails destinat'#225'rios'
        Width = 366
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMA_EMAILCONTA'
        Title.Caption = 'C'#243'd. Rem.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMC_NOME'
        Title.Caption = 'Remetente'
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
    Top = 72
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
    Top = 72
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnKeyPress = Edit3KeyPress
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
  object Edit4: TEdit
    Left = 312
    Top = 72
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 8
    Top = 72
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 312
    Top = 32
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 552
    Top = 72
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    OnKeyPress = Edit8KeyPress
  end
  object Edit9: TEdit
    Left = 624
    Top = 72
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
    OnKeyPress = Edit9KeyPress
  end
  object Edit10: TEdit
    Left = 552
    Top = 32
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit10KeyPress
  end
  object DSEmails: TDataSource
    DataSet = QYEmails
    Left = 128
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 176
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYEmails: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREmails
    SQL.Strings = (
      'select '
      'EMA_ASSUNTO,'
      'EMA_CLIENTE,'
      'EMA_CODIGO,'
      'EMA_DESTINATARIOS,'
      'EMA_DTCADASTRO,'
      'EMA_DTULTENVIO,'
      'EMA_EMAILCONTA,'
      'EMA_VENDEDOR,'
      'ASS_DESCRICAO,'
      'CLI_NOME,'
      'EMC_NOME,'
      'VEN_NOME'
      'from EMAILS'
      'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO'
      'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO'
      'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO'
      'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO'
      ''
      '')
    Left = 200
    Top = 176
    object QYEmailsEMA_ASSUNTO: TIntegerField
      FieldName = 'EMA_ASSUNTO'
      Origin = 'EMA_ASSUNTO'
      Required = True
    end
    object QYEmailsEMA_CLIENTE: TIntegerField
      FieldName = 'EMA_CLIENTE'
      Origin = 'EMA_CLIENTE'
      Required = True
    end
    object QYEmailsEMA_CODIGO: TIntegerField
      FieldName = 'EMA_CODIGO'
      Origin = 'EMA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEmailsEMA_DESTINATARIOS: TStringField
      FieldName = 'EMA_DESTINATARIOS'
      Origin = 'EMA_DESTINATARIOS'
      Size = 300
    end
    object QYEmailsEMA_DTCADASTRO: TDateField
      FieldName = 'EMA_DTCADASTRO'
      Origin = 'EMA_DTCADASTRO'
    end
    object QYEmailsEMA_DTULTENVIO: TDateField
      FieldName = 'EMA_DTULTENVIO'
      Origin = 'EMA_DTULTENVIO'
    end
    object QYEmailsEMA_EMAILCONTA: TIntegerField
      FieldName = 'EMA_EMAILCONTA'
      Origin = 'EMA_EMAILCONTA'
      Required = True
    end
    object QYEmailsEMA_VENDEDOR: TIntegerField
      FieldName = 'EMA_VENDEDOR'
      Origin = 'EMA_VENDEDOR'
      Required = True
    end
    object QYEmailsASS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ASS_DESCRICAO'
      Origin = 'ASS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYEmailsCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYEmailsEMC_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYEmailsVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TREmails: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 176
  end
end
