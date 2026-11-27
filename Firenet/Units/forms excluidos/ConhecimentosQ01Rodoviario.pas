unit ConhecimentosQ01Rodoviario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrBarcode, QRPDFFilt,
  DB, qrFramelines, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConhecimentosQ01RodoviarioLotacao = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    Shape7: TQRShape;
    IMAGEM: TQRImage;
    Shape8: TQRShape;
    Shape9: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    Shape10: TQRShape;
    QRLabel16: TQRLabel;
    Shape11: TQRShape;
    Shape12: TQRShape;
    Shape13: TQRShape;
    Shape14: TQRShape;
    Shape15: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    Shape16: TQRShape;
    Shape17: TQRShape;
    Shape18: TQRShape;
    QRLabel22: TQRLabel;
    Shape19: TQRShape;
    QRLabel23: TQRLabel;
    Shape20: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    Shape21: TQRShape;
    Shape22: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    Shape23: TQRShape;
    QRLabel28: TQRLabel;
    Shape24: TQRShape;
    QRLabel29: TQRLabel;
    Shape25: TQRShape;
    QRLabel30: TQRLabel;
    Shape26: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    Shape27: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    Shape28: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    Shape29: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    Shape30: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    Shape31: TQRShape;
    Shape32: TQRShape;
    Shape33: TQRShape;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    Shape34: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    Shape35: TQRShape;
    Shape36: TQRShape;
    Shape37: TQRShape;
    Shape38: TQRShape;
    Shape39: TQRShape;
    Shape40: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    Shape41: TQRShape;
    QRLabel91: TQRLabel;
    Shape42: TQRShape;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    Shape43: TQRShape;
    Shape44: TQRShape;
    Shape45: TQRShape;
    Shape46: TQRShape;
    Shape47: TQRShape;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    Shape48: TQRShape;
    QRLabel103: TQRLabel;
    Shape49: TQRShape;
    QRLabel104: TQRLabel;
    Shape50: TQRShape;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    Shape51: TQRShape;
    QRLabel107: TQRLabel;
    Shape52: TQRShape;
    Shape53: TQRShape;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    Shape54: TQRShape;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    Shape58: TQRShape;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    SummaryBand1: TQRBand;
    QRLabel120: TQRLabel;
    Shape62: TQRShape;
    QRLabel121: TQRLabel;
    Shape63: TQRShape;
    QRLabel122: TQRLabel;
    Shape64: TQRShape;
    QRLabel123: TQRLabel;
    Shape65: TQRShape;
    QRLabel124: TQRLabel;
    Shape66: TQRShape;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    Shape67: TQRShape;
    Shape68: TQRShape;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    Shape69: TQRShape;
    Shape70: TQRShape;
    Shape71: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    Shape72: TQRShape;
    Shape73: TQRShape;
    Shape74: TQRShape;
    Shape75: TQRShape;
    Shape76: TQRShape;
    QRLabel135: TQRLabel;
    Shape77: TQRShape;
    QRLabel136: TQRLabel;
    Shape78: TQRShape;
    QRLabel137: TQRLabel;
    Shape79: TQRShape;
    Shape80: TQRShape;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    Shape81: TQRShape;
    Shape82: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel112: TQRLabel;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel145: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText80: TQRDBText;
    QRLabel146: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    Shape1: TQRShape;
    Shape2: TQRShape;
    Shape3: TQRShape;
    Shape4: TQRShape;
    Shape5: TQRShape;
    Shape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel140: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel142: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel143: TQRLabel;
    QRDBText45: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel144: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRLabel173: TQRLabel;
    QRDBText85: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText54: TQRDBText;
    QRLabel148: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel151: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRLabel147: TQRLabel;
    QRDBText84: TQRDBText;
    QRLabel175: TQRLabel;
    QRDBText86: TQRDBText;
    QRLabel176: TQRLabel;
    QRDBText87: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRLabel149: TQRLabel;
    QRLabel115: TQRLabel;
    QRDBText70: TQRDBText;
    QRLabel174: TQRLabel;
    QRDBText71: TQRDBText;
    QRLabel150: TQRLabel;
    DataSource1: TDataSource;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel92: TQRLabel;
    QRDBText64: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel119: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRFrameline2: TQRFrameline;
    QRFrameline1: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRLabel190: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel185: TQRLabel;
    TRCte: TFDTransaction;
    QYCte: TFDQuery;
    QYCteCTE_AEREODIMENSAO: TStringField;
    QYCteCTE_AEREODTPREVISTA: TDateField;
    QYCteCTE_AEREOIATA: TStringField;
    QYCteCTE_AEREOIMP: TStringField;
    QYCteCTE_AEREOMINUTA: TIntegerField;
    QYCteCTE_AEREONOMEFILIAL: TStringField;
    QYCteCTE_AEREOOCA: TStringField;
    QYCteCTE_AEREOTARIFACLASSE: TStringField;
    QYCteCTE_AEREOTARIFACODIGO: TIntegerField;
    QYCteCTE_AEREOTARIFAVALOR: TFMTBCDField;
    QYCteCTE_ALIQFCP: TFMTBCDField;
    QYCteCTE_ALIQICMS: TFMTBCDField;
    QYCteCTE_ALIQICMSINTER: TFMTBCDField;
    QYCteCTE_ALIQICMSINTERPART: TFMTBCDField;
    QYCteCTE_ALIQICMSRED: TFMTBCDField;
    QYCteCTE_ALIQICMSST: TFMTBCDField;
    QYCteCTE_ALIQICMSUFFIM: TFMTBCDField;
    QYCteCTE_ALIQTRIBUTOS: TFMTBCDField;
    QYCteCTE_BAIXADATA: TDateField;
    QYCteCTE_BAIXAPOR: TStringField;
    QYCteCTE_BASEICMS: TFMTBCDField;
    QYCteCTE_BASEICMSRED: TFMTBCDField;
    QYCteCTE_BASEICMSST: TFMTBCDField;
    QYCteCTE_CARGAOUTRASCARAC: TStringField;
    QYCteCTE_CFOP: TIntegerField;
    QYCteCTE_CFOPDESC: TStringField;
    QYCteCTE_CHAVEACESSO: TStringField;
    QYCteCTE_CIOT: TStringField;
    QYCteCTE_CODIGO: TIntegerField;
    QYCteCTE_CODIGONUMERICO: TStringField;
    QYCteCTE_COMISSAO: TFMTBCDField;
    QYCteCTE_CONDICAO: TIntegerField;
    QYCteCTE_CONDICAOMEMO: TMemoField;
    QYCteCTE_CONSULTADA: TStringField;
    QYCteCTE_CSTICMS: TIntegerField;
    QYCteCTE_CTEREFERENCIADO: TStringField;
    QYCteCTE_DATAHORA: TStringField;
    QYCteCTE_DATAHORACONTINGENCIA: TStringField;
    QYCteCTE_DESBAIRRO: TStringField;
    QYCteCTE_DESCEP: TStringField;
    QYCteCTE_DESCIDADE: TStringField;
    QYCteCTE_DESCIDADECODIGO: TIntegerField;
    QYCteCTE_DESCNPJ: TStringField;
    QYCteCTE_DESCOMPLEMENTO: TStringField;
    QYCteCTE_DESCONTATO: TStringField;
    QYCteCTE_DESCPF: TStringField;
    QYCteCTE_DESCPORC: TFMTBCDField;
    QYCteCTE_DESCVALOR: TFMTBCDField;
    QYCteCTE_DESENDERECO: TStringField;
    QYCteCTE_DESESTADO: TStringField;
    QYCteCTE_DESESTADOCODIGO: TIntegerField;
    QYCteCTE_DESFONE: TStringField;
    QYCteCTE_DESIE: TStringField;
    QYCteCTE_DESNOME: TStringField;
    QYCteCTE_DESNUMERO: TStringField;
    QYCteCTE_DESPAIS: TStringField;
    QYCteCTE_DESPAISCODIGO: TIntegerField;
    QYCteCTE_DESTINATARIO: TIntegerField;
    QYCteCTE_DIAPREFERENCIAL: TIntegerField;
    QYCteCTE_DTATUALIZACAO: TDateField;
    QYCteCTE_DTCADASTRO: TDateField;
    QYCteCTE_DTEMISSAO: TDateField;
    QYCteCTE_ENTREGADATA: TStringField;
    QYCteCTE_ENTREGADATAFINAL: TDateField;
    QYCteCTE_ENTREGADATAINICIAL: TDateField;
    QYCteCTE_ENTREGAHORA: TStringField;
    QYCteCTE_ENTREGAHORAFINAL: TTimeField;
    QYCteCTE_ENTREGAHORAINICIAL: TTimeField;
    QYCteCTE_ENVIADO: TStringField;
    QYCteCTE_EXPBAIRRO: TStringField;
    QYCteCTE_EXPCEP: TStringField;
    QYCteCTE_EXPCIDADE: TStringField;
    QYCteCTE_EXPCIDADECODIGO: TIntegerField;
    QYCteCTE_EXPCNPJ: TStringField;
    QYCteCTE_EXPCOMPLEMENTO: TStringField;
    QYCteCTE_EXPCONTATO: TStringField;
    QYCteCTE_EXPCPF: TStringField;
    QYCteCTE_EXPEDIDOR: TIntegerField;
    QYCteCTE_EXPENDERECO: TStringField;
    QYCteCTE_EXPESTADO: TStringField;
    QYCteCTE_EXPESTADOCODIGO: TIntegerField;
    QYCteCTE_EXPFONE: TStringField;
    QYCteCTE_EXPIE: TStringField;
    QYCteCTE_EXPNOME: TStringField;
    QYCteCTE_EXPNUMERO: TStringField;
    QYCteCTE_EXPPAIS: TStringField;
    QYCteCTE_EXPPAISCODIGO: TIntegerField;
    QYCteCTE_FINALIDADE: TStringField;
    QYCteCTE_FORMAPAGTO: TStringField;
    QYCteCTE_FORMAPAGTOSERVICO: TStringField;
    QYCteCTE_HRATUALIZACAO: TTimeField;
    QYCteCTE_HRCADASTRO: TTimeField;
    QYCteCTE_ICMSALIQUOTAUF: TFMTBCDField;
    QYCteCTE_ICMSPOR: TStringField;
    QYCteCTE_INFOADICFISCO: TMemoField;
    QYCteCTE_LOTACAO: TStringField;
    QYCteCTE_LOTE: TStringField;
    QYCteCTE_MODAL: TStringField;
    QYCteCTE_MODELO: TIntegerField;
    QYCteCTE_MOTIVOCANCELAMENTO: TStringField;
    QYCteCTE_MOTIVOCONTINGENCIA: TStringField;
    QYCteCTE_MOTIVOINUTILIZACAO: TStringField;
    QYCteCTE_MOTORISTA: TStringField;
    QYCteCTE_MOTORISTACPF: TStringField;
    QYCteCTE_MOVIMENTAFINANCEIRO: TStringField;
    QYCteCTE_OBSERVACOES: TMemoField;
    QYCteCTE_PAGOPOR: TStringField;
    QYCteCTE_PESOTOTAL: TFMTBCDField;
    QYCteCTE_PRODUTOPREDOM: TStringField;
    QYCteCTE_PROTOCOLO: TStringField;
    QYCteCTE_PROTOCOLOCANC: TStringField;
    QYCteCTE_PROTOCOLOCANCDH: TStringField;
    QYCteCTE_PROTOCOLODH: TStringField;
    QYCteCTE_PROTOCOLOINUT: TStringField;
    QYCteCTE_PROTOCOLOINUTDH: TStringField;
    QYCteCTE_RECBAIRRO: TStringField;
    QYCteCTE_RECCEP: TStringField;
    QYCteCTE_RECCIDADE: TStringField;
    QYCteCTE_RECCIDADECODIGO: TIntegerField;
    QYCteCTE_RECCNPJ: TStringField;
    QYCteCTE_RECCOMPLEMENTO: TStringField;
    QYCteCTE_RECCONTATO: TStringField;
    QYCteCTE_RECCPF: TStringField;
    QYCteCTE_RECEBEDOR: TIntegerField;
    QYCteCTE_RECEBIDODATA: TDateField;
    QYCteCTE_RECEBIDOPOR: TStringField;
    QYCteCTE_RECENDERECO: TStringField;
    QYCteCTE_RECESTADO: TStringField;
    QYCteCTE_RECESTADOCODIGO: TIntegerField;
    QYCteCTE_RECFONE: TStringField;
    QYCteCTE_RECIBO: TStringField;
    QYCteCTE_RECIBODH: TStringField;
    QYCteCTE_RECIE: TStringField;
    QYCteCTE_RECNOME: TStringField;
    QYCteCTE_RECNUMERO: TStringField;
    QYCteCTE_RECPAIS: TStringField;
    QYCteCTE_RECPAISCODIGO: TIntegerField;
    QYCteCTE_REFERENCIA: TStringField;
    QYCteCTE_REMBAIRRO: TStringField;
    QYCteCTE_REMCEP: TStringField;
    QYCteCTE_REMCIDADE: TStringField;
    QYCteCTE_REMCIDADECODIGO: TIntegerField;
    QYCteCTE_REMCNPJ: TStringField;
    QYCteCTE_REMCOMPLEMENTO: TStringField;
    QYCteCTE_REMCONTATO: TStringField;
    QYCteCTE_REMCPF: TStringField;
    QYCteCTE_REMENDERECO: TStringField;
    QYCteCTE_REMESTADO: TStringField;
    QYCteCTE_REMESTADOCODIGO: TIntegerField;
    QYCteCTE_REMETENTE: TIntegerField;
    QYCteCTE_REMFONE: TStringField;
    QYCteCTE_REMIE: TStringField;
    QYCteCTE_REMNOME: TStringField;
    QYCteCTE_REMNUMERO: TStringField;
    QYCteCTE_REMPAIS: TStringField;
    QYCteCTE_REMPAISCODIGO: TIntegerField;
    QYCteCTE_RETIRA: TStringField;
    QYCteCTE_RETIRADETALHES: TStringField;
    QYCteCTE_SEGURO: TStringField;
    QYCteCTE_SEGUROAPOLICE: TStringField;
    QYCteCTE_SEGUROAVERBACAO: TStringField;
    QYCteCTE_SEGURONOME: TStringField;
    QYCteCTE_SEGUROVALOR: TFMTBCDField;
    QYCteCTE_SERIE: TIntegerField;
    QYCteCTE_STATUS: TStringField;
    QYCteCTE_TIPOCTE: TStringField;
    QYCteCTE_TIPOEMISSAO: TStringField;
    QYCteCTE_TIPOSERVICO: TStringField;
    QYCteCTE_TOMADOR: TStringField;
    QYCteCTE_TOMADORBAIRRO: TStringField;
    QYCteCTE_TOMADORCEP: TStringField;
    QYCteCTE_TOMADORCIDADE: TStringField;
    QYCteCTE_TOMADORCIDADECODIGO: TIntegerField;
    QYCteCTE_TOMADORCNPJ: TStringField;
    QYCteCTE_TOMADORCODIGO: TIntegerField;
    QYCteCTE_TOMADORCOMPLEMENTO: TStringField;
    QYCteCTE_TOMADORCONTATO: TStringField;
    QYCteCTE_TOMADORCPF: TStringField;
    QYCteCTE_TOMADORENDERECO: TStringField;
    QYCteCTE_TOMADORESTADO: TStringField;
    QYCteCTE_TOMADORESTADOCODIGO: TIntegerField;
    QYCteCTE_TOMADORFONE: TStringField;
    QYCteCTE_TOMADORIE: TStringField;
    QYCteCTE_TOMADORNOME: TStringField;
    QYCteCTE_TOMADORNUMERO: TStringField;
    QYCteCTE_TOMADORPAIS: TStringField;
    QYCteCTE_TOMADORPAISCODIGO: TIntegerField;
    QYCteCTE_TOTALCCE: TIntegerField;
    QYCteCTE_TOTALCOMISSAO: TFMTBCDField;
    QYCteCTE_TOTALFCP: TFMTBCDField;
    QYCteCTE_TOTALICMS: TFMTBCDField;
    QYCteCTE_TOTALICMSST: TFMTBCDField;
    QYCteCTE_TOTALICMSUFFIM: TFMTBCDField;
    QYCteCTE_TOTALICMSUFINI: TFMTBCDField;
    QYCteCTE_TOTALTRIBUTOS: TFMTBCDField;
    QYCteCTE_USUARIO: TStringField;
    QYCteCTE_VALORCREDITOICMS: TFMTBCDField;
    QYCteCTE_VALORFRETE: TFMTBCDField;
    QYCteCTE_VALORNOTAS: TFMTBCDField;
    QYCteCTE_VALOROUTROS: TFMTBCDField;
    QYCteCTE_VALORSEGURO: TFMTBCDField;
    QYCteCTE_VALORTOTAL: TFMTBCDField;
    QYCteCTE_VENDEDOR: TIntegerField;
    QYCteCPG_ATUALIZAR: TStringField;
    QYCteCPG_BAIXARPRIMEIRAPARC: TStringField;
    QYCteCPG_CODIGO: TIntegerField;
    QYCteCPG_CONTA: TIntegerField;
    QYCteCPG_CUPOM: TStringField;
    QYCteCPG_DESCPORC: TFMTBCDField;
    QYCteCPG_DESCRICAO: TStringField;
    QYCteCPG_DESCRICAOCUPOM: TStringField;
    QYCteCPG_DTATUALIZACAO: TDateField;
    QYCteCPG_DTCADASTRO: TDateField;
    QYCteCPG_FORMAPAGTO: TStringField;
    QYCteCPG_HRATUALIZACAO: TTimeField;
    QYCteCPG_HRCADASTRO: TTimeField;
    QYCteCPG_MEIOPAGAMENTO: TStringField;
    QYCteCPG_MENSAL: TStringField;
    QYCteCPG_MOBILE: TStringField;
    QYCteCPG_PARCELASIGUAIS: TStringField;
    QYCteCPG_STATUS: TStringField;
    QYCteCPG_TIPOINTEGRACAO: TStringField;
    QYCteCPG_TOTALPARCELAS: TIntegerField;
    QYCteCPG_TOTALPORCENTAGEM: TFMTBCDField;
    QYCteCPG_USUARIO: TStringField;
    QYCteICM_CALCULACREDITOSN: TStringField;
    QYCteICM_CODIGO: TIntegerField;
    QYCteICM_DESCRICAO: TStringField;
    QYCteICM_DTATUALIZACAO: TDateField;
    QYCteICM_DTCADASTRO: TDateField;
    QYCteICM_HRATUALIZACAO: TTimeField;
    QYCteICM_HRCADASTRO: TTimeField;
    QYCteICM_USUARIO: TStringField;
    QYCteVEN_ATUALIZAR: TStringField;
    QYCteVEN_BAIRRO: TStringField;
    QYCteVEN_CEP: TStringField;
    QYCteVEN_CIDADE: TStringField;
    QYCteVEN_CIDADECODIGO: TIntegerField;
    QYCteVEN_CNPJ: TStringField;
    QYCteVEN_CODIGO: TIntegerField;
    QYCteVEN_COMISSAO: TFMTBCDField;
    QYCteVEN_COMISSAOTIPO: TStringField;
    QYCteVEN_COMPLEMENTO: TStringField;
    QYCteVEN_CONTATO: TStringField;
    QYCteVEN_COR: TStringField;
    QYCteVEN_CPF: TStringField;
    QYCteVEN_DTATUALIZACAO: TDateField;
    QYCteVEN_DTCADASTRO: TDateField;
    QYCteVEN_DTNASC: TDateField;
    QYCteVEN_EMAIL: TStringField;
    QYCteVEN_EMAILCONTA: TIntegerField;
    QYCteVEN_ENDERECO: TStringField;
    QYCteVEN_ESTADO: TStringField;
    QYCteVEN_ESTADOCIVIL: TStringField;
    QYCteVEN_FONE1: TStringField;
    QYCteVEN_FONE2: TStringField;
    QYCteVEN_FONE3: TStringField;
    QYCteVEN_HRATUALIZACAO: TTimeField;
    QYCteVEN_HRCADASTRO: TTimeField;
    QYCteVEN_IE: TStringField;
    QYCteVEN_MOSTRARAGENDA: TStringField;
    QYCteVEN_NOME: TStringField;
    QYCteVEN_NUMERO: TStringField;
    QYCteVEN_OBSERVACOES: TMemoField;
    QYCteVEN_REGPROFISSIONAL: TStringField;
    QYCteVEN_RG: TStringField;
    QYCteVEN_SALARIOBASE: TFMTBCDField;
    QYCteVEN_SALDOATUAL: TFMTBCDField;
    QYCteVEN_SALDOHORAS: TCurrencyField;
    QYCteVEN_SITE: TStringField;
    QYCteVEN_STATUS: TStringField;
    QYCteVEN_TIPOPESSOA: TStringField;
    QYCteVEN_USUARIO: TStringField;
    TRCteNotas: TFDTransaction;
    QYCteNotas: TFDQuery;
    QYCteNotasCTN_ALIQICMS: TFMTBCDField;
    QYCteNotasCTN_ALIQICMSST: TFMTBCDField;
    QYCteNotasCTN_BASEICMS: TFMTBCDField;
    QYCteNotasCTN_BASEICMSST: TFMTBCDField;
    QYCteNotasCTN_CFOP: TStringField;
    QYCteNotasCTN_CHAVEACESSO: TStringField;
    QYCteNotasCTN_CNPJREMETENTE: TStringField;
    QYCteNotasCTN_CODIGO: TIntegerField;
    QYCteNotasCTN_CTE: TIntegerField;
    QYCteNotasCTN_DESCRICAODOC: TStringField;
    QYCteNotasCTN_DTEMISSAO: TDateField;
    QYCteNotasCTN_MODELO: TIntegerField;
    QYCteNotasCTN_NUMERO: TIntegerField;
    QYCteNotasCTN_PESO: TFMTBCDField;
    QYCteNotasCTN_SERIE: TIntegerField;
    QYCteNotasCTN_SUFRAMA: TStringField;
    QYCteNotasCTN_TIPONOTA: TStringField;
    QYCteNotasCTN_TIPOOUTROS: TStringField;
    QYCteNotasCTN_TOTALICMS: TFMTBCDField;
    QYCteNotasCTN_TOTALICMSST: TFMTBCDField;
    QYCteNotasCTN_TOTALPRODUTOS: TFMTBCDField;
    QYCteNotasCTN_VALORTOTAL: TFMTBCDField;
    TRCteCarga: TFDTransaction;
    QYCteCarga: TFDQuery;
    TRCteVeiculos: TFDTransaction;
    QYCteVeiculos: TFDQuery;
    QYCteCargaCCG_CODIGO: TIntegerField;
    QYCteCargaCCG_CTE: TIntegerField;
    QYCteCargaCCG_QUANTIDADE: TFMTBCDField;
    QYCteCargaCCG_TIPOMEDIDA: TStringField;
    QYCteCargaCCG_UNIDADEMEDIDA: TStringField;
    QYCteVeiculosCTV_ESTADO: TStringField;
    QYCteVeiculosCTV_PLACA: TStringField;
    QYCteVeiculosCTV_RNTRC: TStringField;
    QYCteVeiculosCTV_TIPOVEICULO: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosQ01RodoviarioLotacao: TFormConhecimentosQ01RodoviarioLotacao;

implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosQ01RodoviarioLotacao.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if QYCteCTE_REMCNPJ.IsNull then QRDBText20.DataField:='CTE_REMCPF';
  if QYCteCTE_EXPCNPJ.IsNull then QRDBText36.DataField:='CTE_EXPCPF';
  if QYCteCTE_DESCNPJ.IsNull then QRDBText28.DataField:='CTE_DESCPF';
  if QYCteCTE_RECCNPJ.IsNull then QRDBText44.DataField:='CTE_RECCPF';
  QRLabel92.Caption:=Format('%m',[QYCteCTE_VALORFRETE.AsExtended+QYCteCTE_VALORSEGURO.AsExtended+QYCteCTE_VALOROUTROS.AsExtended]);

  QRLabel190.Caption:=QYCteCTE_REMENDERECO.Value+', '+QYCteCTE_REMNUMERO.Value+' - '+QYCteCTE_REMBAIRRO.Value;
  QRLabel172.Caption:=QYCteCTE_DESENDERECO.Value+', '+QYCteCTE_DESNUMERO.Value+' - '+QYCteCTE_DESBAIRRO.Value;
  QRLabel171.Caption:=QYCteCTE_EXPENDERECO.Value+', '+QYCteCTE_EXPNUMERO.Value+' - '+QYCteCTE_EXPBAIRRO.Value;
  QRLabel185.Caption:=QYCteCTE_RECENDERECO.Value+', '+QYCteCTE_RECNUMERO.Value+' - '+QYCteCTE_RECBAIRRO.Value;
end;

procedure TFormConhecimentosQ01RodoviarioLotacao.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConhecimentosQ01RodoviarioLotacao);
end;

procedure TFormConhecimentosQ01RodoviarioLotacao.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if QYCteNotasCTN_TIPONOTA.Value='1 - NOTA FISCAL' then
  begin
    QRLabel149.Caption:='NF';
    QRLabel115.Caption:=QYCteNotasCTN_CNPJREMETENTE.Value+' - '+IntToStr(QYCteNotasCTN_SERIE.Value)+' / '+IntToStr(QYCteNotasCTN_NUMERO.Value);
  end;
  if QYCteNotasCTN_TIPONOTA.Value='2 - NOTA FISCAL ELETRONICA' then
  begin
    QRLabel149.Caption:='NF-e';
    QRLabel115.Caption:=QYCteNotasCTN_CHAVEACESSO.Value;
  end;
  if QYCteNotasCTN_TIPONOTA.Value='3 - OUTROS' then
  begin
    QRLabel149.Caption:='OUTROS';
    QRLabel115.Caption:=QYCteNotasCTN_CNPJREMETENTE.Value+' - '+IntToStr(QYCteNotasCTN_SERIE.Value)+' / '+IntToStr(QYCteNotasCTN_NUMERO.Value);
  end;
end;

procedure TFormConhecimentosQ01RodoviarioLotacao.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var I: Word;
begin
  QRLabel150.Caption:=DM2.TBCteCTE_INFOADICFISCO.Value+'O valor aproximado dos tributos incidentes sobre o preço deste serviço é de '+Format('%m',[QYCteCTE_TOTALTRIBUTOS.AsExtended])+' ('+FloatToStr(QYCteCTE_ALIQTRIBUTOS.AsExtended)+'%) Fonte: IBPT';

  //configura os labels de informacoes dos veículos.
  QRLabel119.Font.Color:=clWhite;
  QRLabel154.Font.Color:=clWhite;
  QRLabel178.Font.Color:=clWhite;
  QRLabel181.Font.Color:=clWhite;
  QRLabel152.Font.Color:=clWhite;
  QRLabel170.Font.Color:=clWhite;
  QRLabel179.Font.Color:=clWhite;
  QRLabel182.Font.Color:=clWhite;
  QRLabel153.Font.Color:=clWhite;
  QRLabel177.Font.Color:=clWhite;
  QRLabel180.Font.Color:=clWhite;
  QRLabel183.Font.Color:=clWhite;
  QYCteVeiculos.First;
  I:=0;
  while not QYCteVeiculos.Eof do
  begin
    Inc(I);
    if I=1 then
    begin
      QRLabel119.Caption:=QYCteVeiculosCTV_TIPOVEICULO.Value;
      QRLabel154.Caption:=QYCteVeiculosCTV_PLACA.Value;
      QRLabel178.Caption:=QYCteVeiculosCTV_ESTADO.Value;
      QRLabel181.Caption:=QYCteVeiculosCTV_RNTRC.Value;
      QRLabel119.Font.Color:=clBlack;
      QRLabel154.Font.Color:=clBlack;
      QRLabel178.Font.Color:=clBlack;
      QRLabel181.Font.Color:=clBlack;
    end;

    if I=2 then
    begin
      QRLabel152.Caption:=QYCteVeiculosCTV_TIPOVEICULO.Value;
      QRLabel170.Caption:=QYCteVeiculosCTV_PLACA.Value;
      QRLabel179.Caption:=QYCteVeiculosCTV_ESTADO.Value;
      QRLabel182.Caption:=QYCteVeiculosCTV_RNTRC.Value;
      QRLabel152.Font.Color:=clBlack;
      QRLabel170.Font.Color:=clBlack;
      QRLabel179.Font.Color:=clBlack;
      QRLabel182.Font.Color:=clBlack;
    end;

    if I=3 then
    begin
      QRLabel153.Caption:=QYCteVeiculosCTV_TIPOVEICULO.Value;
      QRLabel177.Caption:=QYCteVeiculosCTV_PLACA.Value;
      QRLabel180.Caption:=QYCteVeiculosCTV_ESTADO.Value;
      QRLabel183.Caption:=QYCteVeiculosCTV_RNTRC.Value;
      QRLabel152.Font.Color:=clBlack;
      QRLabel170.Font.Color:=clBlack;
      QRLabel179.Font.Color:=clBlack;
      QRLabel182.Font.Color:=clBlack;
    end;

    QYCteVeiculos.Next;
  end;
end;

procedure TFormConhecimentosQ01RodoviarioLotacao.TitleBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var S: String;
  I: Word;
begin
  QRAsBarcode1.Text:=QYCteCTE_CHAVEACESSO.Value;
  QRLabel112.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+',  '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                     DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - CEP: '+DM.TBEmpresaEMP_CEP.Value+' - Fone: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value;

  S:=QYCteCTE_CHAVEACESSO.Value;
  Insert('.',S,5); Insert('.',S,10); Insert('.',S,15); Insert('.',S,20); Insert('.',S,25); Insert('.',S,30); Insert('.',S,35); Insert('.',S,40); Insert('.',S,45); Insert('.',S,50);
  QRLabel146.Caption:=S;

  QRLabel151.Caption:=''; QRLabel141.Caption:='';
  QRLabel79.Caption:='';  QRLabel155.Caption:='';
  QRLabel156.Caption:=''; QRLabel157.Caption:='';

  QRLabel158.Caption:=''; QRLabel159.Caption:='';
  QRLabel160.Caption:=''; QRLabel161.Caption:='';
  QRLabel162.Caption:=''; QRLabel163.Caption:='';

  QRLabel164.Caption:=''; QRLabel165.Caption:='';
  QRLabel166.Caption:=''; QRLabel167.Caption:='';
  QRLabel168.Caption:=''; QRLabel169.Caption:='';
  I:=0;
  QYCteCarga.First;
  while not QYCteCarga.Eof do
  begin
    Inc(I);
    if I=1 then
    begin
      QRLabel151.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel141.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=2 then
    begin
      QRLabel79.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel155.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=3 then
    begin
      QRLabel156.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel157.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=4 then
    begin
      QRLabel158.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel159.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=5 then
    begin
      QRLabel160.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel161.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=6 then
    begin
      QRLabel162.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel163.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=7 then
    begin
      QRLabel164.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel165.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=8 then
    begin
      QRLabel166.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel167.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
    end else
    if I=9 then
    begin
      QRLabel168.Caption:=QYCteCargaCCG_TIPOMEDIDA.Value;
      QRLabel169.Caption:=QYCteCargaCCG_QUANTIDADE.AsString+' '+Copy(QYCteCargaCCG_UNIDADEMEDIDA.Value,6,Length(QYCteCargaCCG_UNIDADEMEDIDA.Value));
      QYCteCarga.Last; //maximo 9 elementos.
    end;
    QYCteCarga.Next;
  end;
end;

end.
