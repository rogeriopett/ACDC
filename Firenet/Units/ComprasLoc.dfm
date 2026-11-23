object FormComprasLoc: TFormComprasLoc
  Left = 208
  Top = 146
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Compras'
  ClientHeight = 429
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
    429)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 386
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Nome:'
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
    Left = 314
    Top = 18
    Width = 52
    Height = 13
    Caption = 'C'#243'd. Forn.:'
  end
  object Label6: TLabel
    Left = 242
    Top = 18
    Width = 41
    Height = 13
    Caption = 'N'#186' Nota:'
  end
  object Label7: TLabel
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel
    Left = 11
    Top = 58
    Width = 87
    Height = 13
    Caption = 'Chave de Acesso:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 99
    Width = 769
    Height = 302
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCompras
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
        FieldName = 'COM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_NOME'
        Title.Caption = 'Nome'
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_DTENTRADA'
        Title.Caption = 'Dt. Entrada'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_NOTANUMERO'
        Title.Caption = 'N'#186' Nota'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_NOTADATA'
        Title.Caption = 'Dt. NF'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 31
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 384
    Top = 32
    Width = 281
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
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
    Left = 312
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'FINALIZADAS'
      'CANCELADAS')
  end
  object MaskEdit3: TMaskEdit
    Left = 8
    Top = 72
    Width = 297
    Height = 21
    EditMask = '!99999999999999999999999999999999999999999999;1;_'
    MaxLength = 44
    TabOrder = 8
    Text = '                                            '
    OnKeyPress = MaskEdit3KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 784
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 9
    object Label9: TLabel
      Left = 8
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Qtde:'
    end
    object DBText1: TDBText
      Left = 42
      Top = 3
      Width = 56
      Height = 13
      DataField = 'QTDE'
      DataSource = DSComprasTotais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 104
      Top = 3
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object DBText2: TDBText
      Left = 138
      Top = 3
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'VALORTOTAL'
      DataSource = DSComprasTotais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DSCompras: TDataSource
    DataSet = QYCompras
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
  object DSComprasTotais: TDataSource
    DataSet = QYComprasTotais
    Left = 128
    Top = 184
  end
  object TRCompras: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYCompras: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCompras
    SQL.Strings = (
      'select '
      'COM_CHAVEACESSO,'
      'COM_CODIGO,'
      'COM_DTENTRADA,'
      'COM_NOME,'
      'COM_NOTADATA,'
      'COM_NOTANUMERO,'
      'COM_STATUS,'
      'COM_VALORTOTAL'
      'from COMPRAS'
      'left join FORNECEDORES on COM_TRANSPORTADORA=FOR_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYComprasCOM_CHAVEACESSO: TStringField
      FieldName = 'COM_CHAVEACESSO'
      Origin = 'COM_CHAVEACESSO'
      Size = 50
    end
    object QYComprasCOM_CODIGO: TIntegerField
      FieldName = 'COM_CODIGO'
      Origin = 'COM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYComprasCOM_DTENTRADA: TDateField
      FieldName = 'COM_DTENTRADA'
      Origin = 'COM_DTENTRADA'
    end
    object QYComprasCOM_NOME: TStringField
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      Size = 80
    end
    object QYComprasCOM_NOTADATA: TDateField
      FieldName = 'COM_NOTADATA'
      Origin = 'COM_NOTADATA'
    end
    object QYComprasCOM_NOTANUMERO: TIntegerField
      FieldName = 'COM_NOTANUMERO'
      Origin = 'COM_NOTANUMERO'
    end
    object QYComprasCOM_STATUS: TStringField
      FieldName = 'COM_STATUS'
      Origin = 'COM_STATUS'
      Size = 1
    end
    object QYComprasCOM_VALORTOTAL: TFMTBCDField
      FieldName = 'COM_VALORTOTAL'
      Origin = 'COM_VALORTOTAL'
      currency = True
      Precision = 18
    end
  end
  object QYComprasTotais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRComprasTotais
    SQL.Strings = (
      'select '
      'count(*) as QTDE,'
      'sum(COM_VALORTOTAL) as VALORTOTAL'
      'from COMPRAS')
    Left = 200
    Top = 184
    object QYComprasTotaisQTDE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYComprasTotaisVALORTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object TRComprasTotais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 184
  end
end
