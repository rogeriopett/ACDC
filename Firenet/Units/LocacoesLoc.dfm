object FormLocacoesLoc: TFormLocacoesLoc
  Left = 190
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Loca'#231#245'es de Objetos'
  ClientHeight = 360
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
    360)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label2: TLabel
    Left = 154
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 458
    Top = 18
    Width = 34
    Height = 13
    Caption = 'Objeto:'
  end
  object Label5: TLabel
    Left = 682
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label7: TLabel
    Left = 386
    Top = 18
    Width = 59
    Height = 13
    Caption = 'C'#243'd. Objeto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSLocacoes
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
        FieldName = 'LOC_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_CLIENTE'
        Title.Caption = 'C'#243'd. Cli.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_OBJETO'
        Title.Caption = 'C'#243'd. Obj'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_DESCRICAO'
        Title.Caption = 'Objeto'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_DATA'
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_ABERTOPOR'
        Title.Caption = 'Aberto por'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_STATUS'
        Title.Caption = 'Status'
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
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 152
    Top = 32
    Width = 225
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 456
    Top = 32
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object Edit6: TEdit
    Left = 384
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object ComboBox1: TComboBox
    Left = 680
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'BAIXADAS')
  end
  object DSLocacoes: TDataSource
    DataSet = QYLocacoes
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
  object QYLocacoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRLocacoes
    SQL.Strings = (
      'select '
      'LOC_ABERTOPOR,'
      'LOC_CLIENTE,'
      'LOC_CODIGO,'
      'LOC_DATA,'
      'LOC_OBJETO,'
      'LOC_STATUS,'
      'CLI_NOME, '
      'OBJ_DESCRICAO'
      'from LOCACOES'
      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO'
      'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYLocacoesLOC_ABERTOPOR: TStringField
      FieldName = 'LOC_ABERTOPOR'
      Origin = 'LOC_ABERTOPOR'
    end
    object QYLocacoesLOC_CLIENTE: TIntegerField
      FieldName = 'LOC_CLIENTE'
      Origin = 'LOC_CLIENTE'
      Required = True
    end
    object QYLocacoesLOC_CODIGO: TIntegerField
      FieldName = 'LOC_CODIGO'
      Origin = 'LOC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYLocacoesLOC_DATA: TDateField
      FieldName = 'LOC_DATA'
      Origin = 'LOC_DATA'
    end
    object QYLocacoesLOC_OBJETO: TIntegerField
      FieldName = 'LOC_OBJETO'
      Origin = 'LOC_OBJETO'
      Required = True
    end
    object QYLocacoesLOC_STATUS: TStringField
      FieldName = 'LOC_STATUS'
      Origin = 'LOC_STATUS'
      Size = 1
    end
    object QYLocacoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYLocacoesOBJ_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBJ_DESCRICAO'
      Origin = 'OBJ_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRLocacoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
