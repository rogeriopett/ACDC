//Atualizacoes:
//2026.11.19 - CarregarLogoSVGFast: logo da empresa (EMP_LOGOSVG) no Picture dos relatorios do FastReport.
unit Funcoes;

interface

uses
  Horse, Dialogs, System.SysUtils, System.RegularExpressions, System.NetEncoding, System.JSON,
  System.StrUtils, System.Classes, Data.DB, Windows, ShellAPI, DataModFirenet, DataSet.Serialize, ACBrMail, frxClass;

type
  Alignment=(taRight, taLeft, taCenter); //At.

procedure Obrigatorio(Campo, Descricao: String; Comparador: String='');
procedure ExecutarArquivo(F: String; P: String);
procedure CarregarLogoSVGFast(DM: TDMFirenet; Relatorio: TfrxReport; const Picture: String = 'Picture1');

function AT(Text: String; FillChar: String; TotalLength: Word; Align: Alignment): String;
function Cnpj(Num: String): Boolean;
function Cpf(Num: String): Boolean;
function DataNull(Data: TDate): TDate;
function Decimais(Value: Extended; Decs: Byte): Extended;
//function EnviarEmailAngus(DM: TDMAngus; Para, Copia, Assunto, Mensagem: String): String;
function FileToBase64(const FileName: String): String;
function FileVersion(const FileName: String): String;
function FormatarCEP(const Cep: String): String;
function FormatarCPFCNPJ(const Doc: String): String;
function FormatarFone(const Fone: String): String;
function FormatarHora(const Hora: String): String;
function GerarSenha(Tamanho: Integer = 8; Minusculas: Boolean = True; Maiusculas: Boolean = True; Numeros: Boolean = True; Simbolos: Boolean = False): String;
function GetUserFromToken(Req: THorseRequest): TJSONObject;
function GetTempDir: String;
function ift(Condicao: Boolean; ValorTrue, ValorFalse: Variant): Variant;
function LimparFormatacao(Campo: String): String;
function NFeUtilRegistrada: Boolean;
function San(const Texto: String; Padrao: Integer = 1): String;
function SenhaEncode(Texto: String; Chave: Integer): String;
function SenhaDecode(Texto: String; Chave: Integer): String;
function SetData(Field: TDateField; const Value: String): TDateField;
function SoNumeros(const S: String): Integer;
function StripTags(const Texto: String): String;
function UCWords(S: String): String;
//function SetarBancoEmpresa(DM: TDMFirenet; Empresa: String): Boolean;

implementation

uses
  blcksock, Main, NFe_Util_2G_TLB, Vcl.Forms, Winapi.ActiveX, FireDAC.Comp.Client;

procedure CarregarLogoSVGFast(DM: TDMFirenet; Relatorio: TfrxReport; const Picture: String = 'Picture1');
// Logo da empresa (SVG gravado em EMPRESA.EMP_LOGOSVG) no Picture do relatorio, antes do PrepareReport.
// Sem SVG, o relatorio sai sem logo. Query propria para nao mexer nas queries do DM em uso.
var Imagem: TfrxComponent;
    Query: TFDQuery;
    Stream: TStringStream;
    SVG: String;
begin
  Imagem:=Relatorio.FindObject(Picture);
  if not (Imagem is TfrxPictureView) then
  Exit;

  Query:=TFDQuery.Create(nil);
  try
    Query.Connection:=DM.Query1.Connection;
    Query.Transaction:=DM.Query1.Transaction;
    Query.SQL.Add('select first 1 EMP_LOGOSVG from EMPRESA order by EMP_CODIGO');
    Query.Open;
    SVG:=Query.FieldByName('EMP_LOGOSVG').AsString;
  finally
    Query.Free;
  end;

  if Trim(SVG)='' then
  Exit;

  Stream:=TStringStream.Create(SVG, TEncoding.UTF8);
  try
    TfrxPictureView(Imagem).LoadPictureFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

function AT(Text: String; FillChar: String; TotalLength: Word; Align: Alignment): String;
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
  end;
  Result:=Text;
end;

function Cnpj(Num: String): Boolean;
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

function Cpf(Num: String): Boolean;
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

function DataNull(Data: TDate): TDate;
begin
  if DateToStr(Data)='30/12/1899' then
  Result:=0 else
  Result:=Data;
end;

function Decimais(Value: Extended; Decs: Byte): Extended;
var S: String;
begin
  S:=FloatToStrF(Value,ffFixed,18,Decs);
  Result:=StrToFloat(S);
end;

//function EnviarEmailAngus(DM: TDMAngus; Para, Copia, Assunto, Mensagem: String): String;
//var S, E: String;
//  MailComp: TACBrMail;
//begin
//  DM.TBParametros.Close;
//  DM.TBParametros.ParamByName('codigo').AsInteger:=1;
//  DM.TBParametros.Open;
//
//  MailComp:=TACBrMail.Create(nil);
//
//  MailComp.From:=DM.TBParametrosPAR_MAILFROM.Value;
//  MailComp.FromName:=DM.TBParametrosPAR_MAILNAME.Value;
//
//  MailComp.Host:=DM.TBParametrosPAR_MAILSMTP.Value;
//  MailComp.Username:=DM.TBParametrosPAR_MAILUSER.Value;
//  MailComp.Password:=DM.TBParametrosPAR_MAILPASS.Value;
//  MailComp.Port:=IntToStr(DM.TBParametrosPAR_MAILPORT.Value);
//  MailComp.Attempts:=2;
//
//  MailComp.SSLType:=TSSLType(LT_all);
//
//  MailComp.SetSSL:=False;
//  //if DM.TBParametrosPAR_MAILSSL.Value='S' then
//  //MailComp.SetSSL:=True else
//  //MailComp.SetSSL:=False;
//
//  MailComp.SetTLS:=True;
//  //if DM.TBParametrosPAR_MAILTLS.Value='S' then
//  //MailComp.SetTLS:=True else
//  //MailComp.SetTLS:=False;
//
//  MailComp.ReadingConfirmation:=False;
//  //if DM.TBParametrosPAR_MAILCONF.Value='S' then
//  //MailComp.ReadingConfirmation:=True else
//  //MailComp.ReadingConfirmation:=False;
//
//  S:=Para;
//  //verifica se o ultimo caracter é virgula e se for, remove.
//  if S[Length(S)]=',' then
//  Delete(S,Length(S),1);
//
//  //verifica se tem mais de um destinatário e adiciona cada um deles.
//  while Pos(',',S)>1 do
//  begin
//    E:=Copy(S,1,Pos(',',S)-1);
//    Delete(S,1,Pos(',',S));
//    MailComp.AddAddress(E,'');
//  end;
//  MailComp.AddAddress(S,''); //o último ou o único.
//
//  S:=Copia;
//  if S<>'' then
//  begin
//    //verifica se o ultimo caracter é virgula e se for, remove.
//    if S[Length(S)]=',' then
//    Delete(S,Length(S),1);
//
//    //verifica se tem mais de um destinatário e adiciona cada um deles.
//    while Pos(',',S)>1 do
//    begin
//      E:=Copy(S,1,Pos(',',S)-1);
//      Delete(S,1,Pos(',',S));
//      MailComp.AddCC(E);
//    end;
//    MailComp.AddCC(S); //o último ou o único.
//  end;
//
//  MailComp.IsHTML:=True;
//  MailComp.AltBody.Text:='Esta mensagem foi gerada em HTML.';
//  //if DM.TBParametrosPAR_MAILHMTL.Value='S' then
//  //begin
//  //  MailComp.IsHTML:=True;
//  //  MailComp.AltBody.Text:='Esta mensagem foi gerada em HTML.';
//  //end else
//  //begin
//  //  MailComp.IsHTML:=False;
//  //  MailComp.AltBody.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;
//  //end;
//
//  MailComp.Subject:=DM.TBParametrosPAR_MAILPREFIX.Value+' '+Assunto;
//  MailComp.Body.Text:=Mensagem;
//
//  //if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
//  //ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO.Value,'');
//
//  //if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
//  //ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO2.Value,'');
//
//  //if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
//  //ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO3.Value,'');
//  try
//    try
//      MailComp.Send;
//      Result:='OK';
//    except on ex:Exception do
//      Result:=ex.Message;
//    end;
//  finally
//    DM.TBParametros.Close;
//    FreeAndNil(MailComp);
//  end;
//end;

procedure ExecutarArquivo(F: String; P: String);
var S: String;
begin
  case ShellExecute(Application.Handle, nil, PChar(F), PChar(P), nil, SW_SHOWNORMAL) of
    ERROR_FILE_NOT_FOUND: S := 'O arquivo especificado não foi encontrado.'; //The specified file was not found.';
    ERROR_PATH_NOT_FOUND: S := 'O caminho especificado não foi encontrado.'; //The specified path was not found.';
    ERROR_BAD_FORMAT: S := 'O arquivo .EXE é inválido.'; //The .EXE file is invalid (non-Win32 .EXE or error in .EXE image).';
    SE_ERR_ACCESSDENIED: S := 'O sistema operacional negou o acesso ao arquivo especificado.'; //Windows 95 only: The operating system denied access to the specified file.';
    SE_ERR_ASSOCINCOMPLETE: S := 'A associoação do nome de arquivo está incompleta ou é inválida.'; //The filename association is incomplete or invalid.';
    SE_ERR_DDEBUSY: S := 'A transação DDE não pode ser completada porque existem outras transações DDE em andamento'; //The DDE transaction could not be completed because other DDE transactions were being processed.';
    SE_ERR_DDEFAIL: S := 'A transação DDE falhou.'; //The DDE transaction failed.';
    SE_ERR_DDETIMEOUT: S := 'Transação DDE falhou por time out.'; //The DDE transaction could not be completed because the request timed out.';
    SE_ERR_DLLNOTFOUND: S := 'Uma DLL necessária não foi encontrada.'; //Windows 95 only: The specified dynamic-link library was not found.';
    SE_ERR_NOASSOC: S := 'Não existe aplicativo associado à este arquivo.'+#13#13+F; //There is no application associated with the given filename extension.';
    SE_ERR_OOM: S := 'Sem memória suficiente para completar a operação.'; //Windows 95 only: There was not enough memory to complete the operation.';
    SE_ERR_SHARE: S := 'Ocorreu uma violação de compartilhamento.'; //A sharing violation occurred.';
  else
    Exit;
  end; //case
  ShowMessage(S);
end;

//function FileToBase64(const FileName: string): string;
//var
//  FileStream: TFileStream;
//  Encoder: TIdEncoderMIME;
//  FileBytes: TBytes;
//  a: TStrings;
//begin
//  Result := ''; // Inicializa o resultado como uma string vazia
//  try
//    // Abre o arquivo para leitura
//    FileStream := TFileStream.Create(FileName, fmOpenRead);
//    try
//      // Lê todo o arquivo em um array de bytes
//      SetLength(FileBytes, FileStream.Size);
//      FileStream.ReadBuffer(FileBytes[0], FileStream.Size);
//
//      // Codifica o conteúdo do arquivo para Base64
//      Encoder := TIdEncoderMIME.Create(nil);
//      try
//        // Retorna a string codificada em Base64
//        //Result := Encoder.EncodeBytes(FileBytes,
//        Encoder.EncodeBytes(FileBytes,a);
//      finally
//        Encoder.Free;
//      end;
//    finally
//      FileStream.Free;
//    end;
//  except
//    on E: Exception do
//      raise Exception.Create('Erro ao ler ou codificar o arquivo: ' + E.Message);
//  end;
//end;

function FileToBase64(const FileName: string): string;
var
  FileStream: TFileStream;
  FileBytes: TBytes;
begin
  Result := ''; // Inicializa o resultado como uma string vazia
  try
    // Abre o arquivo para leitura
    FileStream := TFileStream.Create(FileName, fmOpenRead);
    try
      // Lê todo o arquivo em um array de bytes
      SetLength(FileBytes, FileStream.Size);
      FileStream.ReadBuffer(FileBytes[0], FileStream.Size);

      // Codifica o conteúdo do arquivo em Base64 usando TNetEncoding.Base64
      Result := TNetEncoding.Base64.EncodeBytesToString(FileBytes);
    finally
      FileStream.Free;
    end;
  except
    on E: Exception do
      raise Exception.Create('Erro ao ler ou codificar o arquivo: ' + E.Message);
  end;
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
    { Executamos a funcao "VerQueryValue" e conseguimos informações sobre o idioma/character-set }
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

function FormatarCEP(const CEP: String): String;
var cepSanitizado: String;
begin
  cepSanitizado := San(Cep, 4);
  if Length(cepSanitizado) = 8 then
  Result := Copy(cepSanitizado, 1, 5) + '-' + Copy(cepSanitizado, 6, 3) else
  Result := cepSanitizado;
end;

function FormatarCPFCNPJ(const Doc: String): String;
var docSanitizado: String;
begin
  docSanitizado := San(Doc, 4);
  if Length(docSanitizado) = 11 then
  Result := Copy(docSanitizado, 1, 3) + '.' + Copy(docSanitizado, 4, 3) + '.' + Copy(docSanitizado, 7, 3) + '-' + Copy(docSanitizado, 10, 2) else
  if Length(docSanitizado) = 14 then
  Result := Copy(docSanitizado, 1, 2) + '.' + Copy(docSanitizado, 3, 3) + '.' + Copy(docSanitizado, 6, 3) + '/' + Copy(docSanitizado, 9, 4) + '-' + Copy(docSanitizado, 13, 2) else
  Result := docSanitizado;
end;

function FormatarFone(const Fone: String): String;
var foneSanitizado: String;
begin
  foneSanitizado := San(Fone, 4);
  if Length(foneSanitizado) = 11 then
  Result := '(' + Copy(foneSanitizado, 1, 2) + ') ' + Copy(foneSanitizado, 3, 5) + '-' + Copy(foneSanitizado, 8, 4) else
  if Length(foneSanitizado) = 10 then
  Result := '(' + Copy(foneSanitizado, 1, 2) + ') ' + Copy(foneSanitizado, 3, 4) + '-' + Copy(foneSanitizado, 7, 4) else
  Result := foneSanitizado;
end;

function FormatarHora(const Hora: String): String;
var HoraSanitizada: String;
begin
  HoraSanitizada := San(Hora, 4);
  if Length(HoraSanitizada) = 6 then
  Result := Copy(HoraSanitizada, 1, 2) + ':' + Copy(HoraSanitizada, 3, 2) + ':' + Copy(HoraSanitizada, 5, 2) else
  if Length(HoraSanitizada) = 4 then
  Result := Copy(HoraSanitizada, 1, 2) + ':' + Copy(HoraSanitizadA, 3, 2) else
  Result := HoraSanitizada;
end;

function GerarSenha(Tamanho: Integer = 8; Minusculas: Boolean = True; Maiusculas: Boolean = True; Numeros: Boolean = True; Simbolos: Boolean = False): String;
var
  Lmin, Lmai, Num, Simb, Caracteres: string;
  Len, I, RandIndex: Integer;
begin
  // Definir os conjuntos de caracteres
  Lmin := 'abcdefghijklmnopqrstuvwxyz';
  Lmai := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Num  := '1234567890';
  Simb := '!@#*-';

  // Construir a lista de caracteres permitidos com base nos parâmetros
  Caracteres := '';
  if Minusculas then Caracteres := Caracteres + Lmin;
  if Maiusculas then Caracteres := Caracteres + Lmai;
  if Numeros    then Caracteres := Caracteres + Num;
  if Simbolos   then Caracteres := Caracteres + Simb;

  // Verificar se há caracteres disponíveis
  Len := Length(Caracteres);
  if Len = 0 then
  raise Exception.Create('Nenhum conjunto de caracteres permitido foi selecionado.');

  // Gerar a senha
  Result := '';
  Randomize;  // Inicializar o gerador de números aleatórios
  for I := 1 to Tamanho do
  begin
    RandIndex := Random(Len) + 1;  // Random retorna um valor entre 0 e Len-1, então somamos 1
    Result := Result + Caracteres[RandIndex];
  end;
end;

function GetTempDir: String;
begin
  SetLength(Result,MAX_PATH);
  if GetTempPath(MAX_PATH,PChar(Result)) > 0 then
  Result:=String(PChar(Result)) else
  Result:='Não foi possível retornar diretório Temp!';
end;

function GetUserFromToken(Req: THorseRequest): TJSONObject;
var
  DM: TDMFirenet;
  AuthorizationHeader: String;
  BearerToken: String;
  TokenParts: TArray<string>;
  PayloadBase64: String;
  PayloadDecoded: String;
  Usuario: TJSONObject;
begin
  Result:=nil;
  AuthorizationHeader:=Req.Headers['Authorization'];
  if (AuthorizationHeader <> '') then
  begin
    TokenParts:=AuthorizationHeader.Split([' ']); //Extrai o token após o prefixo "Bearer".
    if Length(TokenParts) = 2 then
    begin
      BearerToken:=TokenParts[1];
      TokenParts:=BearerToken.Split(['.']); //Separa as 3 partes do JWT.

      if Length(TokenParts) = 3 then
      begin
        PayloadBase64:=TokenParts[1];
        PayloadDecoded:=TNetEncoding.Base64.Decode(PayloadBase64); //Decodifica o payload do token.
        Usuario:=TJSONObject.ParseJSONValue(PayloadDecoded) as TJSONObject; //Converte o payload decodificado de JSON.
        if Assigned(Usuario) then
        begin
          try
            DM:=TDMFirenet.Create(nil);
            DM.Query1.Close;
            DM.Query1.SQL.Clear;
            DM.Query1.SQL.Add('select * from USUARIOS where USU_LOGIN=:login order by USU_NOME');
            DM.Query1.ParamByName('login').AsString:=Usuario.GetValue<String>('login');
            DM.Query1.Open;
            Result:=DM.Query1.ToJSONObject;
          finally
            FreeAndNil(DM);
          end;
        end;
      end;
    end;
  end;
end;

procedure Obrigatorio(Campo, Descricao: String; Comparador: String='');
begin
  if (Campo=Comparador) then
  raise Exception.Create('Informe o campo '+Descricao+'.');
end;

function ift(Condicao: Boolean; ValorTrue, ValorFalse: Variant): Variant;
begin
  if Condicao=True then
  Result:=ValorTrue else
  Result:=ValorFalse;
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

function NFeUtilRegistrada: Boolean;
var U: NFe_Util_2G_Interface;
begin
  Result:=True;
  try
    try
      CoInitialize(nil);
      U:=NFe_Util_2G_TLB.CoUtil.Create;
      U:=nil;
    except
      on Exception do
      Result:=False;
    end;
  finally
    U:=nil;
    CoUninitialize;
  end;
end;

function San(const Texto: String; Padrao: Integer = 1): String;
begin
  case Padrao of
    0: Result := TRegEx.Replace(Texto, '[^A-Za-zá-üÁ-Ü0-9 \n\r\@\_\-\/\.\[\]\,\:\&\?\=\#\%\(\)\\]', '');
    1: Result := TRegEx.Replace(Texto, '[^A-Za-zá-üÁ-Ü0-9 \!\@\#\_\-\/\.\%]', '');
    2: Result := TRegEx.Replace(Texto, '[^A-Za-zá-üÁ-Ü0-9 \/\.]', '');
    3: Result := TRegEx.Replace(Texto, '[^A-Za-z0-9 \/\.]', '');
    4: Result := TRegEx.Replace(Texto, '[^0-9]', '');
    5: Result := TRegEx.Replace(Texto, '[^0-9 \.\-\:]', '');
    6: Result := StripTags(Texto); // Função para remover tags, mantendo as permitidas
  else
    Result := Texto; // Caso o padrão não seja reconhecido, retorna o texto original
  end;
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

function SetData(Field: TDateField; const Value: String): TDateField;
begin
  if Value='' then
  Field.Clear else
  Field.AsDateTime:=StrToDate(Value,FS);
  Result:=Field; //.Value;
end;

function SoNumeros(const S: String): Integer;
var vText: PChar;
  Aux: String;
begin
  vText:=PChar(S);
  Aux:='';
  Result:=0;
  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
    Aux:=Aux+vText^;
    Inc(vText);
  end;
  if Aux='' then Result:=0 else
  Result:=StrToInt(Aux);
end;

function StripTags(const Texto: String): String;
const TagsPermitidas = '<a><b><i><u><p><s><ul><li><ol><em><br><strong><span><table><tbody><tr><th><td><sub><sup><pre><code><h1><h2><h3><h4><h5><h6><hr><img><iframe>';
var RegexRemoveTags, RegexWhitelist: TRegEx;
begin
  // Primeiro, remove todas as tags HTML que não estão na lista de permitidas
  RegexRemoveTags:=TRegEx.Create('<(?!/?(?:' + TagsPermitidas + ')\b)[^>]*>', [roIgnoreCase]);
  Result:=RegexRemoveTags.Replace(Texto, '');

  // Em seguida, remove os atributos das tags permitidas
  RegexWhitelist:=TRegEx.Create('<([a-zA-Z]+)([^>]*?)>', [roIgnoreCase]);
  Result:=RegexWhitelist.Replace(Result, '<$1>');
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
  if (J=1) or ((J>1) and (Result[J-1]=Chr(32))) then //Se é a primeira letra ou se o caracter anterior é um espaço
  Result[J]:=AnsiUpperCase(Result[J])[1];

  for I:=0 to Length(Excecao)-1 do
  Result:=StringReplace(Result,Excecao[I],Excecao[I],[rfReplaceAll, rfIgnoreCase]);
end;

end.
