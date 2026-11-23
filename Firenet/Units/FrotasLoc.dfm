object FormFrotasLoc: TFormFrotasLoc
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Frotas'
  ClientHeight = 408
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    776
    408)
  TextHeight = 13
  object Label2: TLabel
    Left = 306
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 82
    Top = 18
    Width = 30
    Height = 13
    Caption = 'Placa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 434
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 154
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 761
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSFrotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'FRO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_PLACA'
        Title.Caption = 'Placa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_MARCA'
        Title.Caption = 'Marca'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_MODELO'
        Title.Caption = 'Modelo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_RNTC'
        Title.Caption = 'RNTC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_ANOFAB'
        Title.Caption = 'Ano Fab.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRO_ANOMOD'
        Title.Caption = 'Ano Mod.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 432
    Top = 32
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit1: TEdit
    Left = 304
    Top = 32
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 32
    Width = 63
    Height = 21
    CharCase = ecUpperCase
    EditMask = 'lll\-9a99;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 0
    Text = '   -    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object Edit3: TEdit
    Left = 152
    Top = 32
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = Edit4KeyPress
  end
  object DSFrotas: TDataSource
    DataSet = QYFrotas
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
  object QYFrotas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFrotas
    SQL.Strings = (
      'select * from FROTAS')
    Left = 200
    Top = 120
    object QYFrotasFRO_ANOFAB: TStringField
      FieldName = 'FRO_ANOFAB'
      Origin = 'FRO_ANOFAB'
      Size = 4
    end
    object QYFrotasFRO_ANOMOD: TStringField
      FieldName = 'FRO_ANOMOD'
      Origin = 'FRO_ANOMOD'
      Size = 4
    end
    object QYFrotasFRO_CAPACIDADEKG: TFMTBCDField
      FieldName = 'FRO_CAPACIDADEKG'
      Origin = 'FRO_CAPACIDADEKG'
      Precision = 18
      Size = 3
    end
    object QYFrotasFRO_CAPACIDADEM3: TFMTBCDField
      FieldName = 'FRO_CAPACIDADEM3'
      Origin = 'FRO_CAPACIDADEM3'
      Precision = 18
    end
    object QYFrotasFRO_CIDADE: TStringField
      FieldName = 'FRO_CIDADE'
      Origin = 'FRO_CIDADE'
      Size = 50
    end
    object QYFrotasFRO_CNPJ: TStringField
      FieldName = 'FRO_CNPJ'
      Origin = 'FRO_CNPJ'
    end
    object QYFrotasFRO_CODIGO: TIntegerField
      FieldName = 'FRO_CODIGO'
      Origin = 'FRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFrotasFRO_CPF: TStringField
      FieldName = 'FRO_CPF'
      Origin = 'FRO_CPF'
    end
    object QYFrotasFRO_DESCRICAO: TStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = 'FRO_DESCRICAO'
      Size = 50
    end
    object QYFrotasFRO_DTATUALIZACAO: TDateField
      FieldName = 'FRO_DTATUALIZACAO'
      Origin = 'FRO_DTATUALIZACAO'
    end
    object QYFrotasFRO_DTCADASTRO: TDateField
      FieldName = 'FRO_DTCADASTRO'
      Origin = 'FRO_DTCADASTRO'
    end
    object QYFrotasFRO_ESTADO: TStringField
      FieldName = 'FRO_ESTADO'
      Origin = 'FRO_ESTADO'
      Size = 2
    end
    object QYFrotasFRO_ESTADOPROPRIETARIO: TStringField
      FieldName = 'FRO_ESTADOPROPRIETARIO'
      Origin = 'FRO_ESTADOPROPRIETARIO'
      Size = 2
    end
    object QYFrotasFRO_HRATUALIZACAO: TTimeField
      FieldName = 'FRO_HRATUALIZACAO'
      Origin = 'FRO_HRATUALIZACAO'
    end
    object QYFrotasFRO_HRCADASTRO: TTimeField
      FieldName = 'FRO_HRCADASTRO'
      Origin = 'FRO_HRCADASTRO'
    end
    object QYFrotasFRO_IE: TStringField
      FieldName = 'FRO_IE'
      Origin = 'FRO_IE'
    end
    object QYFrotasFRO_MARCA: TStringField
      FieldName = 'FRO_MARCA'
      Origin = 'FRO_MARCA'
      Size = 40
    end
    object QYFrotasFRO_MODELO: TStringField
      FieldName = 'FRO_MODELO'
      Origin = 'FRO_MODELO'
      Size = 40
    end
    object QYFrotasFRO_NOME: TStringField
      FieldName = 'FRO_NOME'
      Origin = 'FRO_NOME'
      Size = 80
    end
    object QYFrotasFRO_PLACA: TStringField
      FieldName = 'FRO_PLACA'
      Origin = 'FRO_PLACA'
      Size = 10
    end
    object QYFrotasFRO_RENAVAM: TStringField
      FieldName = 'FRO_RENAVAM'
      Origin = 'FRO_RENAVAM'
    end
    object QYFrotasFRO_RNTRC: TStringField
      FieldName = 'FRO_RNTRC'
      Origin = 'FRO_RNTRC'
    end
    object QYFrotasFRO_STATUS: TStringField
      FieldName = 'FRO_STATUS'
      Origin = 'FRO_STATUS'
      Size = 1
    end
    object QYFrotasFRO_TARA: TFMTBCDField
      FieldName = 'FRO_TARA'
      Origin = 'FRO_TARA'
      Precision = 18
      Size = 3
    end
    object QYFrotasFRO_TIPOCARROCERIA: TStringField
      FieldName = 'FRO_TIPOCARROCERIA'
      Origin = 'FRO_TIPOCARROCERIA'
    end
    object QYFrotasFRO_TIPOPROPRIEDADE: TStringField
      FieldName = 'FRO_TIPOPROPRIEDADE'
      Origin = 'FRO_TIPOPROPRIEDADE'
      Size = 25
    end
    object QYFrotasFRO_TIPOPROPRIETARIO: TStringField
      FieldName = 'FRO_TIPOPROPRIETARIO'
      Origin = 'FRO_TIPOPROPRIETARIO'
      Size = 25
    end
    object QYFrotasFRO_TIPORODADO: TStringField
      FieldName = 'FRO_TIPORODADO'
      Origin = 'FRO_TIPORODADO'
    end
    object QYFrotasFRO_TIPOVEICULO: TStringField
      FieldName = 'FRO_TIPOVEICULO'
      Origin = 'FRO_TIPOVEICULO'
    end
    object QYFrotasFRO_USUARIO: TStringField
      FieldName = 'FRO_USUARIO'
      Origin = 'FRO_USUARIO'
    end
  end
  object TRFrotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
