object FormEvolucoesLoc: TFormEvolucoesLoc
  Left = 0
  Top = 0
  Caption = 'Localizar Evolu'#231#245'es'
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
    DataSource = DSEvolucoes
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
        FieldName = 'EVO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVO_DTCADASTRO'
        Title.Caption = 'Dt. Cad.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVO_CLIENTE'
        Title.Caption = 'Paciente'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVO_STATUS'
        Title.Caption = 'Status'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVO_VENDEDOR'
        Title.Caption = 'C'#243'd. Resp.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Respons'#225'vel'
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
  object DSEvolucoes: TDataSource
    DataSet = QYEvolucoes
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
  object QYEvolucoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREvolucoes
    SQL.Strings = (
      'select '
      'EVO_CLIENTE,'
      'EVO_CODIGO,'
      'EVO_DTCADASTRO,'
      'EVO_STATUS,'
      'EVO_VENDEDOR,'
      'CLI_NOME,'
      'VEN_NOME'
      'from EVOLUCOES'
      'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO'
      'where EVO_CODIGO=:codigo')
    Left = 200
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYEvolucoesEVO_CLIENTE: TIntegerField
      FieldName = 'EVO_CLIENTE'
      Origin = 'EVO_CLIENTE'
      Required = True
    end
    object QYEvolucoesEVO_CODIGO: TIntegerField
      FieldName = 'EVO_CODIGO'
      Origin = 'EVO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEvolucoesEVO_DTCADASTRO: TDateField
      FieldName = 'EVO_DTCADASTRO'
      Origin = 'EVO_DTCADASTRO'
    end
    object QYEvolucoesEVO_STATUS: TStringField
      FieldName = 'EVO_STATUS'
      Origin = 'EVO_STATUS'
      Size = 1
    end
    object QYEvolucoesEVO_VENDEDOR: TIntegerField
      FieldName = 'EVO_VENDEDOR'
      Origin = 'EVO_VENDEDOR'
      Required = True
    end
    object QYEvolucoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYEvolucoesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TREvolucoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
