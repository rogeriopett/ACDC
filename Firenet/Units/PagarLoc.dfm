object FormPagarLoc: TFormPagarLoc
  Left = 159
  Top = 200
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Contas a Pagar'
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
  object Label2: TLabel
    Left = 402
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label3: TLabel
    Left = 162
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 242
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 8
    Top = 342
    Width = 27
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Total:'
    ExplicitTop = 302
  end
  object DBText1: TDBText
    Left = 40
    Top = 342
    Width = 113
    Height = 13
    Anchors = [akLeft, akBottom]
    DataField = 'VALOR'
    DataSource = DSTotalPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 302
  end
  object Label6: TLabel
    Left = 82
    Top = 18
    Width = 60
    Height = 13
    Caption = 'Num. Docto:'
  end
  object Label7: TLabel
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel
    Left = 322
    Top = 18
    Width = 52
    Height = 13
    Caption = 'C'#243'd. Forn.:'
  end
  object Label9: TLabel
    Left = 586
    Top = 18
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 269
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSPagar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 8
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
        FieldName = 'PAG_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_NUMDOCTO'
        Title.Caption = 'Num. Docto'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_PARCELAQTDE'
        Title.Caption = 'TP'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_DTVENCIMENTO'
        Title.Caption = 'Dt. Venc.'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_VALOR'
        Title.Caption = 'Valor'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_STATUS'
        Title.Caption = 'Status'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_NOME'
        Title.Caption = 'Fornecedor'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_TIPODOCTO'
        Title.Caption = 'Tipo Docto'
        Width = 94
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
    Left = 400
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 160
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
    Left = 240
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
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
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
      'BAIXADAS'
      'CANCELADAS')
  end
  object Edit4: TEdit
    Left = 320
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 584
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit5KeyPress
  end
  object DSPagar: TDataSource
    DataSet = QYPagar
    Left = 128
    Top = 120
  end
  object DSTotalPagar: TDataSource
    DataSet = QYTotalPagar
    Left = 128
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYPagar: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPagar
    SQL.Strings = (
      'select * from PAGAR'
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO'
      '')
    Left = 232
    Top = 120
    object QYPagarPAG_CODIGO: TIntegerField
      FieldName = 'PAG_CODIGO'
      Origin = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYPagarPAG_CONTA: TIntegerField
      FieldName = 'PAG_CONTA'
      Origin = 'PAG_CONTA'
      Required = True
    end
    object QYPagarPAG_DESCRICAO: TStringField
      FieldName = 'PAG_DESCRICAO'
      Origin = 'PAG_DESCRICAO'
      Size = 50
    end
    object QYPagarPAG_DESPESA: TIntegerField
      FieldName = 'PAG_DESPESA'
      Origin = 'PAG_DESPESA'
      Required = True
    end
    object QYPagarPAG_DIASATRASO: TIntegerField
      FieldName = 'PAG_DIASATRASO'
      Origin = 'PAG_DIASATRASO'
    end
    object QYPagarPAG_DIASPRAZO: TIntegerField
      FieldName = 'PAG_DIASPRAZO'
      Origin = 'PAG_DIASPRAZO'
    end
    object QYPagarPAG_DTATUALIZACAO: TDateField
      FieldName = 'PAG_DTATUALIZACAO'
      Origin = 'PAG_DTATUALIZACAO'
    end
    object QYPagarPAG_DTCADASTRO: TDateField
      FieldName = 'PAG_DTCADASTRO'
      Origin = 'PAG_DTCADASTRO'
    end
    object QYPagarPAG_DTEMISSAO: TDateField
      FieldName = 'PAG_DTEMISSAO'
      Origin = 'PAG_DTEMISSAO'
    end
    object QYPagarPAG_DTJUROSAPOS: TDateField
      FieldName = 'PAG_DTJUROSAPOS'
      Origin = 'PAG_DTJUROSAPOS'
    end
    object QYPagarPAG_DTPAGAMENTO: TDateField
      FieldName = 'PAG_DTPAGAMENTO'
      Origin = 'PAG_DTPAGAMENTO'
    end
    object QYPagarPAG_DTVENCIMENTO: TDateField
      FieldName = 'PAG_DTVENCIMENTO'
      Origin = 'PAG_DTVENCIMENTO'
    end
    object QYPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      Origin = 'PAG_FORNECEDOR'
      Required = True
    end
    object QYPagarPAG_JUROSPAGO: TFMTBCDField
      FieldName = 'PAG_JUROSPAGO'
      Origin = 'PAG_JUROSPAGO'
      Precision = 18
    end
    object QYPagarPAG_MULTAPAGO: TFMTBCDField
      FieldName = 'PAG_MULTAPAGO'
      Origin = 'PAG_MULTAPAGO'
      Precision = 18
    end
    object QYPagarPAG_NUMDOCTO: TStringField
      FieldName = 'PAG_NUMDOCTO'
      Origin = 'PAG_NUMDOCTO'
    end
    object QYPagarPAG_OBSERVACOES: TMemoField
      FieldName = 'PAG_OBSERVACOES'
      Origin = 'PAG_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYPagarPAG_PARCELAQTDE: TIntegerField
      FieldName = 'PAG_PARCELAQTDE'
      Origin = 'PAG_PARCELAQTDE'
    end
    object QYPagarPAG_PORCJUROS: TFMTBCDField
      FieldName = 'PAG_PORCJUROS'
      Origin = 'PAG_PORCJUROS'
      Precision = 18
    end
    object QYPagarPAG_STATUS: TStringField
      FieldName = 'PAG_STATUS'
      Origin = 'PAG_STATUS'
      Size = 1
    end
    object QYPagarPAG_TIPODOCTO: TStringField
      FieldName = 'PAG_TIPODOCTO'
      Origin = 'PAG_TIPODOCTO'
    end
    object QYPagarPAG_USUARIO: TStringField
      FieldName = 'PAG_USUARIO'
      Origin = 'PAG_USUARIO'
    end
    object QYPagarPAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      Origin = 'PAG_VALOR'
      currency = True
      Precision = 18
    end
    object QYPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      Origin = 'PAG_VALORJUROS'
      currency = True
      Precision = 18
    end
    object QYPagarPAG_VALORMULTA: TFMTBCDField
      FieldName = 'PAG_VALORMULTA'
      Origin = 'PAG_VALORMULTA'
      currency = True
      Precision = 18
    end
    object QYPagarPAG_VALORORIGINAL: TFMTBCDField
      FieldName = 'PAG_VALORORIGINAL'
      Origin = 'PAG_VALORORIGINAL'
      currency = True
      Precision = 18
    end
    object QYPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      Origin = 'PAG_VALORPAGO'
      currency = True
      Precision = 18
    end
    object QYPagarFOR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRPagar: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 120
  end
  object QYTotalPagar: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTotalPagar
    SQL.Strings = (
      'select sum(PAG_VALOR) as VALOR from PAGAR'
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO'
      '')
    Left = 232
    Top = 168
    object QYTotalPagarVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object TRTotalPagar: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 168
  end
end
