object FormFormasPagamentoLoc: TFormFormasPagamentoLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Formas de Pagamento'
  ClientHeight = 312
  ClientWidth = 496
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
    496
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
    Width = 481
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSFormasPagamento
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
        FieldName = 'FPG_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_CODIGOPAGAMENTO'
        Title.Caption = 'C'#243'd. Pagto.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_TEF'
        Title.Caption = 'TEF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_IMPRIMEVINCULADO'
        Title.Caption = 'Imprime Vinculado'
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
    Left = 80
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DSFormasPagamento: TDataSource
    DataSet = QYFormasPagamento
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
  object QYFormasPagamento: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFormasPagamento
    SQL.Strings = (
      'select '
      'FPG_CODIGO,'
      'FPG_CODIGOPAGAMENTO, '
      'FPG_DESCRICAO,'
      'FPG_IMPRIMEVINCULADO,'
      'FPG_TEF'
      'from FORMASPAGAMENTO'
      '')
    Left = 200
    Top = 120
    object QYFormasPagamentoFPG_CODIGO: TIntegerField
      FieldName = 'FPG_CODIGO'
      Origin = 'FPG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFormasPagamentoFPG_CODIGOPAGAMENTO: TStringField
      FieldName = 'FPG_CODIGOPAGAMENTO'
      Origin = 'FPG_CODIGOPAGAMENTO'
      Size = 3
    end
    object QYFormasPagamentoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Origin = 'FPG_DESCRICAO'
      Size = 50
    end
    object QYFormasPagamentoFPG_IMPRIMEVINCULADO: TStringField
      FieldName = 'FPG_IMPRIMEVINCULADO'
      Origin = 'FPG_IMPRIMEVINCULADO'
      Size = 1
    end
    object QYFormasPagamentoFPG_TEF: TStringField
      FieldName = 'FPG_TEF'
      Origin = 'FPG_TEF'
      Size = 1
    end
  end
  object TRFormasPagamento: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
