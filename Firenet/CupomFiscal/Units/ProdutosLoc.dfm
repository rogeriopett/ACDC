object FormProdutosLoc: TFormProdutosLoc
  Left = 208
  Top = 399
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Produtos'
  ClientHeight = 384
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
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
  object Label3: TLabel
    Left = 338
    Top = 18
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label4: TLabel
    Left = 546
    Top = 18
    Width = 78
    Height = 13
    Caption = 'C'#243'd. Fabricante:'
  end
  object Label5: TLabel
    Left = 658
    Top = 18
    Width = 58
    Height = 13
    Caption = 'C'#243'd. Barras:'
  end
  object Label6: TLabel
    Left = 226
    Top = 18
    Width = 75
    Height = 13
    Caption = 'Palavras Chave'
  end
  object Label7: TLabel
    Left = 442
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 66
    Width = 777
    Height = 311
    DataSource = DSProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'PRO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_CODIGOFAB'
        Title.Caption = 'C'#243'd. Fab.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOME'
        Title.Caption = 'Nome'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_UNIDADE'
        Title.Caption = 'Unid.'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRU_DESCRICAO'
        Title.Caption = 'Grupo'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_ESTOQUEATUAL'
        Title.Caption = 'Qtde Estoque'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECOVENDA'
        Title.Caption = 'Pre'#231'o Venda'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_MARCA'
        Title.Caption = 'C'#243'd. Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAR_DESCRICAO'
        Title.Caption = 'Marca'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO1'
        Title.Caption = 'Tabela 1'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO2'
        Title.Caption = 'Tabela 2'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO3'
        Title.Caption = 'Tabela 3'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO4'
        Title.Caption = 'Tabela 4'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO5'
        Title.Caption = 'Tabela 5'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO6'
        Title.Caption = 'Tabela 6'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_CODIGOBARRAS'
        Title.Caption = 'C'#243'd. Barras'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PALAVRASCHAVE'
        Title.Caption = 'Palavras Chave'
        Width = 260
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
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 687
    Top = 3
    Width = 97
    Height = 17
    TabStop = False
    Caption = '&Somente Ativos'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 336
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 544
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 656
    Top = 32
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 224
    Top = 32
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 440
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit7KeyPress
  end
  object DSProdutos: TDataSource
    DataSet = QYProdutos
    Left = 128
    Top = 120
  end
  object QYProdutos: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO')
    Left = 200
    Top = 120
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 50
    end
    object QYProdutosPRO_ESTOQUEATUAL: TIBBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = '"PRODUTOS"."PRO_ESTOQUEATUAL"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDA: TIBBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"PRODUTOS"."PRO_TIPO"'
      Size = 1
    end
    object QYProdutosPRO_CODIGOFAB: TIBStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = '"PRODUTOS"."PRO_CODIGOFAB"'
    end
    object QYProdutosPRO_CODIGOBARRAS: TIBStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGOBARRAS"'
      Size = 60
    end
    object QYProdutosPRO_FAMILIA: TIntegerField
      FieldName = 'PRO_FAMILIA'
      Origin = '"PRODUTOS"."PRO_FAMILIA"'
      Required = True
    end
    object QYProdutosPRO_GRUPO: TIntegerField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      Required = True
    end
    object QYProdutosPRO_DESCRICAO: TMemoField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYProdutosPRO_CORSABOR: TIBStringField
      FieldName = 'PRO_CORSABOR'
      Origin = '"PRODUTOS"."PRO_CORSABOR"'
    end
    object QYProdutosPRO_TAMANHO: TIBStringField
      FieldName = 'PRO_TAMANHO'
      Origin = '"PRODUTOS"."PRO_TAMANHO"'
    end
    object QYProdutosPRO_LOCALIZACAO: TIBStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = '"PRODUTOS"."PRO_LOCALIZACAO"'
    end
    object QYProdutosPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
    object QYProdutosPRO_ESTOQUEMIN: TIBBCDField
      FieldName = 'PRO_ESTOQUEMIN'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMIN"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ESTOQUEMAX: TIBBCDField
      FieldName = 'PRO_ESTOQUEMAX'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMAX"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMS: TIBBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = '"PRODUTOS"."PRO_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMSRED: TIBBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = '"PRODUTOS"."PRO_ALIQICMSRED"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQIPI: TIBBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = '"PRODUTOS"."PRO_ALIQIPI"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQISS: TIBBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = '"PRODUTOS"."PRO_ALIQISS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQOUTROS: TIBBCDField
      FieldName = 'PRO_ALIQOUTROS'
      Origin = '"PRODUTOS"."PRO_ALIQOUTROS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_COMISSAO: TIBBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = '"PRODUTOS"."PRO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTOULT: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOULT'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOULT"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOMEDIO"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDAULT: TIBBCDField
      FieldName = 'PRO_PRECOVENDAULT'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAULT"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDAMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOVENDAMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAMEDIO"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO1: TIBStringField
      FieldName = 'PRO_TABPRECO1'
      Origin = '"PRODUTOS"."PRO_TABPRECO1"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM1: TIBBCDField
      FieldName = 'PRO_MARGEM1'
      Origin = '"PRODUTOS"."PRO_MARGEM1"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO1: TIBBCDField
      FieldName = 'PRO_PRECO1'
      Origin = '"PRODUTOS"."PRO_PRECO1"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO2: TIBStringField
      FieldName = 'PRO_TABPRECO2'
      Origin = '"PRODUTOS"."PRO_TABPRECO2"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM2: TIBBCDField
      FieldName = 'PRO_MARGEM2'
      Origin = '"PRODUTOS"."PRO_MARGEM2"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO2: TIBBCDField
      FieldName = 'PRO_PRECO2'
      Origin = '"PRODUTOS"."PRO_PRECO2"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO3: TIBStringField
      FieldName = 'PRO_TABPRECO3'
      Origin = '"PRODUTOS"."PRO_TABPRECO3"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM3: TIBBCDField
      FieldName = 'PRO_MARGEM3'
      Origin = '"PRODUTOS"."PRO_MARGEM3"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO3: TIBBCDField
      FieldName = 'PRO_PRECO3'
      Origin = '"PRODUTOS"."PRO_PRECO3"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO4: TIBStringField
      FieldName = 'PRO_TABPRECO4'
      Origin = '"PRODUTOS"."PRO_TABPRECO4"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM4: TIBBCDField
      FieldName = 'PRO_MARGEM4'
      Origin = '"PRODUTOS"."PRO_MARGEM4"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO4: TIBBCDField
      FieldName = 'PRO_PRECO4'
      Origin = '"PRODUTOS"."PRO_PRECO4"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO5: TIBStringField
      FieldName = 'PRO_TABPRECO5'
      Origin = '"PRODUTOS"."PRO_TABPRECO5"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM5: TIBBCDField
      FieldName = 'PRO_MARGEM5'
      Origin = '"PRODUTOS"."PRO_MARGEM5"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO5: TIBBCDField
      FieldName = 'PRO_PRECO5'
      Origin = '"PRODUTOS"."PRO_PRECO5"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO6: TIBStringField
      FieldName = 'PRO_TABPRECO6'
      Origin = '"PRODUTOS"."PRO_TABPRECO6"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM6: TIBBCDField
      FieldName = 'PRO_MARGEM6'
      Origin = '"PRODUTOS"."PRO_MARGEM6"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO6: TIBBCDField
      FieldName = 'PRO_PRECO6'
      Origin = '"PRODUTOS"."PRO_PRECO6"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ATUALIZATABELA: TIBStringField
      FieldName = 'PRO_ATUALIZATABELA'
      Origin = '"PRODUTOS"."PRO_ATUALIZATABELA"'
      Size = 1
    end
    object QYProdutosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 1
    end
    object QYProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object QYProdutosPRO_DTATUALIZACAO: TDateField
      FieldName = 'PRO_DTATUALIZACAO'
      Origin = '"PRODUTOS"."PRO_DTATUALIZACAO"'
    end
    object QYProdutosPRO_USUARIO: TIBStringField
      FieldName = 'PRO_USUARIO'
      Origin = '"PRODUTOS"."PRO_USUARIO"'
    end
    object QYProdutosPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 3
    end
    object QYProdutosGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = '"GRUPOS"."GRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QYProdutosGRU_DESCRICAO: TIBStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = '"GRUPOS"."GRU_DESCRICAO"'
      Size = 50
    end
    object QYProdutosPRO_REGISTROMS: TIBStringField
      FieldName = 'PRO_REGISTROMS'
      Origin = '"PRODUTOS"."PRO_REGISTROMS"'
    end
    object QYProdutosPRO_MARGEM: TIBBCDField
      FieldName = 'PRO_MARGEM'
      Origin = '"PRODUTOS"."PRO_MARGEM"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_COMPOSTO: TIBStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = '"PRODUTOS"."PRO_COMPOSTO"'
      Size = 1
    end
    object QYProdutosPRO_ALIQICMSST: TIBBCDField
      FieldName = 'PRO_ALIQICMSST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_DTULTCOMPRA: TDateField
      FieldName = 'PRO_DTULTCOMPRA'
      Origin = '"PRODUTOS"."PRO_DTULTCOMPRA"'
    end
    object QYProdutosPRO_DTULTVENDA: TDateField
      FieldName = 'PRO_DTULTVENDA'
      Origin = '"PRODUTOS"."PRO_DTULTVENDA"'
    end
    object QYProdutosPRO_INTERNET: TIBStringField
      FieldName = 'PRO_INTERNET'
      Origin = '"PRODUTOS"."PRO_INTERNET"'
      Size = 1
    end
    object QYProdutosPRO_OFERTA: TIBStringField
      FieldName = 'PRO_OFERTA'
      Origin = '"PRODUTOS"."PRO_OFERTA"'
      Size = 1
    end
    object QYProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = '"PRODUTOS"."PRO_CSTICMS"'
    end
    object QYProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = '"PRODUTOS"."PRO_CSTIPI"'
    end
    object QYProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
    end
    object QYProdutosPRO_CSTCOFINS: TIntegerField
      FieldName = 'PRO_CSTCOFINS'
      Origin = '"PRODUTOS"."PRO_CSTCOFINS"'
    end
    object QYProdutosPRO_ALIQPIS: TIBBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = '"PRODUTOS"."PRO_ALIQPIS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQCOFINS: TIBBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ORIGEM: TIBStringField
      FieldName = 'PRO_ORIGEM'
      Origin = '"PRODUTOS"."PRO_ORIGEM"'
    end
    object QYProdutosPRO_MODICMS: TIBStringField
      FieldName = 'PRO_MODICMS'
      Origin = '"PRODUTOS"."PRO_MODICMS"'
      Size = 40
    end
    object QYProdutosPRO_MODICMSST: TIBStringField
      FieldName = 'PRO_MODICMSST'
      Origin = '"PRODUTOS"."PRO_MODICMSST"'
      Size = 40
    end
    object QYProdutosPRO_CSTISS: TIntegerField
      FieldName = 'PRO_CSTISS'
      Origin = '"PRODUTOS"."PRO_CSTISS"'
    end
    object QYProdutosPRO_CLASSFISCAL: TIntegerField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
    end
    object QYProdutosPRO_ALIQPISST: TIBBCDField
      FieldName = 'PRO_ALIQPISST'
      Origin = '"PRODUTOS"."PRO_ALIQPISST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQCOFINSST: TIBBCDField
      FieldName = 'PRO_ALIQCOFINSST'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINSST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMSADICST: TIBBCDField
      FieldName = 'PRO_ALIQICMSADICST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSADICST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
      Required = True
    end
    object QYProdutosPRO_PALAVRASCHAVE: TIBStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = '"PRODUTOS"."PRO_PALAVRASCHAVE"'
      Size = 90
    end
    object QYProdutosPRO_OBSERVACOES: TMemoField
      FieldName = 'PRO_OBSERVACOES'
      Origin = '"PRODUTOS"."PRO_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYProdutosPRO_COMPOEBASEICMS: TIBStringField
      FieldName = 'PRO_COMPOEBASEICMS'
      Origin = '"PRODUTOS"."PRO_COMPOEBASEICMS"'
      Size = 1
    end
    object QYProdutosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = '"MARCAS"."MAR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QYProdutosMAR_DESCRICAO: TIBStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = '"MARCAS"."MAR_DESCRICAO"'
      Size = 50
    end
  end
  object TRProdutos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 168
  end
end
