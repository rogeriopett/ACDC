object FormGnreLoc: TFormGnreLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar GNRE'
  ClientHeight = 464
  ClientWidth = 936
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
    936
    464)
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
    Width = 68
    Height = 13
    Caption = 'Docto Origem:'
  end
  object Label3: TLabel
    Left = 338
    Top = 18
    Width = 91
    Height = 13
    Caption = 'Docto Destinat'#225'rio:'
  end
  object Label4: TLabel
    Left = 482
    Top = 18
    Width = 90
    Height = 13
    Caption = 'Nome Destinat'#225'rio:'
  end
  object Label5: TLabel
    Left = 674
    Top = 18
    Width = 70
    Height = 13
    Caption = 'Valor Principal:'
  end
  object Label6: TLabel
    Left = 83
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label7: TLabel
    Left = 163
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
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
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 336
    Top = 32
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 921
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSGnre
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
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
        FieldName = 'GNR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_NUMDOCTO'
        Title.Caption = 'Num Docto'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_ESTADOFAVORECIDO'
        Title.Caption = 'UF Fav.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_DESTNOME'
        Title.Caption = 'Destinat'#225'rio'
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_DESTDOCUMENTO'
        Title.Caption = 'Docto Destinat'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_VALORPRINCIPAL'
        Title.Caption = 'Valor Principal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GNR_DESTCIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end>
  end
  object Edit4: TEdit
    Left = 480
    Top = 32
    Width = 186
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 672
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
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
  object DSGnre: TDataSource
    DataSet = QYGnre
    Left = 216
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 144
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYGnre: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRGnre
    SQL.Strings = (
      'select'
      'GNR_CODIGO, '
      'GNR_NUMDOCTO,'
      'GNR_DESTCIDADE,'
      'GNR_DESTDOCUMENTO,'
      'GNR_DESTNOME,'
      'GNR_DTCADASTRO,'
      'GNR_ESTADOFAVORECIDO,'
      'GNR_STATUS,'
      'GNR_VALORPRINCIPAL,'
      'GNR_VALORTOTAL'
      'from GNRE'
      '')
    Left = 216
    Top = 144
    object QYGnreGNR_CODIGO: TIntegerField
      FieldName = 'GNR_CODIGO'
      Origin = 'GNR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYGnreGNR_NUMDOCTO: TIntegerField
      FieldName = 'GNR_NUMDOCTO'
      Origin = 'GNR_NUMDOCTO'
    end
    object QYGnreGNR_DESTCIDADE: TStringField
      FieldName = 'GNR_DESTCIDADE'
      Origin = 'GNR_DESTCIDADE'
      Size = 50
    end
    object QYGnreGNR_DESTDOCUMENTO: TStringField
      FieldName = 'GNR_DESTDOCUMENTO'
      Origin = 'GNR_DESTDOCUMENTO'
    end
    object QYGnreGNR_DESTNOME: TStringField
      FieldName = 'GNR_DESTNOME'
      Origin = 'GNR_DESTNOME'
      Size = 80
    end
    object QYGnreGNR_DTCADASTRO: TDateField
      FieldName = 'GNR_DTCADASTRO'
      Origin = 'GNR_DTCADASTRO'
    end
    object QYGnreGNR_ESTADOFAVORECIDO: TStringField
      FieldName = 'GNR_ESTADOFAVORECIDO'
      Origin = 'GNR_ESTADOFAVORECIDO'
      Size = 2
    end
    object QYGnreGNR_STATUS: TStringField
      FieldName = 'GNR_STATUS'
      Origin = 'GNR_STATUS'
      Size = 1
    end
    object QYGnreGNR_VALORPRINCIPAL: TFMTBCDField
      FieldName = 'GNR_VALORPRINCIPAL'
      Origin = 'GNR_VALORPRINCIPAL'
      currency = True
      Precision = 18
    end
    object QYGnreGNR_VALORTOTAL: TFMTBCDField
      FieldName = 'GNR_VALORTOTAL'
      Origin = 'GNR_VALORTOTAL'
      currency = True
      Precision = 18
    end
  end
  object TRGnre: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 216
    Top = 192
  end
end
