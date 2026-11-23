object FormProducaoLoc: TFormProducaoLoc
  Left = 176
  Top = 281
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Ordens de Produ'#231#227'o'
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
    Left = 242
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label5: TLabel
    Left = 682
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label2: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label6: TLabel
    Left = 594
    Top = 18
    Width = 61
    Height = 13
    Caption = 'Nota Cliente:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSProducao
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
        FieldName = 'PRD_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CLIENTE'
        Title.Caption = 'C'#243'd. Cli.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 314
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_NOTACLIENTE'
        Title.Caption = 'Nota Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DTCADASTRO'
        Title.Caption = 'Dt Cadastro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_STATUS'
        Title.Caption = 'Status'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DATABAIXA'
        Title.Caption = 'Data Baixa'
        Width = 100
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
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
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
    Left = 592
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object DSProducao: TDataSource
    DataSet = QYProducao
    Left = 120
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
  object QYProducao: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProducao
    SQL.Strings = (
      'select '
      'PRD_CODIGO,'
      'PRD_DTCADASTRO,'
      'PRD_CLIENTE,'
      'PRD_DATABAIXA,'
      'PRD_STATUS,'
      'PRD_NOTACLIENTE,'
      'CLI_NOME from PRODUCAO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYProducaoPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProducaoPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
      Origin = 'PRD_DTCADASTRO'
    end
    object QYProducaoPRD_CLIENTE: TIntegerField
      FieldName = 'PRD_CLIENTE'
      Origin = 'PRD_CLIENTE'
      Required = True
    end
    object QYProducaoPRD_DATABAIXA: TDateField
      FieldName = 'PRD_DATABAIXA'
      Origin = 'PRD_DATABAIXA'
    end
    object QYProducaoPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Origin = 'PRD_STATUS'
      Size = 1
    end
    object QYProducaoPRD_NOTACLIENTE: TIntegerField
      FieldName = 'PRD_NOTACLIENTE'
      Origin = 'PRD_NOTACLIENTE'
    end
    object QYProducaoCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRProducao: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
