object FormEmailsContasLoc: TFormEmailsContasLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Contas de Email'
  ClientHeight = 304
  ClientWidth = 696
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
    696
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 681
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSEmailsContas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'EMC_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMC_NOME'
        Title.Caption = 'Nome'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMC_EMAIL'
        Title.Caption = 'Email'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMC_CONFIRMACAO'
        Title.Caption = 'Confirma'#231#227'o'
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
  object DSEmailsContas: TDataSource
    DataSet = QYEmailsContas
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYEmailsContas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREmailsContas
    SQL.Strings = (
      'select * from EMAILSCONTAS'
      '')
    Left = 208
    Top = 120
    object QYEmailsContasEMC_ASSINATURA: TMemoField
      FieldName = 'EMC_ASSINATURA'
      Origin = 'EMC_ASSINATURA'
      BlobType = ftMemo
    end
    object QYEmailsContasEMC_CODIGO: TIntegerField
      FieldName = 'EMC_CODIGO'
      Origin = 'EMC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEmailsContasEMC_CONFIRMACAO: TStringField
      FieldName = 'EMC_CONFIRMACAO'
      Origin = 'EMC_CONFIRMACAO'
      Size = 1
    end
    object QYEmailsContasEMC_EMAIL: TStringField
      FieldName = 'EMC_EMAIL'
      Origin = 'EMC_EMAIL'
      Size = 100
    end
    object QYEmailsContasEMC_NOME: TStringField
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      Size = 80
    end
  end
  object TREmailsContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 296
    Top = 120
  end
end
