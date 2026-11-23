unit DataMod2;

{ Stub, só para o projeto de teste compilar sem as units do ERP.
  No ERP vale o DataMod2 verdadeiro (C:\Runtime\Firenet\Units). Aqui DM2 fica
  nil: a IasminConsulta testa isso antes de usar DM2.TBIasminLogs. As
  referências do .dfm a DM2 ficam sem resolver no teste, o que não gera erro. }

interface

uses
  System.Classes, Data.DB, FireDAC.Comp.Client;

type
  TDM2 = class(TDataModule)
    TBIasminLogs: TFDQuery;
    TBIasminLogsIAL_PERGUNTA: TMemoField;
    DSIasminLogs: TDataSource;
  end;

var
  DM2: TDM2;

implementation

end.