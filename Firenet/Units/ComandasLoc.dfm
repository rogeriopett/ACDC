object FormComandasLoc: TFormComandasLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Comandas'
  ClientHeight = 368
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
  DesignSize = (
    784
    368)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 155
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 235
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 314
    Top = 18
    Width = 56
    Height = 13
    Caption = 'C'#243'd. Vend.:'
  end
  object Label2: TLabel
    Left = 386
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label7: TLabel
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 82
    Top = 18
    Width = 48
    Height = 13
    Caption = 'Comanda:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSComandas
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
        FieldName = 'CMD_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_COMANDA'
        Title.Caption = 'Comanda'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_TOTALITENS'
        Title.Caption = 'Valor Itens'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_VALORCOMISSAO'
        Title.Caption = 'Valor Comiss'#227'o'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_VALORPAGO'
        Title.Caption = 'Valor Pago'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_VALORPAGAR'
        Title.Caption = 'Valor Pagar'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMD_DATABAIXA'
        Title.Caption = 'Dt. Baixa'
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
    Left = 152
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
    Left = 232
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
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
  object Edit2: TEdit
    Left = 384
    Top = 32
    Width = 281
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object ComboBox1: TComboBox
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'BAIXADAS'
      'CANCELADAS')
  end
  object Edit4: TEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit4KeyPress
  end
  object DSComandas: TDataSource
    DataSet = QYComandas
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object TRComandas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYComandas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRComandas
    SQL.Strings = (
      'select * from COMANDAS'
      'left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYComandasCMD_CLIENTE: TIntegerField
      FieldName = 'CMD_CLIENTE'
      Origin = 'CMD_CLIENTE'
      Required = True
    end
    object QYComandasCMD_CODIGO: TIntegerField
      FieldName = 'CMD_CODIGO'
      Origin = 'CMD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYComandasCMD_COMANDA: TIntegerField
      FieldName = 'CMD_COMANDA'
      Origin = 'CMD_COMANDA'
      Required = True
    end
    object QYComandasCMD_COMISSAO: TFMTBCDField
      FieldName = 'CMD_COMISSAO'
      Origin = 'CMD_COMISSAO'
      Precision = 18
    end
    object QYComandasCMD_DATA: TDateField
      FieldName = 'CMD_DATA'
      Origin = 'CMD_DATA'
    end
    object QYComandasCMD_DATABAIXA: TDateField
      FieldName = 'CMD_DATABAIXA'
      Origin = 'CMD_DATABAIXA'
    end
    object QYComandasCMD_DESCPORC: TFMTBCDField
      FieldName = 'CMD_DESCPORC'
      Origin = 'CMD_DESCPORC'
      Precision = 18
    end
    object QYComandasCMD_DESCVALOR: TFMTBCDField
      FieldName = 'CMD_DESCVALOR'
      Origin = 'CMD_DESCVALOR'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_DINHEIRO: TFMTBCDField
      FieldName = 'CMD_DINHEIRO'
      Origin = 'CMD_DINHEIRO'
      Precision = 18
    end
    object QYComandasCMD_DTATUALIZACAO: TDateField
      FieldName = 'CMD_DTATUALIZACAO'
      Origin = 'CMD_DTATUALIZACAO'
    end
    object QYComandasCMD_DTCADASTRO: TDateField
      FieldName = 'CMD_DTCADASTRO'
      Origin = 'CMD_DTCADASTRO'
    end
    object QYComandasCMD_HORAFIM: TTimeField
      FieldName = 'CMD_HORAFIM'
      Origin = 'CMD_HORAFIM'
    end
    object QYComandasCMD_HORAFIMMIN: TIntegerField
      FieldName = 'CMD_HORAFIMMIN'
      Origin = 'CMD_HORAFIMMIN'
    end
    object QYComandasCMD_HORAINICIO: TTimeField
      FieldName = 'CMD_HORAINICIO'
      Origin = 'CMD_HORAINICIO'
    end
    object QYComandasCMD_HORAINICIOMIN: TIntegerField
      FieldName = 'CMD_HORAINICIOMIN'
      Origin = 'CMD_HORAINICIOMIN'
    end
    object QYComandasCMD_HRATUALIZACAO: TTimeField
      FieldName = 'CMD_HRATUALIZACAO'
      Origin = 'CMD_HRATUALIZACAO'
    end
    object QYComandasCMD_HRCADASTRO: TTimeField
      FieldName = 'CMD_HRCADASTRO'
      Origin = 'CMD_HRCADASTRO'
    end
    object QYComandasCMD_OBSERVACOES: TMemoField
      FieldName = 'CMD_OBSERVACOES'
      Origin = 'CMD_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYComandasCMD_SEQUENCIAITEM: TIntegerField
      FieldName = 'CMD_SEQUENCIAITEM'
      Origin = 'CMD_SEQUENCIAITEM'
    end
    object QYComandasCMD_STATUS: TStringField
      FieldName = 'CMD_STATUS'
      Origin = 'CMD_STATUS'
      Size = 1
    end
    object QYComandasCMD_TEMPOTOTAL: TStringField
      FieldName = 'CMD_TEMPOTOTAL'
      Origin = 'CMD_TEMPOTOTAL'
      Size = 25
    end
    object QYComandasCMD_TEMPOTOTALDEC: TFMTBCDField
      FieldName = 'CMD_TEMPOTOTALDEC'
      Origin = 'CMD_TEMPOTOTALDEC'
      Precision = 18
    end
    object QYComandasCMD_TEMPOTOTALMIN: TIntegerField
      FieldName = 'CMD_TEMPOTOTALMIN'
      Origin = 'CMD_TEMPOTOTALMIN'
    end
    object QYComandasCMD_TOTALITENS: TFMTBCDField
      FieldName = 'CMD_TOTALITENS'
      Origin = 'CMD_TOTALITENS'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_TROCO: TFMTBCDField
      FieldName = 'CMD_TROCO'
      Origin = 'CMD_TROCO'
      Precision = 18
    end
    object QYComandasCMD_USUARIO: TStringField
      FieldName = 'CMD_USUARIO'
      Origin = 'CMD_USUARIO'
    end
    object QYComandasCMD_VALORCOMISSAO: TFMTBCDField
      FieldName = 'CMD_VALORCOMISSAO'
      Origin = 'CMD_VALORCOMISSAO'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_VALORPAGAR: TFMTBCDField
      FieldName = 'CMD_VALORPAGAR'
      Origin = 'CMD_VALORPAGAR'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_VALORPAGO: TFMTBCDField
      FieldName = 'CMD_VALORPAGO'
      Origin = 'CMD_VALORPAGO'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_VALORTOTAL: TFMTBCDField
      FieldName = 'CMD_VALORTOTAL'
      Origin = 'CMD_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYComandasCMD_VENDEDOR: TIntegerField
      FieldName = 'CMD_VENDEDOR'
      Origin = 'CMD_VENDEDOR'
      Required = True
    end
    object QYComandasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
