object FormAtendimentosLoc: TFormAtendimentosLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Atendimentos'
  ClientHeight = 368
  ClientWidth = 792
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
    792
    368)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
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
  object Label8: TLabel
    Left = 242
    Top = 18
    Width = 53
    Height = 13
    Caption = 'C'#243'digo Cli.:'
  end
  object Label2: TLabel
    Left = 314
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 777
    Height = 294
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSAtendimentos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'ATE_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_AULA'
        Title.Caption = 'Aula Demo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_TESTEESCRITO'
        Title.Caption = 'Teste Escrito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_TESTEORAL'
        Title.Caption = 'Teste Oral'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_CURSO'
        Title.Caption = 'Curso'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUR_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o Curso'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATE_VENDEDOR'
        Title.Caption = 'C'#243'd. Vend.'
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
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
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
  object Edit5: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit5KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object DSAtendimentos: TDataSource
    DataSet = QYAtendimentos
    Left = 312
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object TRAtendimentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 120
  end
  object QYAtendimentos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAtendimentos
    SQL.Strings = (
      'select '
      'ATE_AULA,'
      'ATE_CLIENTE,'
      'ATE_CODIGO,'
      'ATE_CURSO,'
      'ATE_DTCADASTRO,'
      'ATE_TESTEESCRITO,'
      'ATE_TESTEORAL,'
      'ATE_VENDEDOR,'
      'CLI_NOME,'
      'CUR_DESCRICAO,'
      'VEN_NOME from ATENDIMENTOS'
      'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO'
      'left join CURSOS on ATE_CURSO=CUR_CODIGO')
    Left = 136
    Top = 120
    object QYAtendimentosATE_AULA: TStringField
      FieldName = 'ATE_AULA'
      Origin = 'ATE_AULA'
      Size = 1
    end
    object QYAtendimentosATE_CLIENTE: TIntegerField
      FieldName = 'ATE_CLIENTE'
      Origin = 'ATE_CLIENTE'
      Required = True
    end
    object QYAtendimentosATE_CODIGO: TIntegerField
      FieldName = 'ATE_CODIGO'
      Origin = 'ATE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAtendimentosATE_CURSO: TIntegerField
      FieldName = 'ATE_CURSO'
      Origin = 'ATE_CURSO'
      Required = True
    end
    object QYAtendimentosATE_DTCADASTRO: TDateField
      FieldName = 'ATE_DTCADASTRO'
      Origin = 'ATE_DTCADASTRO'
    end
    object QYAtendimentosATE_TESTEESCRITO: TStringField
      FieldName = 'ATE_TESTEESCRITO'
      Origin = 'ATE_TESTEESCRITO'
      Size = 1
    end
    object QYAtendimentosATE_TESTEORAL: TStringField
      FieldName = 'ATE_TESTEORAL'
      Origin = 'ATE_TESTEORAL'
      Size = 1
    end
    object QYAtendimentosATE_VENDEDOR: TIntegerField
      FieldName = 'ATE_VENDEDOR'
      Origin = 'ATE_VENDEDOR'
      Required = True
    end
    object QYAtendimentosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYAtendimentosCUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUR_DESCRICAO'
      Origin = 'CUR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYAtendimentosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
