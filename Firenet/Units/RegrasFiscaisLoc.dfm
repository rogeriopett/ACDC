object FormRegrasFiscaisLoc: TFormRegrasFiscaisLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Regras Fiscais'
  ClientHeight = 344
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    840
    344)
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
    Width = 825
    Height = 269
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSRegrasFiscais
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'RGF_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 347
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_ALIQCBS'
        Title.Caption = '%CBS'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_ALIQIBSMUN'
        Title.Caption = '%IBS Mun'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_ALIQIBSUF'
        Title.Caption = '%IBS UF'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_CLASSTRIBIBSCBS'
        Title.Caption = 'ClassTrib IBSCBS'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_CLASSTRIBIS'
        Title.Caption = 'ClassTrib IS'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGF_CREDITOPRES'
        Title.Caption = 'Cred. Pres.'
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
  object DSRegrasFiscais: TDataSource
    DataSet = QYRegrasFiscais
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
  object QYRegrasFiscais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRRegrasFiscais
    SQL.Strings = (
      'select'
      'RGF_ALIQCBS, '
      'RGF_ALIQIBSMUN, '
      'RGF_ALIQIBSUF, '
      'RGF_CLASSTRIBIBSCBS, '
      'RGF_CLASSTRIBIS, '
      'RGF_CODIGO, '
      'RGF_CREDITOPRES, '
      'RGF_CSTIBSCBS, '
      'RGF_CSTIS, '
      'RGF_DESCRICAO, '
      'CPR_APROPRIADFE,'
      'CPR_APROPRIAEVENTO,'
      'CPR_CBS,'
      'CPR_DEDUZTOTAL,'
      'CPR_DESCRICAO,'
      'CPR_IBS,'
      'IBSCBS.CLT_DESCRICAO as CLT_DESCRICAO_IC,'
      'IBSCBS.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IC,'
      'IBSCBS.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IC,'
      'IBSCBS.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IC,'
      'IBSCBS.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IC,'
      'IBSCBS.CLT_MONOFASICO as CLT_MONOFASICO_IC,'
      'IBSCBS.CLT_MONORETENCAO as CLT_MONORETENCAO_IC,'
      'IBSCBS.CLT_MONORETIDO as CLT_MONORETIDO_IC,'
      'IBSCBS.CLT_REDBASE as CLT_REDBASE_IC,'
      'IBSCBS.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IC,'
      'IS_.CLT_DESCRICAO as CLT_DESCRICAO_IS,'
      'IS_.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IS,'
      'IS_.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IS,'
      'IS_.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IS,'
      'IS_.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IS,'
      'IS_.CLT_MONOFASICO as CLT_MONOFASICO_IS,'
      'IS_.CLT_MONORETENCAO as CLT_MONORETENCAO_IS,'
      'IS_.CLT_MONORETIDO as CLT_MONORETIDO_IS,'
      'IS_.CLT_REDBASE as CLT_REDBASE_IS,'
      'IS_.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IS'
      'from REGRASFISCAIS'
      
        'left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_COD' +
        'IGO'
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO'
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO'
      'where RGF_CODIGO=:codigo'
      '')
    Left = 200
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYRegrasFiscaisRGF_ALIQCBS: TFMTBCDField
      FieldName = 'RGF_ALIQCBS'
      Origin = 'RGF_ALIQCBS'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_ALIQIBSMUN: TFMTBCDField
      FieldName = 'RGF_ALIQIBSMUN'
      Origin = 'RGF_ALIQIBSMUN'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_ALIQIBSUF: TFMTBCDField
      FieldName = 'RGF_ALIQIBSUF'
      Origin = 'RGF_ALIQIBSUF'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_CLASSTRIBIBSCBS: TStringField
      FieldName = 'RGF_CLASSTRIBIBSCBS'
      Origin = 'RGF_CLASSTRIBIBSCBS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CLASSTRIBIS: TStringField
      FieldName = 'RGF_CLASSTRIBIS'
      Origin = 'RGF_CLASSTRIBIS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CODIGO: TIntegerField
      FieldName = 'RGF_CODIGO'
      Origin = 'RGF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYRegrasFiscaisRGF_CREDITOPRES: TIntegerField
      FieldName = 'RGF_CREDITOPRES'
      Origin = 'RGF_CREDITOPRES'
      Required = True
    end
    object QYRegrasFiscaisRGF_CSTIBSCBS: TStringField
      FieldName = 'RGF_CSTIBSCBS'
      Origin = 'RGF_CSTIBSCBS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CSTIS: TStringField
      FieldName = 'RGF_CSTIS'
      Origin = 'RGF_CSTIS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_DESCRICAO: TStringField
      FieldName = 'RGF_DESCRICAO'
      Origin = 'RGF_DESCRICAO'
      Required = True
      Size = 50
    end
    object QYRegrasFiscaisCPR_APROPRIADFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_APROPRIAEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_CBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_DEDUZTOTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCPR_IBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_DESCRICAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IC'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCLT_ALIQCBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IC'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_ALIQIBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IC'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IC'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONODIFERIMENTO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IC'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONOFASICO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IC'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETENCAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IC'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IC'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_REDBASE_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IC'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IC'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_DESCRICAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IS'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCLT_ALIQCBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IS'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_ALIQIBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IS'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IS'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONODIFERIMENTO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IS'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONOFASICO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IS'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETENCAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IS'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IS'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_REDBASE_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IS'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IS'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRRegrasFiscais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
