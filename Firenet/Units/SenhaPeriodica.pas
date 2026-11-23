unit SenhaPeriodica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, PngBitBtn, System.UITypes, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, REST.Types;

type
  TFormSenhaPeriodica = class(TForm)
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Edit1: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    PngBitBtn1: TPngBitBtn;
    RESTResponse1: TRESTResponse;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSenhaPeriodica: TFormSenhaPeriodica;
  Fechar: Boolean = False;
  CodigoInternet: String;
  
implementation
uses ShellAPI, DataMod, Funcoes1, FuncoesFirenet, System.JSON;
{$R *.DFM}

procedure TFormSenhaPeriodica.BitBtn2Click(Sender: TObject);
begin
  DM.TBEmpresa.Edit; //muda para expirado, caso o usuario quiser dar uma de espertinho e voltar a data.
  DM.TBEmpresaEMP_LIBERADO.Value:=SenhaEncode(AnsiString('N'),ChaveSenhaNEW);
  DM.TBEmpresa.Post;
  Application.Terminate;
end;

procedure TFormSenhaPeriodica.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormSenhaPeriodica.BitBtn1Click(Sender: TObject);
var TP, TP2: Integer; //todays password.
    Dia, Mes, Ano: Word;
    DataLiberacao: TDate;
    Dias: Integer;
    NovaDataLiberacao: TDate;
    NovoDiasLiberacao, NovoLimiteUsuarios: Integer;
    NovoLeitura, NovaSenha, Temp: String;
begin
  AbortIf(Edit1.Text='','Digite a senha periódica.');

  DecodeDate(Date,Ano,Mes,Dia);
  TP:=Dia*Mes*Ano*DM.TBEmpresaEMP_CODIGOCLIENTE.Value;
  TP2:=Dia*Mes*Ano*2;
  Temp:='';
  NovaSenha:=Edit1.Text;
  if Pos('|',Edit1.Text) > 0 then
  begin
    NovaSenha:=Copy(Edit1.Text,1,Pos('|',Edit1.Text)-1);
    Temp:=Copy(Edit1.Text,Pos('|',Edit1.Text)+1,Length(Edit1.Text));
    Temp:=SenhaDecode(Temp,ChaveSenhaNEW);
    //NovaDataLiberacao:=StrToDate(Copy(Temp,1,10)); Delete(Temp,1,10);
    NovoDiasLiberacao:=StrToInt(Copy(Temp,1,3)); Delete(Temp,1,3);
    NovoLeitura:=Copy(Temp,1,1); Delete(Temp,1,1);
    NovoLimiteUsuarios:=StrToInt(Copy(Temp,1,3)); Delete(Temp,1,3);
  end;

  if (StrToInt(NovaSenha) = TP) or (StrToInt(NovaSenha) = TP2) then
  begin
    DM.TBEmpresa.Edit;
    DataLiberacao:=StrToDate(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenhaNEW),FS);
    Dias:=StrToInt(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenhaNEW));

    if (DataLiberacao+Dias)=DM.ServerDate then //se entrou no sistema no dia que expirou, coloca a data de hoje.
    DM.TBEmpresaEMP_DATALIBERACAO.Value:=SenhaEncode(AnsiString(DateToStr(Date,FS)),ChaveSenhaNEW) else
    begin
      //se entrou no sistema dias após que expirou, ajusta a data de liberação para um período antes de vencer.
      //ex: se o último acesso foi a mais de 90 dias, a data de liberação deve somar + 90 até que a data de liberação+90 seja maior ou igual a data de hoje.
      while not (DataLiberacao+Dias >= DM.ServerDate) do
      begin
        DataLiberacao:=DataLiberacao+Dias;
      end;
      DM.TBEmpresaEMP_DATALIBERACAO.Value:=SenhaEncode(AnsiString(DateToStr(DataLiberacao,FS)),ChaveSenhaNEW);
    end;

    DM.TBEmpresaEMP_LIBERADO.Value:=SenhaEncode(AnsiString('S'),ChaveSenhaNEW);

    if Pos('|',Edit1.Text) > 0 then
    begin
      //DM.TBEmpresaEMP_DATALIBERACAO.Value:=SenhaEncode(NovaDataLiberacao,ChaveSenhaNEW);
      DM.TBEmpresaEMP_DIASLIBERACAO.Value:=SenhaEncode(IntToStr(NovoDiasLiberacao),ChaveSenhaNEW);
      DM.TBEmpresaEMP_LEITURA.Value:=SenhaEncode(NovoLeitura,ChaveSenhaNEW);
      DM.TBEmpresaEMP_LIMITEUSUARIOS.Value:=SenhaEncode(IntToStr(NovoLimiteUsuarios),ChaveSenhaNEW);
    end;

    DM.TBEmpresa.Post; //salva.
    MessageDlg('Senha OK! Acesso Liberado.',mtInformation,[mbOk],0);
    Fechar:=True; //pode fechar o form.
    Close; //Fecha o form.
  end else
  begin //Se não for igual,
    MessageDlg('Senha Incorreta !!!',mtError,[mbOk],0);
    Edit1.SetFocus;
    Edit1.SelectAll;
  end;
end;

procedure TFormSenhaPeriodica.DBText2Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBEmpresaEMP_NOSSOEMAIL.Value+'?Subject=Senha Periódica'),nil,nil,sw_ShowNormal);
end;

procedure TFormSenhaPeriodica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=Fechar; //soh fecha o form se o usuario clicar no botao ok e a senha estiver correta.
end;

procedure TFormSenhaPeriodica.BitBtn3Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBEmpresaEMP_NOSSOSITESENHA.Value+'?op=novasenha&codigointernet='+CodigoInternet),nil,nil,sw_ShowNormal);
end;

procedure TFormSenhaPeriodica.FormCreate(Sender: TObject);
var S, Versao, VersaoBase: String;
begin
  S:=FileVersion(Application.ExeName);
  Versao:=AlignText(Copy(S,1,Pos('.',S)-1),'0',3,taRight);
  Versao:=Versao+AlignText(Copy(S,Pos('.',S)+1,Length(S)),'0',4,taRight);
  VersaoBase:=AlignText(DM.TBVersaoVER_VERSAOBASE.Value,'0',4,taRight);
  Label6.Caption:=Label6.Caption+' -> '+DateToStr(Date,FS);
  //ex concatenacao dos campos: 1002 105 09324851000164 15092015 090 0121535 78996060
  CodigoInternet:=AlignText(IntToStr(DM.TBEmpresaEMP_CODIGOCLIENTE.Value),'0',4,taRight)+
                  AlignText(IntToStr(DM.TBEmpresaEMP_CODIGOSISTEMA.Value),'0',3,taRight)+
                  SoNumeros(DM.TBEmpresaEMP_CNPJ.Value)+
                  SoNumeros(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenhaNEW))+
                  AlignText(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenhaNEW),'0',3,taRight)+
                  Versao+VersaoBase+TodaysPassword2;
  Edit2.Text:=CodigoInternet;
  Edit3.Text:=IntToStr(DM.TBEmpresaEMP_CODIGOCLIENTE.Value);
end;

procedure TFormSenhaPeriodica.Label9Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBEmpresaEMP_NOSSOSITESENHA.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormSenhaPeriodica.PngBitBtn1Click(Sender: TObject);
var Retorno: TJSONObject;
begin
  //RESTRequest1.Resource:='senhaperiodica.php?op=novasenha&codigointernet={codigo}.
  //RESTRequest1.Params.AddUrlSegment('codigo',Edit2.Text);
  //https://www.youtube.com/watch?v=MLoeLpII9IE
  RESTClient1.BaseURL:=DM.TBEmpresaEMP_NOSSOSITE.Value;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    RESTClient1.ProxyPassword:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
    RESTClient1.ProxyPort:=DM.TBParametrosPAR_PROXYPORTA.Value;
    RESTClient1.ProxyServer:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    RESTClient1.ProxyUsername:=DM.TBParametrosPAR_PROXYUSER.Value;
  end;
  RESTRequest1.Params[0].Value:=CodigoInternet; //Edit2.Text; //parametro "chave".
  Screen.Cursor:=crHourGlass;
  RESTRequest1.Execute;
  Screen.Cursor:=crDefault;

  Retorno:=RESTResponse1.JSONValue as TJSONObject;
  if Retorno.GetValue('erro').Value='S' then
  begin
    MessageDlg(Retorno.GetValue('msg').Value,mtError,[mbOk],0);
  end else
  if Retorno.GetValue('erro').Value='N' then
  begin
    if Pos('.',Retorno.GetValue('senha').Value) > 1 then
    Edit1.Text:=Copy(Retorno.GetValue('senha').Value,1,Pos('.',Retorno.GetValue('senha').Value)) else
    Edit1.Text:=Retorno.GetValue('senha').Value;
    BitBtn1.Click;
  end;

end;

end.
