object FormDemosLoc: TFormDemosLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Demonstra'#231#245'es e Testes'
  ClientHeight = 368
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label4: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label5: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label8: TLabel
    Left = 242
    Top = 18
    Width = 53
    Height = 13
    Caption = 'C'#243'digo Cli.:'
  end
  object Label2: TLabel
    Left = 314
    Top = 18
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 777
    Height = 294
    DataSource = DSDemos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'DEM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_AULADATA'
        Title.Caption = 'Demo Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_AULAHORA'
        Title.Caption = 'Demo Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_TESTEESCRITO'
        Title.Caption = 'Teste Escrito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_TESTEORAL'
        Title.Caption = 'Teste Oral'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_NIVELESCRITO'
        Title.Caption = 'N'#237'vel Escrito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_NIVELORAL'
        Title.Caption = 'N'#237'vel Oral'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEM_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
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
  object Edit5: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit5KeyPress
  end
  object Edit2: TEdit
    Left = 312
    Top = 32
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object DSDemos: TDataSource
    DataSet = QYDemos
    Left = 272
    Top = 120
  end
  object QYDemos: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRDemos
    SQL.Strings = (
      'select '
      'DEM_CODIGO,'
      'DEM_CLIENTE,'
      'DEM_AULADATA,'
      'DEM_AULAHORA,'
      'DEM_DTCADASTRO,'
      'DEM_STATUS,'
      'DEM_TESTEESCRITO,'
      'DEM_TESTEORAL,'
      'DEM_NIVELESCRITO,'
      'DEM_NIVELORAL,'
      'CLI_NOME from DEMOS'
      'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYDemosDEM_AULADATA: TDateField
      FieldName = 'DEM_AULADATA'
      Origin = '"DEMOS"."DEM_AULADATA"'
    end
    object QYDemosDEM_AULAHORA: TDateField
      FieldName = 'DEM_AULAHORA'
      Origin = '"DEMOS"."DEM_AULADATA"'
      EditMask = '!99:99:99;1;_'
    end
    object QYDemosDEM_CLIENTE: TIntegerField
      FieldName = 'DEM_CLIENTE'
      Origin = '"DEMOS"."DEM_CLIENTE"'
      Required = True
    end
    object QYDemosDEM_CODIGO: TIntegerField
      FieldName = 'DEM_CODIGO'
      Origin = '"DEMOS"."DEM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYDemosDEM_DTCADASTRO: TDateField
      FieldName = 'DEM_DTCADASTRO'
      Origin = '"DEMOS"."DEM_DTCADASTRO"'
    end
    object QYDemosDEM_NIVELESCRITO: TIBStringField
      FieldName = 'DEM_NIVELESCRITO'
      Origin = '"DEMOS"."DEM_NIVELESCRITO"'
      Size = 5
    end
    object QYDemosDEM_NIVELORAL: TIBStringField
      FieldName = 'DEM_NIVELORAL'
      Origin = '"DEMOS"."DEM_NIVELORAL"'
      Size = 5
    end
    object QYDemosDEM_STATUS: TIBStringField
      FieldName = 'DEM_STATUS'
      Origin = '"DEMOS"."DEM_STATUS"'
      Size = 1
    end
    object QYDemosDEM_TESTEESCRITO: TIBStringField
      FieldName = 'DEM_TESTEESCRITO'
      Origin = '"DEMOS"."DEM_TESTEESCRITO"'
      Size = 1
    end
    object QYDemosDEM_TESTEORAL: TIBStringField
      FieldName = 'DEM_TESTEORAL'
      Origin = '"DEMOS"."DEM_TESTEORAL"'
      Size = 1
    end
    object QYDemosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object TRDemos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
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
end
