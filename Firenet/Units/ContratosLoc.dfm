object FormContratosLoc: TFormContratosLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Contratos'
  ClientHeight = 440
  ClientWidth = 792
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
    792
    440)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 386
    Top = 18
    Width = 78
    Height = 13
    Caption = 'Locat'#225'rio Nome:'
  end
  object Label3: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 163
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 314
    Top = 18
    Width = 47
    Height = 13
    Caption = 'Locat'#225'rio:'
  end
  object Label7: TLabel
    Left = 682
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 570
    Top = 18
    Width = 73
    Height = 13
    Caption = 'Locador Nome:'
  end
  object Label8: TLabel
    Left = 498
    Top = 18
    Width = 42
    Height = 13
    Caption = 'Locador:'
  end
  object Label9: TLabel
    Left = 242
    Top = 18
    Width = 34
    Height = 13
    Caption = 'Im'#243'vel:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 229
    Anchors = [akLeft, akTop, akRight]
    DataSource = DSContratos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 9
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
        FieldName = 'CTI_CODIGO'
        Title.Caption = 'Contrato'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTI_IMOVEL'
        Title.Caption = 'Im'#243'vel'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTI_LOCADOR'
        Title.Caption = 'Locador'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTI_LOCADORNOME'
        Title.Caption = 'Locador Nome'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMT_DESCRICAO'
        Title.Caption = 'Tipo'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTI_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTI_STATUS'
        Title.Caption = 'Status'
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
    Left = 384
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object MaskEdit2: TMaskEdit
    Left = 160
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 312
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 680
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 8
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'FECHADOS'
      'BAIXADOS'
      'CANCELADOS')
  end
  object Edit4: TEdit
    Left = 568
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 496
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object DBGrid2: TDBGrid
    Left = 7
    Top = 304
    Width = 778
    Height = 129
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSContratosPartes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 10
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
        FieldName = 'CTP_TIPO'
        Title.Caption = 'Tipo'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTP_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTP_NOME'
        Title.Caption = 'Nome'
        Width = 297
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTP_FONE1'
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTP_CPF'
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTP_CNPJ'
        Title.Caption = 'CNPJ'
        Visible = True
      end>
  end
  object DSContratos: TDataSource
    DataSet = QYContratos
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object DSContratosPartes: TDataSource
    DataSet = QYContratosPartes
    Left = 128
    Top = 344
  end
  object TRContratos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 120
  end
  object QYContratos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRContratos
    SQL.Strings = (
      'select '
      'CTI_CODIGO,'
      'CTI_DTCADASTRO,'
      'CTI_IMOVEL,'
      'CTI_LOCADOR,'
      'CTI_LOCADORNOME,'
      'CTI_STATUS,'
      'IMO_DESCRICAO,'
      'IMT_DESCRICAO'
      'from CONTRATOS'
      'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      '')
    Left = 224
    Top = 120
    object QYContratosCTI_CODIGO: TIntegerField
      FieldName = 'CTI_CODIGO'
      Origin = 'CTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContratosCTI_DTCADASTRO: TDateField
      FieldName = 'CTI_DTCADASTRO'
      Origin = 'CTI_DTCADASTRO'
    end
    object QYContratosCTI_IMOVEL: TIntegerField
      FieldName = 'CTI_IMOVEL'
      Origin = 'CTI_IMOVEL'
      Required = True
    end
    object QYContratosCTI_LOCADOR: TIntegerField
      FieldName = 'CTI_LOCADOR'
      Origin = 'CTI_LOCADOR'
      Required = True
    end
    object QYContratosCTI_LOCADORNOME: TStringField
      FieldName = 'CTI_LOCADORNOME'
      Origin = 'CTI_LOCADORNOME'
      Size = 80
    end
    object QYContratosCTI_STATUS: TStringField
      FieldName = 'CTI_STATUS'
      Origin = 'CTI_STATUS'
      Size = 1
    end
    object QYContratosIMO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_DESCRICAO'
      Origin = 'IMO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object QYContratosIMT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRContratosPartes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 296
    Top = 344
  end
  object QYContratosPartes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRContratosPartes
    SQL.Strings = (
      'select '
      'CTP_CODIGO,'
      'CTP_CLIENTE,'
      'CTP_NOME,'
      'CTP_TIPO,'
      'CTP_FONE1,'
      'CTP_CPF,'
      'CTP_CNPJ'
      'from CONTRATOSPARTES'
      'where CTP_CONTRATO=:CTI_CONTRATO'
      '')
    Left = 216
    Top = 344
    ParamData = <
      item
        Name = 'CTI_CONTRATO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYContratosPartesCTP_CODIGO: TIntegerField
      FieldName = 'CTP_CODIGO'
      Origin = 'CTP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContratosPartesCTP_CLIENTE: TIntegerField
      FieldName = 'CTP_CLIENTE'
      Origin = 'CTP_CLIENTE'
      Required = True
    end
    object QYContratosPartesCTP_NOME: TStringField
      FieldName = 'CTP_NOME'
      Origin = 'CTP_NOME'
      Size = 80
    end
    object QYContratosPartesCTP_TIPO: TStringField
      FieldName = 'CTP_TIPO'
      Origin = 'CTP_TIPO'
      Size = 1
    end
    object QYContratosPartesCTP_FONE1: TStringField
      FieldName = 'CTP_FONE1'
      Origin = 'CTP_FONE1'
    end
    object QYContratosPartesCTP_CPF: TStringField
      FieldName = 'CTP_CPF'
      Origin = 'CTP_CPF'
    end
    object QYContratosPartesCTP_CNPJ: TStringField
      FieldName = 'CTP_CNPJ'
      Origin = 'CTP_CNPJ'
    end
  end
end
