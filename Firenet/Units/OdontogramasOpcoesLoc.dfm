object FormOdontogramasOpcoesLoc: TFormOdontogramasOpcoesLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Op'#231#245'es de Odontogramas'
  ClientHeight = 312
  ClientWidth = 639
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
    639
    312)
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
  object Shape1: TShape
    Left = 432
    Top = 32
    Width = 33
    Height = 21
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 625
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSOdontogramasOpcoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ODP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ODP_COR'
        Title.Caption = 'Cor'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ODP_ESTILO'
        Title.Caption = 'Estilo'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ODP_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 371
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ODP_PADRAO'
        Title.Caption = 'Padr'#227'o'
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
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object DSOdontogramasOpcoes: TDataSource
    DataSet = QYOdontogramasOpcoes
    OnDataChange = DSOdontogramasOpcoesDataChange
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
  object QYOdontogramasOpcoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TROdontogramasOpcoes
    SQL.Strings = (
      'select '
      'ODP_CODIGO,'
      'ODP_COR,'
      'ODP_DESCRICAO,'
      'ODP_ESTILO,'
      'ODP_PADRAO,'
      
        'ODP_D11, ODP_D12, ODP_D13, ODP_D14, ODP_D15, ODP_D16, ODP_D17, O' +
        'DP_D18,'
      
        'ODP_D21, ODP_D22, ODP_D23, ODP_D24, ODP_D25, ODP_D26, ODP_D27, O' +
        'DP_D28,'
      
        'ODP_D31, ODP_D32, ODP_D33, ODP_D34, ODP_D35, ODP_D36, ODP_D37, O' +
        'DP_D38,'
      
        'ODP_D41, ODP_D42, ODP_D43, ODP_D44, ODP_D45, ODP_D46, ODP_D47, O' +
        'DP_D48,'
      'ODP_D51, ODP_D52, ODP_D53, ODP_D54, ODP_D55,'
      'ODP_D61, ODP_D62, ODP_D63, ODP_D64, ODP_D65,'
      'ODP_D71, ODP_D72, ODP_D73, ODP_D74, ODP_D75,'
      'ODP_D81, ODP_D82, ODP_D83, ODP_D84, ODP_D85'
      'from ODONTOGRAMASOPCOES'
      '')
    Left = 200
    Top = 120
    object QYOdontogramasOpcoesODP_CODIGO: TIntegerField
      FieldName = 'ODP_CODIGO'
      Origin = 'ODP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYOdontogramasOpcoesODP_COR: TIntegerField
      FieldName = 'ODP_COR'
      Origin = 'ODP_COR'
    end
    object QYOdontogramasOpcoesODP_DESCRICAO: TStringField
      FieldName = 'ODP_DESCRICAO'
      Origin = 'ODP_DESCRICAO'
      Size = 30
    end
    object QYOdontogramasOpcoesODP_ESTILO: TStringField
      FieldName = 'ODP_ESTILO'
      Origin = 'ODP_ESTILO'
      Size = 10
    end
    object QYOdontogramasOpcoesODP_PADRAO: TStringField
      FieldName = 'ODP_PADRAO'
      Origin = 'ODP_PADRAO'
      Size = 1
    end
    object QYOdontogramasOpcoesODP_D11: TStringField
      FieldName = 'ODP_D11'
      Origin = 'ODP_D11'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D12: TStringField
      FieldName = 'ODP_D12'
      Origin = 'ODP_D12'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D13: TStringField
      FieldName = 'ODP_D13'
      Origin = 'ODP_D13'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D14: TStringField
      FieldName = 'ODP_D14'
      Origin = 'ODP_D14'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D15: TStringField
      FieldName = 'ODP_D15'
      Origin = 'ODP_D15'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D16: TStringField
      FieldName = 'ODP_D16'
      Origin = 'ODP_D16'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D17: TStringField
      FieldName = 'ODP_D17'
      Origin = 'ODP_D17'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D18: TStringField
      FieldName = 'ODP_D18'
      Origin = 'ODP_D18'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D21: TStringField
      FieldName = 'ODP_D21'
      Origin = 'ODP_D21'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D22: TStringField
      FieldName = 'ODP_D22'
      Origin = 'ODP_D22'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D23: TStringField
      FieldName = 'ODP_D23'
      Origin = 'ODP_D23'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D24: TStringField
      FieldName = 'ODP_D24'
      Origin = 'ODP_D24'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D25: TStringField
      FieldName = 'ODP_D25'
      Origin = 'ODP_D25'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D26: TStringField
      FieldName = 'ODP_D26'
      Origin = 'ODP_D26'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D27: TStringField
      FieldName = 'ODP_D27'
      Origin = 'ODP_D27'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D28: TStringField
      FieldName = 'ODP_D28'
      Origin = 'ODP_D28'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D31: TStringField
      FieldName = 'ODP_D31'
      Origin = 'ODP_D31'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D32: TStringField
      FieldName = 'ODP_D32'
      Origin = 'ODP_D32'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D33: TStringField
      FieldName = 'ODP_D33'
      Origin = 'ODP_D33'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D34: TStringField
      FieldName = 'ODP_D34'
      Origin = 'ODP_D34'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D35: TStringField
      FieldName = 'ODP_D35'
      Origin = 'ODP_D35'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D36: TStringField
      FieldName = 'ODP_D36'
      Origin = 'ODP_D36'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D37: TStringField
      FieldName = 'ODP_D37'
      Origin = 'ODP_D37'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D38: TStringField
      FieldName = 'ODP_D38'
      Origin = 'ODP_D38'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D41: TStringField
      FieldName = 'ODP_D41'
      Origin = 'ODP_D41'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D42: TStringField
      FieldName = 'ODP_D42'
      Origin = 'ODP_D42'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D43: TStringField
      FieldName = 'ODP_D43'
      Origin = 'ODP_D43'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D44: TStringField
      FieldName = 'ODP_D44'
      Origin = 'ODP_D44'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D45: TStringField
      FieldName = 'ODP_D45'
      Origin = 'ODP_D45'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D46: TStringField
      FieldName = 'ODP_D46'
      Origin = 'ODP_D46'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D47: TStringField
      FieldName = 'ODP_D47'
      Origin = 'ODP_D47'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D48: TStringField
      FieldName = 'ODP_D48'
      Origin = 'ODP_D48'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D51: TStringField
      FieldName = 'ODP_D51'
      Origin = 'ODP_D51'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D52: TStringField
      FieldName = 'ODP_D52'
      Origin = 'ODP_D52'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D53: TStringField
      FieldName = 'ODP_D53'
      Origin = 'ODP_D53'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D54: TStringField
      FieldName = 'ODP_D54'
      Origin = 'ODP_D54'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D55: TStringField
      FieldName = 'ODP_D55'
      Origin = 'ODP_D55'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D61: TStringField
      FieldName = 'ODP_D61'
      Origin = 'ODP_D61'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D62: TStringField
      FieldName = 'ODP_D62'
      Origin = 'ODP_D62'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D63: TStringField
      FieldName = 'ODP_D63'
      Origin = 'ODP_D63'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D64: TStringField
      FieldName = 'ODP_D64'
      Origin = 'ODP_D64'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D65: TStringField
      FieldName = 'ODP_D65'
      Origin = 'ODP_D65'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D71: TStringField
      FieldName = 'ODP_D71'
      Origin = 'ODP_D71'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D72: TStringField
      FieldName = 'ODP_D72'
      Origin = 'ODP_D72'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D73: TStringField
      FieldName = 'ODP_D73'
      Origin = 'ODP_D73'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D74: TStringField
      FieldName = 'ODP_D74'
      Origin = 'ODP_D74'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D75: TStringField
      FieldName = 'ODP_D75'
      Origin = 'ODP_D75'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D81: TStringField
      FieldName = 'ODP_D81'
      Origin = 'ODP_D81'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D82: TStringField
      FieldName = 'ODP_D82'
      Origin = 'ODP_D82'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D83: TStringField
      FieldName = 'ODP_D83'
      Origin = 'ODP_D83'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D84: TStringField
      FieldName = 'ODP_D84'
      Origin = 'ODP_D84'
      Size = 80
    end
    object QYOdontogramasOpcoesODP_D85: TStringField
      FieldName = 'ODP_D85'
      Origin = 'ODP_D85'
      Size = 80
    end
  end
  object TROdontogramasOpcoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
