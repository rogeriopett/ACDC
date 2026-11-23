object FormAlmoxarifadosLoc: TFormAlmoxarifadosLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Almoxarifados'
  ClientHeight = 312
  ClientWidth = 552
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
    552
    312)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 82
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 537
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSAlmoxarifados
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
        FieldName = 'ALM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALM_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 394
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ALM_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 40
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object DSAlmoxarifados: TDataSource
    DataSet = QYAlmoxarifados
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
  object TRAlmoxarifados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYAlmoxarifados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAlmoxarifados
    SQL.Strings = (
      'select * from ALMOXARIFADOS'
      '')
    Left = 200
    Top = 120
    object QYAlmoxarifadosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ALM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAlmoxarifadosALM_DESCRICAO: TStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      Size = 50
    end
    object QYAlmoxarifadosALM_STATUS: TStringField
      FieldName = 'ALM_STATUS'
      Origin = 'ALM_STATUS'
      Size = 1
    end
  end
end
