object FormMdfeLoc: TFormMdfeLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar MDFe'
  ClientHeight = 392
  ClientWidth = 776
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
    776
    392)
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 163
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 546
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 243
    Top = 18
    Width = 87
    Height = 13
    Caption = 'Chave de Acesso:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 761
    Height = 317
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMdfe
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'MDF_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_CHAVEACESSO'
        Title.Caption = 'Chave Acesso'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_ESTADOINI'
        Title.Caption = 'UF Ini'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_ESTADOFIM'
        Title.Caption = 'UF Fim'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_STATUS'
        Title.Caption = 'Status'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_VALORCARGA'
        Title.Caption = 'Valor Carga'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object ComboBox1: TComboBox
    Left = 544
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'VIGENCIA'
      'FINALIZADOS'
      'CANCELADOS'
      '')
  end
  object MaskEdit3: TMaskEdit
    Left = 240
    Top = 32
    Width = 297
    Height = 21
    EditMask = '!99999999999999999999999999999999999999999999;1;_'
    MaxLength = 44
    TabOrder = 4
    Text = '                                            '
    OnKeyPress = MaskEdit3KeyPress
  end
  object DSMdfe: TDataSource
    DataSet = QYMdfe
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
  object QYMdfe: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMdfe
    SQL.Strings = (
      'select '
      'MDF_CODIGO, '
      'MDF_DTEMISSAO, '
      'MDF_CHAVEACESSO, '
      'MDF_ESTADOINI, '
      'MDF_ESTADOFIM, '
      'MDF_STATUS, '
      'MDF_VALORCARGA '
      'from MDFE'
      '')
    Left = 192
    Top = 120
    object QYMdfeMDF_CODIGO: TIntegerField
      FieldName = 'MDF_CODIGO'
      Origin = 'MDF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMdfeMDF_DTEMISSAO: TDateField
      FieldName = 'MDF_DTEMISSAO'
      Origin = 'MDF_DTEMISSAO'
    end
    object QYMdfeMDF_CHAVEACESSO: TStringField
      FieldName = 'MDF_CHAVEACESSO'
      Origin = 'MDF_CHAVEACESSO'
      Size = 50
    end
    object QYMdfeMDF_ESTADOINI: TStringField
      FieldName = 'MDF_ESTADOINI'
      Origin = 'MDF_ESTADOINI'
      Size = 2
    end
    object QYMdfeMDF_ESTADOFIM: TStringField
      FieldName = 'MDF_ESTADOFIM'
      Origin = 'MDF_ESTADOFIM'
      Size = 2
    end
    object QYMdfeMDF_STATUS: TStringField
      FieldName = 'MDF_STATUS'
      Origin = 'MDF_STATUS'
      Size = 1
    end
    object QYMdfeMDF_VALORCARGA: TFMTBCDField
      FieldName = 'MDF_VALORCARGA'
      Origin = 'MDF_VALORCARGA'
      currency = True
      Precision = 18
    end
  end
  object TRMdfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
