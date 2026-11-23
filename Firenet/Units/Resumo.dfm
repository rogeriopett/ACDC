object FormResumo: TFormResumo
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  Caption = 'Resumo'
  ClientHeight = 530
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 12
    Width = 112
    Height = 13
    Caption = 'Resumo do per'#237'odo de:'
  end
  object Label3: TLabel
    Left = 227
    Top = 12
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 38
    Width = 776
    Height = 492
    ActivePage = TabSheet1
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Pagar/Receber'
      object Splitter1: TSplitter
        Left = 0
        Top = 228
        Width = 768
        Height = 7
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        Beveled = True
        ResizeStyle = rsUpdate
        ExplicitWidth = 776
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 768
        Height = 228
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 768
          Height = 205
          Align = alClient
          DataSource = DSReceber
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'REE_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_NUMDOCTO'
              Title.Caption = 'Num. Docto'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_PARCELAQTDE'
              Title.Caption = 'TP'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_DTEMISSAO'
              Title.Caption = 'Dt. Emiss'#227'o'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_DTVENCIMENTO'
              Title.Caption = 'Dt. Venc.'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_VALOR'
              Title.Caption = 'Valor'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_VALORACESSORIAS'
              Title.Caption = 'Valor Acess.'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_STATUS'
              Title.Caption = 'Status'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_NOME'
              Title.Caption = 'Cliente'
              Width = 223
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REE_TIPODOCTO'
              Title.Caption = 'Tipo Docto'
              Width = 85
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 205
          Width = 768
          Height = 23
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 4
            Width = 73
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total Receber:'
          end
          object DBText1: TDBText
            Left = 88
            Top = 4
            Width = 113
            Height = 13
            DataField = 'VALOR'
            DataSource = DSTotalReceber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 235
        Width = 768
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 768
          Height = 205
          Align = alClient
          DataSource = DSPagar
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
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
        object Panel4: TPanel
          Left = 0
          Top = 205
          Width = 768
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object DBText2: TDBText
            Left = 88
            Top = 4
            Width = 113
            Height = 13
            DataField = 'VALOR'
            DataSource = DSTotalPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 8
            Top = 4
            Width = 73
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total Pagar:'
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pedidos'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 440
        Align = alClient
        DataSource = DSVendas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'VED_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_NOME'
            Title.Caption = 'Nome'
            Width = 302
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_DTEMISSAO'
            Title.Caption = 'Dt. Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_VENDEDOR'
            Title.Caption = 'Vendedor'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_VALORTOTAL'
            Title.Caption = 'Valor Total'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VED_USUARIO'
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 440
        Width = 768
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 4
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Abertos:'
        end
        object DBText3: TDBText
          Left = 88
          Top = 4
          Width = 113
          Height = 13
          DataField = 'ABERTAS'
          DataSource = DSTotalVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 304
          Top = 4
          Width = 113
          Height = 13
          DataField = 'FINALIZADAS'
          DataSource = DSTotalVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 208
          Top = 4
          Width = 89
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Finalizados:'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'NFe'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 440
        Width = 768
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 4
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Abertas:'
        end
        object DBText5: TDBText
          Left = 88
          Top = 4
          Width = 113
          Height = 13
          DataField = 'ABERTAS'
          DataSource = DSTotalNfe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 304
          Top = 4
          Width = 113
          Height = 13
          DataField = 'FINALIZADAS'
          DataSource = DSTotalNfe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 208
          Top = 4
          Width = 89
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Finalizadas:'
        end
        object Label9: TLabel
          Left = 432
          Top = 4
          Width = 89
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Canceladas:'
        end
        object DBText7: TDBText
          Left = 528
          Top = 4
          Width = 113
          Height = 13
          DataField = 'CANCELADAS'
          DataSource = DSTotalNfe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 440
        Align = alClient
        DataSource = DSNfe
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NFE_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_NOME'
            Title.Caption = 'Nome'
            Width = 302
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_DTEMISSAO'
            Title.Caption = 'Dt. Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_VENDEDOR'
            Title.Caption = 'Vendedor'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_VALORTOTAL'
            Title.Caption = 'Valor Total'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_USUARIO'
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 3
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 464
        Align = alClient
        DataSource = DSClientes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_VENDEDOR'
            Title.Caption = 'Vend.'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_TELEVENDA'
            Title.Caption = 'TeleV.'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_BAIRRO'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FANTASIA'
            Title.Caption = 'Nome Fantasia'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_SETOR'
            Title.Caption = 'Setor'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE1'
            Title.Caption = 'Fone 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE2'
            Title.Caption = 'Fone 2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE3'
            Title.Caption = 'Fone 3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CPF'
            Title.Caption = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CNPJ'
            Title.Caption = 'CNPJ'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 4
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 464
        Align = alClient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
            Width = 226
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
            FieldName = 'PRO_DTCADASTRO'
            Title.Caption = 'Dt. Cadastro'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Cheques'
      ImageIndex = 5
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 464
        Align = alClient
        DataSource = DSCheques
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CHE_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_BANCO'
            Title.Caption = 'Banco'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_BOMPARA'
            Title.Caption = 'Bom Para'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_CLIENTE'
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_DTCADASTRO'
            Title.Caption = 'Dt. Cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_NOME'
            Title.Caption = 'Nome no Cheque'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_PREDATADO'
            Title.Caption = 'Pr'#233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_VALOR'
            Title.Caption = 'Valor'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome Cliente'
            Visible = True
          end>
      end
    end
  end
  object MaskEdit1: TMaskEdit
    Left = 136
    Top = 8
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 248
    Top = 8
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object PngBitBtn1: TPngBitBtn
    Left = 344
    Top = 8
    Width = 97
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = PngBitBtn1Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002A744558744372656174696F6E2054696D65004D6F2033204D727A20
      323030332032323A34323A3130202B30313030FF26557B0000000774494D4507
      D304021031162958BBF9000000097048597300000AF000000AF00142AC349800
      0001B54944415478DABD93DD2B43611CC7BF67E78CBC262FF39A5C284A286B8C
      92BF80A294524AEC4252A670E33FF00728E54A7999C85B335A5ECA950B454B29
      63C734660BDB313B7BCECBE370B192B012CFE5F3FC3E9F8BEFEFFB30F8E561FE
      57308D628660554FB92412927B308193C4054BC86783CCC168BDA5E2F8F110CE
      E333973A86EAC404CBC8C32DF6461BFAAB9CBE35501D03D759D02F8FAB057141
      F969568D1C54CA3CE7C22606A0C6E105643301EC5A1BFA6AF76E3721EB145CB8
      C3D128256DB0C2F92E28DFCEB4D4A599A64451607784A319B11D16ED9AC2862C
      DCC13962EE33BEC11214B83D61319A4ADE261CF110CD1B95FEEABC22032FB8E1
      135FE00A05A6F18031EDD56135F59AF7FD0E485A7A5797422CA2271D1884FDC3
      160CB3E9EB95B939AD1CCB4055296E9EC270FB9EEE871B7B0D07812DC42881C7
      239008473A3578FDF31A17918A10ECC682C296648E05516414A694C0FBEC0581
      0C9E17240DEED2E095AF7BB086747861AF293234B31C8398A4807214D7BC2047
      58D2ADC1B69F8B348B0C04E0A828CD69E29275F0F221394C490F86309F781327
      918928E6F549AC51D229235A9473DF55E49FFFC25F085E01B075B81134FC22DB
      0000000049454E44AE426082}
  end
  object PngBitBtn2: TPngBitBtn
    Left = 448
    Top = 8
    Width = 97
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = PngBitBtn2Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      6100000A3769434350735247422049454336313936362D322E310000789C9D96
      775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
      90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
      70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
      05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
      F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
      0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
      569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
      91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
      53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
      24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
      E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
      965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
      FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
      2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
      C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
      B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
      407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
      B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
      13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
      9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
      9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
      940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
      6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
      B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
      917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
      940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
      A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
      318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
      C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
      E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
      2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
      8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
      46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
      5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
      A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
      28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
      6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
      3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
      7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
      3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
      AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
      31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
      FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
      1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
      6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
      4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
      9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
      CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
      D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
      A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
      5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
      67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
      85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
      0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
      96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
      44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
      C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
      F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
      EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
      C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
      FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
      CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
      7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
      BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
      8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
      DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
      572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
      5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
      A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
      B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
      CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
      7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
      CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
      4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
      8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
      377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
      E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
      3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
      267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
      FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
      EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
      8F70662A000000097048597300002E2300002E230178A53F7600000219494441
      5478DA63FCFFFF3F8368FE293E560ECE9B0C4482FF0C0C939F77EAB681D88C20
      038433CEF1B3F3B37E6065FCB7D04EF8EEAB23EF14DF7CFFC7F20F9B66460686
      1220351F6840258601E7AC3BCE4BB07D36FCCFF07F07A3C7664F6C0648955FBE
      0A74C1260C0338F8593E3C76ACFDC3C4F09F0528F483D97B0BD7BF7FFFFE136D
      00C805F3F5964C7713BA6EFEF117CB82BC93E6DB410A80FEF8B7ACE3C7837FFF
      EAFF113480E1FF7F3F37B61DBC8C4C4C538072824816F7CE6F2A2921680013E3
      EF4057B67DD381E21290D0FEBF10483D606460ACFDFBFF9FEDA2E6B263780DD0
      61B9DA21CDFCA40228FE07885980F8F2C296AF067135DCFB80A1FF13E80A77AC
      069816ED9494E47AF64C80E9C31B6686BFCF80562F05C6572748C15F0606CF2F
      5FBE9EE0E0E01058D656FE00AB01E6E5DB24F8593E3E071AB097F3DFC7EA1F3F
      5E5FE2E2967C089417FDF3EBE781C51DD58E44C50228109F75E96D8EA9E93160
      65623807927FFFEAC5FB0D337A84483220B1B66717D00BAE3FBE7DB9FFF6F953
      C5FF0C7FDD18FFFCBBF9FEC7FB374F355A4E138AC65FC068DC0194BBF0ECC1AD
      49FFFFFE9F879C90EE8A47DDFDC62AB21AAB01CC8C0CFE2E6C3B9B81E20ABF19
      184C6E6E5FF9805F4D3F84F13F033BCC809B321915BF19D9D76335C080E5E204
      71E6170540A18805CD252B89CE0B4C4C4C8C62A5A7C40DFE9FFD27CEF0826161
      57FD2B5C5999BFF49C08FBFB1F3F5FCDB1FA0CE20300FC5E60F0105F02010000
      000049454E44AE426082}
  end
  object DSReceber: TDataSource
    DataSet = QYReceber
    Left = 176
    Top = 216
  end
  object DSTotalReceber: TDataSource
    DataSet = QYTotalReceber
    Left = 248
    Top = 216
  end
  object DSPagar: TDataSource
    DataSet = QYPagar
    Left = 32
    Top = 216
  end
  object DSTotalPagar: TDataSource
    DataSet = QYTotalPagar
    Left = 104
    Top = 216
  end
  object DSVendas: TDataSource
    DataSet = QYVendas
    Left = 320
    Top = 216
  end
  object DSTotalVendas: TDataSource
    DataSet = QYTotalVendas
    Left = 384
    Top = 216
  end
  object DSNfe: TDataSource
    DataSet = QYNfe
    Left = 448
    Top = 216
  end
  object DSTotalNfe: TDataSource
    Left = 512
    Top = 216
  end
  object DSClientes: TDataSource
    DataSet = QYClientes
    Left = 576
    Top = 216
  end
  object DSProdutos: TDataSource
    DataSet = QYProdutos
    Left = 640
    Top = 216
  end
  object DSCheques: TDataSource
    DataSet = QYCheques
    Left = 704
    Top = 216
  end
  object QYPagar: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPagar
    SQL.Strings = (
      'select * from PAGAR'
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO'
      '')
    Left = 32
    Top = 120
    object QYPagarPAG_BAIXADOPOR: TStringField
      FieldName = 'PAG_BAIXADOPOR'
      Origin = 'PAG_BAIXADOPOR'
    end
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
    object QYPagarPAG_DESCPORC: TFMTBCDField
      FieldName = 'PAG_DESCPORC'
      Origin = 'PAG_DESCPORC'
      Precision = 18
    end
    object QYPagarPAG_DESCRICAO: TStringField
      FieldName = 'PAG_DESCRICAO'
      Origin = 'PAG_DESCRICAO'
      Size = 50
    end
    object QYPagarPAG_DESCVALOR: TFMTBCDField
      FieldName = 'PAG_DESCVALOR'
      Origin = 'PAG_DESCVALOR'
      Precision = 18
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
    object QYPagarPAG_HRATUALIZACAO: TTimeField
      FieldName = 'PAG_HRATUALIZACAO'
      Origin = 'PAG_HRATUALIZACAO'
    end
    object QYPagarPAG_HRCADASTRO: TTimeField
      FieldName = 'PAG_HRCADASTRO'
      Origin = 'PAG_HRCADASTRO'
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
    object QYPagarPAG_NOVOCODIGO: TIntegerField
      FieldName = 'PAG_NOVOCODIGO'
      Origin = 'PAG_NOVOCODIGO'
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
    object QYPagarPAG_PARCELANUM: TIntegerField
      FieldName = 'PAG_PARCELANUM'
      Origin = 'PAG_PARCELANUM'
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
    object QYPagarPAG_TIPOBAIXA: TStringField
      FieldName = 'PAG_TIPOBAIXA'
      Origin = 'PAG_TIPOBAIXA'
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
    object QYPagarFOR_AFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_AFE'
      Origin = 'FOR_AFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_ALVARA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ALVARA'
      Origin = 'FOR_ALVARA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_ALVARASANITARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ALVARASANITARIO'
      Origin = 'FOR_ALVARASANITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_ATIVIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ATIVIDADE'
      Origin = 'FOR_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_BAIRRO'
      Origin = 'FOR_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYPagarFOR_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CEP'
      Origin = 'FOR_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYPagarFOR_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYPagarFOR_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CIDADECODIGO'
      Origin = 'FOR_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_COMPLEMENTO'
      Origin = 'FOR_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYPagarFOR_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYPagarFOR_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CPF'
      Origin = 'FOR_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_DTATUALIZACAO'
      Origin = 'FOR_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_DTCADASTRO'
      Origin = 'FOR_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_DTNASC'
      Origin = 'FOR_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYPagarFOR_EMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_EMAIL2'
      Origin = 'FOR_EMAIL2'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYPagarFOR_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ENDERECO'
      Origin = 'FOR_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYPagarFOR_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ESTADO'
      Origin = 'FOR_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYPagarFOR_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ESTADOCIVIL'
      Origin = 'FOR_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYPagarFOR_ESTADOCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_ESTADOCODIGO'
      Origin = 'FOR_ESTADOCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_FANTASIA'
      Origin = 'FOR_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYPagarFOR_FONE0800: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_FONE0800'
      Origin = 'FOR_FONE0800'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_FONE1'
      Origin = 'FOR_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_FONE2'
      Origin = 'FOR_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_FONE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_FONE3'
      Origin = 'FOR_FONE3'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_HRATUALIZACAO'
      Origin = 'FOR_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_HRCADASTRO'
      Origin = 'FOR_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_IE'
      Origin = 'FOR_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_MSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_MSN'
      Origin = 'FOR_MSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYPagarFOR_NEXTEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NEXTEL'
      Origin = 'FOR_NEXTEL'
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
    object QYPagarFOR_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NUMERO'
      Origin = 'FOR_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYPagarFOR_OBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_OBSERVACOES'
      Origin = 'FOR_OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QYPagarFOR_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_PAIS'
      Origin = 'FOR_PAIS'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYPagarFOR_PAISCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_PAISCODIGO'
      Origin = 'FOR_PAISCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_REGPROFISSIONAL'
      Origin = 'FOR_REGPROFISSIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_RG'
      Origin = 'FOR_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYPagarFOR_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_SITE'
      Origin = 'FOR_SITE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYPagarFOR_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_STATUS'
      Origin = 'FOR_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYPagarFOR_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_TIPOPESSOA'
      Origin = 'FOR_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYPagarFOR_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_USUARIO'
      Origin = 'FOR_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TRPagar: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 168
  end
  object QYTotalPagar: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTotalPagar
    SQL.Strings = (
      'select sum(PAG_VALOR) as VALOR from PAGAR'
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO'
      '')
    Left = 104
    Top = 120
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
    Left = 104
    Top = 168
  end
  object QYReceber: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReceber
    SQL.Strings = (
      'select * from RECEBER'
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO'
      'left join CONTAS on REE_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO')
    Left = 176
    Top = 120
    object QYReceberREE_ACRESCIMOPORC: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORC'
      Origin = 'REE_ACRESCIMOPORC'
      Precision = 18
    end
    object QYReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORCPAGO'
      Origin = 'REE_ACRESCIMOPORCPAGO'
      Precision = 18
    end
    object QYReceberREE_ACRESCIMOVALOR: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALOR'
      Origin = 'REE_ACRESCIMOVALOR'
      Precision = 18
    end
    object QYReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALORPAGO'
      Origin = 'REE_ACRESCIMOVALORPAGO'
      Precision = 18
    end
    object QYReceberREE_BAIXADOPOR: TStringField
      FieldName = 'REE_BAIXADOPOR'
      Origin = 'REE_BAIXADOPOR'
    end
    object QYReceberREE_BOLETO: TIntegerField
      FieldName = 'REE_BOLETO'
      Origin = 'REE_BOLETO'
    end
    object QYReceberREE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
      Origin = 'REE_CLIENTE'
      Required = True
    end
    object QYReceberREE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = 'REE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYReceberREE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
      Origin = 'REE_CONTA'
      Required = True
    end
    object QYReceberREE_DESCPORC: TFMTBCDField
      FieldName = 'REE_DESCPORC'
      Origin = 'REE_DESCPORC'
      Precision = 18
    end
    object QYReceberREE_DESCPORCVENCIMENTO: TFMTBCDField
      FieldName = 'REE_DESCPORCVENCIMENTO'
      Origin = 'REE_DESCPORCVENCIMENTO'
      Precision = 18
    end
    object QYReceberREE_DESCRICAO: TStringField
      FieldName = 'REE_DESCRICAO'
      Origin = 'REE_DESCRICAO'
      Size = 120
    end
    object QYReceberREE_DESCVALOR: TFMTBCDField
      FieldName = 'REE_DESCVALOR'
      Origin = 'REE_DESCVALOR'
      currency = True
      Precision = 18
    end
    object QYReceberREE_DIASATRASO: TIntegerField
      FieldName = 'REE_DIASATRASO'
      Origin = 'REE_DIASATRASO'
    end
    object QYReceberREE_DIASPRAZO: TIntegerField
      FieldName = 'REE_DIASPRAZO'
      Origin = 'REE_DIASPRAZO'
    end
    object QYReceberREE_DTATUALIZACAO: TDateField
      FieldName = 'REE_DTATUALIZACAO'
      Origin = 'REE_DTATUALIZACAO'
    end
    object QYReceberREE_DTCADASTRO: TDateField
      FieldName = 'REE_DTCADASTRO'
      Origin = 'REE_DTCADASTRO'
    end
    object QYReceberREE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = 'REE_DTEMISSAO'
    end
    object QYReceberREE_DTJUROSAPOS: TDateField
      FieldName = 'REE_DTJUROSAPOS'
      Origin = 'REE_DTJUROSAPOS'
    end
    object QYReceberREE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
      Origin = 'REE_DTPAGAMENTO'
    end
    object QYReceberREE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = 'REE_DTVENCIMENTO'
    end
    object QYReceberREE_HRATUALIZACAO: TTimeField
      FieldName = 'REE_HRATUALIZACAO'
      Origin = 'REE_HRATUALIZACAO'
    end
    object QYReceberREE_HRCADASTRO: TTimeField
      FieldName = 'REE_HRCADASTRO'
      Origin = 'REE_HRCADASTRO'
    end
    object QYReceberREE_JUROSPAGO: TFMTBCDField
      FieldName = 'REE_JUROSPAGO'
      Origin = 'REE_JUROSPAGO'
      Precision = 18
    end
    object QYReceberREE_MULTAPAGO: TFMTBCDField
      FieldName = 'REE_MULTAPAGO'
      Origin = 'REE_MULTAPAGO'
      Precision = 18
    end
    object QYReceberREE_NOVOCODIGO: TIntegerField
      FieldName = 'REE_NOVOCODIGO'
      Origin = 'REE_NOVOCODIGO'
    end
    object QYReceberREE_NUMDOCTO: TStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = 'REE_NUMDOCTO'
    end
    object QYReceberREE_OBSERVACOES: TMemoField
      FieldName = 'REE_OBSERVACOES'
      Origin = 'REE_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYReceberREE_PARCELANUM: TIntegerField
      FieldName = 'REE_PARCELANUM'
      Origin = 'REE_PARCELANUM'
    end
    object QYReceberREE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
      Origin = 'REE_PARCELAQTDE'
    end
    object QYReceberREE_PORCJUROS: TFMTBCDField
      FieldName = 'REE_PORCJUROS'
      Origin = 'REE_PORCJUROS'
      Precision = 18
    end
    object QYReceberREE_RECEITA: TIntegerField
      FieldName = 'REE_RECEITA'
      Origin = 'REE_RECEITA'
      Required = True
    end
    object QYReceberREE_STATUS: TStringField
      FieldName = 'REE_STATUS'
      Origin = 'REE_STATUS'
      Size = 1
    end
    object QYReceberREE_TIPOBAIXA: TStringField
      FieldName = 'REE_TIPOBAIXA'
      Origin = 'REE_TIPOBAIXA'
      Size = 1
    end
    object QYReceberREE_TIPODOCTO: TStringField
      FieldName = 'REE_TIPODOCTO'
      Origin = 'REE_TIPODOCTO'
    end
    object QYReceberREE_USUARIO: TStringField
      FieldName = 'REE_USUARIO'
      Origin = 'REE_USUARIO'
    end
    object QYReceberREE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = 'REE_VALOR'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORACESSORIAS: TFMTBCDField
      FieldName = 'REE_VALORACESSORIAS'
      Origin = 'REE_VALORACESSORIAS'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORJUROS: TFMTBCDField
      FieldName = 'REE_VALORJUROS'
      Origin = 'REE_VALORJUROS'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORMULTA: TFMTBCDField
      FieldName = 'REE_VALORMULTA'
      Origin = 'REE_VALORMULTA'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORORIGINAL: TFMTBCDField
      FieldName = 'REE_VALORORIGINAL'
      Origin = 'REE_VALORORIGINAL'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORPAGO: TFMTBCDField
      FieldName = 'REE_VALORPAGO'
      Origin = 'REE_VALORPAGO'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VALORSEMDESCONTO: TFMTBCDField
      FieldName = 'REE_VALORSEMDESCONTO'
      Origin = 'REE_VALORSEMDESCONTO'
      currency = True
      Precision = 18
    end
    object QYReceberREE_VENDA: TIntegerField
      FieldName = 'REE_VENDA'
      Origin = 'REE_VENDA'
    end
    object QYReceberREE_VENDEDOR: TIntegerField
      FieldName = 'REE_VENDEDOR'
      Origin = 'REE_VENDEDOR'
      Required = True
    end
    object QYReceberCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYReceberCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRReceber: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 168
  end
  object QYTotalReceber: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTotalReceber
    SQL.Strings = (
      'select sum(REE_VALOR) as VALOR from RECEBER'
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO'
      '')
    Left = 248
    Top = 120
    object QYTotalReceberVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object TRTotalReceber: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 248
    Top = 168
  end
  object QYVendas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendas
    SQL.Strings = (
      'select * from VENDAS')
    Left = 320
    Top = 120
    object QYVendasVED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = 'VED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendasVED_DTEMISSAO: TDateField
      FieldName = 'VED_DTEMISSAO'
      Origin = 'VED_DTEMISSAO'
    end
    object QYVendasVED_NOME: TStringField
      FieldName = 'VED_NOME'
      Origin = 'VED_NOME'
      Size = 80
    end
    object QYVendasVED_STATUS: TStringField
      FieldName = 'VED_STATUS'
      Origin = 'VED_STATUS'
      Size = 1
    end
    object QYVendasVED_USUARIO: TStringField
      FieldName = 'VED_USUARIO'
      Origin = 'VED_USUARIO'
    end
    object QYVendasVED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = 'VED_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYVendasVED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = 'VED_VENDEDOR'
      Required = True
    end
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 320
    Top = 168
  end
  object QYTotalVendas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTotalVendas
    SQL.Strings = (
      'select'
      '  sum('
      '    case VED_STATUS'
      '      when '#39'A'#39' then VED_VALORTOTAL'
      '      when '#39'F'#39' then 0'
      '    end'
      '  ) as ABERTAS,'
      '  sum('
      '    case VED_STATUS'
      '      when '#39'A'#39' then 0'
      '      when '#39'F'#39' then VED_VALORTOTAL'
      '    end'
      '  ) as FINALIZADAS'
      'from VENDAS'
      'where VED_DTEMISSAO between :datainicial and :datafinal'
      '')
    Left = 384
    Top = 120
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QYTotalVendasABERTAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ABERTAS'
      Origin = 'ABERTAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QYTotalVendasFINALIZADAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FINALIZADAS'
      Origin = 'FINALIZADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object TRTotalVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 384
    Top = 168
  end
  object QYNfe: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNfe
    SQL.Strings = (
      'select * from NFE')
    Left = 448
    Top = 120
    object QYNfeNFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
      Origin = 'NFE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNfeNFE_DTEMISSAO: TDateField
      FieldName = 'NFE_DTEMISSAO'
      Origin = 'NFE_DTEMISSAO'
    end
    object QYNfeNFE_NOME: TStringField
      FieldName = 'NFE_NOME'
      Origin = 'NFE_NOME'
      Size = 80
    end
    object QYNfeNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      Size = 1
    end
    object QYNfeNFE_USUARIO: TStringField
      FieldName = 'NFE_USUARIO'
      Origin = 'NFE_USUARIO'
    end
    object QYNfeNFE_VALORTOTAL: TFMTBCDField
      FieldName = 'NFE_VALORTOTAL'
      Origin = 'NFE_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object QYNfeNFE_VENDEDOR: TIntegerField
      FieldName = 'NFE_VENDEDOR'
      Origin = 'NFE_VENDEDOR'
      Required = True
    end
  end
  object TRNfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 448
    Top = 168
  end
  object QYTotalNfe: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTotalNfe
    SQL.Strings = (
      'select'
      '  sum('
      '    case NFE_STATUS'
      '      when '#39'A'#39' then NFE_VALORTOTAL'
      '      when '#39'F'#39' then 0'
      '      when '#39'C'#39' then 0'
      '    end'
      '  ) as ABERTAS,'
      '  sum('
      '    case NFE_STATUS'
      '      when '#39'A'#39' then 0'
      '      when '#39'F'#39' then NFE_VALORTOTAL'
      '      when '#39'C'#39' then 0'
      '    end'
      '  ) as FINALIZADAS,'
      '  sum('
      '    case NFE_STATUS'
      '      when '#39'A'#39' then 0'
      '      when '#39'F'#39' then 0'
      '      when '#39'C'#39' then NFE_VALORTOTAL'
      '    end'
      '  ) as CANCELADAS'
      'from NFE'
      'where NFE_DTEMISSAO between :datainicial and :datafinal'
      '')
    Left = 512
    Top = 120
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QYTotalNfeABERTAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ABERTAS'
      Origin = 'ABERTAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QYTotalNfeFINALIZADAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FINALIZADAS'
      Origin = 'FINALIZADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QYTotalNfeCANCELADAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELADAS'
      Origin = 'CANCELADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object TRTotalNfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 512
    Top = 168
  end
  object QYClientes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClientes
    SQL.Strings = (
      'select * from CLIENTES'
      '')
    Left = 576
    Top = 120
    object QYClientesCLI_AFE: TStringField
      FieldName = 'CLI_AFE'
      Origin = 'CLI_AFE'
    end
    object QYClientesCLI_ALVARA: TStringField
      FieldName = 'CLI_ALVARA'
      Origin = 'CLI_ALVARA'
    end
    object QYClientesCLI_ALVARASANITARIO: TStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = 'CLI_ALVARASANITARIO'
    end
    object QYClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLI_ATIVIDADE'
      Required = True
    end
    object QYClientesCLI_ATUALIZAR: TStringField
      FieldName = 'CLI_ATUALIZAR'
      Origin = 'CLI_ATUALIZAR'
      Size = 1
    end
    object QYClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 50
    end
    object QYClientesCLI_BLOQUEARVENDA: TStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      Size = 1
    end
    object QYClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 10
    end
    object QYClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 50
    end
    object QYClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
    end
    object QYClientesCLI_CLASSIFICACAO: TStringField
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = 'CLI_CLASSIFICACAO'
      Size = 1
    end
    object QYClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
    end
    object QYClientesCLI_CNS: TStringField
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
    end
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 80
    end
    object QYClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      Required = True
    end
    object QYClientesCLI_CONJUGE: TStringField
      FieldName = 'CLI_CONJUGE'
      Origin = 'CLI_CONJUGE'
      Size = 80
    end
    object QYClientesCLI_CONJUGECPF: TStringField
      FieldName = 'CLI_CONJUGECPF'
      Origin = 'CLI_CONJUGECPF'
    end
    object QYClientesCLI_CONJUGEDTNASC: TDateField
      FieldName = 'CLI_CONJUGEDTNASC'
      Origin = 'CLI_CONJUGEDTNASC'
    end
    object QYClientesCLI_CONJUGERG: TStringField
      FieldName = 'CLI_CONJUGERG'
      Origin = 'CLI_CONJUGERG'
    end
    object QYClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      Size = 80
    end
    object QYClientesCLI_CONTRIBUINTEICMS: TStringField
      FieldName = 'CLI_CONTRIBUINTEICMS'
      Origin = 'CLI_CONTRIBUINTEICMS'
      Size = 40
    end
    object QYClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object QYClientesCLI_DESCONTO: TFMTBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      Precision = 18
    end
    object QYClientesCLI_DIACOBRANCA: TIntegerField
      FieldName = 'CLI_DIACOBRANCA'
      Origin = 'CLI_DIACOBRANCA'
    end
    object QYClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = 'CLI_DTATUALIZACAO'
    end
    object QYClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = 'CLI_DTCADASTRO'
    end
    object QYClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
    end
    object QYClientesCLI_DTOBITO: TDateField
      FieldName = 'CLI_DTOBITO'
      Origin = 'CLI_DTOBITO'
    end
    object QYClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object QYClientesCLI_EMAIL2: TStringField
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      Size = 100
    end
    object QYClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 100
    end
    object QYClientesCLI_ENQUADRAMENTO: TStringField
      FieldName = 'CLI_ENQUADRAMENTO'
      Origin = 'CLI_ENQUADRAMENTO'
    end
    object QYClientesCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      Size = 2
    end
    object QYClientesCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = 'CLI_ESTADOCIVIL'
      Size = 10
    end
    object QYClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
    end
    object QYClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 80
    end
    object QYClientesCLI_FONE0800: TStringField
      FieldName = 'CLI_FONE0800'
      Origin = 'CLI_FONE0800'
    end
    object QYClientesCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
    end
    object QYClientesCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
    end
    object QYClientesCLI_FONE3: TStringField
      FieldName = 'CLI_FONE3'
      Origin = 'CLI_FONE3'
    end
    object QYClientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      Size = 50
    end
    object QYClientesCLI_HRATUALIZACAO: TTimeField
      FieldName = 'CLI_HRATUALIZACAO'
      Origin = 'CLI_HRATUALIZACAO'
    end
    object QYClientesCLI_HRCADASTRO: TTimeField
      FieldName = 'CLI_HRCADASTRO'
      Origin = 'CLI_HRCADASTRO'
    end
    object QYClientesCLI_IDESTRANGEIRO: TStringField
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
    end
    object QYClientesCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
    end
    object QYClientesCLI_IM: TIntegerField
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
    end
    object QYClientesCLI_LIMITECREDITO: TFMTBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      Precision = 18
    end
    object QYClientesCLI_LOCALESTUDA: TIntegerField
      FieldName = 'CLI_LOCALESTUDA'
      Origin = 'CLI_LOCALESTUDA'
      Required = True
    end
    object QYClientesCLI_LOCALTRABALHO: TIntegerField
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = 'CLI_LOCALTRABALHO'
      Required = True
    end
    object QYClientesCLI_MAE: TStringField
      FieldName = 'CLI_MAE'
      Origin = 'CLI_MAE'
      Size = 80
    end
    object QYClientesCLI_MAEEMAIL: TStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = 'CLI_MAEEMAIL'
      Size = 100
    end
    object QYClientesCLI_MAEFONE: TStringField
      FieldName = 'CLI_MAEFONE'
      Origin = 'CLI_MAEFONE'
    end
    object QYClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      Required = True
    end
    object QYClientesCLI_MENSALISTA: TStringField
      FieldName = 'CLI_MENSALISTA'
      Origin = 'CLI_MENSALISTA'
      Size = 1
    end
    object QYClientesCLI_MSN: TStringField
      FieldName = 'CLI_MSN'
      Origin = 'CLI_MSN'
      Size = 100
    end
    object QYClientesCLI_NATURALIDADE: TStringField
      FieldName = 'CLI_NATURALIDADE'
      Origin = 'CLI_NATURALIDADE'
      Size = 50
    end
    object QYClientesCLI_NEXTEL: TStringField
      FieldName = 'CLI_NEXTEL'
      Origin = 'CLI_NEXTEL'
    end
    object QYClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      Size = 80
    end
    object QYClientesCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      Size = 15
    end
    object QYClientesCLI_OBITO: TStringField
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      Size = 1
    end
    object QYClientesCLI_OBSERVACOES: TMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = 'CLI_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYClientesCLI_ORIENTACAOCOBRANCA: TStringField
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = 'CLI_ORIENTACAOCOBRANCA'
      Size = 50
    end
    object QYClientesCLI_PAI: TStringField
      FieldName = 'CLI_PAI'
      Origin = 'CLI_PAI'
      Size = 80
    end
    object QYClientesCLI_PAIEMAIL: TStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = 'CLI_PAIEMAIL'
      Size = 100
    end
    object QYClientesCLI_PAIFONE: TStringField
      FieldName = 'CLI_PAIFONE'
      Origin = 'CLI_PAIFONE'
    end
    object QYClientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 80
    end
    object QYClientesCLI_PAISCODIGO: TIntegerField
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
    end
    object QYClientesCLI_PASSWORD: TStringField
      FieldName = 'CLI_PASSWORD'
      Origin = 'CLI_PASSWORD'
      Size = 40
    end
    object QYClientesCLI_PONTOS: TFMTBCDField
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      Precision = 18
    end
    object QYClientesCLI_PROFISSAO: TStringField
      FieldName = 'CLI_PROFISSAO'
      Origin = 'CLI_PROFISSAO'
      Size = 50
    end
    object QYClientesCLI_RECEBEAVISOS: TStringField
      FieldName = 'CLI_RECEBEAVISOS'
      Origin = 'CLI_RECEBEAVISOS'
      Size = 1
    end
    object QYClientesCLI_REGPROFISSIONAL: TStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = 'CLI_REGPROFISSIONAL'
    end
    object QYClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
    end
    object QYClientesCLI_SAME: TStringField
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
    end
    object QYClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = 'CLI_SETOR'
    end
    object QYClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Origin = 'CLI_SEXO'
      Size = 1
    end
    object QYClientesCLI_SITE: TStringField
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      Size = 100
    end
    object QYClientesCLI_STATUS: TStringField
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      Size = 1
    end
    object QYClientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
    end
    object QYClientesCLI_TABELAPRECO: TStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      Size = 1
    end
    object QYClientesCLI_TAXA: TIntegerField
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      Required = True
    end
    object QYClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = 'CLI_TELEVENDA'
      Required = True
    end
    object QYClientesCLI_TIPOCLIENTE: TStringField
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = 'CLI_TIPOCLIENTE'
      Size = 1
    end
    object QYClientesCLI_TIPOCONSUMIDOR: TStringField
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      Size = 30
    end
    object QYClientesCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      Size = 1
    end
    object QYClientesCLI_TRANSPORTADORA: TIntegerField
      FieldName = 'CLI_TRANSPORTADORA'
      Origin = 'CLI_TRANSPORTADORA'
      Required = True
    end
    object QYClientesCLI_USUARIO: TStringField
      FieldName = 'CLI_USUARIO'
      Origin = 'CLI_USUARIO'
    end
    object QYClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      Required = True
    end
  end
  object TRClientes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 576
    Top = 168
  end
  object QYProdutos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProdutos
    SQL.Strings = (
      'select '
      'PRO_CODIGO,'
      'PRO_CODIGOFAB,'
      'PRO_NOME,'
      'PRO_UNIDADE,'
      'PRO_ESTOQUEATUAL,'
      'PRO_PRECOVENDA,'
      'PRO_DTCADASTRO,'
      'GRU_DESCRICAO'
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'where PRO_DTCADASTRO between :datainicial and :datafinal'
      '')
    Left = 640
    Top = 120
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_CODIGOFAB: TStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = 'PRO_CODIGOFAB'
    end
    object QYProdutosPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      Required = True
      Size = 100
    end
    object QYProdutosPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      Size = 3
    end
    object QYProdutosPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      Precision = 18
    end
    object QYProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      Precision = 18
    end
    object QYProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = 'PRO_DTCADASTRO'
    end
    object QYProdutosGRU_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 640
    Top = 168
  end
  object QYCheques: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCheques
    SQL.Strings = (
      'select '
      'CHE_CODIGO,'
      'CHE_CLIENTE,'
      'CHE_BANCO,'
      'CHE_BOMPARA,'
      'CHE_DTCADASTRO,'
      'CHE_NOME,'
      'CHE_PREDATADO,'
      'CHE_STATUS,'
      'CHE_VALOR,'
      'CLI_NOME'
      'from CHEQUES'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'where CHE_BOMPARA >= :dataatual'
      'order by CHE_BOMPARA desc, CHE_NOME'
      '')
    Left = 704
    Top = 120
    ParamData = <
      item
        Name = 'DATAATUAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QYChequesCHE_CODIGO: TIntegerField
      FieldName = 'CHE_CODIGO'
      Origin = 'CHE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYChequesCHE_CLIENTE: TIntegerField
      FieldName = 'CHE_CLIENTE'
      Origin = 'CHE_CLIENTE'
      Required = True
    end
    object QYChequesCHE_BANCO: TIntegerField
      FieldName = 'CHE_BANCO'
      Origin = 'CHE_BANCO'
      Required = True
    end
    object QYChequesCHE_BOMPARA: TDateField
      FieldName = 'CHE_BOMPARA'
      Origin = 'CHE_BOMPARA'
    end
    object QYChequesCHE_DTCADASTRO: TDateField
      FieldName = 'CHE_DTCADASTRO'
      Origin = 'CHE_DTCADASTRO'
    end
    object QYChequesCHE_NOME: TStringField
      FieldName = 'CHE_NOME'
      Origin = 'CHE_NOME'
      Size = 80
    end
    object QYChequesCHE_PREDATADO: TStringField
      FieldName = 'CHE_PREDATADO'
      Origin = 'CHE_PREDATADO'
      Size = 1
    end
    object QYChequesCHE_STATUS: TStringField
      FieldName = 'CHE_STATUS'
      Origin = 'CHE_STATUS'
      Size = 1
    end
    object QYChequesCHE_VALOR: TFMTBCDField
      FieldName = 'CHE_VALOR'
      Origin = 'CHE_VALOR'
      currency = True
      Precision = 18
    end
    object QYChequesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRCheques: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 704
    Top = 168
  end
end
