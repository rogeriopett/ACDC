object FormCaixaLoc: TFormCaixaLoc
  Left = 175
  Top = 230
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Fluxo de Caixa'
  ClientHeight = 461
  ClientWidth = 784
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
    784
    461)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 155
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 235
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'N'#250'm. Docto.'
  end
  object Label2: TLabel
    Left = 314
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label6: TLabel
    Left = 386
    Top = 18
    Width = 66
    Height = 13
    Caption = 'Nome Cliente:'
  end
  object Label7: TLabel
    Left = 570
    Top = 18
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 386
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCaixa
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
        FieldName = 'CAI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_TIPODOCTO'
        Title.Caption = 'Tipo Docto.'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_NUMDOCTO'
        Title.Caption = 'N'#250'm. Docto'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_ENTRADASAIDA'
        Title.Caption = 'E/S'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_VALOR'
        Title.Caption = 'Valor'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_CLIENTE'
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
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
  object Edit3: TEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 384
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 568
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit5KeyPress
  end
  object DSCaixa: TDataSource
    DataSet = QYCaixa
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
  object TRCaixa: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
  object QYCaixa: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCaixa
    SQL.Strings = (
      'select'
      'CAI_CLIENTE, '
      'CAI_CODIGO, '
      'CAI_DATA, '
      'CAI_DESCRICAO,'
      'CAI_ENTRADASAIDA, '
      'CAI_NUMDOCTO, '
      'CAI_TIPODOCTO, '
      'CAI_VALOR, '
      'CLI_NOME'
      'from CAIXAMOV'
      'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '
      ''
      '')
    Left = 192
    Top = 120
    object QYCaixaCAI_CLIENTE: TIntegerField
      FieldName = 'CAI_CLIENTE'
      Origin = 'CAI_CLIENTE'
    end
    object QYCaixaCAI_CODIGO: TIntegerField
      FieldName = 'CAI_CODIGO'
      Origin = 'CAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCaixaCAI_DATA: TDateField
      FieldName = 'CAI_DATA'
      Origin = 'CAI_DATA'
    end
    object QYCaixaCAI_DESCRICAO: TStringField
      FieldName = 'CAI_DESCRICAO'
      Origin = 'CAI_DESCRICAO'
      Size = 120
    end
    object QYCaixaCAI_ENTRADASAIDA: TStringField
      FieldName = 'CAI_ENTRADASAIDA'
      Origin = 'CAI_ENTRADASAIDA'
      Size = 1
    end
    object QYCaixaCAI_NUMDOCTO: TStringField
      FieldName = 'CAI_NUMDOCTO'
      Origin = 'CAI_NUMDOCTO'
    end
    object QYCaixaCAI_TIPODOCTO: TStringField
      FieldName = 'CAI_TIPODOCTO'
      Origin = 'CAI_TIPODOCTO'
    end
    object QYCaixaCAI_VALOR: TFMTBCDField
      FieldName = 'CAI_VALOR'
      Origin = 'CAI_VALOR'
      currency = True
      Precision = 18
    end
    object QYCaixaCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
