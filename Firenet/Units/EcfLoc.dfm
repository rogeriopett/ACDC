object FormEcfLoc: TFormEcfLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar ECFs'
  ClientHeight = 304
  ClientWidth = 640
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
    640
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
  object Label3: TLabel
    Left = 218
    Top = 18
    Width = 29
    Height = 13
    Caption = 'Serial:'
  end
  object Label4: TLabel
    Left = 354
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label5: TLabel
    Left = 490
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 625
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEcf
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
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
        FieldName = 'ECF_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECF_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECF_SERIAL'
        Title.Caption = 'Serial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECF_MARCA'
        Title.Caption = 'Marca'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECF_MODELO'
        Title.Caption = 'Modelo'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ECF_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 130
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
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
  object Edit3: TEdit
    Left = 216
    Top = 32
    Width = 130
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 352
    Top = 32
    Width = 130
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 488
    Top = 32
    Width = 130
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object DSEcf: TDataSource
    DataSet = QYEcf
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
  object TREcf: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
  object QYEcf: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREcf
    SQL.Strings = (
      'select'
      'ECF_CODIGO, '
      'ECF_DESCRICAO, '
      'ECF_MARCA, '
      'ECF_MODELO, '
      'ECF_SERIAL, '
      'ECF_STATUS'
      'from ECF'
      '')
    Left = 200
    Top = 120
    object QYEcfECF_CODIGO: TIntegerField
      FieldName = 'ECF_CODIGO'
      Origin = 'ECF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEcfECF_DESCRICAO: TStringField
      FieldName = 'ECF_DESCRICAO'
      Origin = 'ECF_DESCRICAO'
      Size = 50
    end
    object QYEcfECF_MARCA: TStringField
      FieldName = 'ECF_MARCA'
      Origin = 'ECF_MARCA'
      Size = 40
    end
    object QYEcfECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Origin = 'ECF_MODELO'
      Size = 40
    end
    object QYEcfECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Origin = 'ECF_SERIAL'
    end
    object QYEcfECF_STATUS: TStringField
      FieldName = 'ECF_STATUS'
      Origin = 'ECF_STATUS'
      Size = 1
    end
  end
end
