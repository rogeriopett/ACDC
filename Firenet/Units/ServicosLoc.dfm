object FormServicosLoc: TFormServicosLoc
  Left = 191
  Top = 152
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Ordens de Servi'#231'o'
  ClientHeight = 392
  ClientWidth = 880
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
    880
    392)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 242
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 362
    Top = 18
    Width = 60
    Height = 13
    Caption = 'Localiza'#231#227'o:'
  end
  object Label4: TLabel
    Left = 562
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label5: TLabel
    Left = 770
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 666
    Top = 18
    Width = 57
    Height = 13
    Caption = 'N'#186' de S'#233'rie:'
  end
  object Label7: TLabel
    Left = 458
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label8: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label9: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 865
    Height = 318
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSServicos
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
        FieldName = 'SER_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SER_DTENTRADA'
        Title.Caption = 'Dt. Entrada'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SER_DTSAIDA'
        Title.Caption = 'Dt. Sa'#237'da'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SER_EQUIPAMENTO'
        Title.Caption = 'C'#243'd. Equip.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_DESCRICAO'
        Title.Caption = 'Equipamento'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 188
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SER_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SER_LOCALIZACAO'
        Title.Caption = 'Localiza'#231#227'o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_MARCA'
        Title.Caption = 'Marca'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_MODELO'
        Title.Caption = 'Modelo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 92
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
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 360
    Top = 32
    Width = 90
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 560
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 664
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 456
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit6KeyPress
  end
  object ComboBox1: TComboBox
    Left = 768
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'FINALIZADAS'
      'BAIXADAS')
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
  object DSServicos: TDataSource
    DataSet = QYServicos
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
  object QYServicos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRServicos
    SQL.Strings = (
      'select SER_CODIGO, '
      'SER_CLIENTE,'
      'SER_DTENTRADA,'
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO,'
      'SER_STATUS,'
      'EQP_DESCRICAO, '
      'EQP_MARCA,'
      'EQP_MODELO, '
      'SER_LOCALIZACAO, '
      'EQP_SERIE, '
      'CLI_CODIGO, '
      'CLI_NOME from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYServicosSER_CODIGO: TIntegerField
      FieldName = 'SER_CODIGO'
      Origin = 'SER_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYServicosSER_CLIENTE: TIntegerField
      FieldName = 'SER_CLIENTE'
      Origin = 'SER_CLIENTE'
      Required = True
    end
    object QYServicosSER_DTENTRADA: TDateField
      FieldName = 'SER_DTENTRADA'
      Origin = 'SER_DTENTRADA'
    end
    object QYServicosSER_DTSAIDA: TDateField
      FieldName = 'SER_DTSAIDA'
      Origin = 'SER_DTSAIDA'
    end
    object QYServicosSER_EQUIPAMENTO: TIntegerField
      FieldName = 'SER_EQUIPAMENTO'
      Origin = 'SER_EQUIPAMENTO'
      Required = True
    end
    object QYServicosSER_STATUS: TStringField
      FieldName = 'SER_STATUS'
      Origin = 'SER_STATUS'
      Size = 1
    end
    object QYServicosEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYServicosEQP_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_MARCA'
      Origin = 'EQP_MARCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QYServicosEQP_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_MODELO'
      Origin = 'EQP_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QYServicosSER_LOCALIZACAO: TStringField
      FieldName = 'SER_LOCALIZACAO'
      Origin = 'SER_LOCALIZACAO'
    end
    object QYServicosEQP_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_SERIE'
      Origin = 'EQP_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QYServicosCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYServicosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRServicos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
