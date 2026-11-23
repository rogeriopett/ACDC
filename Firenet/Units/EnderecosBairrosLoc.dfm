object FormEnderecosBairrosLoc: TFormEnderecosBairrosLoc
  Left = 371
  Top = 273
  BorderIcons = [biSystemMenu]
  Caption = 'Procura Bairros'
  ClientHeight = 464
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
    464)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 82
    Top = 10
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 338
    Top = 10
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 594
    Top = 10
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 60
    Width = 769
    Height = 397
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSBairros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
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
        FieldName = 'BAI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI_NOME'
        Title.Caption = 'Nome'
        Width = 251
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI_CIDADE'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Title.Caption = 'Cidade'
        Width = 293
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_SIGLA'
        Title.Caption = 'UF'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_SIGLA'
        Title.Caption = 'Pa'#237's'
        Width = 34
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 80
    Top = 24
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 336
    Top = 24
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 592
    Top = 24
    Width = 33
    Height = 21
    CharCase = ecUpperCase
    EditMask = 'aa;1;_'
    MaxLength = 2
    TabOrder = 3
    Text = '  '
    OnKeyPress = MaskEdit1KeyPress
  end
  object DSBairros: TDataSource
    DataSet = QYBairros
    Left = 136
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 168
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYBairros: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBairros
    SQL.Strings = (
      'select '
      'BAI_CODIGO,'
      'BAI_NOME,'
      'BAI_CIDADE,'
      'BAI_ESTADO,'
      'BAI_PAIS,'
      'CID_NOME,'
      'ESD_NOME,'
      'ESD_SIGLA,'
      'PAI_SIGLA,'
      'PAI_NOME'
      'from BAIRROS'
      'left join CIDADES on BAI_CIDADE=CID_CODIGO'
      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO'
      'left join PAISES on ESD_PAIS=PAI_CODIGO')
    Left = 200
    Top = 168
    object QYBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Origin = 'BAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
      Origin = 'BAI_NOME'
      Size = 80
    end
    object QYBairrosBAI_CIDADE: TIntegerField
      FieldName = 'BAI_CIDADE'
      Origin = 'BAI_CIDADE'
      Required = True
    end
    object QYBairrosBAI_ESTADO: TIntegerField
      FieldName = 'BAI_ESTADO'
      Origin = 'BAI_ESTADO'
      Required = True
    end
    object QYBairrosBAI_PAIS: TIntegerField
      FieldName = 'BAI_PAIS'
      Origin = 'BAI_PAIS'
      Required = True
    end
    object QYBairrosCID_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYBairrosESD_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYBairrosESD_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_SIGLA'
      Origin = 'ESD_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYBairrosPAI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_SIGLA'
      Origin = 'PAI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QYBairrosPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRBairros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 168
  end
end
