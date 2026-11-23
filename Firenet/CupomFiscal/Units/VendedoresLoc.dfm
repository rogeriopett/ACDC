object FormVendedoresLoc: TFormVendedoresLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Vendedores'
  ClientHeight = 224
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Width = 417
    Height = 149
    DataSource = DSVendedores
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'VEN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Width = 318
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
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DSVendedores: TDataSource
    DataSet = QYVendedores
    Left = 128
    Top = 120
  end
  object QYVendedores: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRVendedores
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select VEN_CODIGO, VEN_NOME, VEN_COMISSAO from VENDEDORES')
    Left = 200
    Top = 120
    object QYVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = '"VENDEDORES"."VEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendedoresVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Required = True
      Size = 50
    end
    object QYVendedoresVEN_COMISSAO: TIBBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = '"VENDEDORES"."VEN_COMISSAO"'
      Precision = 18
      Size = 4
    end
  end
  object TRVendedores: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 272
    Top = 120
  end
end
