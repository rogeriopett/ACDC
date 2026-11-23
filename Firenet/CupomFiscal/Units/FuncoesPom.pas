unit FuncoesPom;

interface

uses
  Windows, Messages, SysUtils, Controls, Graphics, Dialogs, Classes,
  Forms, DateUtils, StdCtrls, DBCtrls;

function LimparFormatacao(Campo: String): String;

implementation
uses DataMod, IBQuery;

function LimparFormatacao(Campo: String): String;
begin
  Result:=StringReplace(StringReplace(StringReplace(StringReplace(StringReplace(StringReplace(Campo,
  '.','',[rfReplaceAll]),
  '-','',[rfReplaceAll]),
  '/','',[rfReplaceAll]),
  ' ','',[rfReplaceAll]),
  '(','',[rfReplaceAll]),
  ')','',[rfReplaceAll]);
end;

end.
