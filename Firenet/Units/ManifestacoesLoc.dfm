object FormManifestacoesLoc: TFormManifestacoesLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Manifesta'#231#245'es...'
  ClientHeight = 448
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
    448)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 163
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 865
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSManifestacoes
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
        FieldName = 'MAN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_NSU'
        Title.Caption = 'NSU'
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MAN_CIENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Ci'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_SCHEMA'
        Title.Caption = 'Schema'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_CNPJ'
        Title.Caption = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_DHRECEBIMENTO'
        Title.Caption = 'DH. Recebimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_VALORNOTA'
        Title.Caption = 'Valor NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_CONCLUSAO'
        Title.Caption = 'Conclus'#227'o'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_JUSTIFICATIVA'
        Title.Caption = 'Justificativa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_DTCONSULTA'
        Title.Caption = 'Data Consulta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAN_HRCONSULTA'
        Title.Caption = 'Hora Consulta'
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
  object MaskEdit1: TMaskEdit
    Left = 80
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
    Left = 160
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 256
    Top = 34
    Width = 137
    Height = 17
    Caption = 'Resumos Notas Fiscais'
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 408
    Top = 34
    Width = 89
    Height = 17
    Caption = 'Notas Fiscais'
    TabOrder = 5
  end
  object DSManifestacoes: TDataSource
    DataSet = QYManifestacoes
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
  object QYManifestacoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRManifestacoes
    SQL.Strings = (
      'select '
      'MAN_CIENCIA,'
      'MAN_CNPJ,'
      'MAN_CODIGO,'
      'MAN_CONCLUSAO,'
      'MAN_DESCRICAO,'
      'MAN_DHRECEBIMENTO,'
      'MAN_DTCONSULTA,'
      'MAN_HRCONSULTA,'
      'MAN_JUSTIFICATIVA,'
      'MAN_NOME,'
      'MAN_NSU,'
      'MAN_SCHEMA,'
      'MAN_VALORNOTA'
      'from MANIFESTACOES'
      '')
    Left = 216
    Top = 120
    object QYManifestacoesMAN_CNPJ: TStringField
      FieldName = 'MAN_CNPJ'
      Origin = 'MAN_CNPJ'
    end
    object QYManifestacoesMAN_CIENCIA: TStringField
      FieldName = 'MAN_CIENCIA'
      Origin = 'MAN_CIENCIA'
      Size = 1
    end
    object QYManifestacoesMAN_CODIGO: TIntegerField
      FieldName = 'MAN_CODIGO'
      Origin = 'MAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYManifestacoesMAN_CONCLUSAO: TStringField
      FieldName = 'MAN_CONCLUSAO'
      Origin = 'MAN_CONCLUSAO'
      Size = 50
    end
    object QYManifestacoesMAN_DHRECEBIMENTO: TStringField
      FieldName = 'MAN_DHRECEBIMENTO'
      Origin = 'MAN_DHRECEBIMENTO'
      Size = 30
    end
    object QYManifestacoesMAN_DTCONSULTA: TDateField
      FieldName = 'MAN_DTCONSULTA'
      Origin = 'MAN_DTCONSULTA'
    end
    object QYManifestacoesMAN_DESCRICAO: TStringField
      FieldName = 'MAN_DESCRICAO'
      Origin = 'MAN_DESCRICAO'
      Size = 50
    end
    object QYManifestacoesMAN_HRCONSULTA: TTimeField
      FieldName = 'MAN_HRCONSULTA'
      Origin = 'MAN_HRCONSULTA'
    end
    object QYManifestacoesMAN_JUSTIFICATIVA: TStringField
      FieldName = 'MAN_JUSTIFICATIVA'
      Origin = 'MAN_JUSTIFICATIVA'
      Size = 120
    end
    object QYManifestacoesMAN_NOME: TStringField
      FieldName = 'MAN_NOME'
      Origin = 'MAN_NOME'
      Size = 80
    end
    object QYManifestacoesMAN_NSU: TStringField
      FieldName = 'MAN_NSU'
      Origin = 'MAN_NSU'
    end
    object QYManifestacoesMAN_SCHEMA: TStringField
      FieldName = 'MAN_SCHEMA'
      Origin = 'MAN_SCHEMA'
      Size = 40
    end
    object QYManifestacoesMAN_VALORNOTA: TFMTBCDField
      FieldName = 'MAN_VALORNOTA'
      Origin = 'MAN_VALORNOTA'
      Precision = 18
    end
  end
  object TRManifestacoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
