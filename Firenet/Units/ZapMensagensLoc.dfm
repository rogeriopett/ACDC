object FormZapMensagensLoc: TFormZapMensagensLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Mensagens WhatsApp'
  ClientHeight = 392
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    904
    392)
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
    Width = 39
    Height = 13
    Caption = 'Destino:'
  end
  object Label3: TLabel
    Left = 210
    Top = 18
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Vend.:'
  end
  object Label4: TLabel
    Left = 282
    Top = 18
    Width = 80
    Height = 13
    Caption = 'Nome Vendedor:'
  end
  object Label5: TLabel
    Left = 466
    Top = 18
    Width = 119
    Height = 13
    Caption = 'Conte'#250'do da Mensagem:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 889
    Height = 317
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSZapMensagens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ZAM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_DESTINO'
        Title.Caption = 'Destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_DTENVIO'
        Title.Caption = 'Dt. Envio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_HRENVIO'
        Title.Caption = 'Hr. Envio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ZAM_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_VENDEDOR'
        Title.Caption = 'C'#243'd. Vend.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome Vendedor'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_STATUSWPP'
        Title.Caption = 'Status WPP'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_DTSTATUSWPP'
        Title.Caption = 'Dt. Status WPP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_HRSTATUSWPP'
        Title.Caption = 'Hr. Status WPP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZIN_NOME'
        Title.Caption = 'Inst'#226'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZAM_ARQUIVONOME'
        Title.Caption = 'Nome Arquivo '
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
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 208
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 280
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 464
    Top = 32
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
  end
  object DSZapMensagens: TDataSource
    DataSet = QYZapMensagens
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
  object TRZapMensagens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYZapMensagens: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRZapMensagens
    SQL.Strings = (
      'select '
      'ZAM_ARQUIVONOME,'
      'ZAM_CODIGO,'
      'ZAM_CONTEUDO,'
      'ZAM_DESTINO,'
      'ZAM_DTENVIO,'
      'ZAM_DTSTATUSWPP,'
      'ZAM_HRENVIO,'
      'ZAM_HRSTATUSWPP,'
      'ZAM_STATUS,'
      'ZAM_STATUSWPP,'
      'ZAM_VENDEDOR,'
      'ZAM_ZAPINSTANCIA,'
      'VEN_NOME,'
      'ZIN_NOME'
      'from ZAPMENSAGENS'
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO'
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO'
      ''
      '')
    Left = 200
    Top = 120
    object QYZapMensagensZAM_ARQUIVONOME: TStringField
      FieldName = 'ZAM_ARQUIVONOME'
      Origin = 'ZAM_ARQUIVONOME'
      Size = 80
    end
    object QYZapMensagensZAM_CODIGO: TIntegerField
      FieldName = 'ZAM_CODIGO'
      Origin = 'ZAM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYZapMensagensZAM_CONTEUDO: TStringField
      FieldName = 'ZAM_CONTEUDO'
      Origin = 'ZAM_CONTEUDO'
      Size = 1000
    end
    object QYZapMensagensZAM_DESTINO: TStringField
      FieldName = 'ZAM_DESTINO'
      Origin = 'ZAM_DESTINO'
    end
    object QYZapMensagensZAM_DTENVIO: TDateField
      FieldName = 'ZAM_DTENVIO'
      Origin = 'ZAM_DTENVIO'
    end
    object QYZapMensagensZAM_DTSTATUSWPP: TDateField
      FieldName = 'ZAM_DTSTATUSWPP'
      Origin = 'ZAM_DTSTATUSWPP'
    end
    object QYZapMensagensZAM_HRENVIO: TTimeField
      FieldName = 'ZAM_HRENVIO'
      Origin = 'ZAM_HRENVIO'
    end
    object QYZapMensagensZAM_HRSTATUSWPP: TTimeField
      FieldName = 'ZAM_HRSTATUSWPP'
      Origin = 'ZAM_HRSTATUSWPP'
    end
    object QYZapMensagensZAM_STATUS: TStringField
      FieldName = 'ZAM_STATUS'
      Origin = 'ZAM_STATUS'
      Size = 1
    end
    object QYZapMensagensZAM_STATUSWPP: TStringField
      FieldName = 'ZAM_STATUSWPP'
      Origin = 'ZAM_STATUSWPP'
      Size = 40
    end
    object QYZapMensagensZAM_VENDEDOR: TIntegerField
      FieldName = 'ZAM_VENDEDOR'
      Origin = 'ZAM_VENDEDOR'
      Required = True
    end
    object QYZapMensagensZAM_ZAPINSTANCIA: TIntegerField
      FieldName = 'ZAM_ZAPINSTANCIA'
      Origin = 'ZAM_ZAPINSTANCIA'
      Required = True
    end
    object QYZapMensagensVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYZapMensagensZIN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZIN_NOME'
      Origin = 'ZIN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
