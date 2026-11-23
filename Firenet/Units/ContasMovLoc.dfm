object FormContasMovLoc: TFormContasMovLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Movimenta'#231#245'es de Contas'
  ClientHeight = 304
  ClientWidth = 792
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
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 242
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Conta:'
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
  object Label5: TLabel
    Left = 426
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label6: TLabel
    Left = 610
    Top = 18
    Width = 60
    Height = 13
    Caption = 'Num. Docto:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 777
    Height = 230
    DataSource = DSContasMov
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
        FieldName = 'CMO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_DTMOVIMENTO'
        Title.Caption = 'Dt. Movim.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_ENTRADASAIDA'
        Title.Caption = 'E/S'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_VALOR'
        Title.Caption = 'Valor'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOME'
        Title.Caption = 'Conta'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_NUMDOCTO'
        Title.Caption = 'Num. Docto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMO_TIPODOCTO'
        Title.Caption = 'Tipo Docto'
        Width = 176
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
    Left = 240
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
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
    Left = 424
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 608
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSContasMov: TDataSource
    DataSet = QYContasMov
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
  object TRContasMov: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
  object QYContasMov: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRContasMov
    SQL.Strings = (
      'select '
      'CMO_CODIGO,'
      'CMO_CONTA,'
      'CMO_DTMOVIMENTO,'
      'CMO_ENTRADASAIDA,'
      'CMO_VALOR,'
      'CMO_DESCRICAO,'
      'CMO_NUMDOCTO,'
      'CMO_TIPODOCTO,'
      'CON_NOME'
      'from CONTASMOV'
      'left join CONTAS on CMO_CONTA=CON_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYContasMovCMO_CODIGO: TIntegerField
      FieldName = 'CMO_CODIGO'
      Origin = 'CMO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContasMovCMO_CONTA: TIntegerField
      FieldName = 'CMO_CONTA'
      Origin = 'CMO_CONTA'
      Required = True
    end
    object QYContasMovCMO_DTMOVIMENTO: TDateField
      FieldName = 'CMO_DTMOVIMENTO'
      Origin = 'CMO_DTMOVIMENTO'
    end
    object QYContasMovCMO_ENTRADASAIDA: TStringField
      FieldName = 'CMO_ENTRADASAIDA'
      Origin = 'CMO_ENTRADASAIDA'
      Size = 1
    end
    object QYContasMovCMO_VALOR: TFMTBCDField
      FieldName = 'CMO_VALOR'
      Origin = 'CMO_VALOR'
      currency = True
      Precision = 18
    end
    object QYContasMovCMO_DESCRICAO: TStringField
      FieldName = 'CMO_DESCRICAO'
      Origin = 'CMO_DESCRICAO'
      Size = 120
    end
    object QYContasMovCMO_NUMDOCTO: TStringField
      FieldName = 'CMO_NUMDOCTO'
      Origin = 'CMO_NUMDOCTO'
    end
    object QYContasMovCMO_TIPODOCTO: TStringField
      FieldName = 'CMO_TIPODOCTO'
      Origin = 'CMO_TIPODOCTO'
    end
    object QYContasMovCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
