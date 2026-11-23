object FormFciLoc: TFormFciLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Processos FCI'
  ClientHeight = 344
  ClientWidth = 440
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
    440
    344)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 425
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSFci
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
        FieldName = 'PFI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PFI_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PFI_DTENVIO'
        Title.Caption = 'Data Envio'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PFI_PROTOCOLO'
        Title.Caption = 'Protocolo'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PFI_STATUS'
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
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
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
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object DSFci: TDataSource
    DataSet = QYFci
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYFci: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFci
    SQL.Strings = (
      'select '
      
        'PFI_CODIGO, PFI_DTCADASTRO, PFI_DTENVIO, PFI_PROTOCOLO, PFI_STAT' +
        'US'
      'from FCI'
      ''
      '')
    Left = 200
    Top = 120
    object QYFciPFI_CODIGO: TIntegerField
      FieldName = 'PFI_CODIGO'
      Origin = 'PFI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFciPFI_DTCADASTRO: TDateField
      FieldName = 'PFI_DTCADASTRO'
      Origin = 'PFI_DTCADASTRO'
    end
    object QYFciPFI_DTENVIO: TDateField
      FieldName = 'PFI_DTENVIO'
      Origin = 'PFI_DTENVIO'
    end
    object QYFciPFI_PROTOCOLO: TStringField
      FieldName = 'PFI_PROTOCOLO'
      Origin = 'PFI_PROTOCOLO'
      Size = 40
    end
    object QYFciPFI_STATUS: TStringField
      FieldName = 'PFI_STATUS'
      Origin = 'PFI_STATUS'
      Size = 1
    end
  end
  object TRFci: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 120
  end
end
