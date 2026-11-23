unit EnderecosBuscaCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, Buttons, PngBitBtn, ExtCtrls, ACBrBase,
  ACBrSocket, ACBrCEP, Vcl.Mask, Vcl.ComCtrls, System.TypInfo, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, System.UITypes, Vcl.Menus;

type
  TFormEnderecosBuscaCEP = class(TForm)
    ACBrCEP1: TACBrCEP;
    Memo1: TMemo;
    TBRuas: TClientDataSet;
    DSRuas: TDataSource;
    TBRuasRUA_CEP: TStringField;
    TBRuasRUA_NOME: TStringField;
    TBRuasRUA_BAIRRO: TStringField;
    TBRuasRUA_CIDADECODIGO: TIntegerField;
    TBRuasRUA_CIDADE: TStringField;
    TBRuasRUA_ESTADOCODIGO: TIntegerField;
    TBRuasRUA_ESTADO: TStringField;
    Panel1: TPanel;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    PngBitBtn5: TPngBitBtn;
    PopupMenu1: TPopupMenu;
    PngBitBtn6: TPngBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    PngBitBtn1: TPngBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit1: TEdit;
    PngBitBtn2: TPngBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    procedure PngBitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure ACBrCEP1AntesAbrirHTTP(var AURL: string);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosBuscaCEP: TFormEnderecosBuscaCEP;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataModSearch, DataMod2,
  DeliveryEnderecos, EnderecosBuscaCEPEditar, FireDAC.Comp.Client;

{$R *.dfm}

procedure TFormEnderecosBuscaCEP.ACBrCEP1AntesAbrirHTTP(var AURL: string);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Efetuando consulta HTTP em: ');
  Memo1.Lines.Add(AURL);
  Memo1.Lines.Add('');
end;

procedure TFormEnderecosBuscaCEP.ACBrCEP1BuscaEfetuada(Sender: TObject);
var I: Integer;
  S, CidadeCodigo, EstadoCodigo: String;
begin
  if ACBrCEP1.Enderecos.Count < 1 then
  Memo1.Lines.Add('Nenhum endereço encontrado.') else
  begin
    Memo1.Lines.Add(IntToStr(ACBrCEP1.Enderecos.Count)+' endereço(s) encontrado(s).');
    Memo1.Lines.Add('');
    TBRuas.EmptyDataSet;
    for I:=0 to ACBrCEP1.Enderecos.Count-1 do
    begin
      with ACBrCEP1.Enderecos[I] do
      begin
        S:=CEP;
        Insert('-',S,6);
        Memo1.Lines.Add('CEP........: '+S);
        Memo1.Lines.Add('Logradouro.: '+Tipo_Logradouro+' '+Logradouro);
        Memo1.Lines.Add('Complemento: '+Complemento);
        Memo1.Lines.Add('Bairro.....: '+Bairro);
        Memo1.Lines.Add('Municipio..: '+IBGE_Municipio+' - '+Municipio);
        Edit3.Text:=Municipio;
        Memo1.Lines.Add('Estado.....: '+IBGE_UF+' - '+UF);
        Memo1.Lines.Add(StringOfChar('-',90));

        CidadeCodigo:=IBGE_Municipio;
        EstadoCodigo:=IBGE_UF;

        //se o webservice nao retornou codigo de cidade e/ou codigo do estado, tentamos fazer a busca pela string do nome.
        if IBGE_UF='' then
        begin
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('select first(1) ESD_CODIGO from ESTADOS where upper(ESD_SIGLA)=:uf');
          DM.QYAux.ParamByName('uf').AsString:=UpperCase(RemoveAcentos(UF));
          DM.QYAux.Open;
          if DM.QYAux.FieldByName('ESD_CODIGO').AsString<>'' then
          EstadoCodigo:=DM.QYAux.FieldByName('ESD_CODIGO').AsString;
          DM.QYAux.Close;
        end;

        if IBGE_Municipio='' then
        begin
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('select CID_CODIGO from CIDADES where upper(CID_NOME)=:nome and CID_ESTADO=:uf');
          DM.QYAux.ParamByName('nome').AsString:=UpperCase(RemoveAcentos(Municipio));
          DM.QYAux.ParamByName('uf').AsInteger:=StrToInt(EstadoCodigo);
          DM.QYAux.Open;
          if DM.QYAux.FieldByName('CID_CODIGO').AsString<>'' then
          CidadeCodigo:=DM.QYAux.FieldByName('CID_CODIGO').AsString;
          DM.QYAux.Close;
        end;

        TBRuas.Insert;
        TBRuasRUA_CEP.Value:=FormatarString('CEP',SoNumeros(S));
        TBRuasRUA_NOME.Value:=UpperCase(RemoveAcentos(RemoveCE(Logradouro)));
        TBRuasRUA_BAIRRO.Value:=UpperCase(RemoveAcentos(RemoveCE(Bairro)));
        TBRuasRUA_CIDADECODIGO.Value:=StrToInt(CidadeCodigo);

        TBRuasRUA_CIDADE.Value:=UpperCase(RemoveAcentos(RemoveCE(Municipio)));
        TBRuasRUA_ESTADOCODIGO.Value:=StrToInt(EstadoCodigo);
        TBRuasRUA_ESTADO.Value:=UF;
        TBRuas.Post;
      end;
    end;
  end;

  //Memo1.Lines.Add('');
  //Memo1.Lines.Add('Resposta HTTP:');
  //Memo1.Lines.AddStrings(ACBrCEP1.RespHTTP);
end;

procedure TFormEnderecosBuscaCEP.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    08: Edit6.Text:='1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.';
    01: Edit6.Text:='Chave_Gratuita_BuscarCep';
  end;
end;

procedure TFormEnderecosBuscaCEP.DBGrid2DblClick(Sender: TObject);
begin
  AbortIf(TBRuas.IsEmpty,'Nenhum endereço para editar.');

  TBRuas.Edit;
  Application.CreateForm(TFormEnderecosBuscaCEPEditar, FormEnderecosBuscaCEPEditar);
  FormEnderecosBuscaCEPEditar.ShowModal;
  FormEnderecosBuscaCEPEditar.Free;
  FormEnderecosBuscaCEPEditar:=nil;
end;

procedure TFormEnderecosBuscaCEP.FormCreate(Sender: TObject);
var I: TACBrCEPWebService;
begin
  ComboBox1.Items.Clear;
  for I:=Low(TACBrCEPWebService) to High(TACBrCEPWebService) do
  ComboBox1.Items.Add(GetEnumName(TypeInfo(TACBrCEPWebService),Integer(I)));
  ComboBox1.ItemIndex:=1; //wsBuscaCEP.

  Edit1.Text:='Rua';
  Edit2.Text:='';
  Edit3.Text:=DM.TBEmpresaEMP_CIDADE.Value;
  Edit4.Text:=DM.TBEmpresaEMP_ESTADO.Value;
  Edit5.Text:='';
  Memo1.Clear;

  PngBitBtn6.Visible:=False; //somente a tela de delivery utiliza esse botão.
end;

procedure TFormEnderecosBuscaCEP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosBuscaCEP.FormShow(Sender: TObject);
begin
  MaskEdit1.SetFocus;
  MaskEdit1.SelectAll;
end;

procedure TFormEnderecosBuscaCEP.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn1.Click;
  end;
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn1Click(Sender: TObject);
begin
  TBRuas.EmptyDataSet;
  Memo1.Clear;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrCEP1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrCEP1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrCEP1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrCEP1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;
  ACBrCEP1.WebService:=TACBrCEPWebService(ComboBox1.ItemIndex);
  ACBrCEP1.ChaveAcesso:=Edit6.Text;
  try
    ACBrCEP1.BuscarPorCEP(LimparFormatacao(MaskEdit1.Text));
  except
    on E:Exception do
    begin
      Memo1.Lines.Add(E.Message);
    end;
  end;
  MaskEdit1.SetFocus;
  MaskEdit1.SelectAll;
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn2Click(Sender: TObject);
begin
  TBRuas.EmptyDataSet;
  Memo1.Clear;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrCEP1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrCEP1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrCEP1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrCEP1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;
  ACBrCEP1.WebService:=TACBrCEPWebService(ComboBox1.ItemIndex);
  ACBrCEP1.ChaveAcesso:=Edit6.Text;

  try
    ACBrCEP1.BuscarPorLogradouro(Edit3.Text,Edit1.Text,Edit2.Text,Edit4.Text,Edit5.Text);
  except
    on E:Exception do
    begin
      Memo1.Lines.Add(E.Message);
    end;
  end;
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn3Click(Sender: TObject);
var CodBairro: Integer;
  Q1: TFDQuery;
begin
  AbortIf(TBRuas.IsEmpty,'Nenhum endereço selecionado.');

  if TBRuasRUA_NOME.Value='' then
  begin
    MessageDlg('O endereço selecionado não possui nome.',mtError,[mbOk],0);
    Application.CreateForm(TFormEnderecosBuscaCEPEditar, FormEnderecosBuscaCEPEditar);
    FormEnderecosBuscaCEPEditar.ShowModal;
    FormEnderecosBuscaCEPEditar.Free;
    FormEnderecosBuscaCEPEditar:=nil;
    Exit;
  end;
  AbortIf(TBRuasRUA_ESTADOCODIGO.IsNull,'O endereço selecionado não possui o código do estado.');
  AbortIf(TBRuasRUA_CIDADECODIGO.IsNull,'O endereço selecionado não possui o código da cidade.');

  Q1:=TFDQuery.Create(Self);
  Q1.Connection:=DM.FDConnection1;
  Q1.Close;
  Q1.SQL.Clear;
  Q1.SQL.Add(
    'select RUA_NOME, RUA_ESTADO, RUA_CIDADE, RUA_BAIRRO, RUA_PAIS, ESD_SIGLA, CID_NOME, CID_DIMOB, BAI_NOME, PAI_NOME from RUAS '+
    'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
    'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
    'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
    'left join PAISES on RUA_PAIS=PAI_CODIGO '+
    'where RUA_CEP=:codigo and RUA_NOME=:rua and BAI_NOME=:bairro'
  );
  Q1.ParamByName('codigo').AsString:=TBRuasRUA_CEP.Value;
  Q1.ParamByName('rua').AsString:=TBRuasRUA_NOME.Value;
  Q1.ParamByName('bairro').AsString:=TBRuasRUA_BAIRRO.Value;
  Q1.Open;
  if (not Q1.IsEmpty) and (Q1.FieldByName('RUA_NOME').AsString=TBRuasRUA_NOME.Value) and (Q1.FieldByName('BAI_NOME').AsString=TBRuasRUA_BAIRRO.Value) then
  begin
    MessageDlg('Já existe este CEP com este nome e bairro cadastrado no sistema.',mtError,[mbOk],0);
    Q1.Close;
    Q1.Destroy;
    Exit;
  end;
  Q1.Close;
  Q1.Destroy;

  if MessageDlg('Cadastrar a rua selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //verifica se existe a cidade cadastrada. se não existir, cadastra.
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=TBRuasRUA_CIDADECODIGO.Value;
    DMS.QYCidades.Open;
    if DMS.QYCidades.IsEmpty then
    begin
      DM.TBCidades.Insert;
      DM.TBCidadesCID_CODIGO.Value:=TBRuasRUA_CIDADECODIGO.Value;
      DM.TBCidadesCID_ESTADO.Value:=TBRuasRUA_ESTADOCODIGO.Value;
      DM.TBCidadesCID_NOME.Value:=TBRuasRUA_CIDADE.Value;
      DM.TBCidadesCID_PAIS.Value:=1058; //brasil.
      DM.TBCidades.Post;
    end;
    DMS.QYCidades.Close;

    //verifica se existe o bairro cadastrado. se não existir, cadastra.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select BAI_CODIGO from BAIRROS where BAI_ESTADO=:estado and BAI_CIDADE=:cidade and BAI_NOME=:nome');
    DM.QYAux.ParamByName('estado').AsInteger:=TBRuasRUA_ESTADOCODIGO.Value;
    DM.QYAux.ParamByName('cidade').AsInteger:=TBRuasRUA_CIDADECODIGO.Value;
    DM.QYAux.ParamByName('nome').AsString:=TBRuasRUA_BAIRRO.Value;
    DM.QYAux.Open;
    if DM.QYAux.IsEmpty then
    begin
      DM.TBBairros.Insert;
      DM.TBBairrosBAI_NOME.Value:=TBRuasRUA_BAIRRO.Value;
      DM.TBBairrosBAI_CIDADE.Value:=TBRuasRUA_CIDADECODIGO.Value;
      DM.TBBairrosBAI_ESTADO.Value:=TBRuasRUA_ESTADOCODIGO.Value;
      DM.TBBairrosBAI_PAIS.Value:=1058; //brasil.
      DM.TBBairros.Post;
      CodBairro:=DM.TBBairrosBAI_CODIGO.Value;
    end else
    CodBairro:=DM.QYAux.FieldByName('BAI_CODIGO').AsInteger;
    DM.QYAux.Close;

    //Cadastra a rua.
    DM.TBRuas.Insert;
    DM.TBRuasRUA_BAIRRO.Value:=CodBairro;
    DM.TBRuasRUA_CEP.Value:=TBRuasRUA_CEP.Value;
    DM.TBRuasRUA_CIDADE.Value:=TBRuasRUA_CIDADECODIGO.Value;
    DM.TBRuasRUA_ESTADO.Value:=TBRuasRUA_ESTADOCODIGO.Value;
    DM.TBRuasRUA_NOME.Value:=TBRuasRUA_NOME.Value;
    DM.TBRuasRUA_PAIS.Value:=1058; //brasil.
    DM.TBRuas.Post;
    MessageDlg('Endereço cadastrado com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn5Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEnderecosBuscaCEP.PngBitBtn6Click(Sender: TObject);
begin
  AbortIf(TBRuas.IsEmpty,'Nenhum endereço selecionado.');

  if MessageDlg('Deseja utilizar esse endereço no pedido selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBDeliverys.Edit;
    DM2.TBDeliverysDLV_CEP.Value:=TBRuasRUA_CEP.Value;
    DM2.TBDeliverysDLV_ENDERECO.Value:=TBRuasRUA_NOME.Value;
    DM2.TBDeliverysDLV_BAIRRO.Value:=TBRuasRUA_BAIRRO.Value;
    DM2.TBDeliverysDLV_CIDADECODIGO.Value:=TBRuasRUA_CIDADECODIGO.Value;
    DM2.TBDeliverysDLV_CIDADE.Value:=TBRuasRUA_CIDADE.Value;
    DM2.TBDeliverysDLV_ESTADO.Value:=TBRuasRUA_ESTADO.Value;
    DM2.TBDeliverys.Post;
    Close;
  end;
end;

end.
