object FormConhecimentosLoc: TFormConhecimentosLoc
  Left = 224
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Conhecimentos'
  ClientHeight = 440
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    784
    440)
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
  object Label2: TLabel
    Left = 315
    Top = 18
    Width = 55
    Height = 13
    Caption = 'Remetente:'
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
  object Label5: TLabel
    Left = 243
    Top = 18
    Width = 50
    Height = 13
    Caption = 'C'#243'd. Rem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 674
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
    Left = 531
    Top = 18
    Width = 59
    Height = 13
    Caption = 'Destinat'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 459
    Top = 18
    Width = 47
    Height = 13
    Caption = 'C'#243'd. Des:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 11
    Top = 58
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 100
    Width = 769
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 8
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
        FieldName = 'CTE_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_DTEMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_REMETENTE'
        Title.Caption = 'C'#243'd. Rem.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_REMNOME'
        Title.Caption = 'Remetente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_DESTINATARIO'
        Title.Caption = 'C'#243'd. Des.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_DESNOME'
        Title.Caption = 'Destinat'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_STATUS'
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTE_REFERENCIA'
        Title.Caption = 'Refer'#234'ncia'
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
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
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
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 672
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
    TabOrder = 7
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'FINALIZADOS'
      'CANCELADOS'
      'INUTILIZADOS')
  end
  object Edit4: TEdit
    Left = 528
    Top = 32
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 456
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
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 8
    Top = 72
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = Edit6KeyPress
  end
  object DSCte: TDataSource
    DataSet = QYCte
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
  object TRCte: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYCte: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCte
    SQL.Strings = (
      'select '
      'CTE_CODIGO,'
      'CTE_CHAVEACESSO,'
      'CTE_DTEMISSAO,'
      'CTE_REMETENTE,'
      'CTE_REMNOME,'
      'CTE_DESTINATARIO,'
      'CTE_DESNOME,'
      'CTE_REFERENCIA, '
      'CTE_STATUS,'
      'CTE_VALORTOTAL'
      'from CTE'
      '')
    Left = 200
    Top = 120
    object QYCteCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = 'CTE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCteCTE_CHAVEACESSO: TStringField
      FieldName = 'CTE_CHAVEACESSO'
      Origin = 'CTE_CHAVEACESSO'
      Size = 50
    end
    object QYCteCTE_DTEMISSAO: TDateField
      FieldName = 'CTE_DTEMISSAO'
      Origin = 'CTE_DTEMISSAO'
    end
    object QYCteCTE_REMETENTE: TIntegerField
      FieldName = 'CTE_REMETENTE'
      Origin = 'CTE_REMETENTE'
      Required = True
    end
    object QYCteCTE_REMNOME: TStringField
      FieldName = 'CTE_REMNOME'
      Origin = 'CTE_REMNOME'
      Size = 80
    end
    object QYCteCTE_DESTINATARIO: TIntegerField
      FieldName = 'CTE_DESTINATARIO'
      Origin = 'CTE_DESTINATARIO'
      Required = True
    end
    object QYCteCTE_DESNOME: TStringField
      FieldName = 'CTE_DESNOME'
      Origin = 'CTE_DESNOME'
      Size = 80
    end
    object QYCteCTE_REFERENCIA: TStringField
      FieldName = 'CTE_REFERENCIA'
      Origin = 'CTE_REFERENCIA'
    end
    object QYCteCTE_STATUS: TStringField
      FieldName = 'CTE_STATUS'
      Origin = 'CTE_STATUS'
      Size = 1
    end
    object QYCteCTE_VALORTOTAL: TFMTBCDField
      FieldName = 'CTE_VALORTOTAL'
      Origin = 'CTE_VALORTOTAL'
      Precision = 18
    end
  end
end
