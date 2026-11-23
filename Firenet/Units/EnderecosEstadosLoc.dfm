object FormEnderecosEstadosLoc: TFormEnderecosEstadosLoc
  Left = 260
  Top = 209
  BorderIcons = [biSystemMenu]
  Caption = 'Procura Estados'
  ClientHeight = 328
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
    328)
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 253
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEstados
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
        FieldName = 'ESD_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_SIGLA'
        Title.Caption = 'Sigla'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_PAIS'
        Title.Caption = 'C'#243'd. Pa'#237's'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Title.Caption = 'Pa'#237's'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_SIGLA'
        Title.Caption = 'Sigla Pa'#237's'
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
    TabOrder = 0
    OnKeyPress = Edit2KeyPress
  end
  object DSEstados: TDataSource
    DataSet = QYEstados
    Left = 120
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
  object TREstados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
  object QYEstados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREstados
    SQL.Strings = (
      'select * from ESTADOS'
      'left join PAISES on ESD_PAIS=PAI_CODIGO'
      '')
    Left = 192
    Top = 120
    object QYEstadosESD_CODIGO: TIntegerField
      FieldName = 'ESD_CODIGO'
      Origin = 'ESD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEstadosESD_NOME: TStringField
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      Size = 80
    end
    object QYEstadosESD_PAIS: TIntegerField
      FieldName = 'ESD_PAIS'
      Origin = 'ESD_PAIS'
      Required = True
    end
    object QYEstadosESD_SIGLA: TStringField
      FieldName = 'ESD_SIGLA'
      Origin = 'ESD_SIGLA'
      Size = 2
    end
    object QYEstadosPAI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYEstadosPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYEstadosPAI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_SIGLA'
      Origin = 'PAI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
end
