object FormMatriculasLoc: TFormMatriculasLoc
  Left = 173
  Top = 232
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Matr'#237'culas'
  ClientHeight = 424
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
    424)
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
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 418
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label7: TLabel
    Left = 666
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label4: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label5: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label6: TLabel
    Left = 522
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Turma:'
  end
  object Label8: TLabel
    Left = 242
    Top = 18
    Width = 53
    Height = 13
    Caption = 'C'#243'digo Cli.:'
  end
  object Label9: TLabel
    Left = 594
    Top = 18
    Width = 59
    Height = 13
    Caption = 'C'#243'd. Venda:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 777
    Height = 350
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMatriculas
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
        FieldName = 'MAT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_TURMA'
        Title.Caption = 'Turma'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_APROVADO'
        Title.Caption = 'Aprovado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_VENDEDOR'
        Title.Caption = 'C'#243'd. Ven.'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Vendedor'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_DTCADASTRO'
        Title.Caption = 'Data'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_VENDA'
        Title.Caption = 'C'#243'd. Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAT_VENDAMATERIAL'
        Title.Caption = 'C'#243'd. Venda Mat.'
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
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 416
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 664
    Top = 32
    Width = 121
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'BAIXADAS'
      'CANCELADAS'
      'DESISTENTES'
      'PRE MATRICULAS'
      'TRANSFERIDOS')
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
  object Edit4: TEdit
    Left = 520
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 592
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit6KeyPress
  end
  object DSMatriculas: TDataSource
    DataSet = QYMatriculas
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
  object QYMatriculas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMatriculas
    SQL.Strings = (
      'select '
      'MAT_APROVADO,'
      'MAT_CODIGO,'
      'MAT_CLIENTE,'
      'MAT_TURMA,'
      'MAT_VENDEDOR,'
      'MAT_DTCADASTRO,'
      'MAT_STATUS,'
      'MAT_VENDA,'
      'MAT_VENDAMATERIAL,'
      'CLI_NOME,'
      'TUR_DESCRICAO,'
      'VEN_NOME from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      ''
      '')
    Left = 200
    Top = 120
    object QYMatriculasMAT_APROVADO: TStringField
      FieldName = 'MAT_APROVADO'
      Origin = 'MAT_APROVADO'
      Size = 1
    end
    object QYMatriculasMAT_CODIGO: TIntegerField
      FieldName = 'MAT_CODIGO'
      Origin = 'MAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMatriculasMAT_CLIENTE: TIntegerField
      FieldName = 'MAT_CLIENTE'
      Origin = 'MAT_CLIENTE'
      Required = True
    end
    object QYMatriculasMAT_TURMA: TIntegerField
      FieldName = 'MAT_TURMA'
      Origin = 'MAT_TURMA'
      Required = True
    end
    object QYMatriculasMAT_VENDEDOR: TIntegerField
      FieldName = 'MAT_VENDEDOR'
      Origin = 'MAT_VENDEDOR'
      Required = True
    end
    object QYMatriculasMAT_DTCADASTRO: TDateField
      FieldName = 'MAT_DTCADASTRO'
      Origin = 'MAT_DTCADASTRO'
    end
    object QYMatriculasMAT_STATUS: TStringField
      FieldName = 'MAT_STATUS'
      Origin = 'MAT_STATUS'
      Size = 1
    end
    object QYMatriculasMAT_VENDA: TIntegerField
      FieldName = 'MAT_VENDA'
      Origin = 'MAT_VENDA'
      Required = True
    end
    object QYMatriculasMAT_VENDAMATERIAL: TIntegerField
      FieldName = 'MAT_VENDAMATERIAL'
      Origin = 'MAT_VENDAMATERIAL'
      Required = True
    end
    object QYMatriculasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYMatriculasTUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYMatriculasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRMatriculas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
