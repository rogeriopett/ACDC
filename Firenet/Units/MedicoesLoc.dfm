object FormMedicoesLoc: TFormMedicoesLoc
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Localizar Medi'#231#245'es'
  ClientHeight = 336
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
    336)
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
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label3: TLabel
    Left = 314
    Top = 18
    Width = 66
    Height = 13
    Caption = 'Nome Cliente:'
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 261
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMedicoes
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
        FieldName = 'MED_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_DTCADASTRO'
        Title.Caption = 'Dt. Cad.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_BATIMENTOS'
        Title.Caption = 'BPM'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_GLICEMIA'
        Title.Caption = 'Glicemia'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_PESO'
        Title.Caption = 'Peso'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_PRESSAO'
        Title.Caption = 'Press'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_SATURACAO'
        Title.Caption = 'Satura'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MED_TEMPERATURA'
        Title.Caption = 'Temperatura'
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
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 312
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 4
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
    TabOrder = 5
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object DSMedicoes: TDataSource
    DataSet = QYMedicoes
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
  object QYMedicoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMedicoes
    SQL.Strings = (
      'select '
      'MED_BATIMENTOS,'
      'MED_CLIENTE,'
      'MED_CODIGO,'
      'MED_DTCADASTRO,'
      'MED_GLICEMIA,'
      'MED_PESO,'
      'MED_PRESSAO,'
      'MED_SATURACAO,'
      'MED_TEMPERATURA,'
      'CLI_NOME'
      'from MEDICOES'
      'left join CLIENTES on MED_CLIENTE=CLI_CODIGO'
      'where MED_CODIGO=:codigo'
      '')
    Left = 200
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMedicoesMED_BATIMENTOS: TIntegerField
      FieldName = 'MED_BATIMENTOS'
      Origin = 'MED_BATIMENTOS'
    end
    object QYMedicoesMED_CLIENTE: TIntegerField
      FieldName = 'MED_CLIENTE'
      Origin = 'MED_CLIENTE'
      Required = True
    end
    object QYMedicoesMED_CODIGO: TIntegerField
      FieldName = 'MED_CODIGO'
      Origin = 'MED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMedicoesMED_DTCADASTRO: TDateField
      FieldName = 'MED_DTCADASTRO'
      Origin = 'MED_DTCADASTRO'
    end
    object QYMedicoesMED_GLICEMIA: TIntegerField
      FieldName = 'MED_GLICEMIA'
      Origin = 'MED_GLICEMIA'
    end
    object QYMedicoesMED_PESO: TFMTBCDField
      FieldName = 'MED_PESO'
      Origin = 'MED_PESO'
      Precision = 18
      Size = 3
    end
    object QYMedicoesMED_PRESSAO: TStringField
      FieldName = 'MED_PRESSAO'
      Origin = 'MED_PRESSAO'
      Size = 10
    end
    object QYMedicoesMED_SATURACAO: TIntegerField
      FieldName = 'MED_SATURACAO'
      Origin = 'MED_SATURACAO'
    end
    object QYMedicoesMED_TEMPERATURA: TCurrencyField
      FieldName = 'MED_TEMPERATURA'
      Origin = 'MED_TEMPERATURA'
    end
    object QYMedicoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRMedicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
