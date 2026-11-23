object FormSegurosLoc: TFormSegurosLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Seguros...'
  ClientHeight = 368
  ClientWidth = 1016
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
    1016
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
  object Label7: TLabel
    Left = 906
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 714
    Top = 18
    Width = 73
    Height = 13
    Caption = 'N'#250'm. Proposta:'
  end
  object Label8: TLabel
    Left = 810
    Top = 18
    Width = 66
    Height = 13
    Caption = 'N'#250'm. Ap'#243'lice:'
  end
  object Label9: TLabel
    Left = 554
    Top = 18
    Width = 58
    Height = 13
    Caption = 'Seguradora:'
  end
  object Label10: TLabel
    Left = 482
    Top = 18
    Width = 50
    Height = 13
    Caption = 'C'#243'd. Seg.:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 1001
    Height = 297
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSSeguros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'SEG_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_PROPOSTA'
        Title.Caption = 'Proposta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_APOLICE'
        Title.Caption = 'Ap'#243'lice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SEG_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_VALORPREMIO'
        Title.Caption = 'Pr'#234'mio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEG_SEGURADORA'
        Title.Caption = 'Seguradora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_NOME'
        Title.Caption = 'Nome Seguradora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SGT_DESCRICAO'
        Title.Caption = 'Tipo'
        Width = 224
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
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
    Left = 160
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 904
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODOS'
      'PROPOSTAS'
      'INUTILIZADOS'
      'APOLICES'
      'CANCELADOS')
  end
  object Edit4: TEdit
    Left = 712
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 808
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 552
    Top = 32
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 480
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    OnKeyPress = Edit7KeyPress
  end
  object DSSeguros: TDataSource
    DataSet = QYSeguros
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
  object QYSeguros: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRSeguros
    SQL.Strings = (
      'select '
      'SEG_APOLICE,'
      'SEG_CLIENTE,'
      'SEG_CODIGO,'
      'SEG_DTEMISSAO,'
      'SEG_PROPOSTA,'
      'SEG_VALORPREMIO,'
      'SEG_SEGUROTIPO,'
      'SEG_SEGURADORA,'
      'SEG_STATUS,'
      'CLI_NOME,'
      'FOR_NOME,'
      'SGT_DESCRICAO'
      'from SEGUROS'
      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO'
      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO'
      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYSegurosSEG_APOLICE: TStringField
      FieldName = 'SEG_APOLICE'
      Origin = 'SEG_APOLICE'
    end
    object QYSegurosSEG_CLIENTE: TIntegerField
      FieldName = 'SEG_CLIENTE'
      Origin = 'SEG_CLIENTE'
      Required = True
    end
    object QYSegurosSEG_CODIGO: TIntegerField
      FieldName = 'SEG_CODIGO'
      Origin = 'SEG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYSegurosSEG_DTEMISSAO: TDateField
      FieldName = 'SEG_DTEMISSAO'
      Origin = 'SEG_DTEMISSAO'
    end
    object QYSegurosSEG_PROPOSTA: TStringField
      FieldName = 'SEG_PROPOSTA'
      Origin = 'SEG_PROPOSTA'
    end
    object QYSegurosSEG_VALORPREMIO: TFMTBCDField
      FieldName = 'SEG_VALORPREMIO'
      Origin = 'SEG_VALORPREMIO'
      currency = True
      Precision = 18
    end
    object QYSegurosSEG_SEGUROTIPO: TIntegerField
      FieldName = 'SEG_SEGUROTIPO'
      Origin = 'SEG_SEGUROTIPO'
      Required = True
    end
    object QYSegurosSEG_SEGURADORA: TIntegerField
      FieldName = 'SEG_SEGURADORA'
      Origin = 'SEG_SEGURADORA'
      Required = True
    end
    object QYSegurosSEG_STATUS: TStringField
      FieldName = 'SEG_STATUS'
      Origin = 'SEG_STATUS'
      Size = 1
    end
    object QYSegurosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYSegurosFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYSegurosSGT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SGT_DESCRICAO'
      Origin = 'SGT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRSeguros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
