object FormProntuariosLoc: TFormProntuariosLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Prontu'#225'rios'
  ClientHeight = 416
  ClientWidth = 800
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
    800
    416)
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 424
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 80
    Top = 18
    Width = 90
    Height = 13
    Caption = 'N'#250'm. Atendimento:'
  end
  object Label4: TLabel
    Left = 192
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label5: TLabel
    Left = 272
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label6: TLabel
    Left = 352
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label7: TLabel
    Left = 623
    Top = 18
    Width = 53
    Height = 13
    Caption = 'Num. CNS:'
  end
  object Label8: TLabel
    Left = 711
    Top = 18
    Width = 61
    Height = 13
    Caption = 'Num. SAME:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 785
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSProntuarios
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
        FieldName = 'PEP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_ATENDIMENTO'
        Title.Caption = 'Atendimento'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_DTATENDIMENTO'
        Title.Caption = 'Dt. Atendimento'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_OBITO'
        Title.Caption = #211'bito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEP_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CNS'
        Title.Caption = 'N'#250'mero CNS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_SAME'
        Title.Caption = 'N'#250'mero SAME'
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
    Left = 424
    Top = 32
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 80
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 192
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 272
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit4: TEdit
    Left = 352
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 624
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 712
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit6KeyPress
  end
  object DSProntuarios: TDataSource
    DataSet = QYProntuarios
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
  object QYProntuarios: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProntuarios
    SQL.Strings = (
      'select '
      'PEP_ATENDIMENTO,'
      'PEP_CODIGO,'
      'PEP_CLIENTE,'
      'PEP_DTATENDIMENTO,'
      'PEP_DTCADASTRO,'
      'PEP_STATUS,'
      'PEP_OBITO,'
      'CLI_NOME,'
      'CLI_CNS,'
      'CLI_SAME'
      'from PRONTUARIOS'
      'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYProntuariosPEP_ATENDIMENTO: TIntegerField
      FieldName = 'PEP_ATENDIMENTO'
      Origin = 'PEP_ATENDIMENTO'
    end
    object QYProntuariosPEP_CODIGO: TIntegerField
      FieldName = 'PEP_CODIGO'
      Origin = 'PEP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProntuariosPEP_CLIENTE: TIntegerField
      FieldName = 'PEP_CLIENTE'
      Origin = 'PEP_CLIENTE'
      Required = True
    end
    object QYProntuariosPEP_DTATENDIMENTO: TDateField
      FieldName = 'PEP_DTATENDIMENTO'
      Origin = 'PEP_DTATENDIMENTO'
    end
    object QYProntuariosPEP_DTCADASTRO: TDateField
      FieldName = 'PEP_DTCADASTRO'
      Origin = 'PEP_DTCADASTRO'
    end
    object QYProntuariosPEP_STATUS: TStringField
      FieldName = 'PEP_STATUS'
      Origin = 'PEP_STATUS'
      Size = 1
    end
    object QYProntuariosPEP_OBITO: TStringField
      FieldName = 'PEP_OBITO'
      Origin = 'PEP_OBITO'
      Size = 1
    end
    object QYProntuariosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYProntuariosCLI_CNS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYProntuariosCLI_SAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TRProntuarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
