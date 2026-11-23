unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, PngSpeedButton,
  uDWAbout, uRESTDWBase, Vcl.XPMan, Vcl.AppEvnts, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Imaging.jpeg, Vcl.ExtDlgs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Arquivo1: TMenuItem;
    Finalizar1: TMenuItem;
    Sobre1: TMenuItem;
    SobreServidorAngus1: TMenuItem;
    AtivarDesativarServidor1: TMenuItem;
    N1: TMenuItem;
    LimparLogs1: TMenuItem;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label2: TLabel;
    Memo2: TMemo;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Edit10: TEdit;
    Label15: TLabel;
    Edit11: TEdit;
    Label16: TLabel;
    Edit12: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    Edit6: TEdit;
    Label11: TLabel;
    Edit7: TEdit;
    RESTServicePooler1: TRESTServicePooler;
    LimparLogs2: TMenuItem;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    PopupMenu2: TPopupMenu;
    AbrirAngusServer1: TMenuItem;
    PngSpeedButton4: TPngSpeedButton;
    Shape1: TShape;
    Label17: TLabel;
    Edit13: TEdit;
    PngImageList1: TPngImageList;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    TimerDDNS: TTimer;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Finalizar1Click(Sender: TObject);
    procedure SobreServidorAngus1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtivarDesativarServidor1Click(Sender: TObject);
    procedure LimparLogs1Click(Sender: TObject);
    procedure RESTServicePooler1LastRequest(Value: string);
    procedure RESTServicePooler1LastResponse(Value: string);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure AbrirAngusServer1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure TrayIcon1BalloonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerDDNSTimer(Sender: TObject);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
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
    DDNSService: String;
    DDNSHost: String;
    DDNSTempo: String;
    DDNSHabilitar: String;
    procedure Variaveis(Acao: String);
    function FileVersion(const FileName: String): String;
    //LastRequest: String;
    //LastResponse: String;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation
uses DataMod, ServerUtils, IniFiles, System.JSON;
{$R *.dfm}

function TFormMain.FileVersion(const FileName: String): String;
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

procedure TFormMain.Variaveis(Acao: String);
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

    F.WriteString('DDNS','DDNSService',DDNSService);
    F.WriteString('DDNS','DDNSHost',DDNSHost);
    F.WriteString('DDNS','DDNSTempo',DDNSTempo);
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

    DDNSService:=F.ReadString('DDNS','DDNSService',DDNSService);
    DDNSHost:=F.ReadString('DDNS','DDNSHost',DDNSHost);
    DDNSTempo:=F.ReadString('DDNS','DDNSTempo',DDNSTempo);
  end;
  F.Free;
end;

procedure TFormMain.AbrirAngusServer1Click(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

procedure TFormMain.ApplicationEvents1Minimize(Sender: TObject);
begin
  TrayIcon1.ShowBalloonHint;
  FormMain.Hide;
end;

procedure TFormMain.AtivarDesativarServidor1Click(Sender: TObject);
begin
  if Label8.Caption='ATIVO' then //está ativo, vai desativar.
  begin
    Variaveis('LOAD');
    Edit1.Enabled:=True;
    Edit2.Enabled:=True;
    Edit3.Enabled:=True;
    Edit4.Enabled:=True;
    Edit5.Enabled:=True;
    Edit6.Enabled:=True;
    Edit7.Enabled:=True;
    Edit8.Enabled:=True;
    Edit9.Enabled:=True;
    Edit10.Enabled:=True;
    Edit11.Enabled:=True;
    Edit12.Enabled:=True;
    Edit13.Enabled:=True;
    Edit14.Enabled:=True;
    Edit15.Enabled:=True;
    Edit16.Enabled:=True;
    CheckBox2.Enabled:=True;

    Edit1.Text:=ServerHost;
    Edit2.Text:=ServerPort;
    Edit3.Text:=ServerUser;
    Edit4.Text:=ServerPass;

    Edit5.Text:=CertPrivateKeyFile;
    Edit6.Text:=CertFile;
    Edit7.Text:=CertFileHost;
    Edit13.Text:=CertPrivateKeyPass;

    Edit14.Text:=DDNSService;
    Edit15.Text:=DDNSHost;
    Edit16.Text:=DDNSTempo;
    CheckBox2.Checked:=DDNSHabilitar='S';

    Edit8.Text:=BaseHost;
    Edit9.Text:=BasePort;
    Edit10.Text:=BaseData;
    Edit11.Text:=BaseUser;
    Edit12.Text:=BasePass;

    RESTServicePooler1.Active:=False;
    RESTServicePooler1.AuthenticationOptions.AuthorizationOption:=TRDWAuthOption.rdwAOBasic;
    TRDWAuthOptionBasic(RESTServicePooler1.AuthenticationOptions.OptionParams).Username:='admin';
    TRDWAuthOptionBasic(RESTServicePooler1.AuthenticationOptions.OptionParams).Password:='nimda';
    RESTServicePooler1.ServicePort:=0;
    RESTServicePooler1.SSLPrivateKeyFile:='';
    RESTServicePooler1.SSLPrivateKeyPassword:='';
    RESTServicePooler1.SSLCertFile:='';
    RESTServicePooler1.SSLRootCertFile:='';
    TimerDDNS.Enabled:=False;
    Label8.Caption:='INATIVO';
    Shape1.Brush.Color:=clRed;
    PngSpeedButton1.Caption:='Ativar';
  end else
  begin //está inativo, vai ativar.
    try
      Edit1.Enabled:=False;
      Edit2.Enabled:=False;
      Edit3.Enabled:=False;
      Edit4.Enabled:=False;
      Edit5.Enabled:=False;
      Edit6.Enabled:=False;
      Edit7.Enabled:=False;
      Edit8.Enabled:=False;
      Edit9.Enabled:=False;
      Edit10.Enabled:=False;
      Edit11.Enabled:=False;
      Edit12.Enabled:=False;
      Edit13.Enabled:=False;
      Edit14.Enabled:=False;
      Edit15.Enabled:=False;
      Edit16.Enabled:=False;
      CheckBox2.Enabled:=False;

      ServerHost:=Edit1.Text;
      ServerPort:=Edit2.Text;
      ServerUser:=Edit3.Text;
      ServerPass:=Edit4.Text;

      CertPrivateKeyFile:=Edit5.Text;
      CertFile:=Edit6.Text;
      CertFileHost:=Edit7.Text;
      CertPrivateKeyPass:=Edit13.Text;

      DDNSService:=Edit14.Text;
      DDNSHost:=Edit15.Text;
      DDNSTempo:=Edit16.Text;
      if CheckBox2.Checked then
      DDNSHabilitar:='S' else
      DDNSHabilitar:='N';

      BaseHost:=Edit8.Text;
      BasePort:=Edit9.Text;
      BaseData:=Edit10.Text;
      BaseUser:=Edit11.Text;
      BasePass:=Edit12.Text;
      Variaveis('SAVE');

      RESTServicePooler1.Active:=False;
      RESTServicePooler1.AuthenticationOptions.AuthorizationOption:=TRDWAuthOption.rdwAOBasic;
      TRDWAuthOptionBasic(RESTServicePooler1.AuthenticationOptions.OptionParams).Username:=ServerUser;
      TRDWAuthOptionBasic(RESTServicePooler1.AuthenticationOptions.OptionParams).Password:=ServerPass;
      RESTServicePooler1.ServicePort:=StrToInt(ServerPort);
      RESTServicePooler1.SSLPrivateKeyFile:=CertPrivateKeyFile;
      RESTServicePooler1.SSLPrivateKeyPassword:=CertPrivateKeyPass;
      RESTServicePooler1.SSLCertFile:=CertFile;
      RESTServicePooler1.SSLRootCertFile:=CertFileHost;
      RESTServicePooler1.Active:=True;

      if DDNSTempo<>'' then
      TimerDDNS.Interval:=(1000 * 60) * DDNSTempo.ToInteger; //1000*60=1 min * o tempo definido.
      TimerDDNS.Enabled:=CheckBox2.Checked;

      Label8.Caption:='ATIVO';
      Shape1.Brush.Color:=clGreen;
      PngSpeedButton1.Caption:='Desativar';

    except on ex:exception do
      begin
        Label8.Caption:='INATIVO';
        Shape1.Brush.Color:=clRed;
        PngSpeedButton1.Caption:='Ativar';
        ShowMessage('Erro: '+ex.Message);
        Edit1.Enabled:=True;
        Edit2.Enabled:=True;
        Edit3.Enabled:=True;
        Edit4.Enabled:=True;
        Edit5.Enabled:=True;
        Edit6.Enabled:=True;
        Edit7.Enabled:=True;
        Edit8.Enabled:=True;
        Edit9.Enabled:=True;
        Edit10.Enabled:=True;
        Edit11.Enabled:=True;
        Edit12.Enabled:=True;
        Edit13.Enabled:=True;
        Edit14.Enabled:=True;
        Edit15.Enabled:=True;
        Edit16.Enabled:=True;
      end;
    end;
  end;
end;

procedure TFormMain.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormMain.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormMain.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormMain.Finalizar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  RESTServicePooler1.ServerMethodClass:=TDM;
  FormMain.Caption:='Angus Server - Versão: '+FileVersion(Application.ExeName);
  TrayIcon1.BalloonTitle:=FormMain.Caption;
  PageControl1.ActivePageIndex:=0;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;

  //preenche campos com os valores que estao no Parametros.ini.
  ParamFile:='Parametros.ini';
  Variaveis('LOAD');
  Edit1.Text:=ServerHost;
  Edit2.Text:=ServerPort;
  Edit3.Text:=ServerUser;
  Edit4.Text:=ServerPass;

  Edit5.Text:=CertPrivateKeyFile;
  Edit6.Text:=CertFile;
  Edit7.Text:=CertFileHost;
  Edit13.Text:=CertPrivateKeyPass;

  Edit14.Text:=DDNSService;
  Edit15.Text:=DDNSHost;
  Edit16.Text:=DDNSTempo;

  Edit8.Text:=BaseHost;
  Edit9.Text:=BasePort;
  Edit10.Text:=BaseData;
  Edit11.Text:=BaseUser;
  Edit12.Text:=BasePass;

  AtivarDesativarServidor1Click(Self);
end;

procedure TFormMain.LimparLogs1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
end;

procedure TFormMain.PngSpeedButton4Click(Sender: TObject);
begin
  FormMain.WindowState:=wsMinimized;
  FormMain.Hide;
  TrayIcon1.ShowBalloonHint;
end;

procedure TFormMain.RESTServicePooler1LastRequest(Value: string);
begin
  //LastRequest:=Value;
  if CheckBox1.Checked then
  begin
    Memo1.Lines.Add(Value);
    Memo1.Perform(EM_SCROLLCARET,0,0);
  end;
end;

procedure TFormMain.RESTServicePooler1LastResponse(Value: string);
begin
  if CheckBox1.Checked then
  begin
    Memo2.Lines.Add(Value);
    Memo2.Perform(EM_SCROLLCARET,0,0);
  end;
end;

procedure TFormMain.SobreServidorAngus1Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
var TempLastRequest, TempLastResponse: String;
begin
{  Timer1.Enabled:=False;
  try
    TempLastRequest:=LastRequest;
    TempLastResponse:=LastResponse;
    if (TempLastRequest<>'') then
    begin
      //requisicoes.
      if MemoRequisicoes.Lines.Count > 0 then
        if MemoRequisicoes.Lines[MemoRequisicoes.Lines.Count - 1] = TempLastRequest then
          Exit;

      if MemoRequisicoes.Lines.Count = 0 then
      MemoRequisicoes.Lines.Add(Copy(TempLastRequest, 1, 100)) else
      MemoRequisicoes.Lines[MemoRequisicoes.Lines.Count - 1] := Copy(TempLastRequest, 1, 100);

      if Length(TempLastRequest) > 1000 then
      MemoRequisicoes.Lines[MemoRequisicoes.Lines.Count - 1] := MemoRequisicoes.Lines[MemoRequisicoes.Lines.Count - 1] + '...';

      //respostas.
      if MemoRespostas.Lines.Count > 0 then
        if MemoRespostas.Lines[MemoRespostas.Lines.Count - 1] = TempLastResponse then
          Exit;

      if MemoRespostas.Lines.Count = 0 then
      MemoRespostas.Lines.Add(Copy(TempLastResponse, 1, 100)) else
      MemoRespostas.Lines[MemoRespostas.Lines.Count - 1] := Copy(TempLastResponse, 1, 100);

      if Length(TempLastResponse) > 1000 then
      MemoRespostas.Lines[MemoRespostas.Lines.Count - 1] := MemoRespostas.Lines[MemoRespostas.Lines.Count - 1] + '...';
    end;
  finally
    Timer1.Enabled:=True;
  end;}
end;

procedure TFormMain.TimerDDNSTimer(Sender: TObject);
var Retorno: TJSONObject;
begin
  RESTClient1.BaseURL:=DDNSService;
  RESTRequest1.Params[0].Value:=DDNSHost; //Edit2.Text; //parametro "chave".
  Screen.Cursor:=crHourGlass;
  RESTRequest1.Execute;
  Screen.Cursor:=crDefault;

  Retorno:=RESTResponse1.JSONValue as TJSONObject;
  if Retorno.GetValue('status').Value='ERRO' then
  begin
    Memo2.Lines.Add('Erro ao atualizar IP: '+Retorno.GetValue('mensagem').Value);
  end else
  if Retorno.GetValue('status').Value='OK' then
  begin
    Memo2.Lines.Add('Atualização de IP: '+Retorno.GetValue('mensagem').Value);
  end;
end;

procedure TFormMain.TrayIcon1BalloonClick(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

procedure TFormMain.TrayIcon1DblClick(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

end.
