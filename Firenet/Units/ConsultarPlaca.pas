unit ConsultarPlaca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.Mask, Vcl.Imaging.jpeg, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TFormConsultarPlaca = class(TForm)
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Image1: TImage;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    PngBitBtn1: TPngBitBtn;
    Label1: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FToken: String;
    procedure Autenticar;
    procedure ConsultarPlaca;
  public
    AtualizarOS: Boolean;
    Cliente: Integer;
    { Public declarations }
  end;

var
  FormConsultarPlaca: TFormConsultarPlaca;

implementation
uses DataMod, Funcoes1, ClientesLoc, System.RegularExpressions, EquipamentosLoc;
{$R *.dfm}

function NumeroPlacaValida(Placa: String): Boolean;
const
  PadraoAntigo = '^[A-Z]{3}\d{4}$'; // Padrão antigo (LLL-NNNN)
  PadraoMercosul = '^[A-Z]{3}\d[A-Z]\d{2}$'; // Padrão Mercosul (LLL#A##)
begin
  Result:=TRegEx.IsMatch(Placa.ToUpper, PadraoAntigo) or TRegEx.IsMatch(Placa.ToUpper, PadraoMercosul);
end;

procedure TFormConsultarPlaca.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultarPlaca.FormCreate(Sender: TObject);
var
  ResourceStream: TResourceStream;
  FontData: Pointer;
  FontSize: Integer;
begin
  MaskEdit1.Text:='';
  AtualizarOS:=False;
  Cliente:=0;

  // Carregar a fonte do recurso
  //ResourceStream := TResourceStream.Create(HInstance, '1', RT_FONT);
  ResourceStream:=TResourceStream.Create(HInstance, 'FE_FONT', RT_RCDATA);
  try
    // Obter tamanho da fonte
    FontSize:=ResourceStream.Size;
    // Alocar memória para os dados da fonte
    GetMem(FontData, FontSize);
    try
      // Ler dados da fonte
      ResourceStream.Read(FontData^, FontSize);
      // Adicionar a fonte ao sistema
      AddFontMemResourceEx(FontData, FontSize, nil, @FontSize);
      // Criar uma fonte baseada nos dados carregados
      // Exemplo de uso da fonte em um TLabel
      MaskEdit1.Font.Name:='FE-Font'; //fonte nome igual ao que aparece no windows.
      MaskEdit1.Font.Size:=46;
    finally
      // Liberar memória alocada
      FreeMem(FontData);
    end;
  finally
    // Liberar o stream do recurso
    ResourceStream.Free;
  end;
end;

procedure TFormConsultarPlaca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultarPlaca.FormShow(Sender: TObject);
begin
  if AtualizarOS then
  begin
    //aa
  end;
end;

procedure TFormConsultarPlaca.PngBitBtn1Click(Sender: TObject);
var S, Placa, PlacaAntiga: String;
begin
  AbortIf(not NumeroPlacaValida(MaskEdit1.Text),'Placa inválida.');
  AbortIf(Edit1.Text='','Efetue a consulta da placa antes de cadastrar/atualizar.');

  Placa:=MaskEdit1.Text;
  PlacaAntiga:=MaskEdit1.Text;
  S:=Copy(MaskEdit1.Text,5,1); //quinto caractér da placa.

  //se sobrar numero na string, a placa é antiga, então insere hífen.
  if SoNumeros(S)<>'' then
  Insert('-',PlacaAntiga,4);

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from EQUIPAMENTOS where EQP_SERIE=:serie or EQP_SERIE=:serie2');
  DM.QYAux.ParamByName('serie').AsString:=Placa;
  DM.QYAux.ParamByName('serie2').AsString:=PlacaAntiga;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').AsInteger > 1 then
  begin
    MessageDlg('Existem mais de uma placa '+Placa+' cadastrada no sistema! Selecione o registro ao qual deseja atualizar.',mtInformation,[mbOk],0);
    Application.CreateForm(TFormEquipamentosLoc, FormEquipamentosLoc);
    FormEquipamentosLoc.QYEquipamentos.Close;
    FormEquipamentosLoc.QYEquipamentos.SQL.Clear;
    FormEquipamentosLoc.QYEquipamentos.SQL.Add(
      'select '+FormEquipamentosLoc.Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_SERIE='+QuotedStr(Placa)+' or EQP_SERIE='+QuotedStr(PlacaAntiga)+' '+
      'order by EQP_SERIE, EQP_CODIGO desc');
    FormEquipamentosLoc.QYEquipamentos.Open;
    FormEquipamentosLoc.ShowModal;
    if EquipamentosLoc.Procurar then
    begin
      if MessageDlg('Atualizar o cadastro do equipamento '+FormEquipamentosLoc.QYEquipamentosEQP_CODIGO.Value.ToString+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        DM.TBEquipamentos.Close;
        DM.TBEquipamentos.ParamByName('codigo').AsInteger:=FormEquipamentosLoc.QYEquipamentosEQP_CODIGO.Value;
        DM.TBEquipamentos.Open;
        DM.TBEquipamentos.Edit;
        DM.TBEquipamentosEQP_ANOFAB.Value:=StrToInt(Edit3.Text);
        DM.TBEquipamentosEQP_ANOMOD.Value:=StrToInt(Edit4.Text);
        DM.TBEquipamentosEQP_CHASSI.Value:=Edit5.Text;
        DM.TBEquipamentosEQP_COMBUSTIVEL.Value:=Edit6.Text;
        DM.TBEquipamentosEQP_COR.Value:=Edit7.Text;
        DM.TBEquipamentosEQP_DESCRICAO.Value:=Edit1.Text;
        DM.TBEquipamentosEQP_MARCA.Value:=Edit2.Text;
        DM.TBEquipamentosEQP_MODELO.Value:=Edit1.Text;
        DM.TBEquipamentos.Post;
        MessageDlg('Cadastro atualizado com sucesso.',mtInformation,[mbOk],0);

        if (AtualizarOS) and (DM.TBEquipamentosEQP_CODIGO.Value=DM.TBServicosSER_EQUIPAMENTO.Value) then
        begin
          DM.TBServicos.Edit;
          DM.TBServicosEQP_ANOFAB.Value:=DM.TBEquipamentosEQP_ANOFAB.Value;
          DM.TBServicosEQP_ANOMOD.Value:=DM.TBEquipamentosEQP_ANOMOD.Value;
          DM.TBServicosEQP_CHASSI.Value:=DM.TBEquipamentosEQP_CHASSI.Value;
          DM.TBServicosEQP_COMBUSTIVEL.Value:=DM.TBEquipamentosEQP_COMBUSTIVEL.Value;
          DM.TBServicosEQP_COR.Value:=DM.TBEquipamentosEQP_COR.Value;
          DM.TBServicosEQP_DESCRICAO.Value:=DM.TBEquipamentosEQP_DESCRICAO.Value;
          DM.TBServicosEQP_MARCA.Value:=DM.TBEquipamentosEQP_MARCA.Value;
          DM.TBServicosEQP_MODELO.Value:=DM.TBEquipamentosEQP_MODELO.Value;
          DM.TBServicosEQP_SERIE.Value:=DM.TBEquipamentosEQP_SERIE.Value;
        end;
      end;
    end;
    FormEquipamentosLoc.Free;
    FormEquipamentosLoc:=nil;
  end;

  //só existe um cadastro da placa informada.
  if DM.QYAux.FieldByName('QTDE').AsInteger = 1 then
  begin
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select EQP_CODIGO from EQUIPAMENTOS where EQP_SERIE=:serie or EQP_SERIE=:serie2');
    DM.QYAux2.ParamByName('serie').AsString:=Placa;
    DM.QYAux2.ParamByName('serie2').AsString:=PlacaAntiga;
    DM.QYAux2.Open;
    DM.TBEquipamentos.Close;
    DM.TBEquipamentos.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('EQP_CODIGO').AsInteger;
    DM.TBEquipamentos.Open;

    if MessageDlg('Atualizar o cadastro do equipamento '+DM.QYAux2.FieldByName('EQP_CODIGO').AsString+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBEquipamentos.Edit;
      DM.TBEquipamentosEQP_ANOFAB.Value:=StrToInt(Edit3.Text);
      DM.TBEquipamentosEQP_ANOMOD.Value:=StrToInt(Edit4.Text);
      DM.TBEquipamentosEQP_CHASSI.Value:=Edit5.Text;
      DM.TBEquipamentosEQP_COMBUSTIVEL.Value:=Edit6.Text;
      DM.TBEquipamentosEQP_COR.Value:=Edit7.Text;
      DM.TBEquipamentosEQP_DESCRICAO.Value:=Edit1.Text;
      DM.TBEquipamentosEQP_MARCA.Value:=Edit2.Text;
      DM.TBEquipamentosEQP_MODELO.Value:=Edit1.Text;
      DM.TBEquipamentos.Post;
      if (AtualizarOS) and (DM.TBEquipamentosEQP_CODIGO.Value=DM.TBServicosSER_EQUIPAMENTO.Value) then
      begin
        DM.TBServicos.Edit;
        DM.TBServicosEQP_ANOFAB.Value:=DM.TBEquipamentosEQP_ANOFAB.Value;
        DM.TBServicosEQP_ANOMOD.Value:=DM.TBEquipamentosEQP_ANOMOD.Value;
        DM.TBServicosEQP_CHASSI.Value:=DM.TBEquipamentosEQP_CHASSI.Value;
        DM.TBServicosEQP_COMBUSTIVEL.Value:=DM.TBEquipamentosEQP_COMBUSTIVEL.Value;
        DM.TBServicosEQP_COR.Value:=DM.TBEquipamentosEQP_COR.Value;
        DM.TBServicosEQP_DESCRICAO.Value:=DM.TBEquipamentosEQP_DESCRICAO.Value;
        DM.TBServicosEQP_MARCA.Value:=DM.TBEquipamentosEQP_MARCA.Value;
        DM.TBServicosEQP_MODELO.Value:=DM.TBEquipamentosEQP_MODELO.Value;
        DM.TBServicosEQP_SERIE.Value:=DM.TBEquipamentosEQP_SERIE.Value;
      end;
      MessageDlg('Cadastro atualizado com sucesso.',mtInformation,[mbOk],0);
      DM.QYAux2.Close;
      Close;
    end;
  end;

  //placa não existe no sistema.
  if DM.QYAux.FieldByName('QTDE').AsInteger = 0 then
  begin

    //cliente precisa ser informado.
    if Cliente=0 then
    begin
      Application.CreateForm(TFormClientesLoc, FormClientesLoc);
      FormClientesLoc.ShowModal;
      if ClientesLoc.Procurar then
      begin
        DM.TBClientes.Close;
        DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
        DM.TBClientes.Open;
        Cliente:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
      end;
      FormClientesLoc.Free;
      FormClientesLoc:=nil;
    end else
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=Cliente;
      DM.TBClientes.Open;
    end;

    if MessageDlg('Cadastrar a placa no cliente '+DM.TBClientesCLI_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBEquipamentos.Insert;
      DM.TBEquipamentosEQP_ANOFAB.Value:=StrToInt(Edit3.Text);
      DM.TBEquipamentosEQP_ANOMOD.Value:=StrToInt(Edit4.Text);
      DM.TBEquipamentosEQP_CHASSI.Value:=Edit5.Text;
      DM.TBEquipamentosEQP_CLIENTE.Value:=Cliente;
      DM.TBEquipamentosEQP_COMBUSTIVEL.Value:=Edit6.Text;
      DM.TBEquipamentosEQP_COR.Value:=Edit7.Text;
      DM.TBEquipamentosEQP_DESCRICAO.Value:=Edit1.Text;
      DM.TBEquipamentosEQP_MARCA.Value:=Edit2.Text;
      DM.TBEquipamentosEQP_MODELO.Value:=Edit1.Text;
      DM.TBEquipamentosEQP_SERIE.Value:=Placa;
      DM.TBEquipamentos.Post;
      //if (AtualizarOS) and (DM.TBEquipamentosEQP_CODIGO.Value=DM.TBServicosSER_EQUIPAMENTO.Value) then
      if (AtualizarOS) then
      begin
        DM.TBServicos.Edit;
        DM.TBServicosSER_EQUIPAMENTO.Value:=DM.TBEquipamentosEQP_CODIGO.Value;
        DM.TBServicosEQP_ANOFAB.Value:=DM.TBEquipamentosEQP_ANOFAB.Value;
        DM.TBServicosEQP_ANOMOD.Value:=DM.TBEquipamentosEQP_ANOMOD.Value;
        DM.TBServicosEQP_CHASSI.Value:=DM.TBEquipamentosEQP_CHASSI.Value;
        DM.TBServicosEQP_COMBUSTIVEL.Value:=DM.TBEquipamentosEQP_COMBUSTIVEL.Value;
        DM.TBServicosEQP_COR.Value:=DM.TBEquipamentosEQP_COR.Value;
        DM.TBServicosEQP_DESCRICAO.Value:=DM.TBEquipamentosEQP_DESCRICAO.Value;
        DM.TBServicosEQP_MARCA.Value:=DM.TBEquipamentosEQP_MARCA.Value;
        DM.TBServicosEQP_MODELO.Value:=DM.TBEquipamentosEQP_MODELO.Value;
        DM.TBServicosEQP_SERIE.Value:=DM.TBEquipamentosEQP_SERIE.Value;
      end;
      MessageDlg('Cadastro feito com sucesso.',mtInformation,[mbOk],0);
      Close;
    end;
  end;

  DM.QYAux.Close;
end;

procedure TFormConsultarPlaca.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(not NumeroPlacaValida(MaskEdit1.Text),'Placa inválida.');

  Screen.Cursor:=crHourGlass;
  Autenticar;
  ConsultarPlaca;
  Screen.Cursor:=crDefault;
end;

procedure TFormConsultarPlaca.Autenticar;
var
  JsonObj: TJSONObject;
  Email, Password: string;
begin
  Screen.Cursor:=crHourGlass;
  Email:=DM.TBParametrosPAR_APIBRASILLOGIN.Value; //'rogerio@pett.com.br';
  Password:=DM.TBParametrosPAR_APIBRASILSENHA.Value; //'M41c01macdc!';
  RESTClient1.BaseURL:=DM.TBParametrosPAR_APIBRASILPLACA.Value; //'https://cluster.apigratis.com/api/v2';
  RESTRequest1.ClearBody;
  RESTRequest1.Resource:='login';
  RESTRequest1.Method:=TRESTRequestMethod.rmPOST;

  JsonObj:=TJSONObject.Create;
  try
    JsonObj.AddPair('email',Email);
    JsonObj.AddPair('password',Password);
    RESTRequest1.AddBody(JsonObj.ToJSON,TRESTContentType.ctAPPLICATION_JSON);

    RESTRequest1.Execute;
    if RESTResponse1.StatusCode=200 then
    begin
      FToken:=RESTResponse1.JSONValue.GetValue<string>('authorization.token');
    end else
    begin
      MessageDlg(RESTResponse1.JSONValue.GetValue<string>('mensagemRetorno'),mtError,[mbOk],0);
      FToken:='';
    end;
  finally
    JsonObj.Free;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TFormConsultarPlaca.ConsultarPlaca;
var
  JsonObj, ResponseContent, DataObj: TJSONObject;
  Placa, Erro: String;
begin
  Screen.Cursor:=crHourGlass;
  Placa:=MaskEdit1.Text;
  RESTClient1.BaseURL := DM.TBParametrosPAR_APIBRASILPLACA.Value; //'https://cluster.apigratis.com/api/v2';
  RESTRequest1.Resource:='vehicles/base/000/dados'; // <- para consulta por saldo. //para consulta por plano -> 'vehicles/dados';
  RESTRequest1.ClearBody;
  RESTRequest1.Method:=TRESTRequestMethod.rmPOST;
  RESTRequest1.Params.Clear;
  RESTRequest1.Params.AddItem('Content-Type','application/json', TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);
  //RESTRequest1.Params.AddItem('DeviceToken',DM.TBParametrosPAR_APIBRASILDEVICETOKEN.Value, TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);
  RESTRequest1.Params.AddItem('Authorization','Bearer ' + FToken, TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);

  JsonObj:=TJSONObject.Create;
  try
    JsonObj.AddPair('placa',Placa);
    JsonObj.AddPair('homolog',False); //para consulta por saldo.
    RESTRequest1.AddBody(JsonObj.ToJSON,TRESTContentType.ctAPPLICATION_JSON);
    RESTRequest1.Execute;
    if RESTResponse1.StatusCode = 200 then
    begin
      //var ResponseObj:=RESTResponse1.JSONValue.GetValue<TJSONObject>('response'); //consulta por plano.
      var ResponseObj:=RESTResponse1.JSONValue.GetValue<TJSONObject>('data'); //consulta por saldo.
      if ResponseObj.TryGetValue<String>('error', Erro) then
      begin
        MessageDlg(ResponseObj.GetValue<String>('message'),mtError,[mbOk],0);
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        Edit4.Text:='';
        Edit5.Text:='';
        Edit6.Text:='';
        Edit7.Text:='';
      end else
      begin
        //Edit1.Text:=ResponseObj.GetValue<String>('MODELO');
        Edit1.Text:=ResponseObj.GetValue<String>('modelo');
        //Edit2.Text:=ResponseObj.GetValue<String>('MARCA');
        Edit2.Text:=ResponseObj.GetValue<String>('marca');
        Edit3.Text:=ResponseObj.GetValue<String>('ano_fabricacao');
        Edit4.Text:=ResponseObj.GetValue<String>('ano_modelo');
        //Edit5.Text:=ResponseObj.GetValue<TJSONObject>('extra').GetValue<string>('chassi');
        Edit5.Text:=ResponseObj.GetValue<string>('chassi');
        Edit6.Text:=ResponseObj.GetValue<String>('combustivel');
        Edit7.Text:=ResponseObj.GetValue<String>('cor');
        //nao tem mais? Edit8.Text:=ResponseObj.GetValue<TJSONObject>('extra').GetValue<string>('renavam');
        //nao tem mais? Edit9.Text:=ResponseObj.GetValue<String>('info');
        if CheckBox1.Checked then
        MessageDlg(ResponseObj.ToString,mtInformation,[mbOk],0);
      end;
    end else
    begin
      MessageDlg(RESTResponse1.Content,mtError,[mbOk],0);
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
      Edit6.Text:='';
      Edit7.Text:='';
    end;
  finally
    JsonObj.Free;
  end;
  Screen.Cursor:=crDefault;
end;

end.
