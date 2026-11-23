object FormCreditoPresumidoLoc: TFormCreditoPresumidoLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Cr'#233'dito Presumido'
  ClientHeight = 304
  ClientWidth = 784
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
    Left = 82
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
    DataSource = DSCreditoPres
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
        FieldName = 'CPR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPR_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 393
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPR_IBS'
        Title.Alignment = taCenter
        Title.Caption = 'IBS'
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPR_CBS'
        Title.Alignment = taCenter
        Title.Caption = 'CBS'
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPR_DEDUZTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Deduz Total'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPR_APROPRIADFE'
        Title.Alignment = taCenter
        Title.Caption = 'Apropria DFe'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPR_APROPRIAEVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Apropria Evento'
        Width = 86
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
  object DSCreditoPres: TDataSource
    DataSet = QYCreditoPres
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
  object QYCreditoPres: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCreditoPres
    SQL.Strings = (
      'select '
      'CPR_APROPRIADFE,'
      'CPR_APROPRIAEVENTO,'
      'CPR_CBS,'
      'CPR_CODIGO,'
      'CPR_DEDUZTOTAL,'
      'CPR_DESCRICAO,'
      'CPR_IBS'
      'from CREDITOPRES'
      'where CPR_CODIGO=:codigo'
      '')
    Left = 200
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCreditoPresCPR_APROPRIADFE: TStringField
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      Size = 1
    end
    object QYCreditoPresCPR_APROPRIAEVENTO: TStringField
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      Size = 1
    end
    object QYCreditoPresCPR_CBS: TStringField
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      Size = 1
    end
    object QYCreditoPresCPR_CODIGO: TIntegerField
      FieldName = 'CPR_CODIGO'
      Origin = 'CPR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCreditoPresCPR_DEDUZTOTAL: TStringField
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      Size = 1
    end
    object QYCreditoPresCPR_DESCRICAO: TStringField
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      Size = 300
    end
    object QYCreditoPresCPR_IBS: TStringField
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      Size = 1
    end
  end
  object TRCreditoPres: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
