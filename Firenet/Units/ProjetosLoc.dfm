object FormProjetosLoc: TFormProjetosLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Projetos'
  ClientHeight = 360
  ClientWidth = 776
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
    776
    360)
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
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 761
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSProjetos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
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
        FieldName = 'PRJ_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_NOME'
        Title.Caption = 'Projeto'
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_DTCADASTRO'
        Title.Caption = 'Dt. Cad.'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_DTVISITA'
        Title.Caption = 'Dt. Visita'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_STATUSVISITA'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_DTORCAMENTO'
        Title.Caption = 'Dt. Or'#231'.'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_STATUSORCAMENTO'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_DTAPRESENTACAO'
        Title.Caption = 'Dt. Apres.'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_STATUSAPRESENTACAO'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRJ_STATUSPROJETO'
        Title.Caption = 'Status Projeto'
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
  object DSProjetos: TDataSource
    DataSet = QYProjetos
    Left = 136
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
  object QYProjetos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProjetos
    SQL.Strings = (
      'select '
      'PRJ_CODIGO,'
      'PRJ_NOME,'
      'CLI_NOME,'
      'PRJ_DTCADASTRO,'
      'PRJ_DTVISITA,'
      'PRJ_DTORCAMENTO,'
      'PRJ_DTAPRESENTACAO,'
      'PRJ_STATUSVISITA,'
      'PRJ_STATUSORCAMENTO,'
      'PRJ_STATUSAPRESENTACAO,'
      'PRJ_STATUSPROJETO'
      'from PROJETOS'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      ''
      '')
    Left = 208
    Top = 120
    object QYProjetosPRJ_CODIGO: TIntegerField
      FieldName = 'PRJ_CODIGO'
      Origin = 'PRJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProjetosPRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 80
    end
    object QYProjetosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYProjetosPRJ_DTCADASTRO: TDateField
      FieldName = 'PRJ_DTCADASTRO'
      Origin = 'PRJ_DTCADASTRO'
    end
    object QYProjetosPRJ_DTVISITA: TDateField
      FieldName = 'PRJ_DTVISITA'
      Origin = 'PRJ_DTVISITA'
    end
    object QYProjetosPRJ_DTORCAMENTO: TDateField
      FieldName = 'PRJ_DTORCAMENTO'
      Origin = 'PRJ_DTORCAMENTO'
    end
    object QYProjetosPRJ_DTAPRESENTACAO: TDateField
      FieldName = 'PRJ_DTAPRESENTACAO'
      Origin = 'PRJ_DTAPRESENTACAO'
    end
    object QYProjetosPRJ_STATUSVISITA: TStringField
      FieldName = 'PRJ_STATUSVISITA'
      Origin = 'PRJ_STATUSVISITA'
    end
    object QYProjetosPRJ_STATUSORCAMENTO: TStringField
      FieldName = 'PRJ_STATUSORCAMENTO'
      Origin = 'PRJ_STATUSORCAMENTO'
    end
    object QYProjetosPRJ_STATUSAPRESENTACAO: TStringField
      FieldName = 'PRJ_STATUSAPRESENTACAO'
      Origin = 'PRJ_STATUSAPRESENTACAO'
    end
    object QYProjetosPRJ_STATUSPROJETO: TStringField
      FieldName = 'PRJ_STATUSPROJETO'
      Origin = 'PRJ_STATUSPROJETO'
    end
  end
  object TRProjetos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
