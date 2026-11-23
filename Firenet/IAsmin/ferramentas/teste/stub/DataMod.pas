unit DataMod;

{ Stub só para o teste: o DataMod do ERP não compila fora do projeto.
  Declara apenas o que as units Iasmin usam (DM.UsuarioLogin). DM fica nil. }

interface

uses
  System.Classes;

type
  TDM = class(TDataModule)
  public
    UsuarioLogin: String;
  end;

var
  DM: TDM;

implementation

end.
