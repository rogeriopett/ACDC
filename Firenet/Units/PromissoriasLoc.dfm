object FormPromissoriasLoc: TFormPromissoriasLoc
  Left = 238
  Top = 175
  BorderIcons = [biSystemMenu]
  Caption = 'Procura Notas Promiss'#243'rias'
  ClientHeight = 360
  ClientWidth = 792
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
    792
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
    Left = 243
    Top = 17
    Width = 40
    Height = 13
    Caption = 'Sacado:'
  end
  object Label3: TLabel
    Left = 82
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label4: TLabel
    Left = 162
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 320
    Width = 777
    Height = 5
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
    ExplicitTop = 328
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 777
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSPromissorias
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'PRM_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_DTVENCIMENTO'
        Title.Caption = 'Venc.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_VALOR'
        Title.Caption = 'Valor'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_SACADO'
        Title.Caption = 'Sacado'
        Width = 267
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_CEDENTE'
        Title.Caption = 'Cedente'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_PARCELA'
        Title.Caption = 'Parc.'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRM_PARCELATOTAL'
        Title.Caption = 'Parc. Total'
        Width = 57
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
    Left = 240
    Top = 32
    Width = 361
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 501
    Top = 10
    Width = 102
    Height = 17
    TabStop = False
    Caption = '&Somente Abertos'
    Checked = True
    State = cbChecked
    TabOrder = 4
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
  object BitBtn1: TPngBitBtn
    Left = 584
    Top = 328
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Imprimir'
    TabOrder = 6
    OnClick = BitBtn1Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002A744558744372656174696F6E2054696D650053612038204D727A20
      323030332031363A33373A3134202B303130300CD2793D0000000774494D4507
      D302110D1231EBE94401000000097048597300000AF000000AF00142AC349800
      0002954944415478DAA5D36D4853511807F0FFDDDC9BF33597D646D305439158
      59F84592A028A18220301854E2F760D2C83E49921BF66629080536587E181246
      248B42C55A98C54A885214F365393773ACBDB8EB5EEEEEEEEDEC82415009F9C0
      E5B987C3F99DE7B9F71C0ADB0C6AF3656060E0822257791C94B808627151269B
      73E445D135EF50F379E3A52D0187C3D172CE68BC47734082059219204D66BFBA
      3F7A4F1DA9D56E09D81EF6D51E3E71C65D5CBA1369B2982150840196E617F0E2
      C3FCB1BE4CC36B9828EEAF40FF23BB44A3DF172ED41F520E4D25C0B02C023116
      2CCF91078885D6FCEDFB23ECE237DF73FFEA6AABC964A27F03262727AF93E155
      11C54A39F90E0C2E17204FA144904E2395C9209CE2B0471C85E9208551D7DB91
      A6A68B0D64192F004EA7F3645D5D9D532A9552C96412B1680469360DEB2725CA
      8A0BF083200CC763DA17C7DDAA2964D2EB78F9E673E3ED5B370605607878F871
      7D7D7D633C1E074B4ACFE670308099B018A37439388E232D65E027459FE65FE1
      72F938AE4DA89F5ADADBCE0A80CBE55A34180CBA542A25003CCF63C5EB850C0C
      6ECE964152B8137186C5175F0AE6BD2B30ECCEC1BB89718FD96CD609C0D8D858
      ACA6A6262F5B7E16C9EE18080440AF47B11ACFC193EFA5C8E33338A058812438
      055F2004994CB6D6D1D1B14B00BABABA1C5AADD6A8D7EB5152522220C1605040
      242260796901EFDD6E4CCFCC22492AA9ACAC825AADBED2D3D37347006C36DBD1
      FCFCFCFE582CA6611806D5D5D52063783C1ED8ED76CCCDCD41A7D3A1A2A28255
      A9544ED2E27D8BC532F2EB2F64A3BBBB3B57A150B4C8E5F2D670385C48D334BF
      B1B14185422168341ABF4824B22512893EABD5EAFDE341DA8CCECE4E15496D04
      6A26809B7C97079148E4596F6F6FFA9F4779DBB7F17FE32734D03D2040527FA1
      0000000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object BitBtn2: TPngBitBtn
    Left = 688
    Top = 328
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ca&ncelar'
    TabOrder = 7
    OnClick = BitBtn2Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002B744558744372656174696F6E2054696D6500446920333020536570
      20323030332032333A35343A3236202B3031303065D5FFC10000000774494D45
      07D3091E1536385E5BCE8C000000097048597300000B1200000B1201D2DD7EFC
      0000029E4944415478DAA5924B48945114C77FDFCC3895A5869989299A956499
      E603B4905EF434348AA2A40744052E6A51B40982DAB4E80515D122A81605510B
      235B4485CEF808CD8CA6707A51166432E33C6AC6797C33DF63BA4D258DE822BA
      70E172CE3DBFFFB9FF7325FE7349A3032FA0C6078DA970B61C6C7FE73A616F40
      A2418B71AE1D1E9E023D01D00F17CC9B971C9CB12857B21FBFD3B128165BFA27
      D70B6B930B33EE1755A6270DF439B1DBFDB6755AAC2C01F03167DAE78213DBF2
      707B70B4F631F8C8BEAB026E3E87727D669AB5B276560AEE6FF43B82F475B9AF
      6E847D09806770A6F4D8E62349493AA80A3D97AD2EBF27B87DCAF4D45BD55BE7
      67E276331C08D1D6E2183044F4E20DE04B00BC8362434DE1AB39ABE64B048328
      1E1F4F9BDFC46A1A4A25BC5E743944578F4B57BF046B970B0FC634B1DB6868AB
      3ABA7E294209252A6E886EFC0188CABCEDF7F2A9C773A9160E8E3B050BD4E52F
      9BDB9C5F9209E1882814102582CB13A0FDF1579B98C0E26D208F09104EE70CC1
      B5B2FA92D559D9132124FFEA426C9733406BC790C52804B642703440EA86FDE4
      A69FAEA85B9066D24461282C8C547F77A0404CC3FB5DC6F2C4DB9BAAB3710D0C
      8E005A61535E555E5341F54CF8E617851A681A9A50366A2ABA22CE3F63311D59
      56B03C1F768443FACEEDD0120734C1CA85E5592D738AA60A35A1AAE9F8E508D6
      F621B57876B26956F604F10A01D1B4782EAAABDCED0C59F7C08A38E0BE51B2AD
      A99F5D6A9694F80567304A7797C74350AD17B85D6525298D391926F13554145D
      A7F75304E7A0BA7B07DC88036EC3B9BA5559870D9324DE0F8479F7D2F772B21E
      DB22C6F5E1E733EFC1C5C279930E601681AF51221EEDFC163834E2C14DC89862
      363CD04D52A61CD2AE0817CE3642E4EF09DD8293C3604E81EB0DF07ADC7FF0AF
      EB079F7E2E203010A8E70000000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object DSPromissorias: TDataSource
    DataSet = QYPromissorias
    Left = 112
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
  object QYPromissorias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPromissorias
    SQL.Strings = (
      'select * from PROMISSORIAS'
      '')
    Left = 192
    Top = 120
    object QYPromissoriasPRM_AVALISTA1: TStringField
      FieldName = 'PRM_AVALISTA1'
      Origin = 'PRM_AVALISTA1'
      Size = 80
    end
    object QYPromissoriasPRM_AVALISTA1CPF: TStringField
      FieldName = 'PRM_AVALISTA1CPF'
      Origin = 'PRM_AVALISTA1CPF'
    end
    object QYPromissoriasPRM_AVALISTA2: TStringField
      FieldName = 'PRM_AVALISTA2'
      Origin = 'PRM_AVALISTA2'
      Size = 80
    end
    object QYPromissoriasPRM_AVALISTA2CPF: TStringField
      FieldName = 'PRM_AVALISTA2CPF'
      Origin = 'PRM_AVALISTA2CPF'
    end
    object QYPromissoriasPRM_CEDENTE: TStringField
      FieldName = 'PRM_CEDENTE'
      Origin = 'PRM_CEDENTE'
      Size = 80
    end
    object QYPromissoriasPRM_CEDENTEBAIRRO: TStringField
      FieldName = 'PRM_CEDENTEBAIRRO'
      Origin = 'PRM_CEDENTEBAIRRO'
      Size = 50
    end
    object QYPromissoriasPRM_CEDENTECEP: TStringField
      FieldName = 'PRM_CEDENTECEP'
      Origin = 'PRM_CEDENTECEP'
      Size = 10
    end
    object QYPromissoriasPRM_CEDENTECNPJ: TStringField
      FieldName = 'PRM_CEDENTECNPJ'
      Origin = 'PRM_CEDENTECNPJ'
    end
    object QYPromissoriasPRM_CEDENTEENDERECO: TStringField
      FieldName = 'PRM_CEDENTEENDERECO'
      Origin = 'PRM_CEDENTEENDERECO'
      Size = 100
    end
    object QYPromissoriasPRM_CEDENTEFONE: TStringField
      FieldName = 'PRM_CEDENTEFONE'
      Origin = 'PRM_CEDENTEFONE'
    end
    object QYPromissoriasPRM_CEDENTENUMERO: TStringField
      FieldName = 'PRM_CEDENTENUMERO'
      Origin = 'PRM_CEDENTENUMERO'
      Size = 15
    end
    object QYPromissoriasPRM_CODIGO: TIntegerField
      FieldName = 'PRM_CODIGO'
      Origin = 'PRM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYPromissoriasPRM_DTATUALIZACAO: TDateField
      FieldName = 'PRM_DTATUALIZACAO'
      Origin = 'PRM_DTATUALIZACAO'
    end
    object QYPromissoriasPRM_DTCADASTRO: TDateField
      FieldName = 'PRM_DTCADASTRO'
      Origin = 'PRM_DTCADASTRO'
    end
    object QYPromissoriasPRM_DTVENCIMENTO: TDateField
      FieldName = 'PRM_DTVENCIMENTO'
      Origin = 'PRM_DTVENCIMENTO'
    end
    object QYPromissoriasPRM_HRATUALIZACAO: TTimeField
      FieldName = 'PRM_HRATUALIZACAO'
      Origin = 'PRM_HRATUALIZACAO'
    end
    object QYPromissoriasPRM_HRCADASTRO: TTimeField
      FieldName = 'PRM_HRCADASTRO'
      Origin = 'PRM_HRCADASTRO'
    end
    object QYPromissoriasPRM_MATRIZ: TStringField
      FieldName = 'PRM_MATRIZ'
      Origin = 'PRM_MATRIZ'
      Size = 1
    end
    object QYPromissoriasPRM_MULTIPLICADO: TStringField
      FieldName = 'PRM_MULTIPLICADO'
      Origin = 'PRM_MULTIPLICADO'
      Size = 1
    end
    object QYPromissoriasPRM_PARCELA: TIntegerField
      FieldName = 'PRM_PARCELA'
      Origin = 'PRM_PARCELA'
    end
    object QYPromissoriasPRM_PARCELATOTAL: TIntegerField
      FieldName = 'PRM_PARCELATOTAL'
      Origin = 'PRM_PARCELATOTAL'
    end
    object QYPromissoriasPRM_SACADO: TStringField
      FieldName = 'PRM_SACADO'
      Origin = 'PRM_SACADO'
      Size = 80
    end
    object QYPromissoriasPRM_SACADOBAIRRO: TStringField
      FieldName = 'PRM_SACADOBAIRRO'
      Origin = 'PRM_SACADOBAIRRO'
      Size = 50
    end
    object QYPromissoriasPRM_SACADOCEP: TStringField
      FieldName = 'PRM_SACADOCEP'
      Origin = 'PRM_SACADOCEP'
      Size = 10
    end
    object QYPromissoriasPRM_SACADOCNPJ: TStringField
      FieldName = 'PRM_SACADOCNPJ'
      Origin = 'PRM_SACADOCNPJ'
    end
    object QYPromissoriasPRM_SACADOENDERECO: TStringField
      FieldName = 'PRM_SACADOENDERECO'
      Origin = 'PRM_SACADOENDERECO'
      Size = 100
    end
    object QYPromissoriasPRM_SACADOFONE: TStringField
      FieldName = 'PRM_SACADOFONE'
      Origin = 'PRM_SACADOFONE'
    end
    object QYPromissoriasPRM_SACADONUMERO: TStringField
      FieldName = 'PRM_SACADONUMERO'
      Origin = 'PRM_SACADONUMERO'
      Size = 15
    end
    object QYPromissoriasPRM_STATUS: TStringField
      FieldName = 'PRM_STATUS'
      Origin = 'PRM_STATUS'
      Size = 1
    end
    object QYPromissoriasPRM_USUARIO: TStringField
      FieldName = 'PRM_USUARIO'
      Origin = 'PRM_USUARIO'
    end
    object QYPromissoriasPRM_VALOR: TFMTBCDField
      FieldName = 'PRM_VALOR'
      Origin = 'PRM_VALOR'
      currency = True
      Precision = 18
    end
    object QYPromissoriasPRM_VALORBAIXADO: TFMTBCDField
      FieldName = 'PRM_VALORBAIXADO'
      Origin = 'PRM_VALORBAIXADO'
      currency = True
      Precision = 18
    end
  end
  object TRPromissorias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
