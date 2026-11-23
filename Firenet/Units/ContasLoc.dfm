object FormContasLoc: TFormContasLoc
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Contas'
  ClientHeight = 352
  ClientWidth = 776
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
    776
    352)
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 761
    Height = 278
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSContas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'CON_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_CONTA'
        Title.Caption = 'Conta'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_BANCO'
        Title.Caption = 'C'#243'd. Banco'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_NOME'
        Title.Caption = 'Banco'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_SALDO'
        Title.Caption = 'Saldo'
        Width = 104
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
    Left = 80
    Top = 32
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DSContas: TDataSource
    DataSet = QYContas
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
  object TRContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
  object QYContas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRContas
    SQL.Strings = (
      'select '
      'CON_AGENCIA, '
      'CON_AGENCIADIGITO, '
      'CON_BAIXACODIGO,'
      'CON_BANCO, '
      'CON_CARTEIRA, '
      'CON_CEDENTE, '
      'CON_CEDENTEDIGITO, '
      'CON_CEDENTENOME, '
      'CON_CODIGO, '
      'CON_CONTA, '
      'CON_CONTADIGITO, '
      'CON_CONVENIO,'
      'CON_DESCONTOTIPO, '
      'CON_DIASBAIXA, '
      'CON_DIASPROTESTO, '
      'CON_ESPECIE, '
      'CON_INSTRUCAO1, '
      'CON_INSTRUCAO2, '
      'CON_INSTRUCAO3,'
      'CON_INSTRUCAO4, '
      'CON_INSTRUCAO5, '
      'CON_LOCALPAGTO, '
      'CON_MODALIDADE,'
      'CON_MORACODIGO, '
      'CON_MORAJUROS,'
      'CON_MORATIPO, '
      'CON_MULTA, '
      'CON_MULTATIPO,'
      'CON_NOME, '
      'CON_PROTESTOCODIGO,'
      'CON_PROTESTOTIPO, '
      'CON_SALDO, '
      'CON_VALORBOLETO, '
      'BAN_NOME '
      'from CONTAS'
      'left join BANCOS on CON_BANCO=BAN_CODIGO')
    Left = 200
    Top = 120
    object QYContasCON_AGENCIA: TStringField
      FieldName = 'CON_AGENCIA'
      Origin = 'CON_AGENCIA'
      Size = 10
    end
    object QYContasCON_AGENCIADIGITO: TIntegerField
      FieldName = 'CON_AGENCIADIGITO'
      Origin = 'CON_AGENCIADIGITO'
    end
    object QYContasCON_BAIXACODIGO: TIntegerField
      FieldName = 'CON_BAIXACODIGO'
      Origin = 'CON_BAIXACODIGO'
    end
    object QYContasCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
      Required = True
    end
    object QYContasCON_CARTEIRA: TStringField
      FieldName = 'CON_CARTEIRA'
      Origin = 'CON_CARTEIRA'
      Size = 10
    end
    object QYContasCON_CEDENTE: TStringField
      FieldName = 'CON_CEDENTE'
      Origin = 'CON_CEDENTE'
    end
    object QYContasCON_CEDENTEDIGITO: TIntegerField
      FieldName = 'CON_CEDENTEDIGITO'
      Origin = 'CON_CEDENTEDIGITO'
    end
    object QYContasCON_CEDENTENOME: TStringField
      FieldName = 'CON_CEDENTENOME'
      Origin = 'CON_CEDENTENOME'
      Size = 80
    end
    object QYContasCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
      Origin = 'CON_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContasCON_CONTA: TStringField
      FieldName = 'CON_CONTA'
      Origin = 'CON_CONTA'
      Size = 15
    end
    object QYContasCON_CONTADIGITO: TIntegerField
      FieldName = 'CON_CONTADIGITO'
      Origin = 'CON_CONTADIGITO'
    end
    object QYContasCON_CONVENIO: TStringField
      FieldName = 'CON_CONVENIO'
      Origin = 'CON_CONVENIO'
    end
    object QYContasCON_DESCONTOTIPO: TStringField
      FieldName = 'CON_DESCONTOTIPO'
      Origin = 'CON_DESCONTOTIPO'
      Size = 15
    end
    object QYContasCON_DIASBAIXA: TIntegerField
      FieldName = 'CON_DIASBAIXA'
      Origin = 'CON_DIASBAIXA'
    end
    object QYContasCON_DIASPROTESTO: TIntegerField
      FieldName = 'CON_DIASPROTESTO'
      Origin = 'CON_DIASPROTESTO'
    end
    object QYContasCON_ESPECIE: TStringField
      FieldName = 'CON_ESPECIE'
      Origin = 'CON_ESPECIE'
      Size = 5
    end
    object QYContasCON_INSTRUCAO1: TStringField
      FieldName = 'CON_INSTRUCAO1'
      Origin = 'CON_INSTRUCAO1'
      Size = 100
    end
    object QYContasCON_INSTRUCAO2: TStringField
      FieldName = 'CON_INSTRUCAO2'
      Origin = 'CON_INSTRUCAO2'
      Size = 100
    end
    object QYContasCON_INSTRUCAO3: TStringField
      FieldName = 'CON_INSTRUCAO3'
      Origin = 'CON_INSTRUCAO3'
      Size = 100
    end
    object QYContasCON_INSTRUCAO4: TStringField
      FieldName = 'CON_INSTRUCAO4'
      Origin = 'CON_INSTRUCAO4'
      Size = 100
    end
    object QYContasCON_INSTRUCAO5: TStringField
      FieldName = 'CON_INSTRUCAO5'
      Origin = 'CON_INSTRUCAO5'
      Size = 100
    end
    object QYContasCON_LOCALPAGTO: TStringField
      FieldName = 'CON_LOCALPAGTO'
      Origin = 'CON_LOCALPAGTO'
      Size = 120
    end
    object QYContasCON_MODALIDADE: TIntegerField
      FieldName = 'CON_MODALIDADE'
      Origin = 'CON_MODALIDADE'
    end
    object QYContasCON_MORACODIGO: TStringField
      FieldName = 'CON_MORACODIGO'
      Origin = 'CON_MORACODIGO'
      Size = 5
    end
    object QYContasCON_MORAJUROS: TFMTBCDField
      FieldName = 'CON_MORAJUROS'
      Origin = 'CON_MORAJUROS'
      Precision = 18
    end
    object QYContasCON_MORATIPO: TStringField
      FieldName = 'CON_MORATIPO'
      Origin = 'CON_MORATIPO'
      Size = 15
    end
    object QYContasCON_MULTA: TFMTBCDField
      FieldName = 'CON_MULTA'
      Origin = 'CON_MULTA'
      Precision = 18
    end
    object QYContasCON_MULTATIPO: TStringField
      FieldName = 'CON_MULTATIPO'
      Origin = 'CON_MULTATIPO'
      Size = 10
    end
    object QYContasCON_NOME: TStringField
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      Required = True
      Size = 80
    end
    object QYContasCON_PROTESTOCODIGO: TIntegerField
      FieldName = 'CON_PROTESTOCODIGO'
      Origin = 'CON_PROTESTOCODIGO'
    end
    object QYContasCON_PROTESTOTIPO: TStringField
      FieldName = 'CON_PROTESTOTIPO'
      Origin = 'CON_PROTESTOTIPO'
    end
    object QYContasCON_SALDO: TFMTBCDField
      FieldName = 'CON_SALDO'
      Origin = 'CON_SALDO'
      currency = True
      Precision = 18
    end
    object QYContasCON_VALORBOLETO: TFMTBCDField
      FieldName = 'CON_VALORBOLETO'
      Origin = 'CON_VALORBOLETO'
      Precision = 18
    end
    object QYContasBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
