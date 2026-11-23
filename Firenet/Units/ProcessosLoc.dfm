object FormProcessosLoc: TFormProcessosLoc
  Left = 221
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Processos'
  ClientHeight = 448
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
    448)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 242
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 418
    Top = 18
    Width = 52
    Height = 13
    Caption = 'Advogado:'
  end
  object Label4: TLabel
    Left = 554
    Top = 18
    Width = 40
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label5: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 163
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSProcessos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
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
        FieldName = 'PCS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACO_DESCRICAO'
        Title.Caption = 'Tipo de A'#231#227'o'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Advogado'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_DTCADASTRO'
        Title.Caption = 'Dt. Cad.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_NUMEROANTIGO'
        Title.Caption = 'Num. Antigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_NUMEROUNIFICADO'
        Title.Caption = 'Num. Unificado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_NUMEROUNIFICADOFED'
        Title.Caption = 'Num Unificado Fed.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_CHAVE'
        Title.Caption = 'Chave/Senha'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRS_NOME'
        Title.Caption = 'Foro'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCS_LOCALFISICO'
        Title.Caption = 'Local F'#237'sico'
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
    Left = 240
    Top = 32
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 416
    Top = 32
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 552
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
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
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'ARQUIVADOS'
      'SUSPENSOS')
  end
  object DSProcessos: TDataSource
    DataSet = QYProcessos
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
  object QYProcessos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProcessos
    SQL.Strings = (
      'select '
      'PCS_CODIGO,'
      'PCS_ACAO,'
      'PCS_ADVOGADO,'
      'PCS_CHAVE,'
      'PCS_DESCRICAO,'
      'PCS_DTCADASTRO,'
      'PCS_FORO,'
      'PCS_LOCALFISICO,'
      'PCS_NUMEROANTIGO,'
      'PCS_NUMEROUNIFICADO,'
      'PCS_NUMEROUNIFICADOFED,'
      'PCS_STATUS,'
      'ACO_DESCRICAO,'
      'FRS_NOME,'
      'VEN_NOME '
      'from PROCESSOS'
      'left join ACOES on PCS_ACAO=ACO_CODIGO'
      'left join FOROS on PCS_FORO=FRS_CODIGO'
      'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYProcessosPCS_CODIGO: TIntegerField
      FieldName = 'PCS_CODIGO'
      Origin = 'PCS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProcessosPCS_ACAO: TIntegerField
      FieldName = 'PCS_ACAO'
      Origin = 'PCS_ACAO'
      Required = True
    end
    object QYProcessosPCS_ADVOGADO: TIntegerField
      FieldName = 'PCS_ADVOGADO'
      Origin = 'PCS_ADVOGADO'
      Required = True
    end
    object QYProcessosPCS_CHAVE: TStringField
      FieldName = 'PCS_CHAVE'
      Origin = 'PCS_CHAVE'
      Size = 40
    end
    object QYProcessosPCS_DESCRICAO: TStringField
      FieldName = 'PCS_DESCRICAO'
      Origin = 'PCS_DESCRICAO'
      Size = 50
    end
    object QYProcessosPCS_DTCADASTRO: TDateField
      FieldName = 'PCS_DTCADASTRO'
      Origin = 'PCS_DTCADASTRO'
    end
    object QYProcessosPCS_FORO: TIntegerField
      FieldName = 'PCS_FORO'
      Origin = 'PCS_FORO'
      Required = True
    end
    object QYProcessosPCS_LOCALFISICO: TStringField
      FieldName = 'PCS_LOCALFISICO'
      Origin = 'PCS_LOCALFISICO'
      Size = 50
    end
    object QYProcessosPCS_NUMEROANTIGO: TStringField
      FieldName = 'PCS_NUMEROANTIGO'
      Origin = 'PCS_NUMEROANTIGO'
      Size = 30
    end
    object QYProcessosPCS_NUMEROUNIFICADO: TStringField
      FieldName = 'PCS_NUMEROUNIFICADO'
      Origin = 'PCS_NUMEROUNIFICADO'
      Size = 30
    end
    object QYProcessosPCS_NUMEROUNIFICADOFED: TStringField
      FieldName = 'PCS_NUMEROUNIFICADOFED'
      Origin = 'PCS_NUMEROUNIFICADOFED'
      Size = 30
    end
    object QYProcessosPCS_STATUS: TStringField
      FieldName = 'PCS_STATUS'
      Origin = 'PCS_STATUS'
      Size = 1
    end
    object QYProcessosACO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ACO_DESCRICAO'
      Origin = 'ACO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYProcessosFRS_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRS_NOME'
      Origin = 'FRS_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYProcessosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRProcessos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
