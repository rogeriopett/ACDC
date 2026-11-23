unit Sped;

interface
uses Funcoes1;

type
  BlocoZero=record
    COD_VER: AnsiString;
    COD_FIN: AnsiString;
    DT_INI: AnsiString;
    DT_FIN: AnsiString;
    NOME: AnsiString;
    CNPJ: AnsiString;
    CPF: AnsiString;
    UF: AnsiString;
    IE: AnsiString;
    COD_MUN: AnsiString;
    IM: AnsiString;
    SUFRAMA: AnsiString;
    IND_PERFIL: AnsiString; //A, B, C.
    IND_ATIV: AnsiString; //0–Industrial ou equiparado a industrial; 1 – Outros.
  end;

function GerarBlocoZero(var F: TextFile): Boolean;

implementation

function GerarBlocoZero(var F: TextFile): Boolean;
begin
  Write(F,'0000'); //fixo = 0000
  Write(F,'103'); //versao 1.03 01/01/2011 - http://www.fazenda.gov.br/confaz/confaz/atos/atos_cotepe/2008/ac009_08.htm
  Result:=True;
end;

end.
