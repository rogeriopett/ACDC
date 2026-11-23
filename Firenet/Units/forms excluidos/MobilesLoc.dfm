object FormMobilesLoc: TFormMobilesLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Dispositivos Mobile'
  ClientHeight = 304
  ClientWidth = 680
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
    680
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
    Left = 82
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 665
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSMobiles
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
        FieldName = 'MOB_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOB_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOB_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOB_IMEI'
        Title.Caption = 'IMEI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOB_VENDEDOR'
        Title.Caption = 'C'#243'd. Vend.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Width = 168
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
  object DSMobiles: TDataSource
    DataSet = QYMobiles
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
  object QYMobiles: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMobiles
    SQL.Strings = (
      'select '
      'MOB_CODIGO,'
      'MOB_DESCRICAO,'
      'MOB_IMEI,'
      'MOB_STATUS,'
      'MOB_VENDEDOR,'
      'VEN_NOME from MOBILES'
      'left join VENDEDORES on MOB_VENDEDOR=VEN_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYMobilesMOB_CODIGO: TIntegerField
      FieldName = 'MOB_CODIGO'
      Origin = 'MOB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMobilesMOB_DESCRICAO: TStringField
      FieldName = 'MOB_DESCRICAO'
      Origin = 'MOB_DESCRICAO'
      Size = 50
    end
    object QYMobilesMOB_IMEI: TStringField
      FieldName = 'MOB_IMEI'
      Origin = 'MOB_IMEI'
      Required = True
    end
    object QYMobilesMOB_STATUS: TStringField
      FieldName = 'MOB_STATUS'
      Origin = 'MOB_STATUS'
      Size = 1
    end
    object QYMobilesMOB_VENDEDOR: TIntegerField
      FieldName = 'MOB_VENDEDOR'
      Origin = 'MOB_VENDEDOR'
      Required = True
    end
    object QYMobilesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRMobiles: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
