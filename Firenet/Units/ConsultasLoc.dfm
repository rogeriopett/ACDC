object FormConsultasLoc: TFormConsultasLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Consultas'
  ClientHeight = 528
  ClientWidth = 984
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
  TextHeight = 13
  object Label7: TLabel
    Left = 328
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label1: TLabel
    Left = 248
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 448
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label3: TLabel
    Left = 248
    Top = 58
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 328
    Top = 58
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 528
    Top = 18
    Width = 66
    Height = 13
    Caption = 'Nome Cliente:'
  end
  object Label6: TLabel
    Left = 448
    Top = 58
    Width = 63
    Height = 13
    Caption = 'C'#243'd. M'#233'dico:'
  end
  object Label8: TLabel
    Left = 528
    Top = 58
    Width = 69
    Height = 13
    Caption = 'Nome M'#233'dico:'
  end
  object ComboBox1: TComboBox
    Left = 328
    Top = 32
    Width = 113
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'BAIXADAS'
      'CANCELADAS')
  end
  object Edit1: TEdit
    Left = 248
    Top = 32
    Width = 74
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 448
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 248
    Top = 72
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 328
    Top = 72
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 528
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 448
    Top = 72
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 528
    Top = 72
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 792
    Top = 32
    Width = 105
    Height = 21
    Date = 43574.000000000000000000
    Time = 0.593577442130481400
    TabOrder = 8
    Visible = False
    OnCloseUp = DateTimePicker1CloseUp
    OnKeyPress = DateTimePicker1KeyPress
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 225
    Height = 161
    Date = 43587.000000000000000000
    TabOrder = 9
    OnDblClick = MonthCalendar1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 175
    Width = 984
    Height = 353
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    object Splitter1: TSplitter
      Left = 1
      Top = 226
      Width = 982
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 185
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 231
      Width = 982
      Height = 121
      Align = alClient
      DataSource = DSConsultasItens
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CSI_EXAME'
          Title.Caption = 'Exame'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSI_SIGLA'
          Title.Caption = 'Sigla'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSI_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 982
      Height = 225
      Align = alTop
      DataSource = DSConsultas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 1
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
          FieldName = 'COS_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_DATAINICIO'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_HORAINICIO'
          Title.Caption = 'Hora'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_STATUS'
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_CLIENTE'
          Title.Caption = 'C'#243'd. Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOME'
          Title.Caption = 'Nome Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_SOLICITANTE'
          Title.Caption = 'C'#243'd. Solicitante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOMESOLICITANTE'
          Title.Caption = 'Nome Solicitante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COV_DESCRICAO'
          Title.Caption = 'Conv'#234'nio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_MEDICO'
          Title.Caption = 'C'#243'd. M'#233'dico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEN_NOME'
          Title.Caption = 'M'#233'dico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COS_VALORTOTAL'
          Title.Caption = 'Valor Total'
          Visible = True
        end>
    end
  end
  object DSConsultas: TDataSource
    DataSet = QYConsultas
    Left = 232
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 224
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object DSConsultasItens: TDataSource
    DataSet = QYConsultasItens
    Left = 232
    Top = 288
  end
  object TRConsultas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 376
    Top = 224
  end
  object QYConsultas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRConsultas
    SQL.Strings = (
      'select '
      'COS_CODIGO,'
      'COS_CLIENTE,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_VALORTOTAL,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'order by COS_DATAINICIO, COS_HORAINICIO'
      '')
    Left = 304
    Top = 224
    object QYConsultasCOS_CODIGO: TIntegerField
      FieldName = 'COS_CODIGO'
      Origin = 'COS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYConsultasCOS_CLIENTE: TIntegerField
      FieldName = 'COS_CLIENTE'
      Origin = 'COS_CLIENTE'
      Required = True
    end
    object QYConsultasCOS_CONVENIO: TIntegerField
      FieldName = 'COS_CONVENIO'
      Origin = 'COS_CONVENIO'
      Required = True
    end
    object QYConsultasCOS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
      Origin = 'COS_DATAINICIO'
    end
    object QYConsultasCOS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
      Origin = 'COS_HORAINICIO'
    end
    object QYConsultasCOS_MEDICO: TIntegerField
      FieldName = 'COS_MEDICO'
      Origin = 'COS_MEDICO'
      Required = True
    end
    object QYConsultasCOS_SOLICITANTE: TIntegerField
      FieldName = 'COS_SOLICITANTE'
      Origin = 'COS_SOLICITANTE'
      Required = True
    end
    object QYConsultasCOS_STATUS: TStringField
      FieldName = 'COS_STATUS'
      Origin = 'COS_STATUS'
      Size = 1
    end
    object QYConsultasCOS_VALORTOTAL: TFMTBCDField
      FieldName = 'COS_VALORTOTAL'
      Origin = 'COS_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYConsultasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYConsultasCLI_NOMESOLICITANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOMESOLICITANTE'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYConsultasCOV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COV_DESCRICAO'
      Origin = 'COV_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYConsultasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object QYConsultasItens: TFDQuery
    MasterSource = DSConsultas
    MasterFields = 'COS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRConsultasItens
    SQL.Strings = (
      'select '
      'CSI_EXAME,'
      'CSI_DESCRICAO,'
      'CSI_SIGLA'
      'from CONSULTASITENS'
      'where CSI_CONSULTA=:COS_CODIGO'
      'order by CSI_CODIGO'
      '')
    Left = 304
    Top = 288
    ParamData = <
      item
        Name = 'COS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TRConsultasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 376
    Top = 288
  end
end
