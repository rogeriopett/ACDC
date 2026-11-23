object FormClassFiscalLoc: TFormClassFiscalLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Classifica'#231#227'o Fiscal'
  ClientHeight = 304
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
    304)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 98
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSClassFiscal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'CLF_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLF_EXCECAO'
        Title.Caption = 'Exce'#231#227'o'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLF_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 405
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLF_VIGENCIAINI'
        Title.Caption = 'Vig. Inicial'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLF_VIGENCIAFIM'
        Title.Caption = 'Vig. Final'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLF_VERSAO'
        Title.Caption = 'Vers'#227'o'
        Width = 52
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 96
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object DSClassFiscal: TDataSource
    DataSet = QYClassFiscal
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
  object TRClassFiscal: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYClassFiscal: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClassFiscal
    SQL.Strings = (
      'select '
      'CLF_CODIGO, '
      'CLF_DESCRICAO, '
      'CLF_EXCECAO, '
      'CLF_VERSAO,'
      'CLF_VIGENCIAFIM, '
      'CLF_VIGENCIAINI '
      'from CLASSFISCAL'
      '')
    Left = 200
    Top = 120
    object QYClassFiscalCLF_CODIGO: TStringField
      FieldName = 'CLF_CODIGO'
      Origin = 'CLF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassFiscalCLF_DESCRICAO: TStringField
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      Size = 120
    end
    object QYClassFiscalCLF_EXCECAO: TIntegerField
      FieldName = 'CLF_EXCECAO'
      Origin = 'CLF_EXCECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassFiscalCLF_VERSAO: TStringField
      FieldName = 'CLF_VERSAO'
      Origin = 'CLF_VERSAO'
      Size = 10
    end
    object QYClassFiscalCLF_VIGENCIAFIM: TDateField
      FieldName = 'CLF_VIGENCIAFIM'
      Origin = 'CLF_VIGENCIAFIM'
    end
    object QYClassFiscalCLF_VIGENCIAINI: TDateField
      FieldName = 'CLF_VIGENCIAINI'
      Origin = 'CLF_VIGENCIAINI'
    end
  end
end
