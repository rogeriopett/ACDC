object FormVeiculosVendaLoc: TFormVeiculosVendaLoc
  Left = 197
  Top = 335
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar ve'#237'culos '#224' venda'
  ClientHeight = 336
  ClientWidth = 792
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
    792
    336)
  TextHeight = 13
  object Label1: TLabel
    Left = 330
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Ve'#237'culo:'
  end
  object Label2: TLabel
    Left = 458
    Top = 18
    Width = 47
    Height = 13
    Caption = 'Renavan:'
  end
  object Label3: TLabel
    Left = 570
    Top = 18
    Width = 30
    Height = 13
    Caption = 'Placa:'
  end
  object Label4: TLabel
    Left = 634
    Top = 18
    Width = 43
    Height = 13
    Caption = 'Ano Fab:'
  end
  object Label5: TLabel
    Left = 74
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label6: TLabel
    Left = 202
    Top = 18
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object Label7: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label8: TLabel
    Left = 690
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 261
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSVeiculosVenda
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
        FieldName = 'VEV_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEL_DESCRICAO'
        Title.Caption = 'Ve'#237'culo'
        Width = 191
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEV_PLACA'
        Title.Caption = 'Placa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEV_RENAVAN'
        Title.Caption = 'Renavan'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEV_ANOFAB'
        Title.Caption = 'Ano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEV_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Vendedor'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 328
    Top = 32
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 456
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 568
    Top = 32
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    EditMask = 'aaa\-9999;1;_'
    MaxLength = 8
    TabOrder = 5
    Text = '   -    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object Edit3: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object Edit5: TEdit
    Left = 200
    Top = 32
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 8
    Top = 32
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit6KeyPress
  end
  object ComboBox1: TComboBox
    Left = 688
    Top = 32
    Width = 97
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODOS'
      'A VENDA'
      'VENDIDOS')
  end
  object MaskEdit2: TMaskEdit
    Left = 632
    Top = 32
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    EditMask = '9999;1;_'
    MaxLength = 4
    TabOrder = 6
    Text = '    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object DSVeiculosVenda: TDataSource
    DataSet = QYVeiculosVenda
    Left = 112
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
  object QYVeiculosVenda: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVeiculosVenda
    SQL.Strings = (
      'select VEV_CODIGO,'
      'VEV_RENAVAN,'
      'VEV_PLACA,'
      'VEV_ANOFAB,'
      'VEV_ANOMOD,'
      'VEV_STATUS,'
      'CLI_NOME,'
      'VEN_NOME,'
      'VEL_DESCRICAO'
      'from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYVeiculosVendaVEV_CODIGO: TIntegerField
      FieldName = 'VEV_CODIGO'
      Origin = 'VEV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVeiculosVendaVEV_RENAVAN: TStringField
      FieldName = 'VEV_RENAVAN'
      Origin = 'VEV_RENAVAN'
    end
    object QYVeiculosVendaVEV_PLACA: TStringField
      FieldName = 'VEV_PLACA'
      Origin = 'VEV_PLACA'
      Size = 10
    end
    object QYVeiculosVendaVEV_ANOFAB: TStringField
      FieldName = 'VEV_ANOFAB'
      Origin = 'VEV_ANOFAB'
      Size = 4
    end
    object QYVeiculosVendaVEV_ANOMOD: TStringField
      FieldName = 'VEV_ANOMOD'
      Origin = 'VEV_ANOMOD'
      Size = 4
    end
    object QYVeiculosVendaVEV_STATUS: TStringField
      FieldName = 'VEV_STATUS'
      Origin = 'VEV_STATUS'
      Size = 1
    end
    object QYVeiculosVendaCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYVeiculosVendaVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYVeiculosVendaVEL_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRVeiculosVenda: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 312
    Top = 120
  end
end
