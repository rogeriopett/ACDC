object FormEquipamentosLoc: TFormEquipamentosLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Equipamentos'
  ClientHeight = 392
  ClientWidth = 880
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
    Left = 314
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 433
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel
    Left = 674
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label6: TLabel
    Left = 778
    Top = 18
    Width = 57
    Height = 13
    Caption = 'N'#186' de S'#233'rie:'
  end
  object Label7: TLabel
    Left = 570
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
  object Label5: TLabel
    Left = 242
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 865
    Height = 318
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEquipamentos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'EQP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQP_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 151
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
      end
      item
        Expanded = False
        FieldName = 'EQP_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 188
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
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 431
    Top = 32
    Width = 131
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 672
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 776
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 568
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit6KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 7
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
    TabOrder = 8
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit7: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = Edit7KeyPress
  end
  object DSEquipamentos: TDataSource
    DataSet = QYEquipamentos
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
  object QYEquipamentos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREquipamentos
    SQL.Strings = (
      'select '
      'EQP_ACESSORIOS,'
      'EQP_ANOFAB,'
      'EQP_ANOMOD,'
      'EQP_CHASSI,'
      'EQP_CLIENTE, '
      'EQP_CODIGO,'
      'EQP_COMBUSTIVEL, '
      'EQP_COR,'
      'EQP_DTCADASTRO, '
      'EQP_DESCRICAO, '
      'EQP_LOCALIZACAO,'
      'EQP_MARCA, '
      'EQP_MODELO, '
      'EQP_REVENDEDOR,'
      'EQP_SERIE, '
      'EQP_STATUS,'
      'EQP_TAMANHO, '
      'CLI_CODIGO, '
      'CLI_NOME'
      'from EQUIPAMENTOS'
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYEquipamentosEQP_ACESSORIOS: TStringField
      FieldName = 'EQP_ACESSORIOS'
      Origin = 'EQP_ACESSORIOS'
      Size = 40
    end
    object QYEquipamentosEQP_ANOFAB: TIntegerField
      FieldName = 'EQP_ANOFAB'
      Origin = 'EQP_ANOFAB'
    end
    object QYEquipamentosEQP_ANOMOD: TIntegerField
      FieldName = 'EQP_ANOMOD'
      Origin = 'EQP_ANOMOD'
    end
    object QYEquipamentosEQP_CHASSI: TStringField
      FieldName = 'EQP_CHASSI'
      Origin = 'EQP_CHASSI'
      Size = 35
    end
    object QYEquipamentosEQP_CLIENTE: TIntegerField
      FieldName = 'EQP_CLIENTE'
      Origin = 'EQP_CLIENTE'
      Required = True
    end
    object QYEquipamentosEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEquipamentosEQP_COMBUSTIVEL: TStringField
      FieldName = 'EQP_COMBUSTIVEL'
      Origin = 'EQP_COMBUSTIVEL'
      Size = 30
    end
    object QYEquipamentosEQP_COR: TStringField
      FieldName = 'EQP_COR'
      Origin = 'EQP_COR'
    end
    object QYEquipamentosEQP_DTCADASTRO: TDateField
      FieldName = 'EQP_DTCADASTRO'
      Origin = 'EQP_DTCADASTRO'
    end
    object QYEquipamentosEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 50
    end
    object QYEquipamentosEQP_LOCALIZACAO: TStringField
      FieldName = 'EQP_LOCALIZACAO'
      Origin = 'EQP_LOCALIZACAO'
      Size = 50
    end
    object QYEquipamentosEQP_MARCA: TStringField
      FieldName = 'EQP_MARCA'
      Origin = 'EQP_MARCA'
      Size = 40
    end
    object QYEquipamentosEQP_MODELO: TStringField
      FieldName = 'EQP_MODELO'
      Origin = 'EQP_MODELO'
      Size = 40
    end
    object QYEquipamentosEQP_REVENDEDOR: TStringField
      FieldName = 'EQP_REVENDEDOR'
      Origin = 'EQP_REVENDEDOR'
      Size = 80
    end
    object QYEquipamentosEQP_SERIE: TStringField
      FieldName = 'EQP_SERIE'
      Origin = 'EQP_SERIE'
      Size = 40
    end
    object QYEquipamentosEQP_STATUS: TStringField
      FieldName = 'EQP_STATUS'
      Origin = 'EQP_STATUS'
      Size = 1
    end
    object QYEquipamentosEQP_TAMANHO: TStringField
      FieldName = 'EQP_TAMANHO'
      Origin = 'EQP_TAMANHO'
      Size = 15
    end
    object QYEquipamentosCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYEquipamentosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TREquipamentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
