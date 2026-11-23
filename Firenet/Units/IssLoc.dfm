object FormIssLoc: TFormIssLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar ISS'
  ClientHeight = 312
  ClientWidth = 792
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
    792
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
    Width = 777
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSIss
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
        FieldName = 'ISS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISS_ALIQUOTAMUNICIPAL'
        Title.Caption = 'Al'#237'quota'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISS_ALIQUOTAESTADUAL'
        Title.Caption = 'Aliq. Est.'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISS_ALIQUOTAIMPORTACAO'
        Title.Caption = 'Aliq. Imp.'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISS_ALIQUOTANACIONAL'
        Title.Caption = 'Aliq. Fed.'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISS_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 603
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
  object DSIss: TDataSource
    DataSet = QYIss
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
  object QYIss: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIss
    SQL.Strings = (
      'select '
      'ISS_ALIQUOTAESTADUAL,'
      'ISS_ALIQUOTAIMPORTACAO,'
      'ISS_ALIQUOTAMUNICIPAL,'
      'ISS_ALIQUOTANACIONAL,'
      'ISS_CODIGO, '
      'ISS_DESCRICAO '
      'from ISS'
      '')
    Left = 200
    Top = 120
    object QYIssISS_ALIQUOTAESTADUAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAESTADUAL'
      Origin = 'ISS_ALIQUOTAESTADUAL'
      Precision = 18
    end
    object QYIssISS_ALIQUOTAIMPORTACAO: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAIMPORTACAO'
      Origin = 'ISS_ALIQUOTAIMPORTACAO'
      Precision = 18
    end
    object QYIssISS_ALIQUOTAMUNICIPAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAMUNICIPAL'
      Origin = 'ISS_ALIQUOTAMUNICIPAL'
      Precision = 18
    end
    object QYIssISS_ALIQUOTANACIONAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTANACIONAL'
      Origin = 'ISS_ALIQUOTANACIONAL'
      Precision = 18
    end
    object QYIssISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      Origin = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYIssISS_DESCRICAO: TStringField
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      Size = 1000
    end
  end
  object TRIss: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
