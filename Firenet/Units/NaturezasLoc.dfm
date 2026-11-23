object FormNaturezasLoc: TFormNaturezasLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Naturezas de Opera'#231#227'o'
  ClientHeight = 312
  ClientWidth = 768
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
    768
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 69
    Width = 753
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSNaturezas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'NAT_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 318
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_ENTRADASAIDA'
        Title.Caption = 'E/S'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_MOVIMENTAESTOQUE'
        Title.Caption = 'Mov. Est.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_MOVIMENTAFINANCEIRO'
        Title.Caption = 'Mov. Fin.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_DESTACARIMPOSTOS'
        Title.Caption = 'Dest. Imp.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_CALCULACREDITOSN'
        Title.Caption = 'Calc. Cred. SN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAT_CALCULACOMISSAO'
        Title.Caption = 'Calc. Comiss'#227'o'
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
  object DSNaturezas: TDataSource
    DataSet = QYNaturezas
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
  object QYNaturezas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNaturezas
    SQL.Strings = (
      'select '
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'NAT_CODIGO, '
      'NAT_DESCRICAO, '
      'NAT_DESTACARIMPOSTOS,'
      'NAT_ENTRADASAIDA,'
      'NAT_MOVIMENTAESTOQUE,'
      'NAT_MOVIMENTAFINANCEIRO,'
      'NAT_OBSERVACOES'
      'from NATUREZAS')
    Left = 200
    Top = 120
    object QYNaturezasNAT_CALCULACOMISSAO: TStringField
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      Size = 1
    end
    object QYNaturezasNAT_CALCULACREDITOSN: TStringField
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      Size = 1
    end
    object QYNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Origin = 'NAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNaturezasNAT_DESCRICAO: TStringField
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      Size = 120
    end
    object QYNaturezasNAT_DESTACARIMPOSTOS: TStringField
      FieldName = 'NAT_DESTACARIMPOSTOS'
      Origin = 'NAT_DESTACARIMPOSTOS'
      Size = 1
    end
    object QYNaturezasNAT_ENTRADASAIDA: TStringField
      FieldName = 'NAT_ENTRADASAIDA'
      Origin = 'NAT_ENTRADASAIDA'
      Size = 1
    end
    object QYNaturezasNAT_MOVIMENTAESTOQUE: TStringField
      FieldName = 'NAT_MOVIMENTAESTOQUE'
      Origin = 'NAT_MOVIMENTAESTOQUE'
      Size = 1
    end
    object QYNaturezasNAT_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'NAT_MOVIMENTAFINANCEIRO'
      Origin = 'NAT_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object QYNaturezasNAT_OBSERVACOES: TMemoField
      FieldName = 'NAT_OBSERVACOES'
      Origin = 'NAT_OBSERVACOES'
      BlobType = ftMemo
    end
  end
  object TRNaturezas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 120
  end
end
