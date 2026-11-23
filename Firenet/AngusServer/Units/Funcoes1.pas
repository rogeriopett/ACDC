unit Funcoes1;

interface
uses
  Windows, Messages, SysUtils, Controls, Graphics, Dialogs, Classes, Registry, Printers,
  Forms, DateUtils, StdCtrls, ShellAPI, ShlObj, ActiveX, ComObj, Math, StrUtils;

type
  Alignment=(taRight, taLeft, taCenter); //usado na function aligntext.

  TWordReplaceFlags=set of (wrfReplaceAll, wrfMatchCase, wrfMatchWildcards);

  TWordSearchReplaceStrings = record
    SearchString: AnsiString;
    ReplaceString: AnsiString;
    Flags: TWordReplaceFlags;
  end;

function AlignText(Text: String; FillChar: String; TotalLength: Word; Align: Alignment): String;
function CaptureScreenRect(ARect: TRect): TBitmap;
function Cnpj(Num:String):Boolean;
function Cpf(Num: String):Boolean;
function CriarBitmapMonocromatico(BMPOriginal: TBitmap; OutlineColor: TColor): TBitmap;
function ColorToGrayScale2(FOriginal: TBitmap; OutlineColor: TColor): TBitmap;
function DataSemBarras(Data: TDate): String;
function DataSemBarrasAno2D(Data: TDate): String;
function DateToFBDate(Data: TDate): String;
function DateToInt(Date: TDate): Integer;
function Decimais(Value: Extended; Decs: Byte): Extended;
function Decimais2(Value: Extended; Decs: Byte): String;
function Decimais3(Value: Currency; Decs: Byte): String;
function DeleteLineBreaks(const S: String): String;
function DiferencaHoras(Inicial, Final:TTime): String;
function DVGeral(Numero: String):String;
function DVNossoNumero(Numero: String):String;
function DVNossoNumeroSicoob(Numero: String): String;
function Extenso(Valor: Real): String;
function EliminarPontos(Campo: String): String;
function ExecutarComoAdmin(hWnd: HWND; Directory: String; Filename: String; Parameters: String): Boolean;
function ExisteAlgumArquivo(Mascara: String): Boolean;
function FatorVecto(DTVecto: TDate):String;
function FBDateToDate(Data: String): String;
function FileVersion(const FileName: String): String;
function FormatarString(Tipo, Valor: String): String;
function GetActiveForm: TCustomForm;
function GetCPUSpeed: Double;
function GetDefaultPrinter: String;
function GetWinDir: String;
function GetTempDir: String;
function HDSerial(FDrive:String): String;
function HexToString(H: String): String;
function HourToMin(Hour: String): Integer;
function HourToSeg(Hour: String): Integer;
function IntToDate(Int: Integer): TDate;
function IsMouseOver(Control: TControl): Boolean; //checa se o mouse esta em cima do controle passado no parametro.
function LimparFormatacao(Campo: String): String;
function ListarImpressoras: TStringList;
function LongFileName(ShortName: String): String;
function MinToDec(Min: Double): String;
function MinToHour(Min: Double): String;
function Modulo10(Numero: String): String;
//function Modulo11(Numero: String): String;
function Modulo11(Numero: String; Base: Byte = 9): String;
function Pads(Quantidade: Word; Caracter: String): String;
function PasswordInputBox(const ACaption, APrompt: String): String;
function PrimeiroDia(Data: TDate): TDate;
function PrimeiroDiaSemana(Data: TDate): TDate;
function RemoveAcentos(Str:String): String;
function RemoveAcentosXML(Str:String): String;
function RemoveCR(Str: String; StrRep: String): String;
function SegToHour(Segs: Double): String;
function Senha(Value: AnsiString; Chave: Word): AnsiString;
function SenhaEncode(Texto: String; Chave: Integer): String;
function SenhaDecode(Texto: String; Chave: Integer): String;
function SoNumeros(const S: String): String;
function StringToHex(S: String): string;
function TodaysPassword: String;
function TodaysPassword2: String;
function TrocarVirgulaPonto(Str:String): String;
function UCWords(S: String): String;
function UltimoDia(Data: TDate): TDate;
function UltimoDiaSemana(Data: TDate): TDate;
function UserLogged: String;
function UTC(Data: TDate; Hora: TTime; Fuso: String): String;
function V2P(Texto: String): String;
function Word_StringReplace(ADocument, SaveAsDocument: TFileName; SRStrings: array of TWordSearchReplaceStrings): Boolean;

procedure BlockInput(ABlockInput : Boolean); stdcall; external 'USER32.DLL'; //poderoso... trava tudo.
procedure ColorToGrayScale1(ABmp: TBitmap);
procedure CreateShortCut(FileName, Parameters, InitialDir, ShortcutName, ShortcutFolder: String);
procedure CriaCodigoBarras(Cod: AnsiString; Imagem: TCanvas);
procedure DesligarWindows(Acao: Cardinal);
procedure ExecutarArquivo(F: String; P: String);
procedure FindReplace(const De, Para: String; var Source: TMemo);
procedure GradHorizontal(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor);
procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor);
procedure MostrarAjuda(Link: String);
procedure PrintFile(Mode,Command,FileToPrint,Port: String);
procedure RegistrarPicaview;
procedure SetDefaultPrinter(PrinterName: String);
procedure SetTaskBar(Visible: Boolean);
procedure SubstituirString(const De, Para: AnsiString; var Source: TMemo);
procedure TravaTudo(Block:Boolean); //essa aki chama a de cima.
procedure XPTaskMgr(Value: Boolean);
procedure ZapFiles(Mascara: String);

const
  //CÛdigos de escape para impressoras matriciais. Funcionam nas impressoras EPSON. LX300, LX300+, LX810, etc...
  MCOn = #27#15;     // seleciona modo condensado.                                                     //
  MCOff = #18;       // cancela modo condensado.                                                       //
  MROn = #27#120#0;  // seleciona modo rascunho. (draft) 0:rascunho 1:Near Letter Quality (NLQ)        //
  EL16 = #27#50;     // espaco entre linhas de  1/6" (epaco normal)                                    //
  EL18 = #27#48;     // espaco de 1/8" (linhas mais juntas)                                            //
  EL772 = #27#49;    // espaco de 7/72". (linhas muito juntas)                                         //
  CPI10 = #27#80;    // seleciona 10 cpi                                                               //
  CPI12 = #27#77;    // seleciona 12 cpi                                                               //
  PicOff = #27#79;   // Cancela o salto pelo picote.                                                   //
  LD = #14;          // Largura Dupla. Eh cancelado por retorno de carro (CR)                          //
  MEOn = #27#69;     // Modo Enfatizado.                                                               //
  MEOff = #27#70;    // Cancela Modo Enfatizado.                                                       //
  MIOn = #27#52;     // Modo It·lico.                                                                  //
  MIOff = #27#53;    // Cancela Modo It·lico.                                                          //
  MSOn = #27#45#1;   // Modo Sublinhado. 1:ligado 0:desligado                                          //
  MSOff = #27#45#0;  // Modo Sublinhado. 1:ligado 0:desligado                                          //
  MNOn = #27#71;     // Modo Negrito.                                                                  //
  MNOff = #27#72;    // Cancela Modo Negrito.                                                          //
  //---------------------------------------------------------------------------------------------------//

implementation
//comando pra usar a dll do picaview.
//WinExec(PChar('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+FileListBox1.FileName),sw_Show);

function AlignText(Text: String; FillChar: String; TotalLength: Word; Align: Alignment): String;
var X, I : Word;
begin

  Result:='';
  X:=Length(Text);
  if X>=TotalLength then
  begin
    Result:=Copy(Text,0,TotalLength);
    Exit;
  end;
  case Align of
    taRight  : begin
                 for I:=TotalLength downto X+1 do
                 Text:=FillChar+Text;
               end;
    taLeft   : begin
                 for I:=X+1 to TotalLength do
                 Text:=Text+FillChar;
               end;
    taCenter : begin
                 X:=TotalLength-X;
                 X:=X div 2;
                 for I:=1 to X do
                 Text:=FillChar+Text+FillChar;
               end;
  end; //case
  Result:=Text;
end;

//##############################################################################
// CAPTURA A TELA NO RETANGULO PASSADO EM ARECT                               //
//##############################################################################
function CaptureScreenRect(ARect: TRect): TBitmap;
var
  ScreenDC: HDC;
begin
  Result:=TBitmap.Create;
  with Result, ARect do
  begin
    Width:=Right-Left;
    Height:=Bottom-Top;
    ScreenDC:=GetDC(0);
    try
      BitBlt(Canvas.Handle,0,0,Width,Height,ScreenDC,Left,Top,SRCCOPY);
    finally
      ReleaseDC(0,ScreenDC);
  end;
  // Palette := GetSystemPalette;
  end;
end;

//##############################################################################
// FUNCAO QUE VERIFICA O NUMERO CNPJ                                          //
//##############################################################################
function Cnpj(Num:String):Boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: Integer;
  d1,d2: Integer;
  Digitado, Calculado: String;
begin
  if (Num='00.000.000/0000-00') or
     (Num='11.111.111/1111-11') or
     (Num='22.222.222/2222-22') or
     (Num='33.333.333/3333-33') or
     (Num='44.444.444/4444-44') or
     (Num='55.555.555/5555-55') or
     (Num='66.666.666/6666-66') or
     (Num='77.777.777/7777-77') or
     (Num='88.888.888/8888-88') or
     (Num='99.999.999/9999-99') then
  begin
    Result:=False;
    Exit;
  end;
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[4]);
  n4:=StrToInt(num[5]);
  n5:=StrToInt(num[6]);
  n6:=StrToInt(num[8]);
  n7:=StrToInt(num[9]);
  n8:=StrToInt(num[10]);
  n9:=StrToInt(num[12]);
  n10:=StrToInt(num[13]);
  n11:=StrToInt(num[14]);
  n12:=StrToInt(num[15]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  Calculado:=IntToStr(d1)+IntToStr(d2);
  Digitado:=num[17]+num[18];
  if Calculado=Digitado then
  Result:=True else
  Result:=False;
end;

//##############################################################################
// FUNCAO QUE VERIFICA O NUMERO DE CPF                                        //
//##############################################################################
function Cpf(Num: String):Boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9: Integer;
  d1,d2: Integer;
  Digitado, Calculado: String;
begin
  if (Num='000.000.000-00') or
     (Num='111.111.111-11') or
     (Num='222.222.222-22') or
     (Num='333.333.333-33') or
     (Num='444.444.444-44') or
     (Num='555.555.555-55') or
     (Num='666.666.666-66') or
     (Num='777.777.777-77') or
     (Num='888.888.888-88') or
     (Num='999.999.999-99') then
  begin
    Result:=False;
    Exit;
  end;
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[5]);
  n5:=StrToInt(num[6]);
  n6:=StrToInt(num[7]);
  n7:=StrToInt(num[9]);
  n8:=StrToInt(num[10]);
  n9:=StrToInt(num[11]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  Calculado:=IntToStr(d1)+IntToStr(d2);
  Digitado:=num[13]+num[14];
  if Calculado=Digitado then
  Result:=True else
  Result:=False;
end;

//##############################################################################
// CRIA CLONE MONOCROMATICO DE UM BITMAP                                      //
//##############################################################################
// Use-a assim: image2.picture.Bitmap:=CreateDisabledBitmap(Image1.Picture.Bitmap,clBtnFace);
function CriarBitmapMonocromatico(BMPOriginal: TBitmap; OutlineColor: TColor): TBitmap;
const ROP_DSPDxax = $00E20746;
var
  MonoBmp: TBitmap;
  IRect: TRect;
begin
  IRect:=Rect(0,0,BMPOriginal.Width,BMPOriginal.Height);
  Result:=TBitmap.Create;
  try
    Result.Width:=BMPOriginal.Width;
    Result.Height:=BMPOriginal.Height;
    MonoBmp:=TBitmap.Create;
    try
      MonoBmp.Assign(BMPOriginal);
      {$IFDEF S_D3}
      HandleType:=bmDDB;
      {$ENDIF}
      MonoBmp.Canvas.Brush.Color:=clBlack;
      if MonoBmp.Monochrome then
      begin
        MonoBmp.Canvas.Font.Color:=clWhite;
        MonoBmp.Monochrome:=False;
        MonoBmp.Canvas.Brush.Color:=clWhite;
      end;
      MonoBmp.Monochrome:=True;
      Result.Canvas.Brush.Color:=OutlineColor;
      Result.Canvas.FillRect(IRect);
      Result.Canvas.Brush.Color:=clBtnHighlight;
//      Result.Canvas.SetTextColor(Handle,clBlack);
//      Result.Canvas.SetBkColor(Handle,clWhite);
//      Result.Canvas.BitBlt(Handle,1,1,IRect.Right-IRect.Left,IRect.Bottom-IRect.Top,MonoBmp.Canvas.Handle,0,0,ROP_DSPDxax);
      Result.Canvas.Brush.Color:=clBtnShadow;
//      Result.Canvas.SetTextColor(Handle,clBlack);
//      Result.Canvas.SetBkColor(Handle,clWhite);
//      Result.Canvas.BitBlt(Handle,0,0,IRect.Right-IRect.Left,IRect.Bottom-IRect.Top,MonoBmp.Canvas.Handle,0,0,ROP_DSPDxax);
      finally
      MonoBmp.Free;
    end;
   except
   Result.Free;
  raise;
  end;
end;

//##############################################################################
// CONVERTE DE COLORIDO PARA TONS DE CINZA 2                                  //
//##############################################################################
function ColorToGrayScale2(FOriginal: TBitmap; OutlineColor: TColor): TBitmap;
// Cria um clone Monocrom·tico de um outro Bitmap
// Use-a assim:
// image2.picture.Bitmap := CreateDisabledBitmap(Image1.Picture.Bitmap, clBtnFace);
const
  ROP_DSPDxax = $00E20746;
var
  MonoBmp: TBitmap;
  IRect: TRect;
begin
  IRect := Rect(0, 0, FOriginal.Width, FOriginal.Height);
  Result := TBitmap.Create;
  try
    Result.Width := FOriginal.Width;
    Result.Height := FOriginal.Height;
    MonoBmp := TBitmap.Create;
    try
      with MonoBmp do
      begin
        Assign(FOriginal);
        {$IFDEF S_D3}
        HandleType := bmDDB;
        {$ENDIF}
        Canvas.Brush.Color := clBlack;
        if Monochrome then
        begin
          Canvas.Font.Color := clWhite;
          Monochrome := False;
          Canvas.Brush.Color := clWhite;
        end;
        Monochrome := True;
      end;
      with Result.Canvas do
      begin
        Brush.Color := OutlineColor;
        FillRect(IRect);
        Brush.Color := clBtnHighlight;
        SetTextColor(Handle, clBlack);
        SetBkColor(Handle, clWhite);
        BitBlt(Handle, 1, 1, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
        Brush.Color := clBtnShadow;
        SetTextColor(Handle, clBlack);
        SetBkColor(Handle, clWhite);
        BitBlt(Handle, 0, 0, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
      end;
      finally
      MonoBmp.Free;
    end; //TRY.
    except
    Result.Free;
    raise;
  end; //TRY.
end;

function DataSemBarras(Data: TDate): String;
var D,M,Y: Word;
begin
  DecodeDate(Data,Y,M,D);
  Result:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(Y);
end;

function DataSemBarrasAno2D(Data: TDate): String;
var D,M,Y: Word;
begin
  DecodeDate(Data,Y,M,D);
  Y:=StrToInt(Copy(IntToStr(Y),3,2));
  Result:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(Y);
end;

function DateToFBDate(Data: TDate): String;
var D,M,Y: Word;
begin
  DecodeDate(Data,Y,M,D);
  Result:=IntToStr(Y)+'-'+AlignText(IntToStr(M),'0',2,taRight)+'-'+AlignText(IntToStr(D),'0',2,taRight);
end;

//##############################################################################
// CONVERTE UMA DATA PARA INTEIRO COM BASE NO DIA 31/12/1899                  //
//##############################################################################
function DateToInt(Date: TDate): Integer;
begin
  Result:=DaysBetween(Date,StrToDate('31/12/1899'));
end;

//##############################################################################
// CONVERTE O VALOR PASSADO COM AS CASAS DECIMAIS ESPECIFICADA                //
//##############################################################################
//function Decimais(Value: Currency; Decs: Byte): Currency;
function Decimais(Value: Extended; Decs: Byte): Extended;
var S: String;
begin
  S:=FloatToStrF(Value,ffFixed,18,Decs);
  Result:=StrToFloat(S);
end;

//##############################################################################
// CONVERTE O VALOR PASSADO COM AS CASAS DECIMAIS ESPECIFICADA E RETORNA STRING//
//##############################################################################
function Decimais2(Value: Extended; Decs: Byte): String;
var S: String;
  I:Word;
begin
  S:=FloatToStr(Decimais(Value,Decs)); //faz arredondamento.
  if Pos(',',S)=0 then
  begin
    S:=S+',';
    for I:=1 to Decs do
    S:=S+'0';
  end else
  begin
    if Length(Copy(S,Pos(',',S)+1,Length(S)))<Decs then
    begin
      for I:=Length(Copy(S,Pos(',',S)+1,Length(S))) to Decs-1 do
      S:=S+'0';
    end else
    if Length(Copy(S,Pos(',',S)+1,Length(S)))>Decs then
    begin
      for I:=1 to Length(Copy(S,Pos(',',S)+1,Length(S)))-Decs do
      Delete(S,Length(S),1);
    end;
  end;
  Result:=S;
end;

//##############################################################################
// IDEM DECIMAIS2, MAS RETORNA STRING SEM VIRGULA.                            //
//##############################################################################
function Decimais3(Value: Currency; Decs: Byte): String;
var S: String;
  I:Word;
begin
  S:=FloatToStr(Decimais(Value,Decs)); //faz arredondamento.
  if Pos(',',S)=0 then
  begin
    S:=S+',';
    for I:=1 to Decs do
    S:=S+'0';
  end else
  begin
    if Length(Copy(S,Pos(',',S)+1,Length(S)))<Decs then //se casas decimais forem menores que as decimais do parametro, adiciona zeros.
    begin
      for I:=Length(Copy(S,Pos(',',S)+1,Length(S))) to Decs-1 do
      S:=S+'0';
    end else
    if Length(Copy(S,Pos(',',S)+1,Length(S)))>Decs then //se for maior, elimina as demais.
    begin
      for I:=1 to Length(Copy(S,Pos(',',S)+1,Length(S)))-Decs do
      Delete(S,Length(S),1);
    end;
  end;
  Delete(S,Pos(',',S),1);
  Result:=S;
end;

function DeleteLineBreaks(const S: String): String;
var Source, SourceEnd: PChar;
begin
  Source:=Pointer(S);
  SourceEnd:=Source+Length(S);
  while Source<SourceEnd do
  begin
    case Source^ of
      #10: Source^:=#32;
      #13: Source^:=#32;
    end;
    Inc(Source);
  end;
  Result:=S;
end;

//##############################################################################
// CALCULA A DIFERENCA ENTRE DUAS HORAS                                       //
//##############################################################################
function DiferencaHoras(Inicial, Final:TTime): String;
begin
  if (Inicial>Final) then
  Result:=TimeToStr((StrTotime('23:59:59')-Inicial)+Final) else
  Result:=TimeToStr(Final-Inicial);
end;

//##############################################################################
// FUNCAO QUE RETORNA O DIGITO VERIFICADOR GERAL MODULO 11                    //
//##############################################################################
function DVGeral(Numero: String):String;
var I, Soma, Multiplicador, Digito: Integer;
begin
  Soma:=0;
  Multiplicador:=2;
  for I:=Length(Numero) downto 1 do
  begin
    Soma:=Soma+(StrToInt(Numero[I])*Multiplicador);
    Inc(Multiplicador,1);
    if Multiplicador>9 then
    Multiplicador:=2;
  end;
  Digito:=11-(Soma mod 11);
  if (Digito=0) or (Digito>9) then
  Result:='1' else
  Result:=IntToStr(Digito);
end;

//##############################################################################
// FUNCAO QUE RETORNA O DIGITO VERIFICADOR DO NOSSO NUMERO (BOLETO BANCARIO)  //
//##############################################################################
function DVNossoNumero(Numero: String):String;
var I, Soma, Multiplicador, Digito: Integer;
begin
  Soma:=0;
  Multiplicador:=2;
  for I:=Length(Numero) downto 1 do
  begin
    Soma:=Soma+(StrToInt(Numero[I])*Multiplicador);
    Inc(Multiplicador,1);
    if Multiplicador>9 then
    Multiplicador:=2;
  end;
  Digito:=11-(Soma mod 11); //MODULO 11.
  if Digito>9 then
  Result:='0' else
  Result:=IntToStr(Digito);
end;

//##############################################################################
// FUNCAO QUE RETORNA O DIGITO VERIFICADOR DO NOSSO NUMERO (BOLETO SICOOB)    //
//##############################################################################
function DVNossoNumeroSicoob(Numero: String): String;
var I, Soma, Digito: Integer;
  Constante: String;
begin
  Soma:=0;
  Constante:='319731973197319731973';
  //Numero:=   '000100000000190000021'; //neste exemplo, retorna dv=8.
  for I:=Length(Numero) downto 1 do
  begin
    Soma:=Soma+(StrToInt(Numero[I])*StrToInt(Constante[I]));
  end;
  Digito:=(Soma mod 11); //MODULO 11.
  if ((Digito=0) or (Digito=1)) then
  Result:='0' else
  Result:=IntToStr(11-Digito);
end;

//##############################################################################
// FUNCAO EXTENSO.                                                            //
//##############################################################################
function Extenso(Valor: Real): String;
var Milhar, Centena, Centavos, Texto, Msg: String;
const
  Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
  Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
  Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
  begin
    if Expressao then
    Result:=CasoVerdadeiro else
    Result:=CasoFalso;
  end;
  function MiniExtenso(Trio: String): String;
  var Unidade, Dezena, Centena: String;
  begin
    Unidade:='';
    Dezena:='';
    Centena:='';
    if (Trio[2]='1') and (Trio[3]<>'0') then
    begin
      Unidade:=Dez[StrToInt(Trio[3])];
      Dezena:='';
    end else
    begin
      if Trio[2]<>'0' then Dezena:=Dezenas[StrToInt(Trio[2])];
      if Trio[3]<>'0' then Unidade:=Unidades[StrToInt(Trio[3])];
    end;
    if (Trio[1]='1') and (Unidade='') and (Dezena='') then Centena:='cem' else
    if Trio[1]<>'0' then Centena:=Centenas[StrToInt(Trio[1])] else
    Centena:='';
    Result:=Centena+ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '') + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
  end;
begin
  if (Valor>999999.99) or (Valor<0) then
  begin
    Msg:='O valor est· fora do intervalo permitido.'+#13;
    Msg:=Msg+'O n˙mero deve ser maior ou igual a zero e menor que 999.999,99.'+#13;
    ShowMessage(Msg);
    Result:='';
    Exit;
  end;
  if Valor=0 then
  begin
    Result:='';
    Exit;
  end;
  Texto:=FormatFloat('000000.00',Valor);
  Milhar:=MiniExtenso(Copy(Texto,1,3));
  Centena:=MiniExtenso(Copy(Texto,4,3));
  Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
  Result:=Milhar;
  if Milhar<>'' then
  if Copy(Texto,4,3)='000' then
  Result:=Result+' Mil Reais' else
  Result:=Result+' Mil ';

{  if ((Copy(Texto,5,2)='00') and (Copy(texto,4,1)<>'0') and (Milhar<>'')) or ((Copy(texto,4,1)='0') and (Copy(Texto,5,2)<>'00') and (Milhar='')) then
  Result:=Result+' e ';}

{  if (((Copy(Texto,4,2)='00') and (Milhar<>'') and (Copy(Texto,6,1)<>'0')) or (Centavos='')) and (Centena<>'') then
  Result:=Result+' e ';}

  if (Milhar+Centena<>'') then
  Result:=Result+Centena;
  if (Milhar='') and (Copy(Texto,4,3)='001') then
  Result:=Result+' Real' else
  if (Copy(Texto,4,3)<>'000') then
  Result:=Result+' Reais';
  if Centavos='' then
  begin
    Result:=Result+'.';
    Exit;
  end else
  begin
    if Milhar+Centena='' then
    Result:=Centavos else
    Result:=Result+', e '+Centavos;
    if (Copy(Texto,8,2)='01') and (Centavos<>'') then
    Result:=Result+' Centavo.' else
    Result:=Result+' Centavos.';
  end;
end;

function EliminarPontos(Campo: String): String;
begin
  Result:=StringReplace(Campo,'.','',[rfReplaceAll]);
end;

//##############################################################################
// EXECUTA ARQUIVO COM PRIVILEGIOS DE ADMINISTRADOR                           //
//##############################################################################
function ExecutarComoAdmin(hWnd: HWND; Directory: String; Filename: String; Parameters: String): Boolean;
var sei: TShellExecuteInfoW;
begin
  //http://edn.embarcadero.com/article/33942
  //See Step 3: Redesign for UAC Compatibility (UAC)
  //http://msdn.microsoft.com/en-us/library/bb756922.aspx -	ZeroMemory(@sei, SizeOf(sei));
  FillChar(sei,SizeOf(sei),0);
	sei.cbSize:=SizeOf(sei);
  //sei.cbSize:=SizeOf(TShellExecuteInfo);
  sei.Wnd:=hWnd;
  sei.fMask:=SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
  sei.lpVerb:=PChar('runas');
  sei.lpFile:=PChar(Filename); // PAnsiChar;
  sei.lpDirectory:=PChar(Directory);
  if Parameters<>'' then
  sei.lpParameters:=PChar(Parameters); // PAnsiChar;
  sei.nShow:=SW_SHOWNORMAL; //Integer;

  Result:=ShellExecuteEx(@sei);
end;

function ExisteAlgumArquivo(Mascara: String): Boolean;
var Dir: TSearchRec;
    Erro: Integer;
begin
  Erro:=FindFirst(Mascara,faArchive,Dir);
  if Erro<>0 then
  Result:=False else
  Result:=True;
  FindClose(Dir);
end;

//##############################################################################
// FUNCAO QUE CALCULA O FATOR DE VENCIMENTO. (BOLETO BANCARIO)                //
//##############################################################################
function FatorVecto(DTVecto: TDate):String;
var Dias: Double;
begin
  Dias:=DTVecto-StrToDate('07/10/1997');
  if Dias < 1000 then
  Result:='0' else
  Result:=FloatToStr(Dias);
end;

function FBDateToDate(Data: String): String;
var D,M,Y: String;
begin
  Y:=Copy(Data,1,Pos('-',Data)-1);
  Delete(Data,1,Pos('-',Data));
  M:=Copy(Data,1,Pos('-',Data)-1);
  Delete(Data,1,Pos('-',Data));
  D:=Copy(Data,1,Length(Data));
  Result:=D+'/'+M+'/'+Y;
end;

//##############################################################################
// FUNCAO PRA RETORNAR A VERSAO DO ARQUIVO.                                   //
//##############################################################################
function FileVersion(const FileName: String): String;
var
  Dummy : Cardinal; //23.04.2015 - alterado de THandle; para Cardinal; (XE8)
  BufferSize, Len : Integer;
  Buffer : PChar;
  LoCharSet, HiCharSet : Word;
  Translate, Return : Pointer;
  StrFileInfo : String;
begin
  Result:='';
  { Obtemos o tamanho em bytes do "version information" }
  BufferSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  if BufferSize <> 0 then
  begin
    GetMem(Buffer, Succ(BufferSize));
    try
      if GetFileVersionInfo(PChar(FileName), 0, BufferSize,Buffer) then
    { Executamos a funcao "VerQueryValue" e conseguimos informaÁıes sobre o idioma/character-set }
      if VerQueryValue(Buffer,'\VarFileInfo\Translation',Translate,UINT(Len)) then
      begin
        LoCharSet := LoWord(Longint(Translate^));
        HiCharSet := HiWord(Longint(Translate^));
        { Montamos a string de pesquisa }
        StrFileInfo := Format('\StringFileInfo\0%x0%x\%s',[LoCharSet, HiCharSet, 'FileVersion']);
        if VerQueryValue(Buffer,PChar(StrFileInfo), Return,UINT(Len)) then
        begin
          Result:=PChar(Return);
          Delete(Result,1,Pos('.',Result)+2);
        end;
      end;
    finally
      FreeMem(Buffer, Succ(BufferSize));
    end; //try
  end;
end;

function FormatarString(Tipo, Valor: String): String;
begin
  if Tipo='CNPJ' then
  begin
    Insert('.',Valor,3);
    Insert('.',Valor,7);
    Insert('/',Valor,11);
    Insert('-',Valor,16);
  end;
  if Tipo='CPF' then
  begin
    Insert('.',Valor,4);
    Insert('.',Valor,8);
    Insert('-',Valor,12);
  end;
  if Tipo='CEP' then
  begin
    Insert('-',Valor,6);
  end;
  if Tipo='SUFRAMA' then
  begin
    Insert('.',Valor,3);
    Insert('.',Valor,8);
  end;
  Result:=Valor;
end;

function GetActiveForm: TCustomForm;
var
  Wnd: HWND;
  Ctl: TWinControl;
begin
  { Note: We don't use Screen.ActiveCustomForm because when an EXE calls a
    DLL that shows a modal form, Screen.ActiveCustomForm doesn't change in
    the EXE; it remains set to the last form that was active in the EXE.
    Use FindControl(GetActiveWindow) instead to avoid this problem; it will
    return nil when a form in another module is active. }
  Result:=nil;
  Wnd:=GetActiveWindow;
  if Wnd<>0 then
  begin
    Ctl:=FindControl(Wnd);
    if Assigned(Ctl) and (Ctl is TCustomForm) then
    Result := TCustomForm(Ctl);
  end;
end;

//##############################################################################
// RETORNA A VELOCIDADE DA CPU.                                               //
//##############################################################################
function GetCPUSpeed: Double;
const
  DelayTime=500;
var
  TimerHi, TimerLo: DWORD;
  PriorityClass, Priority: Integer;
  //modo de usar: Edit1.Text:=Format('%f MHz', [GetCPUSpeed]);
begin
  Result:=0;
  try
    PriorityClass:=GetPriorityClass(GetCurrentProcess);
    Priority:=GetThreadPriority(GetCurrentThread);
    SetPriorityClass(GetCurrentProcess,REALTIME_PRIORITY_CLASS);
    SetThreadPriority(GetCurrentThread,THREAD_PRIORITY_TIME_CRITICAL);
    Sleep(10);
    asm
      dw 310Fh // rdtsc
      mov TimerLo, eax
      mov TimerHi, edx
    end;
    Sleep(DelayTime);
    asm
      dw 310Fh // rdtsc
      sub eax, TimerLo
      sbb edx, TimerHi
      mov TimerLo, eax
      mov TimerHi, edx
    end;
    SetThreadPriority(GetCurrentThread, Priority);
    SetPriorityClass(GetCurrentProcess, PriorityClass);
    Result:=TimerLo/(1000.0*DelayTime);
    except
  end; //try.
end;

//##############################################################################
// RETORNA A IMPRESSORA PADRAO                                                //
//##############################################################################
function GetDefaultPrinter: String;
begin
  Result:=Printer.Printers[Printer.PrinterIndex];
end;

//##############################################################################
// FUNCAO QUE RETORNA O CAMINHO DA PASTA WINDOWS.                             //
//##############################################################################
function GetWinDir: String;
begin
  SetLength(Result,MAX_PATH); //de onde eh essa MAX_PATH ???
  GetWindowsDirectory(PChar(Result),MAX_PATH);
  Result:=String(PChar(Result));
end;

//##############################################################################
// FUNCAO QUE RETORNA O DIRETORIO TEMPORARIO.                                 //
//##############################################################################
function GetTempDir: String;
begin
  SetLength(Result,MAX_PATH);
  if GetTempPath(MAX_PATH,PChar(Result)) > 0 then
  Result:=String(PChar(Result)) else
  Result:='N„o foi possÌvel retornar diretÛrio Temp!';
end;

//##############################################################################
// FUNCAO QUE RETORNA O NUMERO SERIAL DO HD                                   //
//##############################################################################
function HDSerial(FDrive:String): String;
var
  Serial:DWord;
  DirLen,Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
  try
    GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result:=IntToHex(Serial,8);
    except Result:='';
  end;
end;

//##############################################################################
// CONVERTE HORA PARA MINUTOS                                                 //
//##############################################################################
function HourToMin(Hour: String): Integer;
begin
//  modo antigo. Result:=(StrToInt(Copy(Hour,1,2))*60)+StrToInt(Copy(Hour,4,2));
  //passar Hour no formato: 00000:00 ou 00:00 ou 000:00.
  Result:=(StrToInt(Copy(Hour,1,Pos(':',Hour)-1))*60)+StrToInt(Copy(Hour,Pos(':',Hour)+1,2));
end;

//##############################################################################
// CONVERTE HORA PARA SEGUNDOS                                                //
//##############################################################################
function HourToSeg(Hour: String): Integer;
var H,M,S: Integer;
begin
  H:=StrToInt(Copy(Hour,1,2))*3600; //hora * 3600 segundos numa hora.
  M:=StrToInt(Copy(Hour,4,2))*60; //Minutos * 60 segundos num minuto.
  S:=StrToInt(Copy(Hour,7,2)); //segundos.
  Result:=H+M+S;
end;

//##############################################################################
// CONVERTE UMA DATA PARA INTEIRO COM BASE NO DIA 31/12/1899                  //
//##############################################################################
function IntToDate(Int: Integer): TDate;
begin
  Result:=StrToDate('31/12/1899')+Int;
end;

//##############################################################################
// VERIFICA SE O MOUSE ESTA SOBRE O CONTROLE PASSADO EM CONTROL               //
//##############################################################################
function IsMouseOver(Control: TControl): Boolean;
var P: TPoint;
begin
  if GetCursorPos(P) then  //get absolute coordinates.
  begin
    P:=Control.ScreenToClient(P); //convert to relative coordinates of component.
    //coordinates within Control?
    Result:=(P.X>=0) and (P.X<=Control.Width) and
            (P.Y>=0) and (P.Y<=Control.Height);
  end else
  Result:=False; //this should never happen, but who knows...
end;

function LimparFormatacao(Campo: String): String;
begin
  Result:=StringReplace(StringReplace(StringReplace(StringReplace(StringReplace(StringReplace(StringReplace(Campo,
  '.','',[rfReplaceAll]),
  ',','',[rfReplaceAll]),
  '-','',[rfReplaceAll]),
  '/','',[rfReplaceAll]),
  ' ','',[rfReplaceAll]),
  '(','',[rfReplaceAll]),
  ')','',[rfReplaceAll]);
end;

//##############################################################################
// RETORNA UMA STRING LIST COM AS IMPRESSORAS DO SISTEMA.                     //
//##############################################################################
function ListarImpressoras: TStringList;
var I: Integer;
begin
  Result:=TStringList.Create;
  for I:=0 to Printer.Printers.Count-1 do
  Result.Add(Printer.Printers[I]);
end;

//##############################################################################
// RETORNA O NOME LONGO DO ARQUIVO EX: ARQUIV~1 -> ARQUIVOS DE PROGRAMAS      //
//##############################################################################
function LongFileName(ShortName: String): String;
var SR: TSearchRec;
begin
  Result:='';
  if (Pos('\\',ShortName)+Pos('*',ShortName)+Pos('?',ShortName)<>0) or not FileExists(ShortName) then
    { ignore NetBIOS name, joker chars and invalid file names }
  Exit;
  while FindFirst(ShortName,faAnyFile,SR)=0 do
  begin
    { next part as prefix }
    Result:='\'+SR.Name+Result;
    SysUtils.FindClose(SR);  { the SysUtils, not the WinProcs procedure! }
    { directory up (cut before '\') }
    ShortName:=ExtractFileDir(ShortName);
    if Length(ShortName)<=2 then
    Break; { ShortName contains drive letter followed by ':' }
  end;
  Result:=ExtractFileDrive(ShortName)+Result;
end;

//##############################################################################
// CONVERTE MINUTOS PARA QUANTIDADE DECIMAL                                   //
//##############################################################################
function MinToDec(Min: Double): String;
var H,M,D: Double;
begin
  H:=Trunc(Min/60);
  M:=Round(Frac(Min/60)*60);
  D:=Round((M*100)/60);
  Result:=FloatToStr(H)+','+AlignText(FloatToStr(D),'0',2,taRight);
//  Result:=AlignText(FloatToStr(H),'0',2,taRight)+':'+AlignText(FloatToStr(M),'0',2,taRight);
end;

//##############################################################################
// CONVERTE MINUTOS PARA HORAS:MINUTOS                                        //
//##############################################################################
function MinToHour(Min: Double): String;
var H,M: Double;
begin
  H:=Trunc(Min/60);
  M:=Round(Frac(Min/60)*60);
  Result:=FloatToStr(H)+':'+AlignText(FloatToStr(M),'0',2,taRight);
//  Result:=AlignText(FloatToStr(H),'0',2,taRight)+':'+AlignText(FloatToStr(M),'0',2,taRight);
end;

//##############################################################################
// FUNCAO QUE RETORNA O DIGITO VERIFICADOR MODULO 10                          //
//##############################################################################
function Modulo10(Numero: String): String;
var I, Soma, Multiplicador, Digito: Integer;
  S:String;
begin
  Soma:=0;
  Multiplicador:=2;
  for I:=Length(Numero) downto 1 do
  begin
    Digito:=StrToInt(Numero[I])*Multiplicador;
    if Digito>9 then //soma os dois digitos.
    begin
      S:=IntToStr(Digito);
      Digito:=(StrToInt(S[1])+StrToInt(S[2]));
    end;
    Soma:=Soma+Digito;
    if Multiplicador=2 then
    Multiplicador:=1 else
    Multiplicador:=2;
  end;
  Digito:=10-(Soma mod 10);
  if Digito>9 then
  Result:='0' else
  Result:=IntToStr(Digito);
end;

//##############################################################################
// FUNCAO QUE CALCULA O DIGITO VERIFICADOR MODULO 11                          //
//##############################################################################
function Modulo11(Numero: String; Base: Byte = 9): String;
var I, Soma, Multiplicador, Digito: Integer;
begin
  Result:='';
  try
    Soma:=0;
    Multiplicador:=2;
    for I:=Length(Numero) downto 1 do
    begin
      Soma:=Soma+(StrToInt(Numero[I])*Multiplicador);
      Inc(Multiplicador);
      //if Multiplicador>9 then
      if Multiplicador > Base then
      Multiplicador:=2;
    end;
    Digito:=11-(Soma mod 11); //resto da divisao.
    if Digito>=10 then
    Digito:=0;
    Result:=Result+Chr(Digito+Ord('0'));
  except
    Result:='X'; //se X, ent„o pode ser que tenha vindo caracteres no parametro numero.
  end;
end;

function Pads(Quantidade: Word; Caracter: String): String;
var I: Word;
  S: String;
begin
  S:='';
  for I:=1 to Quantidade do
  S:=S+Caracter;
  Result:=S;
end;

//##############################################################################
// CAIXA DE DIALOGO PARA PEDIR SENHA                                          //
//##############################################################################
function PasswordInputBox(const ACaption, APrompt: String): String;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  Value: String;
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  Result:='';
  Form:=TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    for I:=0 to 25 do Buffer[I]:=Chr(I+Ord('A'));
    for I:=0 to 25 do Buffer[I+26]:=Chr(I+Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
    DialogUnits.X:=DialogUnits.X div 52;
    BorderStyle:=bsDialog;
    Caption:=ACaption;
    ClientWidth:=MulDiv(180, DialogUnits.X, 4);
    ClientHeight:=MulDiv(63, DialogUnits.Y, 8);
    Position:=poScreenCenter;
    Prompt:=TLabel.Create(Form);
    with Prompt do
    begin
      Parent:=Form;
      AutoSize:=True;
      Left:=MulDiv(8, DialogUnits.X, 4);
      Top:=MulDiv(8, DialogUnits.Y, 8);
      Caption:=APrompt;
    end;
    Edit:=TEdit.Create(Form);
    with Edit do
    begin
      Parent:=Form;
      Left:=Prompt.Left;
      Top:=MulDiv(19, DialogUnits.Y, 8);
      Width:=MulDiv(164, DialogUnits.X, 4);
      MaxLength:=255;
      PasswordChar:='?';
      SelectAll;
    end;
    ButtonTop:=MulDiv(41, DialogUnits.Y, 8);
    ButtonWidth:=MulDiv(50, DialogUnits.X, 4);
    ButtonHeight:=MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent:=Form;
      Caption:='OK';
      ModalResult:=mrOk;
      Default:=True;
      SetBounds(MulDiv(38, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent:=Form;
      Caption:='Cancel';
      ModalResult:=mrCancel;
      Cancel:=True;
      SetBounds(MulDiv(92, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    if ShowModal=mrOk then
    begin
      Value:=Edit.Text;
      Result:=Value;
    end;
  finally
    Form.Free;
    Form:=nil;
  end;
end;

//##############################################################################
// FUNCAO QUE RETORNA O PRIMEIRO DIA DA DATA PARAMETRO.                       //
//##############################################################################
function PrimeiroDia(Data: TDate): TDate;
var Dia,Mes,Ano : Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  Result:=EncodeDate(Ano,Mes,1);
end;

//##############################################################################
// FUNCAO QUE RETORNA O PRIMEIRO DIA DA SEMANA DA DATA PARAMETRO.             //
//##############################################################################
function PrimeiroDiaSemana(Data: TDate): TDate;
begin
  Result:=Data;
  case DayOfWeek(Data) of
    01: Result:=Data-7; //se domingo, entao retorna domingo passado.
    02: Result:=Data-1; //segunda.
    03: Result:=Data-2; //terÁa.
    04: Result:=Data-3; //quarta.
    05: Result:=Data-4; //quinta.
    06: Result:=Data-5; //sexta.
    07: Result:=Data-6; //s·bado.
  end;
end;

//##############################################################################
// FUNCAO PARA REMOVER ACENTUACAO DE UMA STRING.                              //
//##############################################################################
function RemoveAcentos(Str:String): String;
const ComAcento='`¥''^~"‡·‚„‰ËÈÍÎÏÌÓÔÚÛÙıˆ˘˙˚¸ÁÒ¿¡¬√ƒ»… ÀÃÕŒœ“”‘’÷Ÿ⁄€‹«—∫™ß¶êÄ∆µ∑•è';
      SemAcento='      aaaaaeeeeiiiiooooouuuucnAAAAAEEEEIIIIOOOOOUUUUCN    ECAAANA';
var X : Integer;
begin {Remove caracteres acentuados de uma string}
  for X:=1 to Length(Str) do
  begin
    if Pos(Str[X],ComAcento)<>0 then
    Str[X]:=SemAcento[Pos(Str[X],ComAcento)];
  end;
  Result:=Str;
end;

function RemoveAcentosXML(Str:String): String;
const ComAcento='`¥''^~‡·‚„‰ËÈÍÎÏÌÓÔÚÛÙıˆ˘˙˚¸ÁÒ¿¡¬√ƒ»… ÀÃÕŒœ“”‘’÷Ÿ⁄€‹«—∫™ß¶êÄ∆µ∑•è';
      SemAcento='     aaaaaeeeeiiiiooooouuuucnAAAAAEEEEIIIIOOOOOUUUUCN    ECAAANA';
var X : Integer;
begin {Remove caracteres acentuados de uma string}
  for X:=1 to Length(Str) do
  begin
    if Pos(Str[X],ComAcento)<>0 then
    Str[X]:=SemAcento[Pos(Str[X],ComAcento)];
  end;
  Result:=Str;
end;

//##############################################################################
// FUNCAO PARA TROCAR O #13#10 PARA OUTRO ESCOLHIDO                           //
//##############################################################################
function RemoveCR(Str: String; StrRep: String): String;
const CR=#13#10;
begin
  while Pos(CR,Str)<>0 do
  begin
    Insert(' - ',Str,Pos(CR,Str));
    Delete(Str,Pos(CR,Str),2);
  end; //se no final existir StrRep, entao elimina StrRep do final.
  if Copy(Str,Length(Str)-Length(StrRep)+1,Length(Str))=StrRep then
  Delete(Str,Length(Str)-Length(StrRep)+1,Length(Str));
  Result:=Str;
end;

//##############################################################################
// CONVERTE SEGUNDOS PARA HORA:MINUTOS:SEGUNDOS                               //
//##############################################################################
function SegToHour(Segs: Double): String;
var H,M: Double;
begin
  H:=Trunc(Segs/3600); //hora.
  Segs:=Segs-(H*3600);
  M:=Trunc(Segs/60);
  Segs:=Segs-(M*60);
  Result:=AlignText(FloatToStr(H),'0',2,taRight)+':';
  Result:=Result+AlignText(FloatToStr(M),'0',2,taRight)+':';
  Result:=Result+AlignText(FloatToStr(Segs),'0',2,taRight);
end;

//##############################################################################
// CRIPTOGRAFA / DESCRIPTOGRAFA SENHA                                         //
//##############################################################################
function Senha(Value: AnsiString; Chave: Word): AnsiString;
var
  I: Integer;
  S: AnsiString;
begin
  //A partir do delphi 2009 o tipo String aponta para UnicodeString.
  //O tipo String passa a ocupar 2 vezes mais espaÁo que o AnsiString. (Char=2 bytes)
  //Foi alterado os tipos String para AnsiString e Char para AnsiChar.
  S:='';
  for I :=1 to Length(Value) do
  S:=S+AnsiChar(not(Ord(Value[I])-Chave));
  Result:=S;
end;

function SenhaEncode(Texto: String; Chave: Integer): String;
var I,X: Integer;
const AlfaNumerico: String='A{B}4(CaDE_/bFGv%HIc<dJwt>K57L:0[Myx+NO1Pf#lz6&QRgih]S@pTjU-eVWu*s39m!X=ko;qYZn(r28';
begin
  for I:=1 to Length(Texto) do
  if (Pos(Texto[I], AlfaNumerico) <> 0) then
  begin
    X:=Pos(Texto[I], AlfaNumerico) - Chave;
    if (X <= 0) then
    X:=83 - ( X*(-1) ); //*-1 para retornar numero positivo.
    Texto[I]:=AlfaNumerico[X];
  end;
  Result:=ReverseString(Texto);
end;

function SenhaDecode(Texto: String; Chave: Integer): String;
var I,X: Integer;
const AlfaNumerico: String='A{B}4(CaDE_/bFGv%HIc<dJwt>K57L:0[Myx+NO1Pf#lz6&QRgih]S@pTjU-eVWu*s39m!X=ko;qYZn(r28';
begin                   //  ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%&*()-=+/;:<>{}[]
  for I:=1 to Length(Texto) do
  if (Pos(Texto[I], AlfaNumerico) <> 0) then
  begin
    X:=Pos(Texto[I], AlfaNumerico) + Chave;
    if X > 83 then
    X:=X-83; //1;
    Texto[I]:=AlfaNumerico[X];
  end;
  Result:=ReverseString(Texto);
end;

function SoNumeros(const S: String): String;
var vText : PChar;
begin
  vText:=PChar(S);
  Result:='';
  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
    Result:=Result+vText^;
    Inc(vText);
  end;
end;

//##############################################################################
// RETORNA A SENHA PARA O DIA                                                 //
//##############################################################################
function TodaysPassword: String;
var D,M,Y:Word;
begin
  DecodeDate(Date,Y,M,D);
  Result:=IntToStr(D*M*Y);
end;

//##############################################################################
// RETORNA A SENHA PARA O DIA                                                 //
//##############################################################################
function TodaysPassword2: String;
var D,M,Y:Word;
begin
  DecodeDate(Date,Y,M,D);
  Result:=IntToStr(D*M*Y*M*D);
end;

//##############################################################################
// FUNCAO QUE TROCA A VIRGULA POR PONTO.                                      //
//##############################################################################
function TrocarVirgulaPonto(Str:String): String;
const ComAcento=', ';
      SemAcento='. ';
var X : Integer;
begin //rotina baseada na RemoveAcentos.
  for X:=1 to Length(Str) do
  begin
    if Pos(Str[X],ComAcento)<>0 then
    Str[X]:=SemAcento[Pos(Str[X],ComAcento)];
  end;
  Result:=Str;
end;

function UCWords(S: String): String;
const
  Excecao: array[0..5] of string = (' da ',' de ',' do ',' das ',' dos ',' e ');
var
  J: Integer;
  I: Byte;
begin
  Result:=AnsiLowerCase(S);
  for J:=1 to Length(Result) do
  if (J=1) or ((J>1) and (Result[J-1]=Chr(32))) then //Se È a primeira letra ou se o caracter anterior È um espaÁo
  Result[J]:=AnsiUpperCase(Result[J])[1];

  for I:=0 to Length(Excecao)-1 do
  Result:=StringReplace(Result,Excecao[I],Excecao[I],[rfReplaceAll, rfIgnoreCase]);
end;

//##############################################################################
// FUNCAO QUE RETORNA O ULTIMO DIA DA DATA PARAMETRO.                         //
//##############################################################################
function UltimoDia(Data: TDate): TDate;
var Dia,Mes,Ano : Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  Mes:=Mes+1;
  if Mes>12 then
  begin
    Mes:=1;
    Ano:=Ano+1;
  end;
  Result:=EncodeDate(Ano,Mes,1)-1;
end;

//##############################################################################
// FUNCAO QUE RETORNA O ULTIMO DIA DA SEMANA DA DATA PARAMETRO  .             //
//##############################################################################
function UltimoDiaSemana(Data: TDate): TDate;
begin
  Result:=Data;
  case DayOfWeek(Data) of
    01: Result:=Data; //se domingo, entao retorna o mesmo domingo.
    02: Result:=Data+6; //segunda.
    03: Result:=Data+5; //terÁa.
    04: Result:=Data+4; //quarta.
    05: Result:=Data+3; //quinta.
    06: Result:=Data+2; //sexta.
    07: Result:=Data+1; //s·bado.
  end;
end;

function UserLogged: String;
var I: DWord;
begin
  I:=255;
  SetLength(Result,I);
  GetUserName(PChar(Result),I);
  Result:=String(PChar(Result));
end;

function UTC(Data: TDate; Hora: TTime; Fuso: String): String;
var A,M,D,HH,MM,SS,MS: Word;
begin
  DecodeDate(Data,A,M,D);
  DecodeTime(Hora,HH,MM,SS,MS);
  Result:=IntToStr(A)+'-'+
          AlignText(IntToStr(M),'0',2,taRight)+'-'+
          AlignText(IntToStr(D),'0',2,taRight)+'T'+
          AlignText(IntToStr(HH),'0',2,taRight)+':'+
          AlignText(IntToStr(MM),'0',2,taRight)+':'+
          AlignText(IntToStr(SS),'0',2,taRight)+Fuso;
end;

function V2P(Texto: String): String;
begin
  Result:=StringReplace(Texto,',','.',[rfReplaceAll]);
end;

function Word_StringReplace(ADocument, SaveAsDocument: TFileName; SRStrings: array of TWordSearchReplaceStrings): Boolean;
const
  wdFindContinue = 1;
	wdReplaceOne = 1;
	wdReplaceAll = 2;
	wdDoNotSaveChanges = 0;
var
  WordApp: OLEVariant;
  I: Integer;
begin
  Result:=False;
	if not FileExists(ADocument) then
  begin
	  ShowMessage('O Documento '+ADocument+' n„o foi encontrado!');
	  Exit;
  end;
  try
	  WordApp:=CreateOLEObject('Word.Application');
	  except on E: Exception do
	  begin
	    E.Message:='Instale o Microsoft Word!';
	    raise;
	  end;
	end;
	try
	  WordApp.Visible:=False;
	  WordApp.Documents.Open(ADocument);

    for I:=0 to 39 do
    begin
      if SRStrings[I].SearchString<>'' then
      begin
        WordApp.Selection.Find.ClearFormatting;
        WordApp.Selection.Find.Text:=SRStrings[I].SearchString;
        WordApp.Selection.Find.Replacement.Text:=SRStrings[I].ReplaceString;
        WordApp.Selection.Find.Forward:=True;
        WordApp.Selection.Find.Wrap:=wdFindContinue;
        WordApp.Selection.Find.Format:=False;
        WordApp.Selection.Find.MatchCase:=wrfMatchCase in SRStrings[I].Flags;
        WordApp.Selection.Find.MatchWholeWord:=False;
        WordApp.Selection.Find.MatchWildcards:=wrfMatchWildcards in SRStrings[I].Flags;
        WordApp.Selection.Find.MatchSoundsLike:=False;
        WordApp.Selection.Find.MatchAllWordForms:=False;
        if wrfReplaceAll in SRStrings[I].Flags then
        WordApp.Selection.Find.Execute(Replace:=wdReplaceAll) else
        WordApp.Selection.Find.Execute(Replace:=wdReplaceOne);
      end;
    end;

	  WordApp.ActiveDocument.SaveAs(SaveAsDocument,6); //vide tabela abaixo.
	  Result:=True;
	  WordApp.ActiveDocument.Close(wdDoNotSaveChanges);
  finally
	  WordApp.Quit;
//	  WordApp.Unassigned;
	end;
  //worddocument.SaveAs(FileName,   FileFormat,   LockComments,   Password,
  //                                            AddToRecentFiles,   WritePassword,   ReadOnlyRecommended,
  //                                            EmbedTrueTypeFonts,   SaveNativePictureFormat,   SaveFormsData,
  //                                            SaveAsAOCELetter);

  //wdFormatDocument 	              0 	Microsoft Office Word format.
  //wdFormatDOSText 	              4 	Microsoft DOS text format.
  //wdFormatDOSTextLineBreaks       5 	Microsoft DOS text with line breaks preserved.
  //wdFormatEncodedText 	          7 	Encoded text format.
  //wdFormatFilteredHTML 	          10 	Filtered HTML format.
  //wdFormatHTML 	                  8 	Standard HTML format.
  //wdFormatRTF 	                  6 	Rich text format (RTF).
  //wdFormatTemplate 	              1 	Word template format.
  //wdFormatText 	                  2 	Microsoft Windows text format.
  //wdFormatTextLineBreaks 	        3 	Windows text format with line breaks preserved.
  //wdFormatUnicodeText 	          7 	Unicode text format.
  //wdFormatWebArchive 	            9 	Web archive format.
  //wdFormatXML 	                  11 	Extensible Markup Language (XML) format.
  //wdFormatDocument97 	            0 	Microsoft Word 97 document format.
  //wdFormatDocumentDefault 	      16 	Word default document file format. For Microsoft Office Word 2007, this is the DOCX format.
  //wdFormatPDF 	                  17 	PDF format.
  //wdFormatTemplate97 	            1 	Word 97 template format.
  //wdFormatXMLDocument 	          12 	XML document format.
  //wdFormatXMLDocumentMacroEnabled 13 	XML document format with macros enabled.
  //wdFormatXMLTemplate 	          14 	XML template format.
  //wdFormatXMLTemplateMacroEnabled 15 	XML template format with macros enabled.
  //wdFormatXPS 	                  18 	XPS format.
end;

//##############################################################################
// CONVERTE DE COLORIDO PARA TONS DE CINZA 1                                  //
//##############################################################################
procedure ColorToGrayScale1(ABmp: TBitmap);
{ Use-o assim:
 var x: TBitmap;
 begin
   x := TBitmap.create;
   x.LoadFromFile('c:\MVC-267S.bmp');
   ColorToNegative(x);
   image1.Picture.Assign(x);
 end;}
var
  c: TCursor;
  x, y: Integer;
  R, G, B: Byte;
  ColorRGB: LongInt;
  HCLR: Byte;
begin
  c := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  for y := 0 to (ABmp.Height - 1) do
    for x := 0 to (ABmp.Width - 1) do begin
      ColorRGB := ColorToRGB(ABmp.Canvas.Pixels[x, y]);
      // obtÈm as cores da paleta
      R := GetRValue(ColorRGB);
      G := GetGValue(ColorRGB);
      B := GetBValue(ColorRGB);
      // obtÈm o maior valor da paleta
      HCLR := 0;
      if R > HCLR then HCLR := R;
      if G > HCLR then HCLR := G;
      if B > HCLR then HCLR := B;
      // converte para tons de cinza
      R := HCLR;
      G := HCLR;
      B := HCLR;
      // aplica a nova cor ao pixel
      ABmp.Canvas.Pixels[x, y] := PaletteRGB(R, G, B);
    end;
  Screen.Cursor := c;
end;

procedure CreateShortCut(FileName, Parameters, InitialDir, ShortcutName, ShortcutFolder: String);
var
  MyObject: IUnknown;
  MySLink: IShellLink;
  MyPFile: IPersistFile;
  WFileName: WideString;
begin
  MyObject:=CreateComObject(CLSID_ShellLink);
  MyPFile:=MyObject as IPersistFile;
  MySLink:=MyObject as IShellLink;
  MySLink.SetArguments(PChar(Parameters));
  MySLink.SetPath(PChar(FileName));
  MySLink.SetWorkingDirectory(PChar(InitialDir));
  WFileName:=ShortCutFolder+'\'+ShortcutName+'.lnk';
  MyPFile.Save(PWChar(WFileName),False);
end;

//##############################################################################
// PROCEDURE PARA CRIACAO DE CODIGO DE BARRAS CODE 25 (2X5)                   //
//##############################################################################
procedure CriaCodigoBarras(Cod: AnsiString; Imagem: TCanvas);
const
  digitos : array['0'..'9'] of string[5]=
  ('00110','10001','01001','11000','00101','10100','01100','00011','10010','01010');
  // 10491343200000104500079504178780000030106075 - exemplo de codigo de barras.
var
  Numero : String;
  Cod1 : array[1..1000] of Char;
  Cod2 : array[1..1000] of Char;
  Codigo : array[1..1000] of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
begin
  Numero:=Cod;
  for x:=1 to 1000 do
  begin
    Cod1[x]:=#0;
    Cod2[x]:=#0;
    Codigo[x]:=#0;
  end;
  c1:=1;
  c2:=1;
  x:=1;
  for y:=1 to Length(Numero) div 2 do
  begin
    Digito:=Digitos[Numero[x]];
    for z:=1 to 5 do
    begin
      Cod1[c1]:=Digito[z];
      Inc(c1);
    end;
    Digito:=Digitos[Numero[x+1]];
    for z:=1 to 5 do
    begin
      Cod2[c2]:=Digito[z];
      Inc(c2);
    end;
    Inc(x,2);
  end;
  y:=5;
  Codigo[1]:='0';
  Codigo[2]:='0';
  Codigo[3]:='0';
  Codigo[4]:='0'; { Inicio do Codigo }
  for x:=1 to c1-1 do
  begin
    Codigo[y]:=Cod1[x]; Inc(y);
    Codigo[y]:=Cod2[x]; Inc(y);
  end;
  Codigo[y]:='1'; Inc(y); { Final do Codigo }
  Codigo[y]:='0'; Inc(y);
  Codigo[y]:='0';
  Imagem.Pen.Width:=1;
  Imagem.Brush.Color:=ClWhite;
  Imagem.Pen.Color:=ClWhite;
  a.x:=1; a.y:=0;
  b.x:=1; b.y:=79;
  c.x:=2000; c.y:=79;
  d.x:=2000; d.y:=0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color:=ClBlack;
  Imagem.Pen.Color:=ClBlack;
  x:=0;
  i:=True;
  for y:=1 to 1000 do
  begin
    if Codigo[y]<>#0 then
    begin
      if Codigo[y]='0' then
        h := 1
      else
        h := 3;
      a.x:=x; a.y:=0;
      b.x:=x; b.y:=79;
      c.x:=x+h-1; c.y:=79;
      d.x:=x+h-1; d.y:=0;
      if i then
        Imagem.Polygon([a,b,c,d]);
      i:=not(i);
      x:=x+h;
    end;
  end;
end;

//##############################################################################
// DESLIGA OU REINICIA O PC. EX:                                              //
// DesligarWindows(EWX_SHUTDOWN);  desligar normal                            //
// DesligarWindows(EWX_FORCE); sair forÁado                                   //
// DesligarWindows(EWX_POWEROFF); para fontes ATX                             //
// DesligarWindwos(EWX_LOGOFF); efetua logoff                                 //
// DesligarWindows(EWX_REBOOT); reinicializa o computador                     //
//##############################################################################
procedure DesligarWindows(Acao: Cardinal);
var
  TokenPriv: TTokenPrivileges;
  H: DWORD;
  HToken: THandle;
begin
  {* para WIN 2000, XP e NT *}
  if Win32Platform=VER_PLATFORM_WIN32_NT then
  begin
    OpenProcessToken(GetCurrentProcess,TOKEN_ADJUST_PRIVILEGES,HToken);
    LookUpPrivilegeValue(nil,'SeShutdownPrivilege',TokenPriv.Privileges[0].Luid);
    TokenPriv.PrivilegeCount:=1;
    TokenPriv.Privileges[0].Attributes:=SE_PRIVILEGE_ENABLED;
    H:=0;
    AdjustTokenPrivileges(HToken,False,TokenPriv,0,PTokenPrivileges(nil)^,H);
    CloseHandle(HToken);
  end;
  ExitWindowsEx(Acao,0);
end;

//##############################################################################
// EXECUTA APLICATIVO ASSOCIADO AO ARQUIVO                                    //
//##############################################################################
procedure ExecutarArquivo(F: String; P: String);
var S: String;
begin
  case ShellExecute(Application.Handle, nil, PChar(F), PChar(P), nil, SW_SHOWNORMAL) of
    ERROR_FILE_NOT_FOUND: S := 'O arquivo especificado n„o foi encontrado.'; //The specified file was not found.';
    ERROR_PATH_NOT_FOUND: S := 'O caminho especificado n„o foi encontrado.'; //The specified path was not found.';
    ERROR_BAD_FORMAT: S := 'O arquivo .EXE È inv·lido.'; //The .EXE file is invalid (non-Win32 .EXE or error in .EXE image).';
    SE_ERR_ACCESSDENIED: S := 'O sistema operacional negou o acesso ao arquivo especificado.'; //Windows 95 only: The operating system denied access to the specified file.';
    SE_ERR_ASSOCINCOMPLETE: S := 'A associoaÁ„o do nome de arquivo est· incompleta ou È inv·lida.'; //The filename association is incomplete or invalid.';
    SE_ERR_DDEBUSY: S := 'A transaÁ„o DDE n„o pode ser completada porque existem outras transaÁıes DDE em andamento'; //The DDE transaction could not be completed because other DDE transactions were being processed.';
    SE_ERR_DDEFAIL: S := 'A transaÁ„o DDE falhou.'; //The DDE transaction failed.';
    SE_ERR_DDETIMEOUT: S := 'TransaÁ„o DDE falhou por time out.'; //The DDE transaction could not be completed because the request timed out.';
    SE_ERR_DLLNOTFOUND: S := 'Uma DLL necess·ria n„o foi encontrada.'; //Windows 95 only: The specified dynamic-link library was not found.';
    SE_ERR_NOASSOC: S := 'N„o existe aplicativo associado ‡ este arquivo.'+#13#13+F; //There is no application associated with the given filename extension.';
    SE_ERR_OOM: S := 'Sem memÛria suficiente para completar a operaÁ„o.'; //Windows 95 only: There was not enough memory to complete the operation.';
    SE_ERR_SHARE: S := 'Ocorreu uma violaÁ„o de compartilhamento.'; //A sharing violation occurred.';
  else
    Exit;
  end; //case
  ShowMessage(S);
end;

procedure FindReplace(const De, Para: String; var Source: TMemo);
var I, Posicao: Integer;
  Linha: String;
begin
  for I:=0 to Source.Lines.Count-1 do
  begin
    Linha:=Source.Lines[I];
    repeat
      Posicao:=Pos(De,Linha);
      if Posicao>0 then
      begin
        Delete(Linha,Posicao,Length(De));
        Insert(Para,Linha,Posicao);
        Source.Lines[I]:=Linha;
      end;
    until Posicao=0;
  end;
end;

procedure GradHorizontal(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor);
var
  X:integer;
  dr,dg,db:Extended;
  C1,C2:TColor;
  r1,r2,g1,g2,b1,b2:Byte;
  R,G,B:Byte;
  cnt:integer;
begin
  C1 := FromColor;
  R1 := GetRValue(C1) ;
  G1 := GetGValue(C1) ;
  B1 := GetBValue(C1) ;

  C2 := ToColor;
  R2 := GetRValue(C2) ;
  G2 := GetGValue(C2) ;
  B2 := GetBValue(C2) ;

  dr := (R2-R1) / Rect.Right-Rect.Left;
  dg := (G2-G1) / Rect.Right-Rect.Left;
  db := (B2-B1) / Rect.Right-Rect.Left;

  cnt := 0;
  for X := Rect.Left to Rect.Right-1 do
  begin
    R := R1+Ceil(dr*cnt) ;
    G := G1+Ceil(dg*cnt) ;
    B := B1+Ceil(db*cnt) ;

    Canvas.Pen.Color := RGB(R,G,B) ;
    Canvas.MoveTo(X,Rect.Top) ;
    Canvas.LineTo(X,Rect.Bottom) ;
    inc(cnt) ;
  end;
end;

procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor);
var
  Y:integer;
  dr,dg,db:Extended;
  C1,C2:TColor;
  r1,r2,g1,g2,b1,b2:Byte;
  R,G,B:Byte;
  cnt:Integer;
begin
  C1 := FromColor;
  R1 := GetRValue(C1) ;
  G1 := GetGValue(C1) ;
  B1 := GetBValue(C1) ;

  C2 := ToColor;
  R2 := GetRValue(C2) ;
  G2 := GetGValue(C2) ;
  B2 := GetBValue(C2) ;

  dr := (R2-R1) / Rect.Bottom-Rect.Top;
  dg := (G2-G1) / Rect.Bottom-Rect.Top;
  db := (B2-B1) / Rect.Bottom-Rect.Top;

  cnt := 0;
  for Y := Rect.Top to Rect.Bottom-1 do
  begin
    R := R1+Ceil(dr*cnt) ;
    G := G1+Ceil(dg*cnt) ;
    B := B1+Ceil(db*cnt) ;

    Canvas.Pen.Color := RGB(R,G,B) ;
    Canvas.MoveTo(Rect.Left,Y) ;
    Canvas.LineTo(Rect.Right,Y) ;
    Inc(cnt) ;
  end;
end;

function HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;

procedure MostrarAjuda(Link: String);
//var HelpFile: String;
begin
{  HelpFile:=Application.ExeName;
  HelpFile:=ChangeFileExt(HelpFile,'.chm');
  if Trim(Titulo)<>'' then
  ShellExecute(0,nil,PChar('HH'),PChar(HelpFile+'::/'+Titulo+'.htm'),nil,SW_NORMAL) else
  ShellExecute(0,nil,PChar('HH'),PChar(HelpFile),nil,SW_NORMAL);}
  //dicas: http://www.help-info.de/en/Help_Info_HTMLHelp/hh_command.htm
  if Link='' then
  ShellExecute(GetDesktopWindow,'open',PChar('http://firenet.runtimesistemas.com.br'),nil,nil,sw_ShowNormal) else
  ShellExecute(GetDesktopWindow,'open',PChar(Link),nil,nil,sw_ShowNormal);
end;

procedure PrintFile(Mode,Command,FileToPrint,Port: String);
begin
  if (Mode='NORMAL') and (Command='Command.com') then WinExec(PAnsiChar(AnsiString('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT '+FileToPrint+' '+Port)),sw_Hide) else
  if (Mode='NORMAL') and (Command='Cmd.exe')     then WinExec(PAnsiChar(AnsiString('CMD.EXE /C '    +ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT '+FileToPrint+' '+Port)),sw_Hide) else
  if (Mode='DEBUG')  and (Command='Command.com') then WinExec(PAnsiChar(AnsiString('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT '+FileToPrint+' '+Port)),sw_Normal) else
  if (Mode='DEBUG')  and (Command='Cmd.exe')     then WinExec(PAnsiChar(AnsiString('CMD.EXE /K '    +ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT '+FileToPrint+' '+Port)),sw_Normal);
end;

//##############################################################################
// REGISTRA O USO DA DLL DO PICAVIEW NO REGISTRY DO WINDOWS                   //
//##############################################################################
procedure RegistrarPicaView;
const Chave='\Software\ACD Systems\PicaView32';
begin
  with TRegistry.Create do
  try
    RootKey:=HKEY_LOCAL_MACHINE;
    if OpenKey(Chave,True) then
    begin
      WriteString('Code','414995821');
      WriteString('Evaluation','GJFOAABGGHCNMGDK0610203C');
      WriteString('Name','Rogerio');
      CloseKey;
    end;
  finally
    Free;
  end; //try.
end;

//##############################################################################
// SETA A IMPRESSORA PADRAO PELO NOME                                         //
//##############################################################################
procedure SetDefaultPrinter(PrinterName: String);
var
  I: Integer;
  Device: PChar;
  Driver: PChar;
  Port: PChar;
  HDeviceMode: THandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex:=-1;
  GetMem(Device, 255);
  GetMem(Driver, 255);
  GetMem(Port, 255);
  aPrinter:=TPrinter.Create;
  for I:=0 to Printer.Printers.Count-1 do
  begin
    if Printer.Printers[I]=PrinterName then
    begin
      aprinter.PrinterIndex:=I;
      aPrinter.GetPrinter(Device,Driver,Port,HDeviceMode);
      StrCat(Device,',');
      StrCat(Device,Driver);
      StrCat(Device,Port);
      WriteProfileString('windows','device',Device);
      StrCopy(Device,'windows');
      SendMessage(HWND_BROADCAST,WM_WININICHANGE,0,Longint(@Device)); //WM_SETTINGCHANGE o outro tah obsoleto.
    end;
  end;
  FreeMem(Device,255);
  FreeMem(Driver,255);
  FreeMem(Port,255);
  aPrinter.Free;
end;

//esconde|exibe a barra do Windows.
procedure SetTaskBar(Visible: Boolean);
var
  wndHandle: THandle;
  wndClass: array[0..50] of Char;
begin
  StrPCopy(@wndClass[0],'Shell_TrayWnd');
  wndHandle:=FindWindow(@wndClass[0],nil);
  if Visible=True then
  ShowWindow(wndHandle,SW_RESTORE) else
  ShowWindow(wndHandle,SW_HIDE);
end;

function StringToHex(S: String): string;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;

procedure SubstituirString(const De, Para: AnsiString; var Source: TMemo);
var I, II: Integer;
  Aux: AnsiString;
begin
  for I:=0 to Source.Lines.Count-1 do
  begin
    for II:=1 to Length(AnsiString(Source.Lines.Strings[I])) do
    begin
      Aux:=Copy(AnsiString(Source.Lines.Strings[I]),II,Length(De));
      if Aux=De then
      begin
        Aux:=Copy(AnsiString(Source.Lines.Strings[I]),1,II-1)+Para+Copy(AnsiString(Source.Lines.Strings[I]),II+Length(De),Length(AnsiString(Source.Lines.Strings[I])));
        Source.Lines.Strings[I]:=Aux;
      end;
    end;
  end;
end;

//##############################################################################
// TRAVA TECLADO, MOUSE, TUDO...                                              //
//##############################################################################
procedure TravaTudo(Block:Boolean);
begin
  BlockInput(Block);
end;

//##############################################################################
// DESABILITA CTRL+ALT+DEL NO WINDOWS XP                                      //
//##############################################################################
procedure XPTaskMgr(Value: Boolean);
const sRegPolicies='\Software\Microsoft\Windows\CurrentVersion\Policies';
begin
  with TRegistry.Create do
  try
    RootKey:=HKEY_CURRENT_USER;
    if OpenKey(sRegPolicies+'\System\',True) then
    begin
      if Value then
      WriteInteger('DisableTaskMgr',0) else
      WriteInteger('DisableTaskMgr',1);
      CloseKey;
    end;
    if OpenKey(sRegPolicies+'\Explorer\',True) then
    begin
      if Value then
      begin
        WriteInteger('NoChangeStartMenu',0);
        WriteInteger('NoClose',0);
        WriteInteger('NoLogOff',0);
      end else
      begin
        WriteInteger('NoChangeStartMenu',1);
        WriteInteger('NoClose',1);
        WriteInteger('NoLogOff',1);
      end;
      CloseKey;
    end;
    finally
    Free;
  end; //try.
end;

//Apaga arquivos usando mascaras tipo: c:\Temp\*.zip, c:\Temp\*.*
// Obs: Requer o Path dos arquivos a serem deletados.
procedure ZapFiles(Mascara: String);
var Dir: TSearchRec;
    Erro: Integer;
begin
  Erro:=FindFirst(Mascara,faArchive,Dir);
  while Erro=0 do
  begin
    DeleteFile(ExtractFilePath(Mascara)+Dir.Name);
    Erro:=FindNext(Dir);
  end;
  FindClose(Dir);
end;

//##############################################################################
// SIMULA UM CLICK NO BOTAO INICIAR                                           //
//##############################################################################
//procedure TForm1.Button1Click(Sender: TObject) ; //FALTA IMPLEMENTAR.
//begin
//   SendMessage(Form1.handle,
//               WM_SYSCOMMAND,
//               SC_TASKLIST,0) ;
//end;

end.
