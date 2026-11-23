object FormNfeInutilizadasLoc: TFormNfeInutilizadasLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inutiliza'#231#227'o de Faixa de NFe'
  ClientHeight = 352
  ClientWidth = 784
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
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
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
    Left = 242
    Top = 18
    Width = 63
    Height = 13
    Caption = 'N'#250'mero NFe:'
  end
  object Label6: TLabel
    Left = 323
    Top = 18
    Width = 58
    Height = 13
    Caption = 'Justificativa:'
  end
  object Label2: TLabel
    Left = 555
    Top = 18
    Width = 48
    Height = 13
    Caption = 'Protocolo:'
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
    Left = 240
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 277
    DataSource = DSNfeInutilizadas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 6
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
        FieldName = 'NIN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_ANO'
        Title.Caption = 'Ano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_MODELO'
        Title.Caption = 'Modelo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_NUMINICIAL'
        Title.Caption = 'Num. Inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_NUMFINAL'
        Title.Caption = 'Num. Final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_JUSTIFICATIVA'
        Title.Caption = 'Justificativa'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_PROTOCOLO'
        Title.Caption = 'Protocolo'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_PROTOCOLODH'
        Title.Caption = 'Data Hora Protocolo'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIN_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 320
    Top = 32
    Width = 225
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 552
    Top = 32
    Width = 225
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSNfeInutilizadas: TDataSource
    DataSet = QYNfeInutilizadas
    Left = 112
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
  object QYNfeInutilizadas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNfeInutilizadas
    SQL.Strings = (
      'select * from NFEINUTILIZADAS')
    Left = 192
    Top = 120
    object QYNfeInutilizadasNIN_ANO: TStringField
      FieldName = 'NIN_ANO'
      Origin = 'NIN_ANO'
      Size = 4
    end
    object QYNfeInutilizadasNIN_CODIGO: TIntegerField
      FieldName = 'NIN_CODIGO'
      Origin = 'NIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNfeInutilizadasNIN_DTATUALIZACAO: TDateField
      FieldName = 'NIN_DTATUALIZACAO'
      Origin = 'NIN_DTATUALIZACAO'
    end
    object QYNfeInutilizadasNIN_DTCADASTRO: TDateField
      FieldName = 'NIN_DTCADASTRO'
      Origin = 'NIN_DTCADASTRO'
    end
    object QYNfeInutilizadasNIN_HRATUALIZACAO: TTimeField
      FieldName = 'NIN_HRATUALIZACAO'
      Origin = 'NIN_HRATUALIZACAO'
    end
    object QYNfeInutilizadasNIN_HRCADASTRO: TTimeField
      FieldName = 'NIN_HRCADASTRO'
      Origin = 'NIN_HRCADASTRO'
    end
    object QYNfeInutilizadasNIN_JUSTIFICATIVA: TStringField
      FieldName = 'NIN_JUSTIFICATIVA'
      Origin = 'NIN_JUSTIFICATIVA'
      Size = 120
    end
    object QYNfeInutilizadasNIN_MODELO: TIntegerField
      FieldName = 'NIN_MODELO'
      Origin = 'NIN_MODELO'
    end
    object QYNfeInutilizadasNIN_NUMFINAL: TIntegerField
      FieldName = 'NIN_NUMFINAL'
      Origin = 'NIN_NUMFINAL'
    end
    object QYNfeInutilizadasNIN_NUMINICIAL: TIntegerField
      FieldName = 'NIN_NUMINICIAL'
      Origin = 'NIN_NUMINICIAL'
    end
    object QYNfeInutilizadasNIN_PROTOCOLO: TStringField
      FieldName = 'NIN_PROTOCOLO'
      Origin = 'NIN_PROTOCOLO'
      Size = 40
    end
    object QYNfeInutilizadasNIN_PROTOCOLODH: TStringField
      FieldName = 'NIN_PROTOCOLODH'
      Origin = 'NIN_PROTOCOLODH'
      Size = 30
    end
    object QYNfeInutilizadasNIN_SERIE: TIntegerField
      FieldName = 'NIN_SERIE'
      Origin = 'NIN_SERIE'
    end
    object QYNfeInutilizadasNIN_USUARIO: TStringField
      FieldName = 'NIN_USUARIO'
      Origin = 'NIN_USUARIO'
    end
  end
  object TRNfeInutilizadas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
