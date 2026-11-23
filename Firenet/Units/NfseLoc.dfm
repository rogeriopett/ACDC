object FormNfseLoc: TFormNfseLoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar NFSe'
  ClientHeight = 384
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
    384)
  TextHeight = 13
  object Label1: TLabel
    Left = 11
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
    Left = 674
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 769
    Height = 309
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSNfse
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
        FieldName = 'NFS_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_NUMERONOTA'
        Title.Caption = 'Num. Nota'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 380
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_VALORLIQUIDO'
        Title.Caption = 'Valor Liquido'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFS_VENDEDOR'
        Title.Caption = 'Vendedor'
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
    Width = 353
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
    Left = 672
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'FINALIZADAS'
      'CANCELADAS'
      'INUTILIZADAS')
  end
  object DSNfse: TDataSource
    DataSet = QYNfse
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
  object QYNfse: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNfse
    SQL.Strings = (
      'select '
      'NFS_CLIENTE, '
      'NFS_CODIGO, '
      'NFS_DTEMISSAO, '
      'NFS_NUMERONOTA,'
      'NFS_STATUS, '
      'NFS_TOMCIDADE, '
      'NFS_TOMCIDADECODIGO, '
      'NFS_TOMCNPJ,'
      'NFS_TOMCPF,'
      'NFS_TOMESTADO,'
      'NFS_USUARIO, '
      'NFS_VALORLIQUIDO, '
      'NFS_VENDEDOR,'
      'CLI_NOME,'
      'CLI_TIPOPESSOA'
      'from NFSE'
      'left join CLIENTES on NFS_CLIENTE=CLI_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYNfseNFS_CLIENTE: TIntegerField
      FieldName = 'NFS_CLIENTE'
      Origin = 'NFS_CLIENTE'
      Required = True
    end
    object QYNfseNFS_CODIGO: TIntegerField
      FieldName = 'NFS_CODIGO'
      Origin = 'NFS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNfseNFS_DTEMISSAO: TDateField
      FieldName = 'NFS_DTEMISSAO'
      Origin = 'NFS_DTEMISSAO'
    end
    object QYNfseNFS_NUMERONOTA: TIntegerField
      FieldName = 'NFS_NUMERONOTA'
      Origin = 'NFS_NUMERONOTA'
    end
    object QYNfseNFS_STATUS: TStringField
      FieldName = 'NFS_STATUS'
      Origin = 'NFS_STATUS'
      Size = 1
    end
    object QYNfseNFS_TOMCIDADE: TStringField
      FieldName = 'NFS_TOMCIDADE'
      Origin = 'NFS_TOMCIDADE'
      Size = 50
    end
    object QYNfseNFS_TOMCIDADECODIGO: TIntegerField
      FieldName = 'NFS_TOMCIDADECODIGO'
      Origin = 'NFS_TOMCIDADECODIGO'
    end
    object QYNfseNFS_TOMCNPJ: TStringField
      FieldName = 'NFS_TOMCNPJ'
      Origin = 'NFS_TOMCNPJ'
    end
    object QYNfseNFS_TOMCPF: TStringField
      FieldName = 'NFS_TOMCPF'
      Origin = 'NFS_TOMCPF'
    end
    object QYNfseNFS_TOMESTADO: TStringField
      FieldName = 'NFS_TOMESTADO'
      Origin = 'NFS_TOMESTADO'
      Size = 2
    end
    object QYNfseNFS_USUARIO: TStringField
      FieldName = 'NFS_USUARIO'
      Origin = 'NFS_USUARIO'
    end
    object QYNfseNFS_VALORLIQUIDO: TFMTBCDField
      FieldName = 'NFS_VALORLIQUIDO'
      Origin = 'NFS_VALORLIQUIDO'
      currency = True
      Precision = 18
    end
    object QYNfseNFS_VENDEDOR: TIntegerField
      FieldName = 'NFS_VENDEDOR'
      Origin = 'NFS_VENDEDOR'
      Required = True
    end
    object QYNfseCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYNfseCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRNfse: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
