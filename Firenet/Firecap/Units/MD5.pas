// ---------------------------------------------------------------------------//
// MD5 Message-Digest for Delphi 4                                            //
//                                                                            //
// Delphi 4 Unit implementing the RSA Data Security, Inc.                     //
// MD5 Message-Digest Algorithm                                               //
//                                                                            //
// Implementation of Ronald L. Rivest's RFC 1321                              //
//                                                                            //
// Copyright © 1997-1999 Medienagentur Fichtner & Meyer                       //
// Written by Matthias Fichtner                                               //
//                                                                            //
// ---------------------------------------------------------------------------//
// See RFC 1321 for RSA Data Security's copyright and license notice!         //
// ---------------------------------------------------------------------------//
//                                                                            //
// 14-Jun-97  mf  Implemented MD5 according to RFC 1321                       //
// 16-Jun-97  mf  Initial release of the compiled unit (no source code)       //
// 28-Feb-99  mf  Added MD5Match function for comparing two digests           //
// 13-Sep-99  mf  Reworked the entire unit                                    //
// 17-Sep-99  mf  Reworked the "Test Driver" project                          //
// 19-Sep-99  mf  Release of sources for MD5 unit and "Test Driver" project   //
//                                                                            //
// ---------------------------------------------------------------------------//
// The latest release of md5.pas will always be available from                //
// the distribution site at: http://www.fichtner.net/delphi/md5/              //
// ---------------------------------------------------------------------------//
// Please send questions, bug reports and suggestions                         //
// regarding this code to: mfichtner@fichtner-meyer.com                       //
// ---------------------------------------------------------------------------//
// This code is provided "as is" without express or                           //
// implied warranty of any kind. Use it at your own risk.                     //
// ---------------------------------------------------------------------------//

unit MD5;

interface

uses Windows;

type
  MD5Count=array[0..1] of DWORD;
  MD5State=array[0..3] of DWORD;
  MD5Block=array[0..15] of DWORD;
  MD5CBits=array[0..7] of byte;
  MD5Digest=array[0..15] of byte;
  MD5Buffer=array[0..63] of byte;
  MD5Context=record
               State: MD5State;
               Count: MD5Count;
               Buffer: MD5Buffer;
             end;

procedure MD5Init(var Context: MD5Context);
procedure MD5Update(var Context: MD5Context; Input: PAnsiChar; Length: longword);
procedure MD5Final(var Context: MD5Context; var Digest: MD5Digest);

function MD5String(M: AnsiString): MD5Digest;
function MD5File(N: AnsiString): MD5Digest;
function MD5Print(D: MD5Digest): AnsiString;

function MD5Match(D1, D2: MD5Digest): boolean;

implementation

var
  PADDING: MD5Buffer=($80, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00,
                      $00, $00, $00, $00, $00, $00, $00, $00);

function F(X, Y, Z: DWORD): DWORD;
begin
  Result:=(X and Y) or ((not X) and Z);
end;

function G(X, Y, Z: DWORD): DWORD;
begin
  Result:=(X and Z) or (Y and (not Z));
end;

function H(X, Y, Z: DWORD): DWORD;
begin
  Result:=X xor Y xor Z;
end;

function I(X, Y, Z: DWORD): DWORD;
begin
  Result:=Y xor (X or (not Z));
end;

procedure rot(var X: DWORD; N: BYTE);
begin
  X:=(X shl N) or (X shr (32-N));
end;

procedure FF(var A: DWORD; B, C, D, X: DWORD; S: BYTE; AC: DWORD);
begin
  inc(A, F(B, C, D) + X + AC);
  rot(A, S);
  inc(A, B);
end;

procedure GG(var A: DWORD; B, C, D, X: DWORD; S: BYTE; AC: DWORD);
begin
  inc(A, G(B, C, D) + X + AC);
  rot(A, S);
  inc(A, B);
end;

procedure HH(var A: DWORD; B, C, D, X: DWORD; S: BYTE; AC: DWORD);
begin
  inc(A, H(B, C, D) + X + AC);
  rot(A, S);
  inc(A, B);
end;

procedure II(var A: DWORD; B, C, D, X: DWORD; S: BYTE; AC: DWORD);
begin
  inc(A, I(B, C, D) + X + AC);
  rot(A, S);
  inc(A, B);
end;

// Encode Count bytes at Source into (Count / 4) DWORDs at Target
procedure Encode(Source, Target: pointer; Count: longword);
var
  S: PByte;
  T: PDWORD;
  I: LongWord;
begin
  S:=Source;
  T:=Target;
  for I:=1 to Count div 4 do
  begin
    T^:=S^;
    Inc(S);
    T^:=T^ or (S^ shl 8);
    Inc(S);
    T^:=T^ or (S^ shl 16);
    Inc(S);
    T^:=T^ or (S^ shl 24);
    Inc(S);
    Inc(T);
  end;
end;

// Decode Count DWORDs at Source into (Count * 4) Bytes at Target
procedure Decode(Source, Target: pointer; Count: longword);
var
  S: PDWORD;
  T: PByte;
  I: longword;
begin
  S:=Source;
  T:=Target;
  for I:=1 to Count do
  begin
    T^:=S^ and $ff;
    Inc(T);
    T^:=(S^ shr 8) and $ff;
    Inc(T);
    T^:=(S^ shr 16) and $ff;
    Inc(T);
    T^:=(S^ shr 24) and $ff;
    Inc(T);
    Inc(S);
  end;
end;

// Transform State according to first 64 bytes at Buffer
procedure Transform(Buffer: pointer; var State: MD5State);
var
  A, B, C, D: DWORD;
  Block: MD5Block;
begin
  Encode(Buffer, @Block, 64);
  A:=State[0];
  B:=State[1];
  C:=State[2];
  D:=State[3];
  FF(A, B, C, D, Block[ 0],  7, $d76aa478);
  FF(D, A, B, C, Block[ 1], 12, $e8c7b756);
  FF(C, D, A, B, Block[ 2], 17, $242070db);
  FF(B, C, D, A, Block[ 3], 22, $c1bdceee);
  FF(A, B, C, D, Block[ 4],  7, $f57c0faf);
  FF(D, A, B, C, Block[ 5], 12, $4787c62a);
  FF(C, D, A, B, Block[ 6], 17, $a8304613);
  FF(B, C, D, A, Block[ 7], 22, $fd469501);
  FF(A, B, C, D, Block[ 8],  7, $698098d8);
  FF(D, A, B, C, Block[ 9], 12, $8b44f7af);
  FF(C, D, A, B, Block[10], 17, $ffff5bb1);
  FF(B, C, D, A, Block[11], 22, $895cd7be);
  FF(A, B, C, D, Block[12],  7, $6b901122);
  FF(D, A, B, C, Block[13], 12, $fd987193);
  FF(C, D, A, B, Block[14], 17, $a679438e);
  FF(B, C, D, A, Block[15], 22, $49b40821);
  GG(A, B, C, D, Block[ 1],  5, $f61e2562);
  GG(D, A, B, C, Block[ 6],  9, $c040b340);
  GG(C, D, A, B, Block[11], 14, $265e5a51);
  GG(B, C, D, A, Block[ 0], 20, $e9b6c7aa);
  GG(A, B, C, D, Block[ 5],  5, $d62f105d);
  GG(D, A, B, C, Block[10],  9,  $2441453);
  GG(C, D, A, B, Block[15], 14, $d8a1e681);
  GG(B, C, D, A, Block[ 4], 20, $e7d3fbc8);
  GG(A, B, C, D, Block[ 9],  5, $21e1cde6);
  GG(D, A, B, C, Block[14],  9, $c33707d6);
  GG(C, D, A, B, Block[ 3], 14, $f4d50d87);
  GG(B, C, D, A, Block[ 8], 20, $455a14ed);
  GG(A, B, C, D, Block[13],  5, $a9e3e905);
  GG(D, A, B, C, Block[ 2],  9, $fcefa3f8);
  GG(C, D, A, B, Block[ 7], 14, $676f02d9);
  GG(B, C, D, A, Block[12], 20, $8d2a4c8a);
  HH(A, B, C, D, Block[ 5],  4, $fffa3942);
  HH(D, A, B, C, Block[ 8], 11, $8771f681);
  HH(C, D, A, B, Block[11], 16, $6d9d6122);
  HH(B, C, D, A, Block[14], 23, $fde5380c);
  HH(A, B, C, D, Block[ 1],  4, $a4beea44);
  HH(D, A, B, C, Block[ 4], 11, $4bdecfa9);
  HH(C, D, A, B, Block[ 7], 16, $f6bb4b60);
  HH(B, C, D, A, Block[10], 23, $bebfbc70);
  HH(A, B, C, D, Block[13],  4, $289b7ec6);
  HH(D, A, B, C, Block[ 0], 11, $eaa127fa);
  HH(C, D, A, B, Block[ 3], 16, $d4ef3085);
  HH(B, C, D, A, Block[ 6], 23,  $4881d05);
  HH(A, B, C, D, Block[ 9],  4, $d9d4d039);
  HH(D, A, B, C, Block[12], 11, $e6db99e5);
  HH(C, D, A, B, Block[15], 16, $1fa27cf8);
  HH(B, C, D, A, Block[ 2], 23, $c4ac5665);
  II(A, B, C, D, Block[ 0],  6, $f4292244);
  II(D, A, B, C, Block[ 7], 10, $432aff97);
  II(C, D, A, B, Block[14], 15, $ab9423a7);
  II(B, C, D, A, Block[ 5], 21, $fc93a039);
  II(A, B, C, D, Block[12],  6, $655b59c3);
  II(D, A, B, C, Block[ 3], 10, $8f0ccc92);
  II(C, D, A, B, Block[10], 15, $ffeff47d);
  II(B, C, D, A, Block[ 1], 21, $85845dd1);
  II(A, B, C, D, Block[ 8],  6, $6fa87e4f);
  II(D, A, B, C, Block[15], 10, $fe2ce6e0);
  II(C, D, A, B, Block[ 6], 15, $a3014314);
  II(B, C, D, A, Block[13], 21, $4e0811a1);
  II(A, B, C, D, Block[ 4],  6, $f7537e82);
  II(D, A, B, C, Block[11], 10, $bd3af235);
  II(C, D, A, B, Block[ 2], 15, $2ad7d2bb);
  II(B, C, D, A, Block[ 9], 21, $eb86d391);
  Inc(State[0],A);
  Inc(State[1],B);
  Inc(State[2],C);
  Inc(State[3],D);
end;

// Initialize given Context
procedure MD5Init(var Context: MD5Context);
begin
  with Context do
  begin
    State[0]:=$67452301;
    State[1]:=$efcdab89;
    State[2]:=$98badcfe;
    State[3]:=$10325476;
    Count[0]:=0;
    Count[1]:=0;
    ZeroMemory(@Buffer,SizeOf(MD5Buffer));
  end;
end;

// Update given Context to include Length bytes of Input
procedure MD5Update(var Context: MD5Context; Input: PAnsiChar; Length: longword);
var Index, PartLen, I: Longword;
begin
  with Context do
  begin
    Index:=(Count[0] shr 3) and $3f;
    Inc(Count[0],Length shl 3);
    if Count[0] < (Length shl 3) then
    Inc(Count[1]);
    Inc(Count[1], Length shr 29);
  end;
  PartLen:=64-Index;
  if Length >= PartLen then
  begin
    CopyMemory(@Context.Buffer[Index], Input, PartLen);
    Transform(@Context.Buffer, Context.State);
    I:=PartLen;
    while I+63 < Length do
    begin
      Transform(@Input[I], Context.State);
      Inc(I,64);
    end;
    Index:=0;
  end else
  I:=0;
  CopyMemory(@Context.Buffer[Index], @Input[I], Length - I);
end;

// Finalize given Context, create Digest and zeroize Context
procedure MD5Final(var Context: MD5Context; var Digest: MD5Digest);
var
  Bits: MD5CBits;
  Index: Longword;
  PadLen: Longword;
begin
  Decode(@Context.Count, @Bits, 2);
  Index:=(Context.Count[0] shr 3) and $3f;
  if Index < 56 then
  PadLen:=56-Index else
  PadLen:=120-Index;
  MD5Update(Context, @PADDING, PadLen);
  MD5Update(Context, @Bits, 8);
  Decode(@Context.State, @Digest, 4);
  ZeroMemory(@Context, SizeOf(MD5Context));
end;

// Create digest of given Message
function MD5String(M: AnsiString): MD5Digest;
var Context: MD5Context;
begin
  MD5Init(Context);
  MD5Update(Context, PAnsiChar(M), length(M));
  MD5Final(Context, Result);
end;

// Create digest of file with given Name
function MD5File(N: AnsiString): MD5Digest;
var
  FileHandle: THandle;
  MapHandle: THandle;
  ViewPointer: pointer;
  Context: MD5Context;
begin
  MD5Init(Context);
  FileHandle:=CreateFile(PWideChar(N), GENERIC_READ, FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL or FILE_FLAG_SEQUENTIAL_SCAN, 0);
  if FileHandle<>INVALID_HANDLE_VALUE then
  try
    MapHandle:=CreateFileMapping(FileHandle, nil, PAGE_READONLY, 0, 0, nil);
    if MapHandle<>0 then
    try
      ViewPointer:=MapViewOfFile(MapHandle, FILE_MAP_READ, 0, 0, 0);
      if ViewPointer<>nil then
      try
        MD5Update(Context, ViewPointer, GetFileSize(FileHandle, nil));
      finally
        UnmapViewOfFile(ViewPointer);
      end;
    finally
      CloseHandle(MapHandle);
    end;
  finally
    CloseHandle(FileHandle);
  end;
  MD5Final(Context, Result);
end;

// Create hex representation of given Digest
function MD5Print(D: MD5Digest): AnsiString;
var I: byte;
const Digits: array[0..15] of Char = ('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f');
begin
  Result := '';
  for I:=0 to 15 do
  Result:=Result+Digits[(D[I] shr 4) and $0f] + Digits[D[I] and $0f];
end;

// Compare two Digests
function MD5Match(D1, D2: MD5Digest): Boolean;
var I: Byte;
begin
  I:=0;
  Result:=True;
  while Result and (I < 16) do
  begin
    Result:=D1[I] = D2[I];
    Inc(I);
  end;
end;

end.
