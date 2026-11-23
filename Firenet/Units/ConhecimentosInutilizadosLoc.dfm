object FormConhecimentosInutilizadosLoc: TFormConhecimentosInutilizadosLoc
  Left = 390
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inutiliza'#231#227'o de Faixa de CTe'
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
    Caption = 'N'#250'mero CTe:'
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
    DataSource = DSCteInutilizados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
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
        FieldName = 'CIN_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_ANO'
        Title.Caption = 'Ano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_MODELO'
        Title.Caption = 'Modelo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_NUMINICIAL'
        Title.Caption = 'Num. Inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_NUMFINAL'
        Title.Caption = 'Num. Final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_JUSTIFICATIVA'
        Title.Caption = 'Justificativa'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_PROTOCOLO'
        Title.Caption = 'Protocolo'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_PROTOCOLODH'
        Title.Caption = 'Data Hora Protocolo'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIN_DTCADASTRO'
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
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 552
    Top = 32
    Width = 225
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object DSCteInutilizados: TDataSource
    DataSet = QYCteInutilizados
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
  object QYCteInutilizados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCteInutilizados
    SQL.Strings = (
      'select * from CTEINUTILIZADOS')
    Left = 200
    Top = 120
    object QYCteInutilizadosCIN_ANO: TStringField
      FieldName = 'CIN_ANO'
      Origin = 'CIN_ANO'
      Size = 4
    end
    object QYCteInutilizadosCIN_CODIGO: TIntegerField
      FieldName = 'CIN_CODIGO'
      Origin = 'CIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCteInutilizadosCIN_DTATUALIZACAO: TDateField
      FieldName = 'CIN_DTATUALIZACAO'
      Origin = 'CIN_DTATUALIZACAO'
    end
    object QYCteInutilizadosCIN_DTCADASTRO: TDateField
      FieldName = 'CIN_DTCADASTRO'
      Origin = 'CIN_DTCADASTRO'
    end
    object QYCteInutilizadosCIN_HRATUALIZACAO: TTimeField
      FieldName = 'CIN_HRATUALIZACAO'
      Origin = 'CIN_HRATUALIZACAO'
    end
    object QYCteInutilizadosCIN_HRCADASTRO: TTimeField
      FieldName = 'CIN_HRCADASTRO'
      Origin = 'CIN_HRCADASTRO'
    end
    object QYCteInutilizadosCIN_JUSTIFICATIVA: TStringField
      FieldName = 'CIN_JUSTIFICATIVA'
      Origin = 'CIN_JUSTIFICATIVA'
      Size = 120
    end
    object QYCteInutilizadosCIN_MODELO: TIntegerField
      FieldName = 'CIN_MODELO'
      Origin = 'CIN_MODELO'
    end
    object QYCteInutilizadosCIN_NUMFINAL: TIntegerField
      FieldName = 'CIN_NUMFINAL'
      Origin = 'CIN_NUMFINAL'
    end
    object QYCteInutilizadosCIN_NUMINICIAL: TIntegerField
      FieldName = 'CIN_NUMINICIAL'
      Origin = 'CIN_NUMINICIAL'
    end
    object QYCteInutilizadosCIN_PROTOCOLO: TStringField
      FieldName = 'CIN_PROTOCOLO'
      Origin = 'CIN_PROTOCOLO'
      Size = 40
    end
    object QYCteInutilizadosCIN_PROTOCOLODH: TStringField
      FieldName = 'CIN_PROTOCOLODH'
      Origin = 'CIN_PROTOCOLODH'
      Size = 30
    end
    object QYCteInutilizadosCIN_SERIE: TIntegerField
      FieldName = 'CIN_SERIE'
      Origin = 'CIN_SERIE'
    end
    object QYCteInutilizadosCIN_USUARIO: TStringField
      FieldName = 'CIN_USUARIO'
      Origin = 'CIN_USUARIO'
    end
  end
  object TRCteInutilizados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
