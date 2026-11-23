unit ConsultarCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, System.UITypes,
  PngBitBtn, Vcl.Mask, ACBrBase, ACBrSocket, ACBrConsultaCPF, ACBrConsultaCNPJ, Data.DB, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFormConsultarCNPJ = class(TForm)
    Edit1: TEdit;
    Edit16: TEdit;
    Edit12: TEdit;
    Edit14: TEdit;
    Edit17: TEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit20: TEdit;
    Label8: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Timer1: TTimer;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    Edit2: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    Edit8: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Label13: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Edit10: TEdit;
    Label15: TLabel;
    Edit11: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    Edit18: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit5: TEdit;
    Edit19: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Label20: TLabel;
    Label2: TLabel;
    PngBitBtn1: TPngBitBtn;
    Edit21: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    PngBitBtn2: TPngBitBtn;
    Label23: TLabel;
    ComboBox1: TComboBox;
    PngBitBtn3: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    //procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultarCNPJ: TFormConsultarCNPJ;
  CadastroAtual: String;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, EnderecosCidadesLoc, System.JSON, System.TypInfo;
{$R *.dfm}

procedure TFormConsultarCNPJ.BitBtn1Click(Sender: TObject);
begin
//metodo antigo.
//  if Edit20.Text='' then
//  begin
//    MessageDlg('É necessário digitar o código da imagem.',mtWarning,[mbOk],0);
//    Edit6.SetFocus;
//    Exit;
//  end;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrConsultaCNPJ1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrConsultaCNPJ1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrConsultaCNPJ1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrConsultaCNPJ1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;

//  TACBrCNPJProvedorWS.cwsReceitaWS
  case ComboBox1.ItemIndex of
    00: ACBrConsultaCNPJ1.Provedor:=TACBrCNPJProvedorWS.cwsNenhum; //essa opcao não roda pelo ACBr, faz a consulta pelo CNPJá.com
    01: ACBrConsultaCNPJ1.Provedor:=TACBrCNPJProvedorWS.cwsBrasilAPI;
    02: ACBrConsultaCNPJ1.Provedor:=TACBrCNPJProvedorWS.cwsReceitaWS;
  end;

  ACBrConsultaCNPJ1.PesquisarIBGE:=True;

  //ACBrConsultaCNPJ1.Provedor:=TACBrCNPJProvedorWS(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
  if ACBrConsultaCNPJ1.Consulta(LimparFormatacao(MaskEdit1.Text),Edit20.Text) then //captcha desnecessário.
  begin
    Edit1.Text:=ACBrConsultaCNPJ1.RazaoSocial;
    Edit2.Text:=ACBrConsultaCNPJ1.Fantasia;
    Edit3.Text:=FormatarString('CEP',LimparFormatacao(ACBrConsultaCNPJ1.CEP));
    Edit4.Text:=ACBrConsultaCNPJ1.Endereco;
    Edit5.Text:=ACBrConsultaCNPJ1.Numero;
    Edit6.Text:=ACBrConsultaCNPJ1.IBGE_Municipio;
    Edit7.Text:=ACBrConsultaCNPJ1.Cidade;
    Edit8.Text:=ACBrConsultaCNPJ1.Bairro;
    Edit9.Text:=ACBrConsultaCNPJ1.UF;
    Edit21.Text:=ACBrConsultaCNPJ1.IBGE_UF; //invisivel.
    Edit10.Text:=ACBrConsultaCNPJ1.Complemento;
    Edit11.Text:=ACBrConsultaCNPJ1.EndEletronico;
    Edit12.Text:=ACBrConsultaCNPJ1.EmpresaTipo;
    Edit13.Text:=ACBrConsultaCNPJ1.NaturezaJuridica;
    Edit14.Text:=ACBrConsultaCNPJ1.CNAE1;
    //verificar... Edit15.Text:=ACBrConsultaCNPJ1.CNAE2;
    Edit16.Text:=ACBrConsultaCNPJ1.Situacao;
    Edit17.Text:=DateToStr(ACBrConsultaCNPJ1.Abertura);
    Edit18.Text:=ACBrConsultaCNPJ1.MotivoSituacaoCad;
    Edit19.Text:=ACBrConsultaCNPJ1.Telefone;

    //se tiver razao social, verifica o endereço.
    if Edit1.Text<>'' then
    begin

      //se nao tiver o código da cidade.
      if Edit6.Text='' then
      begin
        {$REGION 'Verifica cidade'}
        //pega o código do estado.
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('select * from ESTADOS where ESD_SIGLA=:estado');
        DM.QYAux2.ParamByName('estado').AsString:=Edit9.Text;
        DM.QYAux2.Open;

        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select CID_CODIGO from CIDADES where CID_NOME=:cidade and CID_CODIGO like :codigo');
        DM.QYAux.ParamByName('cidade').AsString:=Edit7.Text;
        DM.QYAux.ParamByName('codigo').AsString:=DM.QYAux2.FieldByName('ESD_CODIGO').AsString+'%';
        DM.QYAux.Open;
        if not DM.QYAux.IsEmpty then
        begin
          Edit6.Text:=DM.QYAux.FieldByName('CID_CODIGO').AsString;
          Edit6.Font.Color:=clRed;
        end;
        DM.QYAux.Close;
        DM.QYAux2.Close;
        {$ENDREGION}
      end;

      //se nao tiver o código do estado.
      if Edit21.Text='' then
      begin
        {$REGION 'Verifica estado'}
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select ESD_CODIGO from ESTADOS where ESD_SIGLA=:estado');
        DM.QYAux.ParamByName('estado').AsString:=Edit9.Text;
        DM.QYAux.Open;
        if not DM.QYAux.IsEmpty then
        begin
          Edit21.Text:=DM.QYAux.FieldByName('ESD_CODIGO').AsString;
          Edit21.Font.Color:=clRed;
          //Edit9.Font.Color:=clRed;
        end;
        DM.QYAux.Close;
        {$ENDREGION}
      end;

      //se nao tiver o CEP cadastrado, já cadastra.
      if (Edit3.Text<>'') and (Edit6.Text<>'') and (Edit21.Text<>'') then
      begin
        {$REGION 'Verifica CEP'}
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select count(*) as QTDE from RUAS where RUA_CEP=:cep');
        DM.QYAux.ParamByName('cep').AsString:=Edit3.Text;
        DM.QYAux.Open;
        if DM.QYAux.FieldByName('QTDE').AsInteger=0 then //não tem o CEP cadastrado.
        begin
          //tenta localizar o bairro... se nao tiver, cadastra.
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('select BAI_CODIGO from BAIRROS where BAI_CIDADE=:cidade and BAI_NOME=:bairro');
          DM.QYAux.ParamByName('cidade').AsInteger:=StrToInt(Edit6.Text);
          DM.QYAux.ParamByName('bairro').AsString:=Edit8.Text;
          DM.QYAux.Open;
          if DM.QYAux.IsEmpty then
          begin
            DM.TBBairros.Insert;
            DM.TBBairrosBAI_CIDADE.Value:=StrToInt(Edit6.Text);
            DM.TBBairrosBAI_ESTADO.Value:=StrToInt(Edit21.Text);
            DM.TBBairrosBAI_NOME.Value:=Edit8.Text;
            DM.TBBairrosBAI_PAIS.Value:=1058;
            DM.TBBairros.Post;
          end else
          begin
            DM.TBBairros.Close;
            DM.TBBairros.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('BAI_CODIGO').AsInteger;
            DM.TBBairros.Open;
          end;
          DM.QYAux.Close;

          //cadastra a rua.
          DM.TBRuas.Insert;
          DM.TBRuasRUA_BAIRRO.Value:=DM.TBBairrosBAI_CODIGO.Value;
          DM.TBRuasRUA_CEP.Value:=Edit3.Text;
          DM.TBRuasRUA_CIDADE.Value:=StrToInt(Edit6.Text);
          DM.TBRuasRUA_ESTADO.Value:=StrToInt(Edit21.Text);
          DM.TBRuasRUA_NOME.Value:=Edit4.Text;
          DM.TBRuasRUA_PAIS.Value:=1058;
          DM.TBRuas.Post;
          Label22.Caption:='Cadastro do endereço efetuado com sucesso!';

        end;
        DM.QYAux.Close;
        {$ENDREGION}
      end;

    end;
  end;
end;

procedure TFormConsultarCNPJ.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultarCNPJ.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultarCNPJ.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    BitBtn1.Click;
  end;
end;

procedure TFormConsultarCNPJ.FormCreate(Sender: TObject);
//var Provedor: TACBrCNPJProvedorWS;
begin
//  Label22.Caption:='';
//  if DM.TBParametrosPAR_PROXY.Value='S' then
//  begin
//    ACBrConsultaCNPJ1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
//    ACBrConsultaCNPJ1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
//    ACBrConsultaCNPJ1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
//    ACBrConsultaCNPJ1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
//  end;
  CadastroAtual:='';

//  ComboBox1.Items.Clear;
//  for Provedor := Low(TACBrCNPJProvedorWS) to High(TACBrCNPJProvedorWS) do
//    ComboBox1.Items.AddObject( GetEnumName(TypeInfo(TACBrCNPJProvedorWS), integer(Provedor) ), TObject(integer(Provedor)) );
  ComboBox1.ItemIndex:=2;
end;

procedure TFormConsultarCNPJ.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultarCNPJ.FormShow(Sender: TObject);
begin
//  Timer1.Enabled:=True;
//  if LimparFormatacao(MaskEdit1.Text) <> '' then
//  BitBtn1.Click;
//  Edit20.SetFocus;
end;

//procedure TFormConsultarCNPJ.Image1Click(Sender: TObject);
//var
//  Stream: TMemoryStream;
//  ImgArq: String;
//begin
//  Stream:=TMemoryStream.Create;
//  try
//    ACBrConsultaCNPJ1.Captcha(Stream);
//    ImgArq:=ExtractFilePath(Application.ExeName)+'Print\Captcha.png';
//    Stream.SaveToFile(ImgArq);
//    Image1.Picture.LoadFromFile(ImgArq);
//
//    Edit20.Clear;
//    Edit20.SetFocus;
//  finally
//    Stream.Free;
//  end;
//end;

procedure TFormConsultarCNPJ.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit1.Text='','Sem dados para copiar.');

  //sem cidade?
  if Edit6.Text='' then
  begin
    MessageDlg('O código da cidade não está informado.'+#13#10+'Clique em OK para selecionar a cidade.',mtInformation,[mbOk],0);
    Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
    FormEnderecosCidadesLoc.QYCidades.Close;
    FormEnderecosCidadesLoc.QYCidades.SQL.Clear;
    FormEnderecosCidadesLoc.QYCidades.SQL.Add('select * from CIDADES '+
                                              'left join ESTADOS on CID_ESTADO=ESD_CODIGO '+
                                              'left join PAISES on CID_PAIS=PAI_CODIGO '+
                                              'where CID_NOME like '+QuotedStr(Edit7.Text+'%')+' order by CID_NOME');
    FormEnderecosCidadesLoc.QYCidades.Open;
    FormEnderecosCidadesLoc.Edit2.Text:=Edit7.Text;
    FormEnderecosCidadesLoc.ShowModal;
    if EnderecosCidadesLoc.Procurar then
    begin
      Edit6.Text:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
      Edit7.Text:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    end;
    FormEnderecosCidadesLoc.Free;
    FormEnderecosCidadesLoc:=nil;
  end;

  //testa novamente pra ver se o usuario selecionou a cidade.
  AbortIf(Edit6.Text='','O código da cidade não está informado.');

  if MessageDlg('Copiar dados para o cadastro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin

    if CadastroAtual='Clientes' then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_BAIRRO.Value:=Copy(Edit8.Text,1,50);
      DM.TBClientesCLI_CEP.Value:=FormatarString('CEP',SoNumeros(Edit3.Text));
      DM.TBClientesCLI_CIDADE.Value:=Edit7.Text;
      DM.TBClientesCLI_CIDADECODIGO.Value:=StrToInt(Edit6.Text);
      DM.TBClientesCLI_COMPLEMENTO.Value:=Copy(Edit10.Text,1,30);
      DM.TBClientesCLI_CNPJ.Value:=MaskEdit1.Text;
      //DM.TBClientesCLI_CNPJCOB.Value:=MaskEdit1.Text;
      if Edit7.Text<>'' then DM.TBClientesCLI_DTNASC.Value:=StrToDate(Edit17.Text);
      DM.TBClientesCLI_ENDERECO.Value:=Copy(Edit4.Text,1,100);
      DM.TBClientesCLI_ESTADO.Value:=Edit9.Text;

      DM.TBClientesCLI_ESTADOCODIGO.Value:=StrToInt(Edit21.Text);
      DM.TBClientesCLI_FANTASIA.Value:=Copy(Edit2.Text,1,50);
      DM.TBClientesCLI_NOME.Value:=Copy(Edit1.Text,1,50);
      DM.TBClientesCLI_NUMERO.Value:=Edit5.Text;
      DM.TBClientesCLI_PAIS.Value:='BRASIL'; //sempre será brasil.
      DM.TBClientesCLI_PAISCODIGO.Value:=1058;
      DM.TBClientesCLI_SEXO.Value:='-';
      DM.TBClientesCLI_TIPOPESSOA.Value:='J';
      Close;
    end;
    if CadastroAtual='Fornecedores' then
    begin
      DM.TBFornecedores.Edit;
      DM.TBFornecedoresFOR_BAIRRO.Value:=Copy(Edit8.Text,1,50);
      DM.TBFornecedoresFOR_CEP.Value:=FormatarString('CEP',SoNumeros(Edit3.Text));
      DM.TBFornecedoresFOR_CIDADE.Value:=Edit7.Text;
      DM.TBFornecedoresFOR_CIDADECODIGO.Value:=StrToInt(Edit6.Text);
      DM.TBFornecedoresFOR_COMPLEMENTO.Value:=Copy(Edit10.Text,1,30);
      DM.TBFornecedoresFOR_CNPJ.Value:=MaskEdit1.Text;
      DM.TBFornecedoresFOR_ENDERECO.Value:=Copy(Edit4.Text,1,100);
      DM.TBFornecedoresFOR_ESTADO.Value:=Edit9.Text;
      DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=StrToInt(Edit21.Text);
      DM.TBFornecedoresFOR_FANTASIA.Value:=Copy(Edit2.Text,1,50);
      DM.TBFornecedoresFOR_NOME.Value:=Copy(Edit1.Text,1,50);
      DM.TBFornecedoresFOR_NUMERO.Value:=Edit5.Text;
      DM.TBFornecedoresFOR_PAIS.Value:='BRASIL';
      DM.TBFornecedoresFOR_PAISCODIGO.Value:=1058;
      DM.TBFornecedoresFOR_TIPOPESSOA.Value:='J';
      Close;
    end;
  end;
end;

procedure TFormConsultarCNPJ.PngBitBtn2Click(Sender: TObject);
var Retorno: TJSONObject;
begin
  AbortIf(DM.TBParametrosPAR_CHAVECNPJA.Value='','Chave de API não informada.'+#13#10+'Informe uma chave de api do site cnpja.com na tela de parâmetros.');

  RESTClient1.BaseURL:='https://api.cnpja.com';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    RESTClient1.ProxyPassword:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
    RESTClient1.ProxyPort:=DM.TBParametrosPAR_PROXYPORTA.Value;
    RESTClient1.ProxyServer:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    RESTClient1.ProxyUsername:=DM.TBParametrosPAR_PROXYUSER.Value;
  end;
  RESTRequest1.Params[0].Value:=LimparFormatacao(MaskEdit1.Text); //Edit2.Text; //parametro "chave".
  RESTRequest1.Params[1].Value:=DM.TBParametrosPAR_CHAVECNPJA.Value;
  Screen.Cursor:=crHourGlass;
  RESTRequest1.Execute;
  Screen.Cursor:=crDefault;

  AbortIf(RestResponse1.StatusCode<>200,'Erro ao realizar a consulta.');

  Retorno:=RESTResponse1.JSONValue as TJSONObject;
  Edit1.Text:=Retorno.GetValue<string>('name');
  Edit2.Text:=Retorno.GetValue<string>('alias');
  Edit3.Text:=FormatarString('CEP',LimparFormatacao(Retorno.GetValue<string>('address.zip')));
  Edit4.Text:=Retorno.GetValue<string>('address.street');
  Edit5.Text:=Retorno.GetValue<string>('address.number');
  Edit6.Text:=Retorno.GetValue<integer>('address.municipality').ToString;
  Edit7.Text:=Retorno.GetValue<string>('address.city');
  Edit8.Text:=Retorno.GetValue<string>('address.district');
  Edit9.Text:=Retorno.GetValue<string>('address.state');
  Edit10.Text:=Retorno.GetValue<string>('address.details');
  //Edit11.Text:=Retorno.GetValue<string>('address.street');
  Edit12.Text:=Retorno.GetValue<string>('size.acronym')+'-'+Retorno.GetValue<string>('size.text');
  Edit13.Text:=Retorno.GetValue<string>('nature.text');
  Edit14.Text:=Retorno.GetValue<integer>('mainActivity.id').ToString+' - '+Retorno.GetValue<string>('mainActivity.text');
  Edit16.Text:=Retorno.GetValue<integer>('status.id').ToString+'-'+Retorno.GetValue<string>('status.text');
  if Retorno.GetValue<integer>('status.id') <> 2 then
  Edit18.Text:=Retorno.GetValue<string>('reason.text');
  Edit17.Text:=Copy(Retorno.GetValue('founded').Value,9,2)+'/'+
               Copy(Retorno.GetValue('founded').Value,6,2)+'/'+
               Copy(Retorno.GetValue('founded').Value,1,4);

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select ESD_CODIGO from ESTADOS where ESD_SIGLA=:sigla');
  DM.QYAux.ParamByName('sigla').AsString:=Edit9.Text;
  DM.QYAux.Open;
  Edit21.Text:=DM.QYAux.FieldByName('ESD_CODIGO').AsString;
  DM.QYAux.Close;

end;

procedure TFormConsultarCNPJ.PngBitBtn3Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: PngBitBtn2.Click;
    01: ShowMessage('Utilize umas das opções de serviço de consulta: CNPJá ou ReceitaWS'); //BitBtn1.Click; //brasil API... está retornando 8175 para cidade e 81 para SC... nao vou disponibilizar.
    02: BitBtn1.Click;
  end;
end;

procedure TFormConsultarCNPJ.Timer1Timer(Sender: TObject);
begin
//  Timer1.Enabled:=False;
//  Image1Click(Image1);
//  Edit20.SetFocus;
end;

end.

