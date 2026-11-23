object FormDeliveryEnderecos: TFormDeliveryEnderecos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Endere'#231'os j'#225' utilizados'
  ClientHeight = 367
  ClientWidth = 872
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
  object DBText29: TDBText
    Left = 78
    Top = 32
    Width = 52
    Height = 13
    Alignment = taRightJustify
    DataField = 'DLV_CLIENTE'
    DataSource = DM2.DSDeliverys
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 28
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText30: TDBText
    Left = 137
    Top = 32
    Width = 520
    Height = 13
    DataField = 'CLI_NOME'
    DataSource = DM2.DSDeliverys
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 857
    Height = 289
    DataSource = DSDeliverys
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'DLV_CEP'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_COMPLEMENTO'
        Title.Caption = 'Complemento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_BAIRRO'
        Title.Caption = 'Bairro'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_CIDADE'
        Title.Caption = 'Cidade'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DLV_ESTADO'
        Title.Caption = 'Estado'
        Visible = True
      end>
  end
  object PngBitBtn1: TPngBitBtn
    Left = 720
    Top = 27
    Width = 145
    Height = 25
    Caption = 'Localizar outro CEP'
    TabOrder = 1
    OnClick = PngBitBtn1Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A3735323441394236453944323131453538433530453232353745
      3938454232432220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A373532344139423745394432313145353843353045323235374539384542
      3243223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3735323441394234453944323131
      453538433530453232353745393845423243222073745265663A646F63756D65
      6E7449443D22786D702E6469643A373532344139423545394432313145353843
      3530453232353745393845423243222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3ED42BA22A000002504944415478DACDD3
      4D68D3601807F0FFDBE66DBEFBB1CA0E13A678910D612014D92EB3031105BD88
      6E78F1A08820083A6F321041700A2A08822088A807D9651B4C41A5081D0341A1
      CCE96AB1A5CAC61C6EB56EEDD6244D5E9F2C22BB7BD0C09BE490FFEF799EBC09
      1342E06F0EF6EF81CF23C6C68DAE3978F7BD15C39914B2C5AD80601C92730F8E
      7500B665A1510714398413176BA84B83709CE7609B8070C4433C6A83CB1EC667
      77E0FAAB1472E5D676A09985586BC76A15D8D5051C3D0554D6AB58A8F4526CFA
      0F20111051691110376D349884898FDB71796C4FC76C419AC4B6B6161CEAA756
      63A08780856A1ECBAB7D9B019380348F88B044884C4B8DB9E16603A5EED1A1CE
      B76EFA11123A8DA10046D40F0073CB23ACF0D400635024EE3DE3B248FB9DD075
      63A498D2C40B697FFFC0D4A5633FBE548F4057296C029AEE232EBCD0009B7910
      454812F72974925348A2306188AB160AD1AED33DAF6FEEAC4D970711A7CA1A85
      75230074F3024CF316CB3F3187ACB5D0958846957D2022A890ED59C92DC37D6F
      AE550A99A51B304241DB9A110086799790B3B40760CB59FE61FE93D6C9980057
      046482228E6D8D7D4DA5CF65F7194D8799343BA99A5F9911524722F992102FF8
      904AD8BD589233DF8A4ACC073877517EAF8233275FE146EAE1624F6D62250557
      4D02A614B49F4806EFE23700E1E1F05C5E1DFDB9C8D97C81C35E0F434FB88899
      CD494D6F1E9CA9B5AD3E5EEAC578632F01344A8B118CB40114FD33E0DAEC4C39
      A79ECF654C45D13DA146691B75A1C8867747939CAB61B898AA77E0F6CA71E4D4
      6EEA46F94F7EA65FC6DFEA642E41A4880000000049454E44AE426082}
  end
  object DSDeliverys: TDataSource
    DataSet = QYDeliverys
    Left = 360
    Top = 248
  end
  object QYDeliverys: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRDeliverys
    SQL.Strings = (
      'select'
      'DLV_BAIRRO,'
      'DLV_CEP,'
      'DLV_CIDADE,'
      'DLV_CIDADECODIGO,'
      'DLV_COMPLEMENTO,'
      'DLV_ENDERECO,'
      'DLV_ESTADO,'
      'DLV_ESTADOCODIGO,'
      'DLV_NUMERO'
      'from DELIVERYS'
      'where DLV_CLIENTE=:cliente'
      'group by '
      'DLV_BAIRRO, '
      'DLV_CEP, '
      'DLV_CIDADE, '
      'DLV_CIDADECODIGO, '
      'DLV_COMPLEMENTO,'
      'DLV_ENDERECO,'
      'DLV_ESTADO,'
      'DLV_ESTADOCODIGO,'
      'DLV_NUMERO'
      'order by DLV_ENDERECO'
      '')
    Left = 360
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYDeliverysDLV_BAIRRO: TStringField
      FieldName = 'DLV_BAIRRO'
      Origin = 'DLV_BAIRRO'
      Size = 50
    end
    object QYDeliverysDLV_CEP: TStringField
      FieldName = 'DLV_CEP'
      Origin = 'DLV_CEP'
      Size = 10
    end
    object QYDeliverysDLV_CIDADE: TStringField
      FieldName = 'DLV_CIDADE'
      Origin = 'DLV_CIDADE'
      Size = 50
    end
    object QYDeliverysDLV_CIDADECODIGO: TIntegerField
      FieldName = 'DLV_CIDADECODIGO'
      Origin = 'DLV_CIDADECODIGO'
    end
    object QYDeliverysDLV_COMPLEMENTO: TStringField
      FieldName = 'DLV_COMPLEMENTO'
      Origin = 'DLV_COMPLEMENTO'
      Size = 80
    end
    object QYDeliverysDLV_ENDERECO: TStringField
      FieldName = 'DLV_ENDERECO'
      Origin = 'DLV_ENDERECO'
      Size = 100
    end
    object QYDeliverysDLV_ESTADO: TStringField
      FieldName = 'DLV_ESTADO'
      Origin = 'DLV_ESTADO'
      Size = 2
    end
    object QYDeliverysDLV_ESTADOCODIGO: TIntegerField
      FieldName = 'DLV_ESTADOCODIGO'
      Origin = 'DLV_ESTADOCODIGO'
    end
    object QYDeliverysDLV_NUMERO: TStringField
      FieldName = 'DLV_NUMERO'
      Origin = 'DLV_NUMERO'
      Size = 15
    end
  end
  object TRDeliverys: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 360
    Top = 192
  end
end
