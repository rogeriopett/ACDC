object FormCondicoesLoc: TFormCondicoesLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Condi'#231#245'es de Pagamento'
  ClientHeight = 376
  ClientWidth = 1000
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
    1000
    376)
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
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 985
    Height = 301
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCondicoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'CPG_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_FORMAPAGTO'
        Title.Caption = 'Forma Pagto'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_DESCPORC'
        Title.Caption = '% Desconto'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_TOTALPARCELAS'
        Title.Caption = 'Num. Parc.'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_TOTALPORCENTAGEM'
        Title.Caption = 'Total %'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_MEIOPAGAMENTO'
        Title.Caption = 'Meio Pagamento'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_TIPOPAGAMENTO'
        Title.Caption = 'Tipo Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPG_TIPOINTEGRACAO'
        Title.Caption = 'Tipo Integra'#231#227'o'
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
  object DSCondicoes: TDataSource
    DataSet = QYCondicoes
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
  object QYCondicoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCondicoes
    SQL.Strings = (
      'select '
      'CPG_CODIGO, '
      'CPG_DESCRICAO, '
      'CPG_DESCPORC,'
      'CPG_FORMAPAGTO, '
      'CPG_MEIOPAGAMENTO,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TIPOPAGAMENTO,'
      'CPG_TOTALPARCELAS,'
      'CPG_TOTALPORCENTAGEM'
      'from CONDICOES')
    Left = 200
    Top = 120
    object QYCondicoesCPG_CODIGO: TIntegerField
      FieldName = 'CPG_CODIGO'
      Origin = 'CPG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCondicoesCPG_DESCRICAO: TStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      Size = 50
    end
    object QYCondicoesCPG_DESCPORC: TFMTBCDField
      FieldName = 'CPG_DESCPORC'
      Origin = 'CPG_DESCPORC'
      Precision = 18
    end
    object QYCondicoesCPG_FORMAPAGTO: TStringField
      FieldName = 'CPG_FORMAPAGTO'
      Origin = 'CPG_FORMAPAGTO'
      Size = 15
    end
    object QYCondicoesCPG_MEIOPAGAMENTO: TStringField
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      Size = 50
    end
    object QYCondicoesCPG_TIPOINTEGRACAO: TStringField
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      Size = 30
    end
    object QYCondicoesCPG_TIPOPAGAMENTO: TStringField
      FieldName = 'CPG_TIPOPAGAMENTO'
      Origin = 'CPG_TIPOPAGAMENTO'
      Size = 30
    end
    object QYCondicoesCPG_TOTALPARCELAS: TIntegerField
      FieldName = 'CPG_TOTALPARCELAS'
      Origin = 'CPG_TOTALPARCELAS'
    end
    object QYCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField
      FieldName = 'CPG_TOTALPORCENTAGEM'
      Origin = 'CPG_TOTALPORCENTAGEM'
      Precision = 18
    end
  end
  object TRCondicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
