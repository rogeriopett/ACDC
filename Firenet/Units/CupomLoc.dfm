object FormCupomLoc: TFormCupomLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Cupom'
  ClientHeight = 416
  ClientWidth = 856
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
    856
    416)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 314
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
    Left = 242
    Top = 18
    Width = 60
    Height = 13
    Caption = 'C'#243'd. Cliente:'
  end
  object Label7: TLabel
    Left = 714
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label6: TLabel
    Left = 570
    Top = 18
    Width = 23
    Height = 13
    Caption = 'CCF:'
  end
  object Label8: TLabel
    Left = 642
    Top = 18
    Width = 26
    Height = 13
    Caption = 'COO:'
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 67
    Width = 841
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCupom
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'CUP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_CCF'
        Title.Caption = 'CCF'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_COO'
        Title.Caption = 'COO'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_NFCE'
        Title.Caption = 'NFCe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 297
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_DTEMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_STATUS'
        Title.Caption = 'Status'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_DESCVALOR'
        Title.Caption = 'Desconto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_VALORTOTAL'
        Title.Caption = 'Valor Total'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUP_ECF'
        Title.Caption = 'ECF'
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
    Left = 312
    Top = 32
    Width = 250
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
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
    TabOrder = 4
    Text = '  /  /    '
    OnKeyPress = MaskEdit2KeyPress
  end
  object Edit3: TEdit
    Left = 240
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 712
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODOS'
      'ABERTOS'
      'FINALIZADOS'
      'CANCELADOS')
  end
  object Edit4: TEdit
    Left = 568
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 640
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnKeyPress = Edit5KeyPress
  end
  object DSCupom: TDataSource
    DataSet = QYCupom
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
  object QYCupom: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCupom
    SQL.Strings = (
      'select '
      'CUP_CCF,'
      'CUP_CLIENTE,'
      'CUP_CODIGO,'
      'CUP_COO,'
      'CUP_DESCVALOR,'
      'CUP_DTEMISSAO,'
      'CUP_ECF,'
      'CUP_NFCE,'
      'CUP_STATUS,'
      'CUP_VALORTOTAL,'
      'CUP_VENDEDOR,'
      'CLI_NOME'
      'from CUPOM'
      'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO'
      '')
    Left = 208
    Top = 120
    object QYCupomCUP_CCF: TIntegerField
      FieldName = 'CUP_CCF'
      Origin = 'CUP_CCF'
    end
    object QYCupomCUP_CLIENTE: TIntegerField
      FieldName = 'CUP_CLIENTE'
      Origin = 'CUP_CLIENTE'
      Required = True
    end
    object QYCupomCUP_CODIGO: TIntegerField
      FieldName = 'CUP_CODIGO'
      Origin = 'CUP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCupomCUP_COO: TIntegerField
      FieldName = 'CUP_COO'
      Origin = 'CUP_COO'
    end
    object QYCupomCUP_DESCVALOR: TFMTBCDField
      FieldName = 'CUP_DESCVALOR'
      Origin = 'CUP_DESCVALOR'
      currency = True
      Precision = 18
    end
    object QYCupomCUP_DTEMISSAO: TDateField
      FieldName = 'CUP_DTEMISSAO'
      Origin = 'CUP_DTEMISSAO'
    end
    object QYCupomCUP_ECF: TIntegerField
      FieldName = 'CUP_ECF'
      Origin = 'CUP_ECF'
      Required = True
    end
    object QYCupomCUP_NFCE: TIntegerField
      FieldName = 'CUP_NFCE'
      Origin = 'CUP_NFCE'
    end
    object QYCupomCUP_STATUS: TStringField
      FieldName = 'CUP_STATUS'
      Origin = 'CUP_STATUS'
      Size = 1
    end
    object QYCupomCUP_VALORTOTAL: TFMTBCDField
      FieldName = 'CUP_VALORTOTAL'
      Origin = 'CUP_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYCupomCUP_VENDEDOR: TIntegerField
      FieldName = 'CUP_VENDEDOR'
      Origin = 'CUP_VENDEDOR'
      Required = True
    end
    object QYCupomCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRCupom: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 288
    Top = 120
  end
end
