object FormObjetosLoc: TFormObjetosLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Objetos'
  ClientHeight = 368
  ClientWidth = 944
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
    944
    368)
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
  object Label3: TLabel
    Left = 274
    Top = 18
    Width = 34
    Height = 13
    Caption = 'Classe:'
  end
  object Label4: TLabel
    Left = 426
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label5: TLabel
    Left = 530
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label6: TLabel
    Left = 634
    Top = 18
    Width = 29
    Height = 13
    Caption = 'Serial:'
  end
  object Label7: TLabel
    Left = 738
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel
    Left = 834
    Top = 18
    Width = 39
    Height = 13
    Caption = 'Locado:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 929
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSObjetos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'OBJ_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLS_DESCRICAO'
        Title.Caption = 'Classe'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAR_DESCRICAO'
        Title.Caption = 'Marca'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_SERIAL'
        Title.Caption = 'Serial'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_MODELO'
        Title.Caption = 'Modelo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_LOCADO'
        Title.Caption = 'Locado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_LOCACAO'
        Title.Caption = 'Loca'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_VALOR'
        Title.Caption = 'Valor Objeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJ_VALORLOCACAO'
        Title.Caption = 'Valor Loca'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_CLIENTE'
        Title.Caption = 'Cliente'
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
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 272
    Top = 32
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 424
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 528
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 632
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit6KeyPress
  end
  object ComboBox1: TComboBox
    Left = 736
    Top = 32
    Width = 89
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODOS'
      'ATIVOS'
      'INATIVOS')
  end
  object ComboBox2: TComboBox
    Left = 832
    Top = 32
    Width = 89
    Height = 21
    Style = csDropDownList
    TabOrder = 8
    Items.Strings = (
      'TODOS'
      'SIM'
      'NAO')
  end
  object DSObjetos: TDataSource
    DataSet = QYObjetos
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
  object QYObjetos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRObjetos
    SQL.Strings = (
      'select '
      'OBJ_CODIGO,'
      'OBJ_DESCRICAO,'
      'OBJ_LOCACAO,'
      'OBJ_LOCADO,'
      'OBJ_MODELO,'
      'OBJ_SERIAL,'
      'OBJ_STATUS,'
      'OBJ_VALOR,'
      'OBJ_VALORLOCACAO,'
      'CLI_NOME,'
      'CLS_DESCRICAO,'
      'LOC_CLIENTE,'
      'MAR_DESCRICAO'
      'from OBJETOS'
      'left join MARCAS on OBJ_MARCA=MAR_CODIGO'
      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO'
      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO'
      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYObjetosOBJ_CODIGO: TIntegerField
      FieldName = 'OBJ_CODIGO'
      Origin = 'OBJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYObjetosOBJ_DESCRICAO: TStringField
      FieldName = 'OBJ_DESCRICAO'
      Origin = 'OBJ_DESCRICAO'
      Size = 50
    end
    object QYObjetosOBJ_LOCACAO: TIntegerField
      FieldName = 'OBJ_LOCACAO'
      Origin = 'OBJ_LOCACAO'
    end
    object QYObjetosOBJ_LOCADO: TStringField
      FieldName = 'OBJ_LOCADO'
      Origin = 'OBJ_LOCADO'
      Size = 1
    end
    object QYObjetosOBJ_MODELO: TStringField
      FieldName = 'OBJ_MODELO'
      Origin = 'OBJ_MODELO'
      Size = 40
    end
    object QYObjetosOBJ_SERIAL: TStringField
      FieldName = 'OBJ_SERIAL'
      Origin = 'OBJ_SERIAL'
      Size = 40
    end
    object QYObjetosOBJ_STATUS: TStringField
      FieldName = 'OBJ_STATUS'
      Origin = 'OBJ_STATUS'
      Size = 1
    end
    object QYObjetosOBJ_VALOR: TFMTBCDField
      FieldName = 'OBJ_VALOR'
      Origin = 'OBJ_VALOR'
      currency = True
      Precision = 18
    end
    object QYObjetosOBJ_VALORLOCACAO: TFMTBCDField
      FieldName = 'OBJ_VALORLOCACAO'
      Origin = 'OBJ_VALORLOCACAO'
      currency = True
      Precision = 18
    end
    object QYObjetosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYObjetosCLS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYObjetosLOC_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LOC_CLIENTE'
      Origin = 'LOC_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYObjetosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRObjetos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
