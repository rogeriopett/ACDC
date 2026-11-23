object FormPontosLoc: TFormPontosLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Movimento de Pontua'#231#227'o'
  ClientHeight = 376
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
    376)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 386
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 602
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel
    Left = 314
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label5: TLabel
    Left = 154
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 234
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label7: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'Num. Docto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 66
    Width = 777
    Height = 303
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSPontos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
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
        FieldName = 'PTS_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_ENTRADASAIDA'
        Title.Caption = 'E/S'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_NUMDOCTO'
        Title.Caption = 'Num Docto'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_VALOR'
        Title.Caption = 'Valor'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_COTACAO'
        Title.Caption = 'Cota'#231#227'o'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_PONTOS'
        Title.Caption = 'Pontos'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_PONTOS'
        Title.Caption = 'Pts Atual'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_SALDOANTERIOR'
        Title.Caption = 'Saldo Anterior'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PTS_SALDOPOSTERIOR'
        Title.Caption = 'Saldo Posterior'
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
    Left = 384
    Top = 32
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 600
    Top = 32
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 312
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 152
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 232
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit5: TEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit5KeyPress
  end
  object DSPontos: TDataSource
    DataSet = QYPontos
    Left = 272
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
  object QYPontos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPontos
    SQL.Strings = (
      'select '
      'PTS_CODIGO,'
      'PTS_CLIENTE,'
      'PTS_SALDOANTERIOR,'
      'PTS_SALDOPOSTERIOR,'
      'PTS_VALOR,'
      'PTS_PONTOS,'
      'PTS_COTACAO,'
      'PTS_ENTRADASAIDA,'
      'PTS_DTCADASTRO,'
      'PTS_NUMDOCTO,'
      'PTS_DESCRICAO,'
      'CLI_NOME,'
      'CLI_PONTOS'
      ' from PONTOS'
      'left join CLIENTES on PTS_CLIENTE=CLI_CODIGO'
      'order by CLI_NOME'
      '')
    Left = 136
    Top = 120
    object QYPontosPTS_CODIGO: TIntegerField
      FieldName = 'PTS_CODIGO'
      Origin = 'PTS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYPontosPTS_CLIENTE: TIntegerField
      FieldName = 'PTS_CLIENTE'
      Origin = 'PTS_CLIENTE'
      Required = True
    end
    object QYPontosPTS_SALDOANTERIOR: TFMTBCDField
      FieldName = 'PTS_SALDOANTERIOR'
      Origin = 'PTS_SALDOANTERIOR'
      Precision = 18
    end
    object QYPontosPTS_SALDOPOSTERIOR: TFMTBCDField
      FieldName = 'PTS_SALDOPOSTERIOR'
      Origin = 'PTS_SALDOPOSTERIOR'
      Precision = 18
    end
    object QYPontosPTS_VALOR: TFMTBCDField
      FieldName = 'PTS_VALOR'
      Origin = 'PTS_VALOR'
      Precision = 18
    end
    object QYPontosPTS_PONTOS: TFMTBCDField
      FieldName = 'PTS_PONTOS'
      Origin = 'PTS_PONTOS'
      Precision = 18
    end
    object QYPontosPTS_COTACAO: TFMTBCDField
      FieldName = 'PTS_COTACAO'
      Origin = 'PTS_COTACAO'
      Precision = 18
    end
    object QYPontosPTS_ENTRADASAIDA: TStringField
      FieldName = 'PTS_ENTRADASAIDA'
      Origin = 'PTS_ENTRADASAIDA'
      Size = 1
    end
    object QYPontosPTS_DTCADASTRO: TDateField
      FieldName = 'PTS_DTCADASTRO'
      Origin = 'PTS_DTCADASTRO'
    end
    object QYPontosPTS_NUMDOCTO: TStringField
      FieldName = 'PTS_NUMDOCTO'
      Origin = 'PTS_NUMDOCTO'
    end
    object QYPontosPTS_DESCRICAO: TStringField
      FieldName = 'PTS_DESCRICAO'
      Origin = 'PTS_DESCRICAO'
      Size = 50
    end
    object QYPontosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYPontosCLI_PONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object TRPontos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 208
    Top = 120
  end
end
