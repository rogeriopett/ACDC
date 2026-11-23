object FormVendasLoc: TFormVendasLoc
  Left = 299
  Top = 349
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Vendas'
  ClientHeight = 368
  ClientWidth = 936
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
    936
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
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 482
    Top = 18
    Width = 48
    Height = 13
    Caption = 'C'#243'd. Imp.:'
  end
  object Label8: TLabel
    Left = 578
    Top = 18
    Width = 71
    Height = 13
    Caption = 'Pedido Cliente:'
  end
  object Label9: TLabel
    Left = 786
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Via Internet:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 921
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSVendas
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
        FieldName = 'VED_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 46
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
        FieldName = 'VED_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIAINTERNET'
        Title.Caption = 'Via Internet'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_PEDIDOCLIENTE'
        Title.Caption = 'Pedido Cliente'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VED_USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 82
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
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'FINALIZADOS'
      'CANCELADOS'
      'INUTILIZADOS')
  end
  object Edit4: TEdit
    Left = 480
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 576
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object ComboBox2: TComboBox
    Left = 784
    Top = 32
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    Items.Strings = (
      'TODOS'
      'SIM - ABERTOS'
      'SIM - FINALIZADOS'
      'NAO')
  end
  object DSVendas: TDataSource
    DataSet = QYVendas
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYVendas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendas
    SQL.Strings = (
      'select '
      'VED_CODIGO,'
      'VED_CLIENTE,'
      'VED_DTEMISSAO,'
      'VED_PEDIDOCLIENTE, '
      'VED_VENDEDOR,'
      'VED_VALORTOTAL,'
      'VED_STATUS,'
      'VED_USUARIO,'
      'VED_VIAINTERNET ||'#39'/'#39'|| VED_VIAINTERNETSTATUS as VIAINTERNET,'
      'CLI_NOME from VENDAS'
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYVendasVED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = 'VED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendasVED_CLIENTE: TIntegerField
      FieldName = 'VED_CLIENTE'
      Origin = 'VED_CLIENTE'
      Required = True
    end
    object QYVendasVED_DTEMISSAO: TDateField
      FieldName = 'VED_DTEMISSAO'
      Origin = 'VED_DTEMISSAO'
    end
    object QYVendasVED_PEDIDOCLIENTE: TStringField
      FieldName = 'VED_PEDIDOCLIENTE'
      Origin = 'VED_PEDIDOCLIENTE'
      Size = 15
    end
    object QYVendasVED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = 'VED_VENDEDOR'
      Required = True
    end
    object QYVendasVED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = 'VED_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYVendasVED_STATUS: TStringField
      FieldName = 'VED_STATUS'
      Origin = 'VED_STATUS'
      Size = 1
    end
    object QYVendasVED_USUARIO: TStringField
      FieldName = 'VED_USUARIO'
      Origin = 'VED_USUARIO'
    end
    object QYVendasVIAINTERNET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIAINTERNET'
      Origin = 'VIAINTERNET'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QYVendasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
