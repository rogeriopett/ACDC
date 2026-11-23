unit DataMod;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, uDWDataModule, uRESTDWPoolerDB, uDWAbout, uRestDWDriverFD, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, uRESTDWServerEvents, uDWJSONObject, IniFiles, Vcl.Forms, Vcl.ExtCtrls, System.JSON,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.Graphics, System.NetEncoding;

type
  TDM = class(TServerMethodDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    RESTDWDriverFD1: TRESTDWDriverFD;
    RESTDWPoolerDB1: TRESTDWPoolerDB;
    DWServerEvents1: TDWServerEvents;
    TBProdutosFotos: TFDQuery;
    TBParametros: TFDQuery;
    TBParametrosPAR_LOCALFOTOSPRODUTOS: TStringField;
    TBProdutosFotosPRF_ARQUIVO: TStringField;
    procedure DWServerEvents1EventsDataReplyEvent(var Params: TDWParams; var Result: string);
    procedure DWServerEvents1EventsHoraReplyEvent(var Params: TDWParams; var Result: string);
    procedure DWServerEvents1EventsDataHoraReplyEvent(var Params: TDWParams; var Result: string);
    procedure ServerMethodDataModuleCreate(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure DWServerEvents1EventsProdutosFotosReplyEvent(var Params: TDWParams; var Result: string);
    //procedure ServerMethodDataModuleUserBasicAuth(Welcomemsg, AccessTag,
    //  Username, Password: string; var Params: TDWParams; var ErrorCode: Integer;
    //  var ErrorMessage: string; var Accept: Boolean);
  private
    { Private declarations }
    ParamFile: String;
    ServerHost: String;
    ServerPort: String;
    ServerUser: String;
    ServerPass: String;
    ServerLogs: Boolean;
    BaseHost: String;
    BasePort: String;
    BaseData: String;
    BaseUser: String;
    BasePass: String;
    CertPrivateKeyFile: String;
    CertPrivateKeyPass: String;
    CertFile: String;
    CertFileHost: String;
    procedure Variaveis(Acao: String);
    function Base64ToBitmap(const base64: string): TBitmap;
    function BitmapToBase64(Bitmap: TBitmap): string;
    procedure FileToBase64File(const ArquivoEntrada, ArquivoSaida: String);
    function FileToBase64String(const ArquivoEntrada: String): String;
    function Base64FromBitmap(Bitmap: TBitmap): String;
  public
    { Public declarations }
  end;

implementation
uses Funcoes1, Main;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASE DE DADOS','BaseHost',BaseHost);
    F.WriteString('BASE DE DADOS','BasePort',BasePort);
    F.WriteString('BASE DE DADOS','BaseData',BaseData);
    F.WriteString('BASE DE DADOS','BaseUser',BaseUser);
    F.WriteString('BASE DE DADOS','BasePass',BasePass);

    F.WriteString('SERVER','ServerHost',ServerHost);
    F.WriteString('SERVER','ServerPort',ServerPort);
    F.WriteString('SERVER','ServerUser',ServerUser);
    F.WriteString('SERVER','ServerPass',ServerPass);
    F.WriteBool('SERVER','ServerLogs',ServerLogs);

    F.WriteString('SSL','CertPrivateKeyFile',CertPrivateKeyFile);
    F.WriteString('SSL','CertPrivateKeyPass',CertPrivateKeyPass);
    F.WriteString('SSL','CertFile',CertFile);
    F.WriteString('SSL','CertFileHost',CertFileHost);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    BaseHost:=F.ReadString('BASE DE DADOS','BaseHost',BaseHost);
    BasePort:=F.ReadString('BASE DE DADOS','BasePort',BasePort);
    BaseData:=F.ReadString('BASE DE DADOS','BaseData',BaseData);
    BaseUser:=F.ReadString('BASE DE DADOS','BaseUser',BaseUser);
    BasePass:=F.ReadString('BASE DE DADOS','BasePass',BasePass);

    ServerHost:=F.ReadString('SERVER','ServerHost',ServerHost);
    ServerPort:=F.ReadString('SERVER','ServerPort',ServerPort);
    ServerUser:=F.ReadString('SERVER','ServerUser',ServerUser);
    ServerPass:=F.ReadString('SERVER','ServerPass',ServerPass);
    ServerLogs:=F.ReadBool('SERVER','ServerLogs',ServerLogs);

    CertPrivateKeyFile:=F.ReadString('SSL','CertPrivateKeyFile',CertPrivateKeyFile);
    CertPrivateKeyPass:=F.ReadString('SSL','CertPrivateKeyPass',CertPrivateKeyPass);
    CertFile:=F.ReadString('SSL','CertFile',CertFile);
    CertFileHost:=F.ReadString('SSL','CertFileHost',CertFileHost);
  end;
  F.Free;
end;

procedure TDM.DWServerEvents1EventsDataHoraReplyEvent(var Params: TDWParams; var Result: string);
begin
  Result:='{"datahora":"'+FormatDateTime('dd/mm/yyyy hh:nn:ss',Now)+'"}';
end;

procedure TDM.DWServerEvents1EventsDataReplyEvent(var Params: TDWParams; var Result: string);
begin
  Result:='{"data":"'+FormatDateTime('dd/mm/yyyy',Now)+'"}';
end;

procedure TDM.DWServerEvents1EventsHoraReplyEvent(var Params: TDWParams; var Result: string);
begin
  Result:='{"hora":"'+FormatDateTime('hh:nn:ss',Now)+'"}';
end;

procedure TDM.DWServerEvents1EventsProdutosFotosReplyEvent(var Params: TDWParams; var Result: string);
var S, Pasta: String;
  JS: TJSONObject;
  Foto: TImage;
  FotoBase64: String;
begin
  JS:=TJSONObject.Create;

  TBProdutosFotos.Close;
  TBProdutosFotos.ParamByName('PRF_CODIGO').AsInteger:=Params.ItemsString['foto'].AsInteger;
  TBProdutosFotos.Open;
  if TBProdutosFotos.IsEmpty then
  begin
    TBProdutosFotos.Close;
    JS.AddPair('Status','0');
    JS.AddPair('Mensagem','Nenhuma foto cadastrada.');
    JS.AddPair('Foto','');
    Result:=JS.ToString;
    JS.DisposeOf;
    Exit;
  end;

  S:=TBProdutosFotosPRF_ARQUIVO.Value;
  TBProdutosFotos.Close;
  TBParametros.Open;
  Pasta:=IncludeTrailingBackslash(TBParametrosPAR_LOCALFOTOSPRODUTOS.Value)+AlignText(Params.ItemsString['produto'].AsString,'0',8,taRight)+'\';
  TBParametros.Close;

  if not FileExists(Pasta+S) then
  begin
    JS.AddPair('Status','0');
    JS.AddPair('Mensagem','Arquivo da foto não localizado.');
    JS.AddPair('Foto','');
    Result:=JS.ToString;
    JS.DisposeOf;
    Exit;
  end;

  //Foto:=TImage.Create(Self);
  //Foto.LoadFromFile(Pasta+S);
  //Foto.Picture.LoadFromFile('C:\Runtime\Arquivos\sistema_jaragua\produtos_fotos\00015082\00015082004564.jpg'); //Pasta+S);
  //Foto.Picture.LoadFromFile('C:\Documentos\Avatares\Jason_Voorhees.jpg'); //Pasta+S);

  JS.AddPair('Status','1');
  JS.AddPair('Mensagem','OK');
  JS.AddPair('Foto',FileToBase64String(Pasta+S));
  //fotobase64:=FileToBase64String('C:\Documentos\Avatares\Jason_Voorhees.jpg');
  Result:=JS.ToString;
  JS.DisposeOf;
  //Foto.Free;
  //Result:='{ "Sucesso":"1", "Mensagem":"OK", "Foto":"'+FotoBase64+'" }';
end;

procedure TDM.FDConnection1BeforeConnect(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.Params.DriverID:='FB';
  FDConnection1.Params.Values['Server']:=BaseHost;
  FDConnection1.Params.Values['Port']:=BasePort;
  FDConnection1.Params.Values['Database']:=BaseData;
  FDConnection1.Params.Values['User_Name']:=BaseUser;
  FDConnection1.Params.Values['Password']:=BasePass;
end;

procedure TDM.ServerMethodDataModuleCreate(Sender: TObject);
begin
  ParamFile:='Parametros.ini';
  Variaveis('LOAD');
end;

{procedure TDM.ServerMethodDataModuleUserBasicAuth(Welcomemsg, AccessTag,
  Username, Password: string; var Params: TDWParams; var ErrorCode: Integer;
  var ErrorMessage: string; var Accept: Boolean);
begin
  FormMain.MemoRespostas.Lines.Add(username+' - '+password);
  if (Username=FormMain.Edit5.Text) and (Password=FormMain.Edit6.Text) then
  Accept:=True else
  FormMain.MemoRespostas.Lines.Add('login e senha inválidos: '+Username+' / '+Password);
end; }

function TDM.Base64FromBitmap(Bitmap: TBitmap): String;
var
  Input: TBytesStream;
  Output: TStringStream;
  Encoding: TBase64Encoding;
begin
  Input:=TBytesStream.Create;
  try
    Bitmap.SaveToStream(Input);
    Input.Position:=0;
    Output:=TStringStream.Create('', TEncoding.ASCII);
    try
      Encoding:=TBase64Encoding.Create(0);
      Encoding.Encode(Input, Output);
      Result:=Output.DataString;
    finally
      Encoding.Free;
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

function TDM.BitmapToBase64(Bitmap: TBitmap): String;
var
  Input: TBytesStream;
  Output: TStringStream;
  Encoding: TBase64Encoding;
begin
  Input:=TBytesStream.Create;
  try
    Bitmap.SaveToStream(Input);
    Input.Position:=0;
    Output:=TStringStream.Create('', TEncoding.ASCII);
    try
      Encoding:=TBase64Encoding.Create(0);
      Encoding.Encode(Input, Output);
      //Soap.EncdDecd.EncodeStream(Input, Output);
      Result:=Output.DataString;
    finally
      Encoding.Free;
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

function TDM.Base64ToBitmap(const Base64: string): TBitmap;
var
  Input: TStringStream;
  Output: TBytesStream;
  Encoding: TBase64Encoding;
begin
  Input:=TStringStream.Create(Base64, TEncoding.ASCII);
  try
    Output:=TBytesStream.Create;
    try
      Encoding:=TBase64Encoding.Create(0);
      Encoding.Decode(Input, Output);
      //Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result:=TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.Free;
        raise;
      end;
    finally
      Encoding.Free;
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TDM.FileToBase64File(const ArquivoEntrada, ArquivoSaida: String);
var
  inStream: TStream;
  outStream: TStream;
begin
  inStream:=TFileStream.Create(ArquivoEntrada, fmOpenRead); //lê o arquivo.
  try
    outStream:=TFileStream.Create(ArquivoSaida, fmCreate);
    try
      TNetEncoding.Base64.Encode(inStream, outStream); //gera um arquivo com a string base64.
    finally
      outStream.Free;
    end;
  finally
    inStream.Free;
  end;
end;

function TDM.FileToBase64String(const ArquivoEntrada: String): String;
var
  inStream: TStream;
  outStream: TStringStream;
begin
  inStream:=TFileStream.Create(ArquivoEntrada, fmOpenRead); //lê o arquivo.
  try
    outStream:=TStringStream.Create;
    try
      TNetEncoding.Base64.Encode(inStream, outStream);
      Result:=outStream.DataString;
    finally
      outStream.Free;
    end;
  finally
    inStream.Free;
  end;
end;

end.
