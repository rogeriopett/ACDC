object FormEnderecosCidadesLoc: TFormEnderecosCidadesLoc
  Left = 248
  Top = 272
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Cidades'
  ClientHeight = 352
  ClientWidth = 680
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
    680
    352)
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 665
    Height = 277
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCidades
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
        FieldName = 'CID_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_CODIGO'
        Title.Caption = 'C'#243'd. UF.'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_NOME'
        Title.Caption = 'Estado'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_SIGLA'
        Title.Caption = 'Sigla'
        Visible = True
      end>
  end
  object DSCidades: TDataSource
    DataSet = QYCidades
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
  object QYCidades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCidades
    SQL.Strings = (
      'select * from CIDADES'
      'left join ESTADOS on CID_ESTADO=ESD_CODIGO'
      'left join PAISES on CID_PAIS=PAI_CODIGO'
      '')
    Left = 192
    Top = 120
    object QYCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCidadesCID_DIMOB: TIntegerField
      FieldName = 'CID_DIMOB'
      Origin = 'CID_DIMOB'
    end
    object QYCidadesCID_ESTADO: TIntegerField
      FieldName = 'CID_ESTADO'
      Origin = 'CID_ESTADO'
      Required = True
    end
    object QYCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Size = 80
    end
    object QYCidadesCID_PAIS: TIntegerField
      FieldName = 'CID_PAIS'
      Origin = 'CID_PAIS'
      Required = True
    end
    object QYCidadesESD_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_CODIGO'
      Origin = 'ESD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCidadesESD_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCidadesESD_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_SIGLA'
      Origin = 'ESD_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYCidadesPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCidadesPAI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_SIGLA'
      Origin = 'PAI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object TRCidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 256
    Top = 120
  end
end
