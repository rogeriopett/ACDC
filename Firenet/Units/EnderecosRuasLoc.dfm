object FormEnderecosRuasLoc: TFormEnderecosRuasLoc
  Left = 216
  Top = 230
  BorderIcons = [biSystemMenu]
  Caption = 'Procura Ruas'
  ClientHeight = 384
  ClientWidth = 872
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
    872
    384)
  TextHeight = 13
  object Label2: TLabel
    Left = 82
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 10
    Top = 18
    Width = 24
    Height = 13
    Caption = 'CEP:'
  end
  object Label1: TLabel
    Left = 410
    Top = 18
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 338
    Top = 18
    Width = 61
    Height = 13
    Caption = 'C'#243'd. Cidade:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 857
    Height = 309
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSRuas
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
        FieldName = 'RUA_CEP'
        Title.Caption = 'CEP'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA_NOME'
        Title.Caption = 'Nome'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA_BAIRRO'
        Title.Caption = 'C'#243'd. Bairro'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI_NOME'
        Title.Caption = 'Bairro'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA_CIDADE'
        Title.Caption = 'C'#243'd. Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Title.Caption = 'Cidade'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA_ESTADO'
        Title.Caption = 'C'#243'd. UF'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESD_SIGLA'
        Title.Caption = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA_PAIS'
        Title.Caption = 'Pa'#237's'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Title.Caption = 'Nome Pa'#237's'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    EditMask = '99999\-999;1;_'
    MaxLength = 9
    TabOrder = 3
    Text = '     -   '
    OnKeyPress = MaskEdit1KeyPress
  end
  object Edit1: TEdit
    Left = 408
    Top = 32
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 336
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object DSRuas: TDataSource
    DataSet = QYRuas
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
  object QYRuas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRRuas
    SQL.Strings = (
      'select * from RUAS'
      'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO'
      'left join CIDADES on RUA_CIDADE=CID_CODIGO'
      'left join ESTADOS on RUA_ESTADO=ESD_CODIGO'
      'left join PAISES on RUA_PAIS=PAI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYRuasRUA_BAIRRO: TIntegerField
      FieldName = 'RUA_BAIRRO'
      Origin = 'RUA_BAIRRO'
      Required = True
    end
    object QYRuasRUA_CEP: TStringField
      FieldName = 'RUA_CEP'
      Origin = 'RUA_CEP'
      Size = 10
    end
    object QYRuasRUA_CIDADE: TIntegerField
      FieldName = 'RUA_CIDADE'
      Origin = 'RUA_CIDADE'
      Required = True
    end
    object QYRuasRUA_CODIGO: TIntegerField
      FieldName = 'RUA_CODIGO'
      Origin = 'RUA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYRuasRUA_ESTADO: TIntegerField
      FieldName = 'RUA_ESTADO'
      Origin = 'RUA_ESTADO'
      Required = True
    end
    object QYRuasRUA_NOME: TStringField
      FieldName = 'RUA_NOME'
      Origin = 'RUA_NOME'
      Size = 100
    end
    object QYRuasRUA_PAIS: TIntegerField
      FieldName = 'RUA_PAIS'
      Origin = 'RUA_PAIS'
      Required = True
    end
    object QYRuasBAI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BAI_CODIGO'
      Origin = 'BAI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYRuasBAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAI_NOME'
      Origin = 'BAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYRuasCID_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYRuasCID_DIMOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CID_DIMOB'
      Origin = 'CID_DIMOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYRuasCID_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYRuasESD_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_SIGLA'
      Origin = 'ESD_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYRuasPAI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYRuasPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRRuas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
