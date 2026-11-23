object FormTelasLoc: TFormTelasLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Tela'
  ClientHeight = 408
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
    408)
  TextHeight = 13
  object Label2: TLabel
    Left = 130
    Top = 18
    Width = 38
    Height = 13
    Caption = 'M'#243'dulo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 24
    Height = 13
    Caption = 'Tela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 761
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSTelas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'TEL_DESCRICAO'
        Title.Caption = 'Tela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_NOMEFORM'
        Title.Caption = 'Nome Form'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_STATUS'
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
        FieldName = 'TEL_MODULO'
        Title.Caption = 'C'#243'd. M'#243'd.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOD_NOME'
        Title.Caption = 'M'#243'dulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 123
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 128
    Top = 32
    Width = 209
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 113
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DSTelas: TDataSource
    DataSet = QYTelas
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
  object QYTelas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTelas
    SQL.Strings = (
      'select * from TELAS'
      'left join MODULOS on TEL_MODULO=MOD_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYTelasTEL_DESCRICAO: TStringField
      FieldName = 'TEL_DESCRICAO'
      Origin = 'TEL_DESCRICAO'
      Required = True
      Size = 50
    end
    object QYTelasTEL_MODULO: TIntegerField
      FieldName = 'TEL_MODULO'
      Origin = 'TEL_MODULO'
      Required = True
    end
    object QYTelasTEL_NOMEFORM: TStringField
      FieldName = 'TEL_NOMEFORM'
      Origin = 'TEL_NOMEFORM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QYTelasTEL_STATUS: TStringField
      FieldName = 'TEL_STATUS'
      Origin = 'TEL_STATUS'
      Size = 1
    end
    object QYTelasMOD_ACESSO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOD_ACESSO'
      Origin = 'MOD_ACESSO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYTelasMOD_BOTAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOD_BOTAO'
      Origin = 'MOD_BOTAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYTelasMOD_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOD_CODIGO'
      Origin = 'MOD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYTelasMOD_MENUITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOD_MENUITEM'
      Origin = 'MOD_MENUITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYTelasMOD_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOD_NOME'
      Origin = 'MOD_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRTelas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
