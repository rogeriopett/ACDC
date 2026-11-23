object FormDeliveryLoc: TFormDeliveryLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Delivery'
  ClientHeight = 368
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSDeliverys
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DLV_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_CLIENTE'
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
        FieldName = 'DLV_DTCADASTRO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DLV_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 78
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
    Width = 354
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
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'PRODUCAO'
      'ENTREGA'
      'FINALIZADOS'
      'CANCELADOS'
      'INUTILIZADOS')
  end
  object DSDeliverys: TDataSource
    DataSet = QYDeliverys
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
  object QYDeliverys: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRDeliverys
    SQL.Strings = (
      'select '
      'DLV_CODIGO,'
      'DLV_CLIENTE,'
      'DLV_DTCADASTRO,'
      'DLV_VENDEDOR,'
      'DLV_VALORTOTAL,'
      'DLV_STATUS,'
      'DLV_USUARIO,'
      'CLI_NOME from DELIVERYS'
      'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYDeliverysDLV_CODIGO: TIntegerField
      FieldName = 'DLV_CODIGO'
      Origin = 'DLV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYDeliverysDLV_CLIENTE: TIntegerField
      FieldName = 'DLV_CLIENTE'
      Origin = 'DLV_CLIENTE'
      Required = True
    end
    object QYDeliverysDLV_DTCADASTRO: TDateField
      FieldName = 'DLV_DTCADASTRO'
      Origin = 'DLV_DTCADASTRO'
    end
    object QYDeliverysDLV_VENDEDOR: TIntegerField
      FieldName = 'DLV_VENDEDOR'
      Origin = 'DLV_VENDEDOR'
      Required = True
    end
    object QYDeliverysDLV_VALORTOTAL: TFMTBCDField
      FieldName = 'DLV_VALORTOTAL'
      Origin = 'DLV_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYDeliverysDLV_STATUS: TStringField
      FieldName = 'DLV_STATUS'
      Origin = 'DLV_STATUS'
      Size = 1
    end
    object QYDeliverysDLV_USUARIO: TStringField
      FieldName = 'DLV_USUARIO'
      Origin = 'DLV_USUARIO'
    end
    object QYDeliverysCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRDeliverys: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
