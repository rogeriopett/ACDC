object FormTaxasLoc: TFormTaxasLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Taxas'
  ClientHeight = 311
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    584
    311)
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
    Width = 569
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSTaxas
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
        FieldName = 'TAX_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 315
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_VALOR'
        Title.Caption = 'Valor'
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
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object DSTaxas: TDataSource
    DataSet = QYTaxas
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
  object QYTaxas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTaxas
    SQL.Strings = (
      'select TAX_CODIGO, TAX_DESCRICAO, TAX_TIPO, TAX_VALOR from TAXAS'
      '')
    Left = 200
    Top = 120
    object QYTaxasTAX_CODIGO: TIntegerField
      FieldName = 'TAX_CODIGO'
      Origin = 'TAX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYTaxasTAX_DESCRICAO: TStringField
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      Size = 50
    end
    object QYTaxasTAX_TIPO: TStringField
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      Size = 1
    end
    object QYTaxasTAX_VALOR: TFMTBCDField
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      currency = True
      Precision = 18
    end
  end
  object TRTaxas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
