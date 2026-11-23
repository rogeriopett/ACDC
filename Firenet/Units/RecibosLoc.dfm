object FormRecibosLoc: TFormRecibosLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Recibos'
  ClientHeight = 360
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
    360)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label6: TLabel
    Left = 386
    Top = 18
    Width = 43
    Height = 13
    Caption = 'Cedente:'
  end
  object Label2: TLabel
    Left = 242
    Top = 18
    Width = 40
    Height = 13
    Caption = 'Sacado:'
  end
  object Label5: TLabel
    Left = 530
    Top = 18
    Width = 75
    Height = 13
    Caption = 'Proveniente de:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSRecibos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 6
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
        FieldName = 'RCB_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RCB_DATA'
        Title.Caption = 'Data'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RCB_SNOME'
        Title.Caption = 'Sacado'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RCB_CNOME'
        Title.Caption = 'Cedente'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RCB_VALOR'
        Title.Caption = 'Valor'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RCB_PROVENIENTE'
        Title.Caption = 'Proveniente de'
        Width = 220
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
  object Edit3: TEdit
    Left = 384
    Top = 32
    Width = 137
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit2: TEdit
    Left = 240
    Top = 32
    Width = 137
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 528
    Top = 32
    Width = 137
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSRecibos: TDataSource
    DataSet = QYRecibos
    Left = 88
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
  object QYRecibos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRRecibos
    SQL.Strings = (
      'select * from RECIBOS'
      '')
    Left = 168
    Top = 120
    object QYRecibosRCB_CBAIRRO: TStringField
      FieldName = 'RCB_CBAIRRO'
      Origin = 'RCB_CBAIRRO'
      Size = 50
    end
    object QYRecibosRCB_CCEP: TStringField
      FieldName = 'RCB_CCEP'
      Origin = 'RCB_CCEP'
      Size = 10
    end
    object QYRecibosRCB_CCIDADE: TStringField
      FieldName = 'RCB_CCIDADE'
      Origin = 'RCB_CCIDADE'
      Size = 50
    end
    object QYRecibosRCB_CCNPJCPF: TStringField
      FieldName = 'RCB_CCNPJCPF'
      Origin = 'RCB_CCNPJCPF'
    end
    object QYRecibosRCB_CENDERECO: TStringField
      FieldName = 'RCB_CENDERECO'
      Origin = 'RCB_CENDERECO'
      Size = 100
    end
    object QYRecibosRCB_CFONE1: TStringField
      FieldName = 'RCB_CFONE1'
      Origin = 'RCB_CFONE1'
    end
    object QYRecibosRCB_CNOME: TStringField
      FieldName = 'RCB_CNOME'
      Origin = 'RCB_CNOME'
      Size = 80
    end
    object QYRecibosRCB_CNUMERO: TStringField
      FieldName = 'RCB_CNUMERO'
      Origin = 'RCB_CNUMERO'
      Size = 15
    end
    object QYRecibosRCB_CODIGO: TIntegerField
      FieldName = 'RCB_CODIGO'
      Origin = 'RCB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYRecibosRCB_DATA: TDateField
      FieldName = 'RCB_DATA'
      Origin = 'RCB_DATA'
    end
    object QYRecibosRCB_DTATUALIZACAO: TDateField
      FieldName = 'RCB_DTATUALIZACAO'
      Origin = 'RCB_DTATUALIZACAO'
    end
    object QYRecibosRCB_DTCADASTRO: TDateField
      FieldName = 'RCB_DTCADASTRO'
      Origin = 'RCB_DTCADASTRO'
    end
    object QYRecibosRCB_HRATUALIZACAO: TTimeField
      FieldName = 'RCB_HRATUALIZACAO'
      Origin = 'RCB_HRATUALIZACAO'
    end
    object QYRecibosRCB_HRCADASTRO: TTimeField
      FieldName = 'RCB_HRCADASTRO'
      Origin = 'RCB_HRCADASTRO'
    end
    object QYRecibosRCB_PROVENIENTE: TStringField
      FieldName = 'RCB_PROVENIENTE'
      Origin = 'RCB_PROVENIENTE'
      Size = 50
    end
    object QYRecibosRCB_SBAIRRO: TStringField
      FieldName = 'RCB_SBAIRRO'
      Origin = 'RCB_SBAIRRO'
      Size = 50
    end
    object QYRecibosRCB_SCEP: TStringField
      FieldName = 'RCB_SCEP'
      Origin = 'RCB_SCEP'
      Size = 10
    end
    object QYRecibosRCB_SCIDADE: TStringField
      FieldName = 'RCB_SCIDADE'
      Origin = 'RCB_SCIDADE'
      Size = 50
    end
    object QYRecibosRCB_SCNPJCPF: TStringField
      FieldName = 'RCB_SCNPJCPF'
      Origin = 'RCB_SCNPJCPF'
    end
    object QYRecibosRCB_SENDERECO: TStringField
      FieldName = 'RCB_SENDERECO'
      Origin = 'RCB_SENDERECO'
      Size = 100
    end
    object QYRecibosRCB_SFONE1: TStringField
      FieldName = 'RCB_SFONE1'
      Origin = 'RCB_SFONE1'
    end
    object QYRecibosRCB_SNOME: TStringField
      FieldName = 'RCB_SNOME'
      Origin = 'RCB_SNOME'
      Size = 80
    end
    object QYRecibosRCB_SNUMERO: TStringField
      FieldName = 'RCB_SNUMERO'
      Origin = 'RCB_SNUMERO'
      Size = 15
    end
    object QYRecibosRCB_USUARIO: TStringField
      FieldName = 'RCB_USUARIO'
      Origin = 'RCB_USUARIO'
    end
    object QYRecibosRCB_VALOR: TFMTBCDField
      FieldName = 'RCB_VALOR'
      Origin = 'RCB_VALOR'
      currency = True
      Precision = 18
    end
    object QYRecibosRCB_VALOREXTENSO: TStringField
      FieldName = 'RCB_VALOREXTENSO'
      Origin = 'RCB_VALOREXTENSO'
      Size = 120
    end
  end
  object TRRecibos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 248
    Top = 120
  end
end
