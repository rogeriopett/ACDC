object FormNotasLoc: TFormNotasLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Notas'
  ClientHeight = 400
  ClientWidth = 784
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
    784
    400)
  TextHeight = 13
  object Label1: TLabel
    Left = 11
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
    Height = 325
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSNotas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 6
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
        FieldName = 'NOT_CODIGO'
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'NOT_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOT_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOT_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOT_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOT_USUARIO'
        Title.Caption = 'Usu'#225'rio'
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
    Width = 353
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
    TabOrder = 5
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'FINALIZADAS'
      'CANCELADAS')
  end
  object DSNotas: TDataSource
    DataSet = QYNotas
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
  object QYNotas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNotas
    SQL.Strings = (
      'select '
      'NOT_CODIGO,'
      'NOT_CLIENTE,'
      'NOT_DTEMISSAO,'
      'NOT_VENDEDOR,'
      'NOT_VALORTOTAL,'
      'NOT_USUARIO,'
      'NOT_STATUS,'
      'CLI_NOME from NOTAS'
      'left join CLIENTES on NOT_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYNotasNOT_CODIGO: TIntegerField
      FieldName = 'NOT_CODIGO'
      Origin = 'NOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNotasNOT_CLIENTE: TIntegerField
      FieldName = 'NOT_CLIENTE'
      Origin = 'NOT_CLIENTE'
      Required = True
    end
    object QYNotasNOT_DTEMISSAO: TDateField
      FieldName = 'NOT_DTEMISSAO'
      Origin = 'NOT_DTEMISSAO'
    end
    object QYNotasNOT_VENDEDOR: TIntegerField
      FieldName = 'NOT_VENDEDOR'
      Origin = 'NOT_VENDEDOR'
      Required = True
    end
    object QYNotasNOT_VALORTOTAL: TFMTBCDField
      FieldName = 'NOT_VALORTOTAL'
      Origin = 'NOT_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYNotasNOT_USUARIO: TStringField
      FieldName = 'NOT_USUARIO'
      Origin = 'NOT_USUARIO'
    end
    object QYNotasNOT_STATUS: TStringField
      FieldName = 'NOT_STATUS'
      Origin = 'NOT_STATUS'
      Size = 1
    end
    object QYNotasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRNotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
