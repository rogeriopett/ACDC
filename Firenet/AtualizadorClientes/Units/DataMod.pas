unit DataMod;

interface

uses
  SysUtils, Classes, IBDatabase, IBQuery, DB, IBCustomDataSet;

type
  TDM = class(TDataModule)
    DBDestino: TIBDatabase;
    DBOrigem: TIBDatabase;
    TBDClientes: TIBDataSet;
    QYOClientes: TIBQuery;
    TROClientes: TIBTransaction;
    QYOVersao: TIBQuery;
    QYOVersaoVER_VERSAOBASE: TIBStringField;
    TROVersao: TIBTransaction;
    TRDVersao: TIBTransaction;
    QYDVersao: TIBQuery;
    QYDVersaoVER_VERSAOBASE: TIBStringField;
    TRDClientes: TIBTransaction;
    QYDClientes: TIBQuery;
    TRQDClientes: TIBTransaction;
    QYOCampos: TIBQuery;
    TROCampos: TIBTransaction;
    QYDAtividades: TIBQuery;
    QYDVendedores: TIBQuery;
    QYDLocais: TIBQuery;
    QYDCondicoes: TIBQuery;
    TRDAtividades: TIBTransaction;
    TRDVendedores: TIBTransaction;
    TRDLocais: TIBTransaction;
    TRDCondicoes: TIBTransaction;
    QYDMailings: TIBQuery;
    TRDMailings: TIBTransaction;
    QYOClientesCLI_CODIGO: TIntegerField;
    QYOClientesCLI_ATIVIDADE: TIntegerField;
    QYOClientesCLI_CONDICAO: TIntegerField;
    QYOClientesCLI_LOCALESTUDA: TIntegerField;
    QYOClientesCLI_LOCALTRABALHO: TIntegerField;
    QYOClientesCLI_MAILING: TIntegerField;
    QYOClientesCLI_TELEVENDA: TIntegerField;
    QYOClientesCLI_VENDEDOR: TIntegerField;
    QYOClientesCLI_AFE: TIBStringField;
    QYOClientesCLI_ALVARA: TIBStringField;
    QYOClientesCLI_ALVARASANITARIO: TIBStringField;
    QYOClientesCLI_BAIRRO: TIBStringField;
    QYOClientesCLI_BAIRROCOB: TIBStringField;
    QYOClientesCLI_BLOQUEARVENDA: TIBStringField;
    QYOClientesCLI_CEP: TIBStringField;
    QYOClientesCLI_CEPCOB: TIBStringField;
    QYOClientesCLI_CIDADE: TIBStringField;
    QYOClientesCLI_CIDADECOB: TIBStringField;
    QYOClientesCLI_CIDADECODIGO: TIntegerField;
    QYOClientesCLI_CIDADECODIGOCOB: TIntegerField;
    QYOClientesCLI_CLASSIFICACAO: TIBStringField;
    QYOClientesCLI_CNPJ: TIBStringField;
    QYOClientesCLI_CNPJCOB: TIBStringField;
    QYOClientesCLI_COMPLEMENTO: TIBStringField;
    QYOClientesCLI_COMPLEMENTOCOB: TIBStringField;
    QYOClientesCLI_CONTATO: TIBStringField;
    QYOClientesCLI_CPF: TIBStringField;
    QYOClientesCLI_DESCONTO: TIBBCDField;
    QYOClientesCLI_DIACOBRANCA: TIntegerField;
    QYOClientesCLI_DTATUALIZACAO: TDateField;
    QYOClientesCLI_DTCADASTRO: TDateField;
    QYOClientesCLI_DTNASC: TDateField;
    QYOClientesCLI_EMAIL: TIBStringField;
    QYOClientesCLI_EMAIL2: TIBStringField;
    QYOClientesCLI_ENDERECO: TIBStringField;
    QYOClientesCLI_ENDERECOCOB: TIBStringField;
    QYOClientesCLI_ESTADO: TIBStringField;
    QYOClientesCLI_ESTADOCIVIL: TIBStringField;
    QYOClientesCLI_ESTADOCOB: TIBStringField;
    QYOClientesCLI_ESTADOCODIGO: TIntegerField;
    QYOClientesCLI_ESTADOCODIGOCOB: TIntegerField;
    QYOClientesCLI_FANTASIA: TIBStringField;
    QYOClientesCLI_FONE0800: TIBStringField;
    QYOClientesCLI_FONE1: TIBStringField;
    QYOClientesCLI_FONE2: TIBStringField;
    QYOClientesCLI_FONE3: TIBStringField;
    QYOClientesCLI_IE: TIBStringField;
    QYOClientesCLI_IECOB: TIBStringField;
    QYOClientesCLI_LIMITECREDITO: TIBBCDField;
    QYOClientesCLI_MAE: TIBStringField;
    QYOClientesCLI_MAEEMAIL: TIBStringField;
    QYOClientesCLI_MAEFONE: TIBStringField;
    QYOClientesCLI_MENSALISTA: TIBStringField;
    QYOClientesCLI_MSN: TIBStringField;
    QYOClientesCLI_NEXTEL: TIBStringField;
    QYOClientesCLI_NOME: TIBStringField;
    QYOClientesCLI_NUMERO: TIntegerField;
    QYOClientesCLI_NUMEROCOB: TIntegerField;
    QYOClientesCLI_OBSERVACOES: TWideMemoField;
    QYOClientesCLI_ORIENTACAOCOBRANCA: TIBStringField;
    QYOClientesCLI_PAI: TIBStringField;
    QYOClientesCLI_PAIEMAIL: TIBStringField;
    QYOClientesCLI_PAIFONE: TIBStringField;
    QYOClientesCLI_PASSWORD: TIBStringField;
    QYOClientesCLI_PONTOS: TIBBCDField;
    QYOClientesCLI_REGPROFISSIONAL: TIBStringField;
    QYOClientesCLI_RG: TIBStringField;
    QYOClientesCLI_SETOR: TIntegerField;
    QYOClientesCLI_SITE: TIBStringField;
    QYOClientesCLI_STATUS: TIBStringField;
    QYOClientesCLI_TABELAPRECO: TIBStringField;
    QYOClientesCLI_TIPOCLIENTE: TIBStringField;
    QYOClientesCLI_TIPOPESSOA: TIBStringField;
    QYOClientesCLI_USUARIO: TIBStringField;
    TBDClientesCLI_CODIGO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
