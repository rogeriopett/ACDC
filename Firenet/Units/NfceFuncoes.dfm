object FormNfceFuncoes: TFormNfceFuncoes
  Left = 0
  Top = 0
  Caption = 'NFCe - Formul'#225'rio de apoio '#224's fun'#231#245'es.'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object TBVendas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendas
    UpdateObject = UPVendas
    SQL.Strings = (
      'select * from VENDAS'
      'where VED_CODIGO=:codigo'
      '')
    Left = 80
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBVendasVED_ALIQICMSCREDSN: TFMTBCDField
      FieldName = 'VED_ALIQICMSCREDSN'
      Origin = 'VED_ALIQICMSCREDSN'
      Precision = 18
    end
    object TBVendasVED_BAIRRO: TStringField
      FieldName = 'VED_BAIRRO'
      Origin = 'VED_BAIRRO'
      Size = 50
    end
    object TBVendasVED_BAIXADATA: TDateField
      FieldName = 'VED_BAIXADATA'
      Origin = 'VED_BAIXADATA'
    end
    object TBVendasVED_BAIXAPOR: TStringField
      FieldName = 'VED_BAIXAPOR'
      Origin = 'VED_BAIXAPOR'
    end
    object TBVendasVED_BASECOFINS: TFMTBCDField
      FieldName = 'VED_BASECOFINS'
      Origin = 'VED_BASECOFINS'
      Precision = 18
    end
    object TBVendasVED_BASECOFINSST: TFMTBCDField
      FieldName = 'VED_BASECOFINSST'
      Origin = 'VED_BASECOFINSST'
      Precision = 18
    end
    object TBVendasVED_BASEICMS: TFMTBCDField
      FieldName = 'VED_BASEICMS'
      Origin = 'VED_BASEICMS'
      Precision = 18
    end
    object TBVendasVED_BASEICMSST: TFMTBCDField
      FieldName = 'VED_BASEICMSST'
      Origin = 'VED_BASEICMSST'
      Precision = 18
    end
    object TBVendasVED_BASEII: TFMTBCDField
      FieldName = 'VED_BASEII'
      Origin = 'VED_BASEII'
      Precision = 18
    end
    object TBVendasVED_BASEIPI: TFMTBCDField
      FieldName = 'VED_BASEIPI'
      Origin = 'VED_BASEIPI'
      Precision = 18
    end
    object TBVendasVED_BASEISS: TFMTBCDField
      FieldName = 'VED_BASEISS'
      Origin = 'VED_BASEISS'
      Precision = 18
    end
    object TBVendasVED_BASEPIS: TFMTBCDField
      FieldName = 'VED_BASEPIS'
      Origin = 'VED_BASEPIS'
      Precision = 18
    end
    object TBVendasVED_BASEPISST: TFMTBCDField
      FieldName = 'VED_BASEPISST'
      Origin = 'VED_BASEPISST'
      Precision = 18
    end
    object TBVendasVED_CEP: TStringField
      FieldName = 'VED_CEP'
      Origin = 'VED_CEP'
      Size = 10
    end
    object TBVendasVED_CFOP: TIntegerField
      FieldName = 'VED_CFOP'
      Origin = 'VED_CFOP'
    end
    object TBVendasVED_CFOPDESC: TStringField
      FieldName = 'VED_CFOPDESC'
      Origin = 'VED_CFOPDESC'
      Size = 120
    end
    object TBVendasVED_CIDADE: TStringField
      FieldName = 'VED_CIDADE'
      Origin = 'VED_CIDADE'
      Size = 50
    end
    object TBVendasVED_CIDADECODIGO: TIntegerField
      FieldName = 'VED_CIDADECODIGO'
      Origin = 'VED_CIDADECODIGO'
    end
    object TBVendasVED_CLIENTE: TIntegerField
      FieldName = 'VED_CLIENTE'
      Origin = 'VED_CLIENTE'
      Required = True
    end
    object TBVendasVED_CNPJ: TStringField
      FieldName = 'VED_CNPJ'
      Origin = 'VED_CNPJ'
    end
    object TBVendasVED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = 'VED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVendasVED_CODIMPORTACAO: TStringField
      FieldName = 'VED_CODIMPORTACAO'
      Origin = 'VED_CODIMPORTACAO'
      Size = 30
    end
    object TBVendasVED_COMISSAO: TFMTBCDField
      FieldName = 'VED_COMISSAO'
      Origin = 'VED_COMISSAO'
      Precision = 18
    end
    object TBVendasVED_COMISSAOPOR: TStringField
      FieldName = 'VED_COMISSAOPOR'
      Origin = 'VED_COMISSAOPOR'
      Size = 1
    end
    object TBVendasVED_COMPLEMENTO: TStringField
      FieldName = 'VED_COMPLEMENTO'
      Origin = 'VED_COMPLEMENTO'
      Size = 80
    end
    object TBVendasVED_CONDICAO: TIntegerField
      FieldName = 'VED_CONDICAO'
      Origin = 'VED_CONDICAO'
      Required = True
    end
    object TBVendasVED_CONDICAOMEMO: TMemoField
      FieldName = 'VED_CONDICAOMEMO'
      Origin = 'VED_CONDICAOMEMO'
      BlobType = ftMemo
    end
    object TBVendasVED_CONFERIDO: TStringField
      FieldName = 'VED_CONFERIDO'
      Origin = 'VED_CONFERIDO'
      Size = 1
    end
    object TBVendasVED_CONFERIDODATA: TDateField
      FieldName = 'VED_CONFERIDODATA'
      Origin = 'VED_CONFERIDODATA'
    end
    object TBVendasVED_CONFERIDOPOR: TStringField
      FieldName = 'VED_CONFERIDOPOR'
      Origin = 'VED_CONFERIDOPOR'
    end
    object TBVendasVED_CONTATO: TStringField
      FieldName = 'VED_CONTATO'
      Origin = 'VED_CONTATO'
      Size = 80
    end
    object TBVendasVED_CPF: TStringField
      FieldName = 'VED_CPF'
      Origin = 'VED_CPF'
    end
    object TBVendasVED_CUSTOTOTAL: TFMTBCDField
      FieldName = 'VED_CUSTOTOTAL'
      Origin = 'VED_CUSTOTOTAL'
      Precision = 18
    end
    object TBVendasVED_DAV: TStringField
      FieldName = 'VED_DAV'
      Origin = 'VED_DAV'
      Size = 1
    end
    object TBVendasVED_DESCPORC: TFMTBCDField
      FieldName = 'VED_DESCPORC'
      Origin = 'VED_DESCPORC'
      Precision = 18
    end
    object TBVendasVED_DESCPORCCLIENTE: TFMTBCDField
      FieldName = 'VED_DESCPORCCLIENTE'
      Origin = 'VED_DESCPORCCLIENTE'
      Precision = 18
    end
    object TBVendasVED_DESCPORCCONDICAO: TFMTBCDField
      FieldName = 'VED_DESCPORCCONDICAO'
      Origin = 'VED_DESCPORCCONDICAO'
      Precision = 18
    end
    object TBVendasVED_DESCVALOR: TFMTBCDField
      FieldName = 'VED_DESCVALOR'
      Origin = 'VED_DESCVALOR'
      Precision = 18
    end
    object TBVendasVED_DESTACARIMPOSTOS: TStringField
      FieldName = 'VED_DESTACARIMPOSTOS'
      Origin = 'VED_DESTACARIMPOSTOS'
      Size = 1
    end
    object TBVendasVED_DIAPREFERENCIAL: TIntegerField
      FieldName = 'VED_DIAPREFERENCIAL'
      Origin = 'VED_DIAPREFERENCIAL'
    end
    object TBVendasVED_DTATUALIZACAO: TDateField
      FieldName = 'VED_DTATUALIZACAO'
      Origin = 'VED_DTATUALIZACAO'
    end
    object TBVendasVED_DTCADASTRO: TDateField
      FieldName = 'VED_DTCADASTRO'
      Origin = 'VED_DTCADASTRO'
    end
    object TBVendasVED_DTEMISSAO: TDateField
      FieldName = 'VED_DTEMISSAO'
      Origin = 'VED_DTEMISSAO'
    end
    object TBVendasVED_DTPRESTSERVICO: TDateField
      FieldName = 'VED_DTPRESTSERVICO'
      Origin = 'VED_DTPRESTSERVICO'
    end
    object TBVendasVED_DTSAIDA: TDateField
      FieldName = 'VED_DTSAIDA'
      Origin = 'VED_DTSAIDA'
    end
    object TBVendasVED_ENDERECO: TStringField
      FieldName = 'VED_ENDERECO'
      Origin = 'VED_ENDERECO'
      Size = 100
    end
    object TBVendasVED_ENTRADASAIDA: TStringField
      FieldName = 'VED_ENTRADASAIDA'
      Origin = 'VED_ENTRADASAIDA'
      Size = 1
    end
    object TBVendasVED_ENTREGUE: TStringField
      FieldName = 'VED_ENTREGUE'
      Origin = 'VED_ENTREGUE'
      Size = 1
    end
    object TBVendasVED_ESPECIE: TStringField
      FieldName = 'VED_ESPECIE'
      Origin = 'VED_ESPECIE'
      Size = 50
    end
    object TBVendasVED_ESTADO: TStringField
      FieldName = 'VED_ESTADO'
      Origin = 'VED_ESTADO'
      Size = 2
    end
    object TBVendasVED_ESTADOCODIGO: TIntegerField
      FieldName = 'VED_ESTADOCODIGO'
      Origin = 'VED_ESTADOCODIGO'
    end
    object TBVendasVED_EXLOCAL: TStringField
      FieldName = 'VED_EXLOCAL'
      Origin = 'VED_EXLOCAL'
      Size = 80
    end
    object TBVendasVED_EXPEDIDOPOR: TIntegerField
      FieldName = 'VED_EXPEDIDOPOR'
      Origin = 'VED_EXPEDIDOPOR'
      Required = True
    end
    object TBVendasVED_EXUFSAIDA: TStringField
      FieldName = 'VED_EXUFSAIDA'
      Origin = 'VED_EXUFSAIDA'
      Size = 2
    end
    object TBVendasVED_FONE1: TStringField
      FieldName = 'VED_FONE1'
      Origin = 'VED_FONE1'
    end
    object TBVendasVED_FORMAPAGTO: TStringField
      FieldName = 'VED_FORMAPAGTO'
      Origin = 'VED_FORMAPAGTO'
      Size = 15
    end
    object TBVendasVED_FRETE: TStringField
      FieldName = 'VED_FRETE'
      Origin = 'VED_FRETE'
      Size = 50
    end
    object TBVendasVED_HRATUALIZACAO: TTimeField
      FieldName = 'VED_HRATUALIZACAO'
      Origin = 'VED_HRATUALIZACAO'
    end
    object TBVendasVED_HRCADASTRO: TTimeField
      FieldName = 'VED_HRCADASTRO'
      Origin = 'VED_HRCADASTRO'
    end
    object TBVendasVED_IDESTRANGEIRO: TStringField
      FieldName = 'VED_IDESTRANGEIRO'
      Origin = 'VED_IDESTRANGEIRO'
    end
    object TBVendasVED_IE: TStringField
      FieldName = 'VED_IE'
      Origin = 'VED_IE'
    end
    object TBVendasVED_INFOADICFISCO: TMemoField
      FieldName = 'VED_INFOADICFISCO'
      Origin = 'VED_INFOADICFISCO'
      BlobType = ftMemo
    end
    object TBVendasVED_INFOCOMPLEMENTAR: TMemoField
      FieldName = 'VED_INFOCOMPLEMENTAR'
      Origin = 'VED_INFOCOMPLEMENTAR'
      BlobType = ftMemo
    end
    object TBVendasVED_LACRES: TStringField
      FieldName = 'VED_LACRES'
      Origin = 'VED_LACRES'
      Size = 50
    end
    object TBVendasVED_LUCROPORC: TFMTBCDField
      FieldName = 'VED_LUCROPORC'
      Origin = 'VED_LUCROPORC'
      Precision = 18
    end
    object TBVendasVED_LUCROVALOR: TFMTBCDField
      FieldName = 'VED_LUCROVALOR'
      Origin = 'VED_LUCROVALOR'
      Precision = 18
    end
    object TBVendasVED_MANUAL: TStringField
      FieldName = 'VED_MANUAL'
      Origin = 'VED_MANUAL'
      Size = 1
    end
    object TBVendasVED_MARCA: TStringField
      FieldName = 'VED_MARCA'
      Origin = 'VED_MARCA'
      Size = 50
    end
    object TBVendasVED_MOVIMENTAESTOQUE: TStringField
      FieldName = 'VED_MOVIMENTAESTOQUE'
      Origin = 'VED_MOVIMENTAESTOQUE'
      Size = 1
    end
    object TBVendasVED_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'VED_MOVIMENTAFINANCEIRO'
      Origin = 'VED_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object TBVendasVED_NFCE: TIntegerField
      FieldName = 'VED_NFCE'
      Origin = 'VED_NFCE'
    end
    object TBVendasVED_NFE: TIntegerField
      FieldName = 'VED_NFE'
      Origin = 'VED_NFE'
    end
    object TBVendasVED_NOME: TStringField
      FieldName = 'VED_NOME'
      Origin = 'VED_NOME'
      Size = 80
    end
    object TBVendasVED_NOTA: TIntegerField
      FieldName = 'VED_NOTA'
      Origin = 'VED_NOTA'
    end
    object TBVendasVED_NUMERO: TStringField
      FieldName = 'VED_NUMERO'
      Origin = 'VED_NUMERO'
      Size = 15
    end
    object TBVendasVED_OBSERVACOES: TMemoField
      FieldName = 'VED_OBSERVACOES'
      Origin = 'VED_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBVendasVED_PAIS: TStringField
      FieldName = 'VED_PAIS'
      Origin = 'VED_PAIS'
      Size = 80
    end
    object TBVendasVED_PAISCODIGO: TIntegerField
      FieldName = 'VED_PAISCODIGO'
      Origin = 'VED_PAISCODIGO'
    end
    object TBVendasVED_PEDIDOCLIENTE: TStringField
      FieldName = 'VED_PEDIDOCLIENTE'
      Origin = 'VED_PEDIDOCLIENTE'
      Size = 15
    end
    object TBVendasVED_PESOBRUTO: TFMTBCDField
      FieldName = 'VED_PESOBRUTO'
      Origin = 'VED_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object TBVendasVED_PESOLIQ: TFMTBCDField
      FieldName = 'VED_PESOLIQ'
      Origin = 'VED_PESOLIQ'
      Precision = 18
      Size = 3
    end
    object TBVendasVED_REBOQUEPLACA: TStringField
      FieldName = 'VED_REBOQUEPLACA'
      Origin = 'VED_REBOQUEPLACA'
      Size = 10
    end
    object TBVendasVED_REBOQUEPLACAUF: TStringField
      FieldName = 'VED_REBOQUEPLACAUF'
      Origin = 'VED_REBOQUEPLACAUF'
      Size = 2
    end
    object TBVendasVED_REBOQUERNTC: TStringField
      FieldName = 'VED_REBOQUERNTC'
      Origin = 'VED_REBOQUERNTC'
    end
    object TBVendasVED_RG: TStringField
      FieldName = 'VED_RG'
      Origin = 'VED_RG'
    end
    object TBVendasVED_SEQUENCIAITEM: TIntegerField
      FieldName = 'VED_SEQUENCIAITEM'
      Origin = 'VED_SEQUENCIAITEM'
    end
    object TBVendasVED_STATUS: TStringField
      FieldName = 'VED_STATUS'
      Origin = 'VED_STATUS'
      Size = 1
    end
    object TBVendasVED_SUFRAMA: TStringField
      FieldName = 'VED_SUFRAMA'
      Origin = 'VED_SUFRAMA'
    end
    object TBVendasVED_TABELAPRECO: TStringField
      FieldName = 'VED_TABELAPRECO'
      Origin = 'VED_TABELAPRECO'
      Size = 1
    end
    object TBVendasVED_TIPOATENDIMENTO: TStringField
      FieldName = 'VED_TIPOATENDIMENTO'
      Origin = 'VED_TIPOATENDIMENTO'
      Size = 50
    end
    object TBVendasVED_TIPOCONSUMIDOR: TStringField
      FieldName = 'VED_TIPOCONSUMIDOR'
      Origin = 'VED_TIPOCONSUMIDOR'
      Size = 30
    end
    object TBVendasVED_TIPOOPERACAO: TStringField
      FieldName = 'VED_TIPOOPERACAO'
      Origin = 'VED_TIPOOPERACAO'
      Size = 30
    end
    object TBVendasVED_TOTALADUANA: TFMTBCDField
      FieldName = 'VED_TOTALADUANA'
      Origin = 'VED_TOTALADUANA'
      Precision = 18
    end
    object TBVendasVED_TOTALBRUTO: TFMTBCDField
      FieldName = 'VED_TOTALBRUTO'
      Origin = 'VED_TOTALBRUTO'
      Precision = 18
    end
    object TBVendasVED_TOTALCOFINS: TFMTBCDField
      FieldName = 'VED_TOTALCOFINS'
      Origin = 'VED_TOTALCOFINS'
      Precision = 18
    end
    object TBVendasVED_TOTALCOFINSST: TFMTBCDField
      FieldName = 'VED_TOTALCOFINSST'
      Origin = 'VED_TOTALCOFINSST'
      Precision = 18
    end
    object TBVendasVED_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'VED_TOTALCOMISSAO'
      Origin = 'VED_TOTALCOMISSAO'
      Precision = 18
    end
    object TBVendasVED_TOTALFCP: TFMTBCDField
      FieldName = 'VED_TOTALFCP'
      Origin = 'VED_TOTALFCP'
      Precision = 18
    end
    object TBVendasVED_TOTALFCPST: TFMTBCDField
      FieldName = 'VED_TOTALFCPST'
      Origin = 'VED_TOTALFCPST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMS: TFMTBCDField
      FieldName = 'VED_TOTALICMS'
      Origin = 'VED_TOTALICMS'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSCREDSN: TFMTBCDField
      FieldName = 'VED_TOTALICMSCREDSN'
      Origin = 'VED_TOTALICMSCREDSN'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSST: TFMTBCDField
      FieldName = 'VED_TOTALICMSST'
      Origin = 'VED_TOTALICMSST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSUFDEST: TFMTBCDField
      FieldName = 'VED_TOTALICMSUFDEST'
      Origin = 'VED_TOTALICMSUFDEST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSUFREMET: TFMTBCDField
      FieldName = 'VED_TOTALICMSUFREMET'
      Origin = 'VED_TOTALICMSUFREMET'
      Precision = 18
    end
    object TBVendasVED_TOTALII: TFMTBCDField
      FieldName = 'VED_TOTALII'
      Origin = 'VED_TOTALII'
      Precision = 18
    end
    object TBVendasVED_TOTALIOF: TFMTBCDField
      FieldName = 'VED_TOTALIOF'
      Origin = 'VED_TOTALIOF'
      Precision = 18
    end
    object TBVendasVED_TOTALIPI: TFMTBCDField
      FieldName = 'VED_TOTALIPI'
      Origin = 'VED_TOTALIPI'
      Precision = 18
    end
    object TBVendasVED_TOTALISS: TFMTBCDField
      FieldName = 'VED_TOTALISS'
      Origin = 'VED_TOTALISS'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDEDUCAO: TFMTBCDField
      FieldName = 'VED_TOTALISSDEDUCAO'
      Origin = 'VED_TOTALISSDEDUCAO'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDESCCOND: TFMTBCDField
      FieldName = 'VED_TOTALISSDESCCOND'
      Origin = 'VED_TOTALISSDESCCOND'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDESCINCOND: TFMTBCDField
      FieldName = 'VED_TOTALISSDESCINCOND'
      Origin = 'VED_TOTALISSDESCINCOND'
      Precision = 18
    end
    object TBVendasVED_TOTALISSOUTROS: TFMTBCDField
      FieldName = 'VED_TOTALISSOUTROS'
      Origin = 'VED_TOTALISSOUTROS'
      Precision = 18
    end
    object TBVendasVED_TOTALISSRETENCAO: TFMTBCDField
      FieldName = 'VED_TOTALISSRETENCAO'
      Origin = 'VED_TOTALISSRETENCAO'
      Precision = 18
    end
    object TBVendasVED_TOTALITENS: TFMTBCDField
      FieldName = 'VED_TOTALITENS'
      Origin = 'VED_TOTALITENS'
      Precision = 18
    end
    object TBVendasVED_TOTALPIS: TFMTBCDField
      FieldName = 'VED_TOTALPIS'
      Origin = 'VED_TOTALPIS'
      Precision = 18
    end
    object TBVendasVED_TOTALPISST: TFMTBCDField
      FieldName = 'VED_TOTALPISST'
      Origin = 'VED_TOTALPISST'
      Precision = 18
    end
    object TBVendasVED_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'VED_TOTALPRODUTOS'
      Origin = 'VED_TOTALPRODUTOS'
      Precision = 18
    end
    object TBVendasVED_TOTALSERVICOS: TFMTBCDField
      FieldName = 'VED_TOTALSERVICOS'
      Origin = 'VED_TOTALSERVICOS'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOS'
      Origin = 'VED_TOTALTRIBUTOS'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSEST'
      Origin = 'VED_TOTALTRIBUTOSEST'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSFED'
      Origin = 'VED_TOTALTRIBUTOSFED'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSIMP: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSIMP'
      Origin = 'VED_TOTALTRIBUTOSIMP'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSMUN'
      Origin = 'VED_TOTALTRIBUTOSMUN'
      Precision = 18
    end
    object TBVendasVED_TRANSPCIDADE: TStringField
      FieldName = 'VED_TRANSPCIDADE'
      Origin = 'VED_TRANSPCIDADE'
      Size = 50
    end
    object TBVendasVED_TRANSPCNPJ: TStringField
      FieldName = 'VED_TRANSPCNPJ'
      Origin = 'VED_TRANSPCNPJ'
    end
    object TBVendasVED_TRANSPCPF: TStringField
      FieldName = 'VED_TRANSPCPF'
      Origin = 'VED_TRANSPCPF'
    end
    object TBVendasVED_TRANSPEMAIL: TStringField
      FieldName = 'VED_TRANSPEMAIL'
      Origin = 'VED_TRANSPEMAIL'
      Size = 100
    end
    object TBVendasVED_TRANSPENDERECO: TStringField
      FieldName = 'VED_TRANSPENDERECO'
      Origin = 'VED_TRANSPENDERECO'
      Size = 100
    end
    object TBVendasVED_TRANSPESTADO: TStringField
      FieldName = 'VED_TRANSPESTADO'
      Origin = 'VED_TRANSPESTADO'
      Size = 2
    end
    object TBVendasVED_TRANSPFONE: TStringField
      FieldName = 'VED_TRANSPFONE'
      Origin = 'VED_TRANSPFONE'
    end
    object TBVendasVED_TRANSPIE: TStringField
      FieldName = 'VED_TRANSPIE'
      Origin = 'VED_TRANSPIE'
    end
    object TBVendasVED_TRANSPNOME: TStringField
      FieldName = 'VED_TRANSPNOME'
      Origin = 'VED_TRANSPNOME'
      Size = 80
    end
    object TBVendasVED_TRANSPORTADORA: TIntegerField
      FieldName = 'VED_TRANSPORTADORA'
      Origin = 'VED_TRANSPORTADORA'
    end
    object TBVendasVED_USUARIO: TStringField
      FieldName = 'VED_USUARIO'
      Origin = 'VED_USUARIO'
    end
    object TBVendasVED_VALORDESPACES: TFMTBCDField
      FieldName = 'VED_VALORDESPACES'
      Origin = 'VED_VALORDESPACES'
      Precision = 18
    end
    object TBVendasVED_VALORFRETE: TFMTBCDField
      FieldName = 'VED_VALORFRETE'
      Origin = 'VED_VALORFRETE'
      Precision = 18
    end
    object TBVendasVED_VALORSEGURO: TFMTBCDField
      FieldName = 'VED_VALORSEGURO'
      Origin = 'VED_VALORSEGURO'
      Precision = 18
    end
    object TBVendasVED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = 'VED_VALORTOTAL'
      Precision = 18
    end
    object TBVendasVED_VEICULOPLACA: TStringField
      FieldName = 'VED_VEICULOPLACA'
      Origin = 'VED_VEICULOPLACA'
      Size = 10
    end
    object TBVendasVED_VEICULOPLACAUF: TStringField
      FieldName = 'VED_VEICULOPLACAUF'
      Origin = 'VED_VEICULOPLACAUF'
      Size = 2
    end
    object TBVendasVED_VEICULORNTC: TStringField
      FieldName = 'VED_VEICULORNTC'
      Origin = 'VED_VEICULORNTC'
    end
    object TBVendasVED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = 'VED_VENDEDOR'
      Required = True
    end
    object TBVendasVED_VIAINTERNET: TStringField
      FieldName = 'VED_VIAINTERNET'
      Origin = 'VED_VIAINTERNET'
      Size = 1
    end
    object TBVendasVED_VIAINTERNETSTATUS: TStringField
      FieldName = 'VED_VIAINTERNETSTATUS'
      Origin = 'VED_VIAINTERNETSTATUS'
      Size = 1
    end
    object TBVendasVED_VOLUMES: TIntegerField
      FieldName = 'VED_VOLUMES'
      Origin = 'VED_VOLUMES'
    end
    object TBVendasVED_VOLUMESNUM: TStringField
      FieldName = 'VED_VOLUMESNUM'
      Origin = 'VED_VOLUMESNUM'
      Size = 50
    end
  end
  object UPVendas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VENDAS'
      '(VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, '
      '  VED_BAIXAPOR, VED_BASECOFINS, VED_BASECOFINSST, '
      '  VED_BASEICMS, VED_BASEICMSST, VED_BASEII, '
      '  VED_BASEIPI, VED_BASEISS, VED_BASEPIS, VED_BASEPISST, '
      '  VED_CEP, VED_CFOP, VED_CFOPDESC, VED_CIDADE, '
      '  VED_CIDADECODIGO, VED_CLIENTE, VED_CNPJ, '
      '  VED_CODIGO, VED_CODIMPORTACAO, VED_COMISSAO, '
      '  VED_COMISSAOPOR, VED_COMPLEMENTO, VED_CONDICAO, '
      '  VED_CONDICAOMEMO, VED_CONFERIDO, VED_CONFERIDODATA, '
      '  VED_CONFERIDOPOR, VED_CONTATO, VED_CPF, VED_CUSTOTOTAL, '
      '  VED_DAV, VED_DESCPORC, VED_DESCPORCCLIENTE, '
      '  VED_DESCPORCCONDICAO, VED_DESCVALOR, VED_DESTACARIMPOSTOS, '
      '  VED_DIAPREFERENCIAL, VED_DTATUALIZACAO, VED_DTCADASTRO, '
      '  VED_DTEMISSAO, VED_DTPRESTSERVICO, VED_DTSAIDA, '
      '  VED_ENDERECO, VED_ENTRADASAIDA, VED_ENTREGUE, '
      '  VED_ESPECIE, VED_ESTADO, VED_ESTADOCODIGO, '
      '  VED_EXLOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, '
      '  VED_FONE1, VED_FORMAPAGTO, VED_FRETE, VED_HRATUALIZACAO, '
      '  VED_HRCADASTRO, VED_IDESTRANGEIRO, VED_IE, '
      '  VED_INFOADICFISCO, VED_INFOCOMPLEMENTAR, VED_LACRES, '
      '  VED_LUCROPORC, VED_LUCROVALOR, VED_MANUAL, '
      '  VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINANCEIRO, '
      '  VED_NFCE, VED_NFE, VED_NOME, VED_NOTA, '
      '  VED_NUMERO, VED_OBSERVACOES, VED_PAIS, VED_PAISCODIGO, '
      '  VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_PESOLIQ, '
      '  VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, '
      '  VED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, '
      '  VED_TABELAPRECO, VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, '
      '  VED_TIPOOPERACAO, VED_TOTALADUANA, VED_TOTALBRUTO, '
      '  VED_TOTALCOFINS, VED_TOTALCOFINSST, VED_TOTALCOMISSAO, '
      '  VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS, '
      '  VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, '
      '  VED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, '
      '  VED_TOTALIPI, VED_TOTALISS, VED_TOTALISSDEDUCAO, '
      '  VED_TOTALISSDESCCOND, VED_TOTALISSDESCINCOND, '
      '  VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOTALITENS, '
      '  VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, '
      '  VED_TOTALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, '
      
        '  VED_TOTALTRIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSM' +
        'UN, '
      '  VED_TRANSPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, '
      '  VED_TRANSPEMAIL, VED_TRANSPENDERECO, VED_TRANSPESTADO, '
      '  VED_TRANSPFONE, VED_TRANSPIE, VED_TRANSPNOME, '
      '  VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES, '
      '  VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, '
      '  VED_VEICULOPLACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, '
      '  VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, '
      '  VED_VOLUMES, VED_VOLUMESNUM)'
      
        'VALUES (:NEW_VED_ALIQICMSCREDSN, :NEW_VED_BAIRRO, :NEW_VED_BAIXA' +
        'DATA, '
      
        '  :NEW_VED_BAIXAPOR, :NEW_VED_BASECOFINS, :NEW_VED_BASECOFINSST,' +
        ' '
      '  :NEW_VED_BASEICMS, :NEW_VED_BASEICMSST, :NEW_VED_BASEII, '
      
        '  :NEW_VED_BASEIPI, :NEW_VED_BASEISS, :NEW_VED_BASEPIS, :NEW_VED' +
        '_BASEPISST, '
      
        '  :NEW_VED_CEP, :NEW_VED_CFOP, :NEW_VED_CFOPDESC, :NEW_VED_CIDAD' +
        'E, '
      '  :NEW_VED_CIDADECODIGO, :NEW_VED_CLIENTE, :NEW_VED_CNPJ, '
      '  :NEW_VED_CODIGO, :NEW_VED_CODIMPORTACAO, :NEW_VED_COMISSAO, '
      
        '  :NEW_VED_COMISSAOPOR, :NEW_VED_COMPLEMENTO, :NEW_VED_CONDICAO,' +
        ' '
      
        '  :NEW_VED_CONDICAOMEMO, :NEW_VED_CONFERIDO, :NEW_VED_CONFERIDOD' +
        'ATA, '
      
        '  :NEW_VED_CONFERIDOPOR, :NEW_VED_CONTATO, :NEW_VED_CPF, :NEW_VE' +
        'D_CUSTOTOTAL, '
      '  :NEW_VED_DAV, :NEW_VED_DESCPORC, :NEW_VED_DESCPORCCLIENTE, '
      
        '  :NEW_VED_DESCPORCCONDICAO, :NEW_VED_DESCVALOR, :NEW_VED_DESTAC' +
        'ARIMPOSTOS, '
      
        '  :NEW_VED_DIAPREFERENCIAL, :NEW_VED_DTATUALIZACAO, :NEW_VED_DTC' +
        'ADASTRO, '
      
        '  :NEW_VED_DTEMISSAO, :NEW_VED_DTPRESTSERVICO, :NEW_VED_DTSAIDA,' +
        ' '
      '  :NEW_VED_ENDERECO, :NEW_VED_ENTRADASAIDA, :NEW_VED_ENTREGUE, '
      '  :NEW_VED_ESPECIE, :NEW_VED_ESTADO, :NEW_VED_ESTADOCODIGO, '
      '  :NEW_VED_EXLOCAL, :NEW_VED_EXPEDIDOPOR, :NEW_VED_EXUFSAIDA, '
      
        '  :NEW_VED_FONE1, :NEW_VED_FORMAPAGTO, :NEW_VED_FRETE, :NEW_VED_' +
        'HRATUALIZACAO, '
      '  :NEW_VED_HRCADASTRO, :NEW_VED_IDESTRANGEIRO, :NEW_VED_IE, '
      
        '  :NEW_VED_INFOADICFISCO, :NEW_VED_INFOCOMPLEMENTAR, :NEW_VED_LA' +
        'CRES, '
      '  :NEW_VED_LUCROPORC, :NEW_VED_LUCROVALOR, :NEW_VED_MANUAL, '
      
        '  :NEW_VED_MARCA, :NEW_VED_MOVIMENTAESTOQUE, :NEW_VED_MOVIMENTAF' +
        'INANCEIRO, '
      '  :NEW_VED_NFCE, :NEW_VED_NFE, :NEW_VED_NOME, :NEW_VED_NOTA, '
      
        '  :NEW_VED_NUMERO, :NEW_VED_OBSERVACOES, :NEW_VED_PAIS, :NEW_VED' +
        '_PAISCODIGO, '
      '  :NEW_VED_PEDIDOCLIENTE, :NEW_VED_PESOBRUTO, :NEW_VED_PESOLIQ, '
      
        '  :NEW_VED_REBOQUEPLACA, :NEW_VED_REBOQUEPLACAUF, :NEW_VED_REBOQ' +
        'UERNTC, '
      
        '  :NEW_VED_RG, :NEW_VED_SEQUENCIAITEM, :NEW_VED_STATUS, :NEW_VED' +
        '_SUFRAMA, '
      
        '  :NEW_VED_TABELAPRECO, :NEW_VED_TIPOATENDIMENTO, :NEW_VED_TIPOC' +
        'ONSUMIDOR, '
      
        '  :NEW_VED_TIPOOPERACAO, :NEW_VED_TOTALADUANA, :NEW_VED_TOTALBRU' +
        'TO, '
      
        '  :NEW_VED_TOTALCOFINS, :NEW_VED_TOTALCOFINSST, :NEW_VED_TOTALCO' +
        'MISSAO, '
      '  :NEW_VED_TOTALFCP, :NEW_VED_TOTALFCPST, :NEW_VED_TOTALICMS, '
      
        '  :NEW_VED_TOTALICMSCREDSN, :NEW_VED_TOTALICMSST, :NEW_VED_TOTAL' +
        'ICMSUFDEST, '
      
        '  :NEW_VED_TOTALICMSUFREMET, :NEW_VED_TOTALII, :NEW_VED_TOTALIOF' +
        ', '
      
        '  :NEW_VED_TOTALIPI, :NEW_VED_TOTALISS, :NEW_VED_TOTALISSDEDUCAO' +
        ', '
      '  :NEW_VED_TOTALISSDESCCOND, :NEW_VED_TOTALISSDESCINCOND, '
      
        '  :NEW_VED_TOTALISSOUTROS, :NEW_VED_TOTALISSRETENCAO, :NEW_VED_T' +
        'OTALITENS, '
      
        '  :NEW_VED_TOTALPIS, :NEW_VED_TOTALPISST, :NEW_VED_TOTALPRODUTOS' +
        ', '
      
        '  :NEW_VED_TOTALSERVICOS, :NEW_VED_TOTALTRIBUTOS, :NEW_VED_TOTAL' +
        'TRIBUTOSEST, '
      
        '  :NEW_VED_TOTALTRIBUTOSFED, :NEW_VED_TOTALTRIBUTOSIMP, :NEW_VED' +
        '_TOTALTRIBUTOSMUN, '
      
        '  :NEW_VED_TRANSPCIDADE, :NEW_VED_TRANSPCNPJ, :NEW_VED_TRANSPCPF' +
        ', '
      
        '  :NEW_VED_TRANSPEMAIL, :NEW_VED_TRANSPENDERECO, :NEW_VED_TRANSP' +
        'ESTADO, '
      '  :NEW_VED_TRANSPFONE, :NEW_VED_TRANSPIE, :NEW_VED_TRANSPNOME, '
      
        '  :NEW_VED_TRANSPORTADORA, :NEW_VED_USUARIO, :NEW_VED_VALORDESPA' +
        'CES, '
      
        '  :NEW_VED_VALORFRETE, :NEW_VED_VALORSEGURO, :NEW_VED_VALORTOTAL' +
        ', '
      
        '  :NEW_VED_VEICULOPLACA, :NEW_VED_VEICULOPLACAUF, :NEW_VED_VEICU' +
        'LORNTC, '
      
        '  :NEW_VED_VENDEDOR, :NEW_VED_VIAINTERNET, :NEW_VED_VIAINTERNETS' +
        'TATUS, '
      '  :NEW_VED_VOLUMES, :NEW_VED_VOLUMESNUM)'
      
        'RETURNING VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAI' +
        'XAPOR, VED_BASECOFINS, VED_BASECOFINSST, VED_BASEICMS, VED_BASEI' +
        'CMSST, VED_BASEII, VED_BASEIPI, VED_BASEISS, VED_BASEPIS, VED_BA' +
        'SEPISST, VED_CEP, VED_CFOP, VED_CFOPDESC, VED_CIDADE, VED_CIDADE' +
        'CODIGO, VED_CLIENTE, VED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, VE' +
        'D_COMISSAO, VED_COMISSAOPOR, VED_COMPLEMENTO, VED_CONDICAO, VED_' +
        'CONDICAOMEMO, VED_CONFERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR' +
        ', VED_CONTATO, VED_CPF, VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, V' +
        'ED_DESCPORCCLIENTE, VED_DESCPORCCONDICAO, VED_DESCVALOR, VED_DES' +
        'TACARIMPOSTOS, VED_DIAPREFERENCIAL, VED_DTATUALIZACAO, VED_DTCAD' +
        'ASTRO, VED_DTEMISSAO, VED_DTPRESTSERVICO, VED_DTSAIDA, VED_ENDER' +
        'ECO, VED_ENTRADASAIDA, VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, VE' +
        'D_ESTADOCODIGO, VED_EXLOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, VED' +
        '_FONE1, VED_FORMAPAGTO, VED_FRETE, VED_HRATUALIZACAO, VED_HRCADA' +
        'STRO, VED_IDESTRANGEIRO, VED_IE, VED_INFOADICFISCO, VED_INFOCOMP' +
        'LEMENTAR, VED_LACRES, VED_LUCROPORC, VED_LUCROVALOR, VED_MANUAL,' +
        ' VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINANCEIRO, VED_N' +
        'FCE, VED_NFE, VED_NOME, VED_NOTA, VED_NUMERO, VED_OBSERVACOES, V' +
        'ED_PAIS, VED_PAISCODIGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_P' +
        'ESOLIQ, VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, V' +
        'ED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, VED_TABELAPRE' +
        'CO, VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, V' +
        'ED_TOTALADUANA, VED_TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOFINS' +
        'ST, VED_TOTALCOMISSAO, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALIC' +
        'MS, VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, V' +
        'ED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI, VE' +
        'D_TOTALISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, VED_TOTAL' +
        'ISSDESCINCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOT' +
        'ALITENS, VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, VED_TO' +
        'TALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, VED_TOTALT' +
        'RIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSMUN, VED_TRAN' +
        'SPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMAIL, VED_TR' +
        'ANSPENDERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRANSPIE, VE' +
        'D_TRANSPNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES' +
        ', VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VEICULOPL' +
        'ACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VENDEDOR, VED_VIAI' +
        'NTERNET, VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOLUMESNUM')
    ModifySQL.Strings = (
      'UPDATE VENDAS'
      
        'SET VED_ALIQICMSCREDSN = :NEW_VED_ALIQICMSCREDSN, VED_BAIRRO = :' +
        'NEW_VED_BAIRRO, '
      
        '  VED_BAIXADATA = :NEW_VED_BAIXADATA, VED_BAIXAPOR = :NEW_VED_BA' +
        'IXAPOR, '
      
        '  VED_BASECOFINS = :NEW_VED_BASECOFINS, VED_BASECOFINSST = :NEW_' +
        'VED_BASECOFINSST, '
      
        '  VED_BASEICMS = :NEW_VED_BASEICMS, VED_BASEICMSST = :NEW_VED_BA' +
        'SEICMSST, '
      '  VED_BASEII = :NEW_VED_BASEII, VED_BASEIPI = :NEW_VED_BASEIPI, '
      
        '  VED_BASEISS = :NEW_VED_BASEISS, VED_BASEPIS = :NEW_VED_BASEPIS' +
        ', '
      '  VED_BASEPISST = :NEW_VED_BASEPISST, VED_CEP = :NEW_VED_CEP, '
      '  VED_CFOP = :NEW_VED_CFOP, VED_CFOPDESC = :NEW_VED_CFOPDESC, '
      
        '  VED_CIDADE = :NEW_VED_CIDADE, VED_CIDADECODIGO = :NEW_VED_CIDA' +
        'DECODIGO, '
      '  VED_CLIENTE = :NEW_VED_CLIENTE, VED_CNPJ = :NEW_VED_CNPJ, '
      
        '  VED_CODIGO = :NEW_VED_CODIGO, VED_CODIMPORTACAO = :NEW_VED_COD' +
        'IMPORTACAO, '
      
        '  VED_COMISSAO = :NEW_VED_COMISSAO, VED_COMISSAOPOR = :NEW_VED_C' +
        'OMISSAOPOR, '
      
        '  VED_COMPLEMENTO = :NEW_VED_COMPLEMENTO, VED_CONDICAO = :NEW_VE' +
        'D_CONDICAO, '
      
        '  VED_CONDICAOMEMO = :NEW_VED_CONDICAOMEMO, VED_CONFERIDO = :NEW' +
        '_VED_CONFERIDO, '
      
        '  VED_CONFERIDODATA = :NEW_VED_CONFERIDODATA, VED_CONFERIDOPOR =' +
        ' :NEW_VED_CONFERIDOPOR, '
      '  VED_CONTATO = :NEW_VED_CONTATO, VED_CPF = :NEW_VED_CPF, '
      '  VED_CUSTOTOTAL = :NEW_VED_CUSTOTOTAL, VED_DAV = :NEW_VED_DAV, '
      
        '  VED_DESCPORC = :NEW_VED_DESCPORC, VED_DESCPORCCLIENTE = :NEW_V' +
        'ED_DESCPORCCLIENTE, '
      
        '  VED_DESCPORCCONDICAO = :NEW_VED_DESCPORCCONDICAO, VED_DESCVALO' +
        'R = :NEW_VED_DESCVALOR, '
      
        '  VED_DESTACARIMPOSTOS = :NEW_VED_DESTACARIMPOSTOS, VED_DIAPREFE' +
        'RENCIAL = :NEW_VED_DIAPREFERENCIAL, '
      
        '  VED_DTATUALIZACAO = :NEW_VED_DTATUALIZACAO, VED_DTCADASTRO = :' +
        'NEW_VED_DTCADASTRO, '
      
        '  VED_DTEMISSAO = :NEW_VED_DTEMISSAO, VED_DTPRESTSERVICO = :NEW_' +
        'VED_DTPRESTSERVICO, '
      
        '  VED_DTSAIDA = :NEW_VED_DTSAIDA, VED_ENDERECO = :NEW_VED_ENDERE' +
        'CO, '
      
        '  VED_ENTRADASAIDA = :NEW_VED_ENTRADASAIDA, VED_ENTREGUE = :NEW_' +
        'VED_ENTREGUE, '
      '  VED_ESPECIE = :NEW_VED_ESPECIE, VED_ESTADO = :NEW_VED_ESTADO, '
      
        '  VED_ESTADOCODIGO = :NEW_VED_ESTADOCODIGO, VED_EXLOCAL = :NEW_V' +
        'ED_EXLOCAL, '
      
        '  VED_EXPEDIDOPOR = :NEW_VED_EXPEDIDOPOR, VED_EXUFSAIDA = :NEW_V' +
        'ED_EXUFSAIDA, '
      
        '  VED_FONE1 = :NEW_VED_FONE1, VED_FORMAPAGTO = :NEW_VED_FORMAPAG' +
        'TO, '
      
        '  VED_FRETE = :NEW_VED_FRETE, VED_HRATUALIZACAO = :NEW_VED_HRATU' +
        'ALIZACAO, '
      
        '  VED_HRCADASTRO = :NEW_VED_HRCADASTRO, VED_IDESTRANGEIRO = :NEW' +
        '_VED_IDESTRANGEIRO, '
      
        '  VED_IE = :NEW_VED_IE, VED_INFOADICFISCO = :NEW_VED_INFOADICFIS' +
        'CO, '
      
        '  VED_INFOCOMPLEMENTAR = :NEW_VED_INFOCOMPLEMENTAR, VED_LACRES =' +
        ' :NEW_VED_LACRES, '
      
        '  VED_LUCROPORC = :NEW_VED_LUCROPORC, VED_LUCROVALOR = :NEW_VED_' +
        'LUCROVALOR, '
      '  VED_MANUAL = :NEW_VED_MANUAL, VED_MARCA = :NEW_VED_MARCA, '
      
        '  VED_MOVIMENTAESTOQUE = :NEW_VED_MOVIMENTAESTOQUE, VED_MOVIMENT' +
        'AFINANCEIRO = :NEW_VED_MOVIMENTAFINANCEIRO, '
      
        '  VED_NFCE = :NEW_VED_NFCE, VED_NFE = :NEW_VED_NFE, VED_NOME = :' +
        'NEW_VED_NOME, '
      '  VED_NOTA = :NEW_VED_NOTA, VED_NUMERO = :NEW_VED_NUMERO, '
      
        '  VED_OBSERVACOES = :NEW_VED_OBSERVACOES, VED_PAIS = :NEW_VED_PA' +
        'IS, '
      
        '  VED_PAISCODIGO = :NEW_VED_PAISCODIGO, VED_PEDIDOCLIENTE = :NEW' +
        '_VED_PEDIDOCLIENTE, '
      
        '  VED_PESOBRUTO = :NEW_VED_PESOBRUTO, VED_PESOLIQ = :NEW_VED_PES' +
        'OLIQ, '
      
        '  VED_REBOQUEPLACA = :NEW_VED_REBOQUEPLACA, VED_REBOQUEPLACAUF =' +
        ' :NEW_VED_REBOQUEPLACAUF, '
      '  VED_REBOQUERNTC = :NEW_VED_REBOQUERNTC, VED_RG = :NEW_VED_RG, '
      
        '  VED_SEQUENCIAITEM = :NEW_VED_SEQUENCIAITEM, VED_STATUS = :NEW_' +
        'VED_STATUS, '
      
        '  VED_SUFRAMA = :NEW_VED_SUFRAMA, VED_TABELAPRECO = :NEW_VED_TAB' +
        'ELAPRECO, '
      
        '  VED_TIPOATENDIMENTO = :NEW_VED_TIPOATENDIMENTO, VED_TIPOCONSUM' +
        'IDOR = :NEW_VED_TIPOCONSUMIDOR, '
      
        '  VED_TIPOOPERACAO = :NEW_VED_TIPOOPERACAO, VED_TOTALADUANA = :N' +
        'EW_VED_TOTALADUANA, '
      
        '  VED_TOTALBRUTO = :NEW_VED_TOTALBRUTO, VED_TOTALCOFINS = :NEW_V' +
        'ED_TOTALCOFINS, '
      
        '  VED_TOTALCOFINSST = :NEW_VED_TOTALCOFINSST, VED_TOTALCOMISSAO ' +
        '= :NEW_VED_TOTALCOMISSAO, '
      
        '  VED_TOTALFCP = :NEW_VED_TOTALFCP, VED_TOTALFCPST = :NEW_VED_TO' +
        'TALFCPST, '
      
        '  VED_TOTALICMS = :NEW_VED_TOTALICMS, VED_TOTALICMSCREDSN = :NEW' +
        '_VED_TOTALICMSCREDSN, '
      
        '  VED_TOTALICMSST = :NEW_VED_TOTALICMSST, VED_TOTALICMSUFDEST = ' +
        ':NEW_VED_TOTALICMSUFDEST, '
      
        '  VED_TOTALICMSUFREMET = :NEW_VED_TOTALICMSUFREMET, VED_TOTALII ' +
        '= :NEW_VED_TOTALII, '
      
        '  VED_TOTALIOF = :NEW_VED_TOTALIOF, VED_TOTALIPI = :NEW_VED_TOTA' +
        'LIPI, '
      
        '  VED_TOTALISS = :NEW_VED_TOTALISS, VED_TOTALISSDEDUCAO = :NEW_V' +
        'ED_TOTALISSDEDUCAO, '
      
        '  VED_TOTALISSDESCCOND = :NEW_VED_TOTALISSDESCCOND, VED_TOTALISS' +
        'DESCINCOND = :NEW_VED_TOTALISSDESCINCOND, '
      
        '  VED_TOTALISSOUTROS = :NEW_VED_TOTALISSOUTROS, VED_TOTALISSRETE' +
        'NCAO = :NEW_VED_TOTALISSRETENCAO, '
      
        '  VED_TOTALITENS = :NEW_VED_TOTALITENS, VED_TOTALPIS = :NEW_VED_' +
        'TOTALPIS, '
      
        '  VED_TOTALPISST = :NEW_VED_TOTALPISST, VED_TOTALPRODUTOS = :NEW' +
        '_VED_TOTALPRODUTOS, '
      
        '  VED_TOTALSERVICOS = :NEW_VED_TOTALSERVICOS, VED_TOTALTRIBUTOS ' +
        '= :NEW_VED_TOTALTRIBUTOS, '
      
        '  VED_TOTALTRIBUTOSEST = :NEW_VED_TOTALTRIBUTOSEST, VED_TOTALTRI' +
        'BUTOSFED = :NEW_VED_TOTALTRIBUTOSFED, '
      
        '  VED_TOTALTRIBUTOSIMP = :NEW_VED_TOTALTRIBUTOSIMP, VED_TOTALTRI' +
        'BUTOSMUN = :NEW_VED_TOTALTRIBUTOSMUN, '
      
        '  VED_TRANSPCIDADE = :NEW_VED_TRANSPCIDADE, VED_TRANSPCNPJ = :NE' +
        'W_VED_TRANSPCNPJ, '
      
        '  VED_TRANSPCPF = :NEW_VED_TRANSPCPF, VED_TRANSPEMAIL = :NEW_VED' +
        '_TRANSPEMAIL, '
      
        '  VED_TRANSPENDERECO = :NEW_VED_TRANSPENDERECO, VED_TRANSPESTADO' +
        ' = :NEW_VED_TRANSPESTADO, '
      
        '  VED_TRANSPFONE = :NEW_VED_TRANSPFONE, VED_TRANSPIE = :NEW_VED_' +
        'TRANSPIE, '
      
        '  VED_TRANSPNOME = :NEW_VED_TRANSPNOME, VED_TRANSPORTADORA = :NE' +
        'W_VED_TRANSPORTADORA, '
      
        '  VED_USUARIO = :NEW_VED_USUARIO, VED_VALORDESPACES = :NEW_VED_V' +
        'ALORDESPACES, '
      
        '  VED_VALORFRETE = :NEW_VED_VALORFRETE, VED_VALORSEGURO = :NEW_V' +
        'ED_VALORSEGURO, '
      
        '  VED_VALORTOTAL = :NEW_VED_VALORTOTAL, VED_VEICULOPLACA = :NEW_' +
        'VED_VEICULOPLACA, '
      
        '  VED_VEICULOPLACAUF = :NEW_VED_VEICULOPLACAUF, VED_VEICULORNTC ' +
        '= :NEW_VED_VEICULORNTC, '
      
        '  VED_VENDEDOR = :NEW_VED_VENDEDOR, VED_VIAINTERNET = :NEW_VED_V' +
        'IAINTERNET, '
      
        '  VED_VIAINTERNETSTATUS = :NEW_VED_VIAINTERNETSTATUS, VED_VOLUME' +
        'S = :NEW_VED_VOLUMES, '
      '  VED_VOLUMESNUM = :NEW_VED_VOLUMESNUM'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO'
      
        'RETURNING VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAI' +
        'XAPOR, VED_BASECOFINS, VED_BASECOFINSST, VED_BASEICMS, VED_BASEI' +
        'CMSST, VED_BASEII, VED_BASEIPI, VED_BASEISS, VED_BASEPIS, VED_BA' +
        'SEPISST, VED_CEP, VED_CFOP, VED_CFOPDESC, VED_CIDADE, VED_CIDADE' +
        'CODIGO, VED_CLIENTE, VED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, VE' +
        'D_COMISSAO, VED_COMISSAOPOR, VED_COMPLEMENTO, VED_CONDICAO, VED_' +
        'CONDICAOMEMO, VED_CONFERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR' +
        ', VED_CONTATO, VED_CPF, VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, V' +
        'ED_DESCPORCCLIENTE, VED_DESCPORCCONDICAO, VED_DESCVALOR, VED_DES' +
        'TACARIMPOSTOS, VED_DIAPREFERENCIAL, VED_DTATUALIZACAO, VED_DTCAD' +
        'ASTRO, VED_DTEMISSAO, VED_DTPRESTSERVICO, VED_DTSAIDA, VED_ENDER' +
        'ECO, VED_ENTRADASAIDA, VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, VE' +
        'D_ESTADOCODIGO, VED_EXLOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, VED' +
        '_FONE1, VED_FORMAPAGTO, VED_FRETE, VED_HRATUALIZACAO, VED_HRCADA' +
        'STRO, VED_IDESTRANGEIRO, VED_IE, VED_INFOADICFISCO, VED_INFOCOMP' +
        'LEMENTAR, VED_LACRES, VED_LUCROPORC, VED_LUCROVALOR, VED_MANUAL,' +
        ' VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINANCEIRO, VED_N' +
        'FCE, VED_NFE, VED_NOME, VED_NOTA, VED_NUMERO, VED_OBSERVACOES, V' +
        'ED_PAIS, VED_PAISCODIGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_P' +
        'ESOLIQ, VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, V' +
        'ED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, VED_TABELAPRE' +
        'CO, VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, V' +
        'ED_TOTALADUANA, VED_TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOFINS' +
        'ST, VED_TOTALCOMISSAO, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALIC' +
        'MS, VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, V' +
        'ED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI, VE' +
        'D_TOTALISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, VED_TOTAL' +
        'ISSDESCINCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOT' +
        'ALITENS, VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, VED_TO' +
        'TALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, VED_TOTALT' +
        'RIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSMUN, VED_TRAN' +
        'SPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMAIL, VED_TR' +
        'ANSPENDERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRANSPIE, VE' +
        'D_TRANSPNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES' +
        ', VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VEICULOPL' +
        'ACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VENDEDOR, VED_VIAI' +
        'NTERNET, VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOLUMESNUM')
    DeleteSQL.Strings = (
      'DELETE FROM VENDAS'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAIXAP' +
        'OR, '
      
        '  VED_BASECOFINS, VED_BASECOFINSST, VED_BASEICMS, VED_BASEICMSST' +
        ', '
      
        '  VED_BASEII, VED_BASEIPI, VED_BASEISS, VED_BASEPIS, VED_BASEPIS' +
        'ST, '
      
        '  VED_CEP, VED_CFOP, VED_CFOPDESC, VED_CIDADE, VED_CIDADECODIGO,' +
        ' '
      
        '  VED_CLIENTE, VED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, VED_COMI' +
        'SSAO, '
      
        '  VED_COMISSAOPOR, VED_COMPLEMENTO, VED_CONDICAO, VED_CONDICAOME' +
        'MO, '
      
        '  VED_CONFERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_CONTAT' +
        'O, '
      
        '  VED_CPF, VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, VED_DESCPORCCL' +
        'IENTE, '
      '  VED_DESCPORCCONDICAO, VED_DESCVALOR, VED_DESTACARIMPOSTOS, '
      '  VED_DIAPREFERENCIAL, VED_DTATUALIZACAO, VED_DTCADASTRO, '
      '  VED_DTEMISSAO, VED_DTPRESTSERVICO, VED_DTSAIDA, VED_ENDERECO, '
      '  VED_ENTRADASAIDA, VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, '
      
        '  VED_ESTADOCODIGO, VED_EXLOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA,' +
        ' '
      '  VED_FONE1, VED_FORMAPAGTO, VED_FRETE, VED_HRATUALIZACAO, '
      '  VED_HRCADASTRO, VED_IDESTRANGEIRO, VED_IE, VED_INFOADICFISCO, '
      
        '  VED_INFOCOMPLEMENTAR, VED_LACRES, VED_LUCROPORC, VED_LUCROVALO' +
        'R, '
      
        '  VED_MANUAL, VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINA' +
        'NCEIRO, '
      
        '  VED_NFCE, VED_NFE, VED_NOME, VED_NOTA, VED_NUMERO, VED_OBSERVA' +
        'COES, '
      '  VED_PAIS, VED_PAISCODIGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, '
      
        '  VED_PESOLIQ, VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUE' +
        'RNTC, '
      
        '  VED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, VED_TABELA' +
        'PRECO, '
      '  VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, '
      
        '  VED_TOTALADUANA, VED_TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOF' +
        'INSST, '
      
        '  VED_TOTALCOMISSAO, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS' +
        ', '
      '  VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, '
      
        '  VED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI,' +
        ' '
      '  VED_TOTALISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, '
      
        '  VED_TOTALISSDESCINCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENC' +
        'AO, '
      
        '  VED_TOTALITENS, VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTO' +
        'S, '
      '  VED_TOTALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, '
      
        '  VED_TOTALTRIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSM' +
        'UN, '
      
        '  VED_TRANSPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMA' +
        'IL, '
      
        '  VED_TRANSPENDERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRAN' +
        'SPIE, '
      
        '  VED_TRANSPNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESP' +
        'ACES, '
      
        '  VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VEICULOPL' +
        'ACA, '
      
        '  VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VENDEDOR, VED_VIAINTE' +
        'RNET, '
      '  VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOLUMESNUM'
      'FROM VENDAS'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO')
    Left = 80
    Top = 104
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 80
    Top = 152
  end
  object DSVendas: TDataSource
    DataSet = TBVendas
    Left = 80
    Top = 208
  end
  object TRVendasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 152
  end
  object UPVendasItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VENDASITENS'
      '(VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VEI_ALIQFCP, '
      '  VEI_ALIQFCPST, VEI_ALIQICMS, VEI_ALIQICMSADICST, '
      '  VEI_ALIQICMSINTER, VEI_ALIQICMSINTERPART, VEI_ALIQICMSRED, '
      '  VEI_ALIQICMSST, VEI_ALIQICMSSTRET, VEI_ALIQII, '
      '  VEI_ALIQIPI, VEI_ALIQISS, VEI_ALIQPIS, VEI_ALIQPISST, '
      '  VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_BASECOFINSST, '
      '  VEI_BASEICMS, VEI_BASEICMSRED, VEI_BASEICMSST, '
      '  VEI_BASEICMSSTRET, VEI_BASEII, VEI_BASEIPI, '
      '  VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST, '
      '  VEI_BENEFICIO, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, '
      '  VEI_CLASSFISCAL, VEI_CODIGO, VEI_CODIGOBARRAS, '
      '  VEI_CODIGOFAB, VEI_COMISSAO, VEI_COMPLEMENTO, '
      '  VEI_COMPOEBASEICMS, VEI_COMPOEBASEICMSST, VEI_COMPOETOTAL, '
      '  VEI_CONVERSAO, VEI_CSTCOFINS, VEI_CSTICMS, '
      '  VEI_CSTIPI, VEI_CSTPIS, VEI_DESCMAX, VEI_DESCPORC, '
      '  VEI_DESCRICAO, VEI_DESCVALOR, VEI_DESONERACAO, '
      '  VEI_DICNPJ, VEI_DIDATA, VEI_DIDESEMBARACODATA, '
      
        '  VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPORTADORC' +
        'OD, '
      '  VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, '
      '  VEI_DITRANSPORTE, VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, '
      '  VEI_EXCECAO, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK, '
      '  VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, '
      '  VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADICIONAL, '
      '  VEI_LOCALIZACAO, VEI_LOTE, VEI_LUCROPORC, '
      '  VEI_LUCROVALOR, VEI_MODICMS, VEI_MODICMSST, '
      '  VEI_ORIGEM, VEI_PAISISS, VEI_PEDIDOCLIENTE, '
      '  VEI_PEDIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, '
      '  VEI_PRECOCUSTO, VEI_PRECOCUSTOTOTAL, VEI_PROCESSOISS, '
      '  VEI_PRODUTO, VEI_PRODUTOREAL, VEI_QUANTIDADE, '
      '  VEI_QUANTIDADETROCA, VEI_SEQUENCIA, VEI_SERVICOISS, '
      '  VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, '
      '  VEI_TIPOISS, VEI_UNIDADE, VEI_VALORACESSORIAS, '
      '  VEI_VALORADUANA, VEI_VALORCOFINS, VEI_VALORCOFINSST, '
      '  VEI_VALORCOMISSAO, VEI_VALORFCP, VEI_VALORFCPST, '
      '  VEI_VALORFRETE, VEI_VALORICMS, VEI_VALORICMSCREDSN, '
      '  VEI_VALORICMSDESONERADO, VEI_VALORICMSST, VEI_VALORICMSSTRET, '
      '  VEI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDEST, '
      '  VEI_VALORICMSUFREMET, VEI_VALORII, VEI_VALORIOF, '
      '  VEI_VALORIPI, VEI_VALORISS, VEI_VALORISSDEDUCAO, '
      '  VEI_VALORISSDESCCOND, VEI_VALORISSDESCINCOND, '
      '  VEI_VALORISSOUTROS, VEI_VALORISSRETENCAO, VEI_VALORPIS, '
      '  VEI_VALORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL, '
      '  VEI_VALORTOTALBRUTO, VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, '
      
        '  VEI_VALORTRIBUTOSFED, VEI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSM' +
        'UN, '
      '  VEI_VALORUNIT, VEI_VENDA)'
      
        'VALUES (:NEW_VEI_ALIQCOFINS, :NEW_VEI_ALIQCOFINSST, :NEW_VEI_ALI' +
        'QFCP, '
      
        '  :NEW_VEI_ALIQFCPST, :NEW_VEI_ALIQICMS, :NEW_VEI_ALIQICMSADICST' +
        ', '
      
        '  :NEW_VEI_ALIQICMSINTER, :NEW_VEI_ALIQICMSINTERPART, :NEW_VEI_A' +
        'LIQICMSRED, '
      '  :NEW_VEI_ALIQICMSST, :NEW_VEI_ALIQICMSSTRET, :NEW_VEI_ALIQII, '
      
        '  :NEW_VEI_ALIQIPI, :NEW_VEI_ALIQISS, :NEW_VEI_ALIQPIS, :NEW_VEI' +
        '_ALIQPISST, '
      
        '  :NEW_VEI_ALMOXARIFADO, :NEW_VEI_BASECOFINS, :NEW_VEI_BASECOFIN' +
        'SST, '
      '  :NEW_VEI_BASEICMS, :NEW_VEI_BASEICMSRED, :NEW_VEI_BASEICMSST, '
      '  :NEW_VEI_BASEICMSSTRET, :NEW_VEI_BASEII, :NEW_VEI_BASEIPI, '
      '  :NEW_VEI_BASEISS, :NEW_VEI_BASEPIS, :NEW_VEI_BASEPISST, '
      
        '  :NEW_VEI_BENEFICIO, :NEW_VEI_CEST, :NEW_VEI_CFOP, :NEW_VEI_CID' +
        'ADEISS, '
      
        '  :NEW_VEI_CLASSFISCAL, gen_id(GEN_VENDASITENS,1), :NEW_VEI_CODI' +
        'GOBARRAS, '
      '  :NEW_VEI_CODIGOFAB, :NEW_VEI_COMISSAO, :NEW_VEI_COMPLEMENTO, '
      
        '  :NEW_VEI_COMPOEBASEICMS, :NEW_VEI_COMPOEBASEICMSST, :NEW_VEI_C' +
        'OMPOETOTAL, '
      '  :NEW_VEI_CONVERSAO, :NEW_VEI_CSTCOFINS, :NEW_VEI_CSTICMS, '
      
        '  :NEW_VEI_CSTIPI, :NEW_VEI_CSTPIS, :NEW_VEI_DESCMAX, :NEW_VEI_D' +
        'ESCPORC, '
      '  :NEW_VEI_DESCRICAO, :NEW_VEI_DESCVALOR, :NEW_VEI_DESONERACAO, '
      '  :NEW_VEI_DICNPJ, :NEW_VEI_DIDATA, :NEW_VEI_DIDESEMBARACODATA, '
      
        '  :NEW_VEI_DIDESEMBARACOLOCAL, :NEW_VEI_DIDESEMBARACOUF, :NEW_VE' +
        'I_DIEXPORTADORCOD, '
      
        '  :NEW_VEI_DIINTERMEDIO, :NEW_VEI_DINUMERO, :NEW_VEI_DITERCEIROU' +
        'F, '
      
        '  :NEW_VEI_DITRANSPORTE, :NEW_VEI_DIVALORAFRMM, :NEW_VEI_ENQUADR' +
        'AMENTOIPI, '
      
        '  :NEW_VEI_EXCECAO, :NEW_VEI_EXCHAVEACESSO, :NEW_VEI_EXDRAWBACK,' +
        ' '
      '  :NEW_VEI_EXQUANTIDADE, :NEW_VEI_EXREGISTRO, :NEW_VEI_FCI, '
      
        '  :NEW_VEI_INCENTIVOISS, :NEW_VEI_INDICADORISS, :NEW_VEI_INFOADI' +
        'CIONAL, '
      '  :NEW_VEI_LOCALIZACAO, :NEW_VEI_LOTE, :NEW_VEI_LUCROPORC, '
      '  :NEW_VEI_LUCROVALOR, :NEW_VEI_MODICMS, :NEW_VEI_MODICMSST, '
      '  :NEW_VEI_ORIGEM, :NEW_VEI_PAISISS, :NEW_VEI_PEDIDOCLIENTE, '
      
        '  :NEW_VEI_PEDIDOCLIENTEITEM, :NEW_VEI_PESO, :NEW_VEI_PESOTOTAL,' +
        ' '
      
        '  :NEW_VEI_PRECOCUSTO, :NEW_VEI_PRECOCUSTOTOTAL, :NEW_VEI_PROCES' +
        'SOISS, '
      '  :NEW_VEI_PRODUTO, :NEW_VEI_PRODUTOREAL, :NEW_VEI_QUANTIDADE, '
      
        '  :NEW_VEI_QUANTIDADETROCA, :NEW_VEI_SEQUENCIA, :NEW_VEI_SERVICO' +
        'ISS, '
      '  :NEW_VEI_SOMACOFINSST, :NEW_VEI_SOMAPISST, :NEW_VEI_TIPO, '
      '  :NEW_VEI_TIPOISS, :NEW_VEI_UNIDADE, :NEW_VEI_VALORACESSORIAS, '
      
        '  :NEW_VEI_VALORADUANA, :NEW_VEI_VALORCOFINS, :NEW_VEI_VALORCOFI' +
        'NSST, '
      
        '  :NEW_VEI_VALORCOMISSAO, :NEW_VEI_VALORFCP, :NEW_VEI_VALORFCPST' +
        ', '
      
        '  :NEW_VEI_VALORFRETE, :NEW_VEI_VALORICMS, :NEW_VEI_VALORICMSCRE' +
        'DSN, '
      
        '  :NEW_VEI_VALORICMSDESONERADO, :NEW_VEI_VALORICMSST, :NEW_VEI_V' +
        'ALORICMSSTRET, '
      '  :NEW_VEI_VALORICMSSUBSTITUTO, :NEW_VEI_VALORICMSUFDEST, '
      
        '  :NEW_VEI_VALORICMSUFREMET, :NEW_VEI_VALORII, :NEW_VEI_VALORIOF' +
        ', '
      
        '  :NEW_VEI_VALORIPI, :NEW_VEI_VALORISS, :NEW_VEI_VALORISSDEDUCAO' +
        ', '
      '  :NEW_VEI_VALORISSDESCCOND, :NEW_VEI_VALORISSDESCINCOND, '
      
        '  :NEW_VEI_VALORISSOUTROS, :NEW_VEI_VALORISSRETENCAO, :NEW_VEI_V' +
        'ALORPIS, '
      
        '  :NEW_VEI_VALORPISST, :NEW_VEI_VALORSEGURO, :NEW_VEI_VALORTOTAL' +
        ', '
      
        '  :NEW_VEI_VALORTOTALBRUTO, :NEW_VEI_VALORTRIBUTOS, :NEW_VEI_VAL' +
        'ORTRIBUTOSEST, '
      
        '  :NEW_VEI_VALORTRIBUTOSFED, :NEW_VEI_VALORTRIBUTOSIMP, :NEW_VEI' +
        '_VALORTRIBUTOSMUN, '
      '  :NEW_VEI_VALORUNIT, :NEW_VEI_VENDA)'
      
        'RETURNING VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VEI_ALIQFCP, VEI_ALI' +
        'QFCPST, VEI_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, VEI' +
        '_ALIQICMSINTERPART, VEI_ALIQICMSRED, VEI_ALIQICMSST, VEI_ALIQICM' +
        'SSTRET, VEI_ALIQII, VEI_ALIQIPI, VEI_ALIQISS, VEI_ALIQPIS, VEI_A' +
        'LIQPISST, VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_BASECOFINSST, VE' +
        'I_BASEICMS, VEI_BASEICMSRED, VEI_BASEICMSST, VEI_BASEICMSSTRET, ' +
        'VEI_BASEII, VEI_BASEIPI, VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST' +
        ', VEI_BENEFICIO, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFIS' +
        'CAL, VEI_CODIGO, VEI_CODIGOBARRAS, VEI_CODIGOFAB, VEI_COMISSAO, ' +
        'VEI_COMPLEMENTO, VEI_COMPOEBASEICMS, VEI_COMPOEBASEICMSST, VEI_C' +
        'OMPOETOTAL, VEI_CONVERSAO, VEI_CSTCOFINS, VEI_CSTICMS, VEI_CSTIP' +
        'I, VEI_CSTPIS, VEI_DESCMAX, VEI_DESCPORC, VEI_DESCRICAO, VEI_DES' +
        'CVALOR, VEI_DESONERACAO, VEI_DICNPJ, VEI_DIDATA, VEI_DIDESEMBARA' +
        'CODATA, VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPOR' +
        'TADORCOD, VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, VEI_' +
        'DITRANSPORTE, VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, VEI_EXCECA' +
        'O, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK, VEI_EXQUANTIDADE, VEI_EXRE' +
        'GISTRO, VEI_FCI, VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADI' +
        'CIONAL, VEI_LOCALIZACAO, VEI_LOTE, VEI_LUCROPORC, VEI_LUCROVALOR' +
        ', VEI_MODICMS, VEI_MODICMSST, VEI_ORIGEM, VEI_PAISISS, VEI_PEDID' +
        'OCLIENTE, VEI_PEDIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, VEI_PR' +
        'ECOCUSTO, VEI_PRECOCUSTOTOTAL, VEI_PROCESSOISS, VEI_PRODUTO, VEI' +
        '_PRODUTOREAL, VEI_QUANTIDADE, VEI_QUANTIDADETROCA, VEI_SEQUENCIA' +
        ', VEI_SERVICOISS, VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, VEI' +
        '_TIPOISS, VEI_UNIDADE, VEI_VALORACESSORIAS, VEI_VALORADUANA, VEI' +
        '_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALORCOMISSAO, VEI_VALORFCP' +
        ', VEI_VALORFCPST, VEI_VALORFRETE, VEI_VALORICMS, VEI_VALORICMSCR' +
        'EDSN, VEI_VALORICMSDESONERADO, VEI_VALORICMSST, VEI_VALORICMSSTR' +
        'ET, VEI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDEST, VEI_VALORICMSU' +
        'FREMET, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI, VEI_VALORISS, V' +
        'EI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, VEI_VALORISSDESCINCOND' +
        ', VEI_VALORISSOUTROS, VEI_VALORISSRETENCAO, VEI_VALORPIS, VEI_VA' +
        'LORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL, VEI_VALORTOTALBRUTO, ' +
        'VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, VEI_VALORTRIBUTOSFED, V' +
        'EI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSMUN, VEI_VALORUNIT, VEI_VE' +
        'NDA')
    ModifySQL.Strings = (
      'UPDATE VENDASITENS'
      
        'SET VEI_ALIQCOFINS = :NEW_VEI_ALIQCOFINS, VEI_ALIQCOFINSST = :NE' +
        'W_VEI_ALIQCOFINSST, '
      
        '  VEI_ALIQFCP = :NEW_VEI_ALIQFCP, VEI_ALIQFCPST = :NEW_VEI_ALIQF' +
        'CPST, '
      
        '  VEI_ALIQICMS = :NEW_VEI_ALIQICMS, VEI_ALIQICMSADICST = :NEW_VE' +
        'I_ALIQICMSADICST, '
      
        '  VEI_ALIQICMSINTER = :NEW_VEI_ALIQICMSINTER, VEI_ALIQICMSINTERP' +
        'ART = :NEW_VEI_ALIQICMSINTERPART, '
      
        '  VEI_ALIQICMSRED = :NEW_VEI_ALIQICMSRED, VEI_ALIQICMSST = :NEW_' +
        'VEI_ALIQICMSST, '
      
        '  VEI_ALIQICMSSTRET = :NEW_VEI_ALIQICMSSTRET, VEI_ALIQII = :NEW_' +
        'VEI_ALIQII, '
      
        '  VEI_ALIQIPI = :NEW_VEI_ALIQIPI, VEI_ALIQISS = :NEW_VEI_ALIQISS' +
        ', '
      
        '  VEI_ALIQPIS = :NEW_VEI_ALIQPIS, VEI_ALIQPISST = :NEW_VEI_ALIQP' +
        'ISST, '
      
        '  VEI_ALMOXARIFADO = :NEW_VEI_ALMOXARIFADO, VEI_BASECOFINS = :NE' +
        'W_VEI_BASECOFINS, '
      
        '  VEI_BASECOFINSST = :NEW_VEI_BASECOFINSST, VEI_BASEICMS = :NEW_' +
        'VEI_BASEICMS, '
      
        '  VEI_BASEICMSRED = :NEW_VEI_BASEICMSRED, VEI_BASEICMSST = :NEW_' +
        'VEI_BASEICMSST, '
      
        '  VEI_BASEICMSSTRET = :NEW_VEI_BASEICMSSTRET, VEI_BASEII = :NEW_' +
        'VEI_BASEII, '
      
        '  VEI_BASEIPI = :NEW_VEI_BASEIPI, VEI_BASEISS = :NEW_VEI_BASEISS' +
        ', '
      
        '  VEI_BASEPIS = :NEW_VEI_BASEPIS, VEI_BASEPISST = :NEW_VEI_BASEP' +
        'ISST, '
      '  VEI_BENEFICIO = :NEW_VEI_BENEFICIO, VEI_CEST = :NEW_VEI_CEST, '
      '  VEI_CFOP = :NEW_VEI_CFOP, VEI_CIDADEISS = :NEW_VEI_CIDADEISS, '
      
        '  VEI_CLASSFISCAL = :NEW_VEI_CLASSFISCAL, VEI_CODIGO = :NEW_VEI_' +
        'CODIGO, '
      
        '  VEI_CODIGOBARRAS = :NEW_VEI_CODIGOBARRAS, VEI_CODIGOFAB = :NEW' +
        '_VEI_CODIGOFAB, '
      
        '  VEI_COMISSAO = :NEW_VEI_COMISSAO, VEI_COMPLEMENTO = :NEW_VEI_C' +
        'OMPLEMENTO, '
      
        '  VEI_COMPOEBASEICMS = :NEW_VEI_COMPOEBASEICMS, VEI_COMPOEBASEIC' +
        'MSST = :NEW_VEI_COMPOEBASEICMSST, '
      
        '  VEI_COMPOETOTAL = :NEW_VEI_COMPOETOTAL, VEI_CONVERSAO = :NEW_V' +
        'EI_CONVERSAO, '
      
        '  VEI_CSTCOFINS = :NEW_VEI_CSTCOFINS, VEI_CSTICMS = :NEW_VEI_CST' +
        'ICMS, '
      '  VEI_CSTIPI = :NEW_VEI_CSTIPI, VEI_CSTPIS = :NEW_VEI_CSTPIS, '
      
        '  VEI_DESCMAX = :NEW_VEI_DESCMAX, VEI_DESCPORC = :NEW_VEI_DESCPO' +
        'RC, '
      
        '  VEI_DESCRICAO = :NEW_VEI_DESCRICAO, VEI_DESCVALOR = :NEW_VEI_D' +
        'ESCVALOR, '
      
        '  VEI_DESONERACAO = :NEW_VEI_DESONERACAO, VEI_DICNPJ = :NEW_VEI_' +
        'DICNPJ, '
      
        '  VEI_DIDATA = :NEW_VEI_DIDATA, VEI_DIDESEMBARACODATA = :NEW_VEI' +
        '_DIDESEMBARACODATA, '
      
        '  VEI_DIDESEMBARACOLOCAL = :NEW_VEI_DIDESEMBARACOLOCAL, VEI_DIDE' +
        'SEMBARACOUF = :NEW_VEI_DIDESEMBARACOUF, '
      
        '  VEI_DIEXPORTADORCOD = :NEW_VEI_DIEXPORTADORCOD, VEI_DIINTERMED' +
        'IO = :NEW_VEI_DIINTERMEDIO, '
      
        '  VEI_DINUMERO = :NEW_VEI_DINUMERO, VEI_DITERCEIROUF = :NEW_VEI_' +
        'DITERCEIROUF, '
      
        '  VEI_DITRANSPORTE = :NEW_VEI_DITRANSPORTE, VEI_DIVALORAFRMM = :' +
        'NEW_VEI_DIVALORAFRMM, '
      
        '  VEI_ENQUADRAMENTOIPI = :NEW_VEI_ENQUADRAMENTOIPI, VEI_EXCECAO ' +
        '= :NEW_VEI_EXCECAO, '
      
        '  VEI_EXCHAVEACESSO = :NEW_VEI_EXCHAVEACESSO, VEI_EXDRAWBACK = :' +
        'NEW_VEI_EXDRAWBACK, '
      
        '  VEI_EXQUANTIDADE = :NEW_VEI_EXQUANTIDADE, VEI_EXREGISTRO = :NE' +
        'W_VEI_EXREGISTRO, '
      
        '  VEI_FCI = :NEW_VEI_FCI, VEI_INCENTIVOISS = :NEW_VEI_INCENTIVOI' +
        'SS, '
      
        '  VEI_INDICADORISS = :NEW_VEI_INDICADORISS, VEI_INFOADICIONAL = ' +
        ':NEW_VEI_INFOADICIONAL, '
      
        '  VEI_LOCALIZACAO = :NEW_VEI_LOCALIZACAO, VEI_LOTE = :NEW_VEI_LO' +
        'TE, '
      
        '  VEI_LUCROPORC = :NEW_VEI_LUCROPORC, VEI_LUCROVALOR = :NEW_VEI_' +
        'LUCROVALOR, '
      
        '  VEI_MODICMS = :NEW_VEI_MODICMS, VEI_MODICMSST = :NEW_VEI_MODIC' +
        'MSST, '
      '  VEI_ORIGEM = :NEW_VEI_ORIGEM, VEI_PAISISS = :NEW_VEI_PAISISS, '
      
        '  VEI_PEDIDOCLIENTE = :NEW_VEI_PEDIDOCLIENTE, VEI_PEDIDOCLIENTEI' +
        'TEM = :NEW_VEI_PEDIDOCLIENTEITEM, '
      '  VEI_PESO = :NEW_VEI_PESO, VEI_PESOTOTAL = :NEW_VEI_PESOTOTAL, '
      
        '  VEI_PRECOCUSTO = :NEW_VEI_PRECOCUSTO, VEI_PRECOCUSTOTOTAL = :N' +
        'EW_VEI_PRECOCUSTOTOTAL, '
      
        '  VEI_PROCESSOISS = :NEW_VEI_PROCESSOISS, VEI_PRODUTO = :NEW_VEI' +
        '_PRODUTO, '
      
        '  VEI_PRODUTOREAL = :NEW_VEI_PRODUTOREAL, VEI_QUANTIDADE = :NEW_' +
        'VEI_QUANTIDADE, '
      
        '  VEI_QUANTIDADETROCA = :NEW_VEI_QUANTIDADETROCA, VEI_SEQUENCIA ' +
        '= :NEW_VEI_SEQUENCIA, '
      
        '  VEI_SERVICOISS = :NEW_VEI_SERVICOISS, VEI_SOMACOFINSST = :NEW_' +
        'VEI_SOMACOFINSST, '
      '  VEI_SOMAPISST = :NEW_VEI_SOMAPISST, VEI_TIPO = :NEW_VEI_TIPO, '
      
        '  VEI_TIPOISS = :NEW_VEI_TIPOISS, VEI_UNIDADE = :NEW_VEI_UNIDADE' +
        ', '
      
        '  VEI_VALORACESSORIAS = :NEW_VEI_VALORACESSORIAS, VEI_VALORADUAN' +
        'A = :NEW_VEI_VALORADUANA, '
      
        '  VEI_VALORCOFINS = :NEW_VEI_VALORCOFINS, VEI_VALORCOFINSST = :N' +
        'EW_VEI_VALORCOFINSST, '
      
        '  VEI_VALORCOMISSAO = :NEW_VEI_VALORCOMISSAO, VEI_VALORFCP = :NE' +
        'W_VEI_VALORFCP, '
      
        '  VEI_VALORFCPST = :NEW_VEI_VALORFCPST, VEI_VALORFRETE = :NEW_VE' +
        'I_VALORFRETE, '
      
        '  VEI_VALORICMS = :NEW_VEI_VALORICMS, VEI_VALORICMSCREDSN = :NEW' +
        '_VEI_VALORICMSCREDSN, '
      '  VEI_VALORICMSDESONERADO = :NEW_VEI_VALORICMSDESONERADO, '
      
        '  VEI_VALORICMSST = :NEW_VEI_VALORICMSST, VEI_VALORICMSSTRET = :' +
        'NEW_VEI_VALORICMSSTRET, '
      '  VEI_VALORICMSSUBSTITUTO = :NEW_VEI_VALORICMSSUBSTITUTO, '
      
        '  VEI_VALORICMSUFDEST = :NEW_VEI_VALORICMSUFDEST, VEI_VALORICMSU' +
        'FREMET = :NEW_VEI_VALORICMSUFREMET, '
      
        '  VEI_VALORII = :NEW_VEI_VALORII, VEI_VALORIOF = :NEW_VEI_VALORI' +
        'OF, '
      
        '  VEI_VALORIPI = :NEW_VEI_VALORIPI, VEI_VALORISS = :NEW_VEI_VALO' +
        'RISS, '
      
        '  VEI_VALORISSDEDUCAO = :NEW_VEI_VALORISSDEDUCAO, VEI_VALORISSDE' +
        'SCCOND = :NEW_VEI_VALORISSDESCCOND, '
      
        '  VEI_VALORISSDESCINCOND = :NEW_VEI_VALORISSDESCINCOND, VEI_VALO' +
        'RISSOUTROS = :NEW_VEI_VALORISSOUTROS, '
      
        '  VEI_VALORISSRETENCAO = :NEW_VEI_VALORISSRETENCAO, VEI_VALORPIS' +
        ' = :NEW_VEI_VALORPIS, '
      
        '  VEI_VALORPISST = :NEW_VEI_VALORPISST, VEI_VALORSEGURO = :NEW_V' +
        'EI_VALORSEGURO, '
      
        '  VEI_VALORTOTAL = :NEW_VEI_VALORTOTAL, VEI_VALORTOTALBRUTO = :N' +
        'EW_VEI_VALORTOTALBRUTO, '
      
        '  VEI_VALORTRIBUTOS = :NEW_VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSE' +
        'ST = :NEW_VEI_VALORTRIBUTOSEST, '
      
        '  VEI_VALORTRIBUTOSFED = :NEW_VEI_VALORTRIBUTOSFED, VEI_VALORTRI' +
        'BUTOSIMP = :NEW_VEI_VALORTRIBUTOSIMP, '
      
        '  VEI_VALORTRIBUTOSMUN = :NEW_VEI_VALORTRIBUTOSMUN, VEI_VALORUNI' +
        'T = :NEW_VEI_VALORUNIT, '
      '  VEI_VENDA = :NEW_VEI_VENDA'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO'
      
        'RETURNING VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VEI_ALIQFCP, VEI_ALI' +
        'QFCPST, VEI_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, VEI' +
        '_ALIQICMSINTERPART, VEI_ALIQICMSRED, VEI_ALIQICMSST, VEI_ALIQICM' +
        'SSTRET, VEI_ALIQII, VEI_ALIQIPI, VEI_ALIQISS, VEI_ALIQPIS, VEI_A' +
        'LIQPISST, VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_BASECOFINSST, VE' +
        'I_BASEICMS, VEI_BASEICMSRED, VEI_BASEICMSST, VEI_BASEICMSSTRET, ' +
        'VEI_BASEII, VEI_BASEIPI, VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST' +
        ', VEI_BENEFICIO, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFIS' +
        'CAL, VEI_CODIGO, VEI_CODIGOBARRAS, VEI_CODIGOFAB, VEI_COMISSAO, ' +
        'VEI_COMPLEMENTO, VEI_COMPOEBASEICMS, VEI_COMPOEBASEICMSST, VEI_C' +
        'OMPOETOTAL, VEI_CONVERSAO, VEI_CSTCOFINS, VEI_CSTICMS, VEI_CSTIP' +
        'I, VEI_CSTPIS, VEI_DESCMAX, VEI_DESCPORC, VEI_DESCRICAO, VEI_DES' +
        'CVALOR, VEI_DESONERACAO, VEI_DICNPJ, VEI_DIDATA, VEI_DIDESEMBARA' +
        'CODATA, VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPOR' +
        'TADORCOD, VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, VEI_' +
        'DITRANSPORTE, VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, VEI_EXCECA' +
        'O, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK, VEI_EXQUANTIDADE, VEI_EXRE' +
        'GISTRO, VEI_FCI, VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADI' +
        'CIONAL, VEI_LOCALIZACAO, VEI_LOTE, VEI_LUCROPORC, VEI_LUCROVALOR' +
        ', VEI_MODICMS, VEI_MODICMSST, VEI_ORIGEM, VEI_PAISISS, VEI_PEDID' +
        'OCLIENTE, VEI_PEDIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, VEI_PR' +
        'ECOCUSTO, VEI_PRECOCUSTOTOTAL, VEI_PROCESSOISS, VEI_PRODUTO, VEI' +
        '_PRODUTOREAL, VEI_QUANTIDADE, VEI_QUANTIDADETROCA, VEI_SEQUENCIA' +
        ', VEI_SERVICOISS, VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, VEI' +
        '_TIPOISS, VEI_UNIDADE, VEI_VALORACESSORIAS, VEI_VALORADUANA, VEI' +
        '_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALORCOMISSAO, VEI_VALORFCP' +
        ', VEI_VALORFCPST, VEI_VALORFRETE, VEI_VALORICMS, VEI_VALORICMSCR' +
        'EDSN, VEI_VALORICMSDESONERADO, VEI_VALORICMSST, VEI_VALORICMSSTR' +
        'ET, VEI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDEST, VEI_VALORICMSU' +
        'FREMET, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI, VEI_VALORISS, V' +
        'EI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, VEI_VALORISSDESCINCOND' +
        ', VEI_VALORISSOUTROS, VEI_VALORISSRETENCAO, VEI_VALORPIS, VEI_VA' +
        'LORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL, VEI_VALORTOTALBRUTO, ' +
        'VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, VEI_VALORTRIBUTOSFED, V' +
        'EI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSMUN, VEI_VALORUNIT, VEI_VE' +
        'NDA')
    DeleteSQL.Strings = (
      'DELETE FROM VENDASITENS'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VEI_ALIQFCP, VEI_ALIQFC' +
        'PST, '
      
        '  VEI_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, VEI_ALIQI' +
        'CMSINTERPART, '
      
        '  VEI_ALIQICMSRED, VEI_ALIQICMSST, VEI_ALIQICMSSTRET, VEI_ALIQII' +
        ', '
      
        '  VEI_ALIQIPI, VEI_ALIQISS, VEI_ALIQPIS, VEI_ALIQPISST, VEI_ALMO' +
        'XARIFADO, '
      
        '  VEI_BASECOFINS, VEI_BASECOFINSST, VEI_BASEICMS, VEI_BASEICMSRE' +
        'D, '
      '  VEI_BASEICMSST, VEI_BASEICMSSTRET, VEI_BASEII, VEI_BASEIPI, '
      '  VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST, VEI_BENEFICIO, '
      
        '  VEI_CEST, VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFISCAL, VEI_CODIGO' +
        ', '
      
        '  VEI_CODIGOBARRAS, VEI_CODIGOFAB, VEI_COMISSAO, VEI_COMPLEMENTO' +
        ', '
      '  VEI_COMPOEBASEICMS, VEI_COMPOEBASEICMSST, VEI_COMPOETOTAL, '
      
        '  VEI_CONVERSAO, VEI_CSTCOFINS, VEI_CSTICMS, VEI_CSTIPI, VEI_CST' +
        'PIS, '
      '  VEI_DESCMAX, VEI_DESCPORC, VEI_DESCRICAO, VEI_DESCVALOR, '
      
        '  VEI_DESONERACAO, VEI_DICNPJ, VEI_DIDATA, VEI_DIDESEMBARACODATA' +
        ', '
      
        '  VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPORTADORC' +
        'OD, '
      
        '  VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, VEI_DITRANSP' +
        'ORTE, '
      
        '  VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, VEI_EXCECAO, VEI_EXCHA' +
        'VEACESSO, '
      '  VEI_EXDRAWBACK, VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, '
      
        '  VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADICIONAL, VEI_LOC' +
        'ALIZACAO, '
      
        '  VEI_LOTE, VEI_LUCROPORC, VEI_LUCROVALOR, VEI_MODICMS, VEI_MODI' +
        'CMSST, '
      
        '  VEI_ORIGEM, VEI_PAISISS, VEI_PEDIDOCLIENTE, VEI_PEDIDOCLIENTEI' +
        'TEM, '
      '  VEI_PESO, VEI_PESOTOTAL, VEI_PRECOCUSTO, VEI_PRECOCUSTOTOTAL, '
      
        '  VEI_PROCESSOISS, VEI_PRODUTO, VEI_PRODUTOREAL, VEI_QUANTIDADE,' +
        ' '
      
        '  VEI_QUANTIDADETROCA, VEI_SEQUENCIA, VEI_SERVICOISS, VEI_SOMACO' +
        'FINSST, '
      
        '  VEI_SOMAPISST, VEI_TIPO, VEI_TIPOISS, VEI_UNIDADE, VEI_VALORAC' +
        'ESSORIAS, '
      
        '  VEI_VALORADUANA, VEI_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALOR' +
        'COMISSAO, '
      '  VEI_VALORFCP, VEI_VALORFCPST, VEI_VALORFRETE, VEI_VALORICMS, '
      
        '  VEI_VALORICMSCREDSN, VEI_VALORICMSDESONERADO, VEI_VALORICMSST,' +
        ' '
      
        '  VEI_VALORICMSSTRET, VEI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDE' +
        'ST, '
      
        '  VEI_VALORICMSUFREMET, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI,' +
        ' '
      '  VEI_VALORISS, VEI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, '
      
        '  VEI_VALORISSDESCINCOND, VEI_VALORISSOUTROS, VEI_VALORISSRETENC' +
        'AO, '
      
        '  VEI_VALORPIS, VEI_VALORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL,' +
        ' '
      '  VEI_VALORTOTALBRUTO, VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, '
      
        '  VEI_VALORTRIBUTOSFED, VEI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSM' +
        'UN, '
      '  VEI_VALORUNIT, VEI_VENDA'
      'FROM VENDASITENS'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO')
    Left = 160
    Top = 104
  end
  object TBVendasItens: TFDQuery
    MasterSource = DSVendas
    MasterFields = 'VED_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRVendasItens
    UpdateObject = UPVendasItens
    SQL.Strings = (
      'select * from VENDASITENS where VEI_VENDA=:VED_CODIGO')
    Left = 160
    Top = 56
    ParamData = <
      item
        Name = 'VED_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBVendasItensVEI_ALIQCOFINS: TFMTBCDField
      FieldName = 'VEI_ALIQCOFINS'
      Origin = 'VEI_ALIQCOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCOFINSST: TFMTBCDField
      FieldName = 'VEI_ALIQCOFINSST'
      Origin = 'VEI_ALIQCOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQFCP: TFMTBCDField
      FieldName = 'VEI_ALIQFCP'
      Origin = 'VEI_ALIQFCP'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQFCPST: TFMTBCDField
      FieldName = 'VEI_ALIQFCPST'
      Origin = 'VEI_ALIQFCPST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMS: TFMTBCDField
      FieldName = 'VEI_ALIQICMS'
      Origin = 'VEI_ALIQICMS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSADICST: TFMTBCDField
      FieldName = 'VEI_ALIQICMSADICST'
      Origin = 'VEI_ALIQICMSADICST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSINTER: TFMTBCDField
      FieldName = 'VEI_ALIQICMSINTER'
      Origin = 'VEI_ALIQICMSINTER'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'VEI_ALIQICMSINTERPART'
      Origin = 'VEI_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSRED: TFMTBCDField
      FieldName = 'VEI_ALIQICMSRED'
      Origin = 'VEI_ALIQICMSRED'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSST: TFMTBCDField
      FieldName = 'VEI_ALIQICMSST'
      Origin = 'VEI_ALIQICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSSTRET: TFMTBCDField
      FieldName = 'VEI_ALIQICMSSTRET'
      Origin = 'VEI_ALIQICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQII: TFMTBCDField
      FieldName = 'VEI_ALIQII'
      Origin = 'VEI_ALIQII'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIPI: TFMTBCDField
      FieldName = 'VEI_ALIQIPI'
      Origin = 'VEI_ALIQIPI'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQISS: TFMTBCDField
      FieldName = 'VEI_ALIQISS'
      Origin = 'VEI_ALIQISS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQPIS: TFMTBCDField
      FieldName = 'VEI_ALIQPIS'
      Origin = 'VEI_ALIQPIS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQPISST: TFMTBCDField
      FieldName = 'VEI_ALIQPISST'
      Origin = 'VEI_ALIQPISST'
      Precision = 18
    end
    object TBVendasItensVEI_ALMOXARIFADO: TIntegerField
      FieldName = 'VEI_ALMOXARIFADO'
      Origin = 'VEI_ALMOXARIFADO'
      Required = True
    end
    object TBVendasItensVEI_BASECOFINS: TFMTBCDField
      FieldName = 'VEI_BASECOFINS'
      Origin = 'VEI_BASECOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_BASECOFINSST: TFMTBCDField
      FieldName = 'VEI_BASECOFINSST'
      Origin = 'VEI_BASECOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMS: TFMTBCDField
      FieldName = 'VEI_BASEICMS'
      Origin = 'VEI_BASEICMS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSRED: TFMTBCDField
      FieldName = 'VEI_BASEICMSRED'
      Origin = 'VEI_BASEICMSRED'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSST: TFMTBCDField
      FieldName = 'VEI_BASEICMSST'
      Origin = 'VEI_BASEICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSSTRET: TFMTBCDField
      FieldName = 'VEI_BASEICMSSTRET'
      Origin = 'VEI_BASEICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_BASEII: TFMTBCDField
      FieldName = 'VEI_BASEII'
      Origin = 'VEI_BASEII'
      Precision = 18
    end
    object TBVendasItensVEI_BASEIPI: TFMTBCDField
      FieldName = 'VEI_BASEIPI'
      Origin = 'VEI_BASEIPI'
      Precision = 18
    end
    object TBVendasItensVEI_BASEISS: TFMTBCDField
      FieldName = 'VEI_BASEISS'
      Origin = 'VEI_BASEISS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEPIS: TFMTBCDField
      FieldName = 'VEI_BASEPIS'
      Origin = 'VEI_BASEPIS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEPISST: TFMTBCDField
      FieldName = 'VEI_BASEPISST'
      Origin = 'VEI_BASEPISST'
      Precision = 18
    end
    object TBVendasItensVEI_BENEFICIO: TStringField
      FieldName = 'VEI_BENEFICIO'
      Origin = 'VEI_BENEFICIO'
    end
    object TBVendasItensVEI_CEST: TStringField
      FieldName = 'VEI_CEST'
      Origin = 'VEI_CEST'
    end
    object TBVendasItensVEI_CFOP: TIntegerField
      FieldName = 'VEI_CFOP'
      Origin = 'VEI_CFOP'
    end
    object TBVendasItensVEI_CIDADEISS: TIntegerField
      FieldName = 'VEI_CIDADEISS'
      Origin = 'VEI_CIDADEISS'
    end
    object TBVendasItensVEI_CLASSFISCAL: TStringField
      FieldName = 'VEI_CLASSFISCAL'
      Origin = 'VEI_CLASSFISCAL'
    end
    object TBVendasItensVEI_CODIGO: TIntegerField
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVendasItensVEI_CODIGOBARRAS: TStringField
      FieldName = 'VEI_CODIGOBARRAS'
      Origin = 'VEI_CODIGOBARRAS'
      Size = 60
    end
    object TBVendasItensVEI_CODIGOFAB: TStringField
      FieldName = 'VEI_CODIGOFAB'
      Origin = 'VEI_CODIGOFAB'
    end
    object TBVendasItensVEI_COMISSAO: TFMTBCDField
      FieldName = 'VEI_COMISSAO'
      Origin = 'VEI_COMISSAO'
      Precision = 18
    end
    object TBVendasItensVEI_COMPLEMENTO: TStringField
      FieldName = 'VEI_COMPLEMENTO'
      Origin = 'VEI_COMPLEMENTO'
      Size = 50
    end
    object TBVendasItensVEI_COMPOEBASEICMS: TStringField
      FieldName = 'VEI_COMPOEBASEICMS'
      Origin = 'VEI_COMPOEBASEICMS'
      Size = 1
    end
    object TBVendasItensVEI_COMPOEBASEICMSST: TStringField
      FieldName = 'VEI_COMPOEBASEICMSST'
      Origin = 'VEI_COMPOEBASEICMSST'
      Size = 1
    end
    object TBVendasItensVEI_COMPOETOTAL: TStringField
      FieldName = 'VEI_COMPOETOTAL'
      Origin = 'VEI_COMPOETOTAL'
      Size = 1
    end
    object TBVendasItensVEI_CONVERSAO: TFMTBCDField
      FieldName = 'VEI_CONVERSAO'
      Origin = 'VEI_CONVERSAO'
      Precision = 18
    end
    object TBVendasItensVEI_CSTCOFINS: TIntegerField
      FieldName = 'VEI_CSTCOFINS'
      Origin = 'VEI_CSTCOFINS'
    end
    object TBVendasItensVEI_CSTICMS: TIntegerField
      FieldName = 'VEI_CSTICMS'
      Origin = 'VEI_CSTICMS'
    end
    object TBVendasItensVEI_CSTIPI: TIntegerField
      FieldName = 'VEI_CSTIPI'
      Origin = 'VEI_CSTIPI'
    end
    object TBVendasItensVEI_CSTPIS: TIntegerField
      FieldName = 'VEI_CSTPIS'
      Origin = 'VEI_CSTPIS'
    end
    object TBVendasItensVEI_DESCMAX: TFMTBCDField
      FieldName = 'VEI_DESCMAX'
      Origin = 'VEI_DESCMAX'
      Precision = 18
    end
    object TBVendasItensVEI_DESCPORC: TFMTBCDField
      FieldName = 'VEI_DESCPORC'
      Origin = 'VEI_DESCPORC'
      Precision = 18
    end
    object TBVendasItensVEI_DESCRICAO: TStringField
      FieldName = 'VEI_DESCRICAO'
      Origin = 'VEI_DESCRICAO'
      Size = 100
    end
    object TBVendasItensVEI_DESCVALOR: TFMTBCDField
      FieldName = 'VEI_DESCVALOR'
      Origin = 'VEI_DESCVALOR'
      Precision = 18
    end
    object TBVendasItensVEI_DESONERACAO: TStringField
      FieldName = 'VEI_DESONERACAO'
      Origin = 'VEI_DESONERACAO'
      Size = 80
    end
    object TBVendasItensVEI_DICNPJ: TStringField
      FieldName = 'VEI_DICNPJ'
      Origin = 'VEI_DICNPJ'
    end
    object TBVendasItensVEI_DIDATA: TDateField
      FieldName = 'VEI_DIDATA'
      Origin = 'VEI_DIDATA'
    end
    object TBVendasItensVEI_DIDESEMBARACODATA: TDateField
      FieldName = 'VEI_DIDESEMBARACODATA'
      Origin = 'VEI_DIDESEMBARACODATA'
    end
    object TBVendasItensVEI_DIDESEMBARACOLOCAL: TStringField
      FieldName = 'VEI_DIDESEMBARACOLOCAL'
      Origin = 'VEI_DIDESEMBARACOLOCAL'
      Size = 80
    end
    object TBVendasItensVEI_DIDESEMBARACOUF: TStringField
      FieldName = 'VEI_DIDESEMBARACOUF'
      Origin = 'VEI_DIDESEMBARACOUF'
      Size = 2
    end
    object TBVendasItensVEI_DIEXPORTADORCOD: TStringField
      FieldName = 'VEI_DIEXPORTADORCOD'
      Origin = 'VEI_DIEXPORTADORCOD'
      Size = 50
    end
    object TBVendasItensVEI_DIINTERMEDIO: TStringField
      FieldName = 'VEI_DIINTERMEDIO'
      Origin = 'VEI_DIINTERMEDIO'
      Size = 35
    end
    object TBVendasItensVEI_DINUMERO: TStringField
      FieldName = 'VEI_DINUMERO'
      Origin = 'VEI_DINUMERO'
      Size = 10
    end
    object TBVendasItensVEI_DITERCEIROUF: TStringField
      FieldName = 'VEI_DITERCEIROUF'
      Origin = 'VEI_DITERCEIROUF'
      Size = 2
    end
    object TBVendasItensVEI_DITRANSPORTE: TStringField
      FieldName = 'VEI_DITRANSPORTE'
      Origin = 'VEI_DITRANSPORTE'
      Size = 30
    end
    object TBVendasItensVEI_DIVALORAFRMM: TFMTBCDField
      FieldName = 'VEI_DIVALORAFRMM'
      Origin = 'VEI_DIVALORAFRMM'
      Precision = 18
    end
    object TBVendasItensVEI_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'VEI_ENQUADRAMENTOIPI'
      Origin = 'VEI_ENQUADRAMENTOIPI'
    end
    object TBVendasItensVEI_EXCECAO: TIntegerField
      FieldName = 'VEI_EXCECAO'
      Origin = 'VEI_EXCECAO'
    end
    object TBVendasItensVEI_EXCHAVEACESSO: TStringField
      FieldName = 'VEI_EXCHAVEACESSO'
      Origin = 'VEI_EXCHAVEACESSO'
      Size = 50
    end
    object TBVendasItensVEI_EXDRAWBACK: TStringField
      FieldName = 'VEI_EXDRAWBACK'
      Origin = 'VEI_EXDRAWBACK'
      Size = 15
    end
    object TBVendasItensVEI_EXQUANTIDADE: TFMTBCDField
      FieldName = 'VEI_EXQUANTIDADE'
      Origin = 'VEI_EXQUANTIDADE'
      Precision = 18
    end
    object TBVendasItensVEI_EXREGISTRO: TStringField
      FieldName = 'VEI_EXREGISTRO'
      Origin = 'VEI_EXREGISTRO'
      Size = 15
    end
    object TBVendasItensVEI_FCI: TStringField
      FieldName = 'VEI_FCI'
      Origin = 'VEI_FCI'
      Size = 40
    end
    object TBVendasItensVEI_INCENTIVOISS: TStringField
      FieldName = 'VEI_INCENTIVOISS'
      Origin = 'VEI_INCENTIVOISS'
      Size = 1
    end
    object TBVendasItensVEI_INDICADORISS: TStringField
      FieldName = 'VEI_INDICADORISS'
      Origin = 'VEI_INDICADORISS'
      Size = 50
    end
    object TBVendasItensVEI_INFOADICIONAL: TMemoField
      FieldName = 'VEI_INFOADICIONAL'
      Origin = 'VEI_INFOADICIONAL'
      BlobType = ftMemo
    end
    object TBVendasItensVEI_LOCALIZACAO: TStringField
      FieldName = 'VEI_LOCALIZACAO'
      Origin = 'VEI_LOCALIZACAO'
    end
    object TBVendasItensVEI_LOTE: TStringField
      FieldName = 'VEI_LOTE'
      Origin = 'VEI_LOTE'
    end
    object TBVendasItensVEI_LUCROPORC: TFMTBCDField
      FieldName = 'VEI_LUCROPORC'
      Origin = 'VEI_LUCROPORC'
      Precision = 18
    end
    object TBVendasItensVEI_LUCROVALOR: TFMTBCDField
      FieldName = 'VEI_LUCROVALOR'
      Origin = 'VEI_LUCROVALOR'
      Precision = 18
    end
    object TBVendasItensVEI_MODICMS: TStringField
      FieldName = 'VEI_MODICMS'
      Origin = 'VEI_MODICMS'
      Size = 40
    end
    object TBVendasItensVEI_MODICMSST: TStringField
      FieldName = 'VEI_MODICMSST'
      Origin = 'VEI_MODICMSST'
      Size = 40
    end
    object TBVendasItensVEI_ORIGEM: TStringField
      FieldName = 'VEI_ORIGEM'
      Origin = 'VEI_ORIGEM'
      Size = 120
    end
    object TBVendasItensVEI_PAISISS: TIntegerField
      FieldName = 'VEI_PAISISS'
      Origin = 'VEI_PAISISS'
    end
    object TBVendasItensVEI_PEDIDOCLIENTE: TStringField
      FieldName = 'VEI_PEDIDOCLIENTE'
      Origin = 'VEI_PEDIDOCLIENTE'
      Size = 15
    end
    object TBVendasItensVEI_PEDIDOCLIENTEITEM: TIntegerField
      FieldName = 'VEI_PEDIDOCLIENTEITEM'
      Origin = 'VEI_PEDIDOCLIENTEITEM'
    end
    object TBVendasItensVEI_PESO: TFMTBCDField
      FieldName = 'VEI_PESO'
      Origin = 'VEI_PESO'
      Precision = 18
      Size = 3
    end
    object TBVendasItensVEI_PESOTOTAL: TFMTBCDField
      FieldName = 'VEI_PESOTOTAL'
      Origin = 'VEI_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object TBVendasItensVEI_PRECOCUSTO: TFMTBCDField
      FieldName = 'VEI_PRECOCUSTO'
      Origin = 'VEI_PRECOCUSTO'
      Precision = 18
    end
    object TBVendasItensVEI_PRECOCUSTOTOTAL: TFMTBCDField
      FieldName = 'VEI_PRECOCUSTOTOTAL'
      Origin = 'VEI_PRECOCUSTOTOTAL'
      Precision = 18
    end
    object TBVendasItensVEI_PROCESSOISS: TStringField
      FieldName = 'VEI_PROCESSOISS'
      Origin = 'VEI_PROCESSOISS'
      Size = 30
    end
    object TBVendasItensVEI_PRODUTO: TIntegerField
      FieldName = 'VEI_PRODUTO'
      Origin = 'VEI_PRODUTO'
      Required = True
    end
    object TBVendasItensVEI_PRODUTOREAL: TIntegerField
      FieldName = 'VEI_PRODUTOREAL'
      Origin = 'VEI_PRODUTOREAL'
    end
    object TBVendasItensVEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      Origin = 'VEI_QUANTIDADE'
      Precision = 18
    end
    object TBVendasItensVEI_QUANTIDADETROCA: TFMTBCDField
      FieldName = 'VEI_QUANTIDADETROCA'
      Origin = 'VEI_QUANTIDADETROCA'
      Precision = 18
    end
    object TBVendasItensVEI_SEQUENCIA: TIntegerField
      FieldName = 'VEI_SEQUENCIA'
      Origin = 'VEI_SEQUENCIA'
    end
    object TBVendasItensVEI_SERVICOISS: TStringField
      FieldName = 'VEI_SERVICOISS'
      Origin = 'VEI_SERVICOISS'
    end
    object TBVendasItensVEI_SOMACOFINSST: TStringField
      FieldName = 'VEI_SOMACOFINSST'
      Origin = 'VEI_SOMACOFINSST'
      Size = 1
    end
    object TBVendasItensVEI_SOMAPISST: TStringField
      FieldName = 'VEI_SOMAPISST'
      Origin = 'VEI_SOMAPISST'
      Size = 1
    end
    object TBVendasItensVEI_TIPO: TStringField
      FieldName = 'VEI_TIPO'
      Origin = 'VEI_TIPO'
      Size = 1
    end
    object TBVendasItensVEI_TIPOISS: TStringField
      FieldName = 'VEI_TIPOISS'
      Origin = 'VEI_TIPOISS'
      Size = 15
    end
    object TBVendasItensVEI_UNIDADE: TStringField
      FieldName = 'VEI_UNIDADE'
      Origin = 'VEI_UNIDADE'
      Size = 3
    end
    object TBVendasItensVEI_VALORACESSORIAS: TFMTBCDField
      FieldName = 'VEI_VALORACESSORIAS'
      Origin = 'VEI_VALORACESSORIAS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORADUANA: TFMTBCDField
      FieldName = 'VEI_VALORADUANA'
      Origin = 'VEI_VALORADUANA'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOFINS: TFMTBCDField
      FieldName = 'VEI_VALORCOFINS'
      Origin = 'VEI_VALORCOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOFINSST: TFMTBCDField
      FieldName = 'VEI_VALORCOFINSST'
      Origin = 'VEI_VALORCOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOMISSAO: TFMTBCDField
      FieldName = 'VEI_VALORCOMISSAO'
      Origin = 'VEI_VALORCOMISSAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFCP: TFMTBCDField
      FieldName = 'VEI_VALORFCP'
      Origin = 'VEI_VALORFCP'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFCPST: TFMTBCDField
      FieldName = 'VEI_VALORFCPST'
      Origin = 'VEI_VALORFCPST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFRETE: TFMTBCDField
      FieldName = 'VEI_VALORFRETE'
      Origin = 'VEI_VALORFRETE'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMS: TFMTBCDField
      FieldName = 'VEI_VALORICMS'
      Origin = 'VEI_VALORICMS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSCREDSN: TFMTBCDField
      FieldName = 'VEI_VALORICMSCREDSN'
      Origin = 'VEI_VALORICMSCREDSN'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSDESONERADO: TFMTBCDField
      FieldName = 'VEI_VALORICMSDESONERADO'
      Origin = 'VEI_VALORICMSDESONERADO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSST: TFMTBCDField
      FieldName = 'VEI_VALORICMSST'
      Origin = 'VEI_VALORICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSSTRET: TFMTBCDField
      FieldName = 'VEI_VALORICMSSTRET'
      Origin = 'VEI_VALORICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSSUBSTITUTO: TFMTBCDField
      FieldName = 'VEI_VALORICMSSUBSTITUTO'
      Origin = 'VEI_VALORICMSSUBSTITUTO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSUFDEST: TFMTBCDField
      FieldName = 'VEI_VALORICMSUFDEST'
      Origin = 'VEI_VALORICMSUFDEST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSUFREMET: TFMTBCDField
      FieldName = 'VEI_VALORICMSUFREMET'
      Origin = 'VEI_VALORICMSUFREMET'
      Precision = 18
    end
    object TBVendasItensVEI_VALORII: TFMTBCDField
      FieldName = 'VEI_VALORII'
      Origin = 'VEI_VALORII'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIOF: TFMTBCDField
      FieldName = 'VEI_VALORIOF'
      Origin = 'VEI_VALORIOF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIPI: TFMTBCDField
      FieldName = 'VEI_VALORIPI'
      Origin = 'VEI_VALORIPI'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISS: TFMTBCDField
      FieldName = 'VEI_VALORISS'
      Origin = 'VEI_VALORISS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDEDUCAO: TFMTBCDField
      FieldName = 'VEI_VALORISSDEDUCAO'
      Origin = 'VEI_VALORISSDEDUCAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDESCCOND: TFMTBCDField
      FieldName = 'VEI_VALORISSDESCCOND'
      Origin = 'VEI_VALORISSDESCCOND'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDESCINCOND: TFMTBCDField
      FieldName = 'VEI_VALORISSDESCINCOND'
      Origin = 'VEI_VALORISSDESCINCOND'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSOUTROS: TFMTBCDField
      FieldName = 'VEI_VALORISSOUTROS'
      Origin = 'VEI_VALORISSOUTROS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSRETENCAO: TFMTBCDField
      FieldName = 'VEI_VALORISSRETENCAO'
      Origin = 'VEI_VALORISSRETENCAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORPIS: TFMTBCDField
      FieldName = 'VEI_VALORPIS'
      Origin = 'VEI_VALORPIS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORPISST: TFMTBCDField
      FieldName = 'VEI_VALORPISST'
      Origin = 'VEI_VALORPISST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORSEGURO: TFMTBCDField
      FieldName = 'VEI_VALORSEGURO'
      Origin = 'VEI_VALORSEGURO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTOTAL: TFMTBCDField
      FieldName = 'VEI_VALORTOTAL'
      Origin = 'VEI_VALORTOTAL'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTOTALBRUTO: TFMTBCDField
      FieldName = 'VEI_VALORTOTALBRUTO'
      Origin = 'VEI_VALORTOTALBRUTO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOS: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOS'
      Origin = 'VEI_VALORTRIBUTOS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSEST: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSEST'
      Origin = 'VEI_VALORTRIBUTOSEST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSFED: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSFED'
      Origin = 'VEI_VALORTRIBUTOSFED'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSIMP: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSIMP'
      Origin = 'VEI_VALORTRIBUTOSIMP'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSMUN: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSMUN'
      Origin = 'VEI_VALORTRIBUTOSMUN'
      Precision = 18
    end
    object TBVendasItensVEI_VALORUNIT: TFMTBCDField
      FieldName = 'VEI_VALORUNIT'
      Origin = 'VEI_VALORUNIT'
      Precision = 18
    end
    object TBVendasItensVEI_VENDA: TIntegerField
      FieldName = 'VEI_VENDA'
      Origin = 'VEI_VENDA'
      Required = True
    end
  end
end
