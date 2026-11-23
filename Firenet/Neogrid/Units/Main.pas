unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Label6: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    MaskEdit1: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    MaskEdit2: TMaskEdit;
    Button4: TButton;
    Label11: TLabel;
    Edit9: TEdit;
    Button5: TButton;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Edit12: TEdit;
    Label14: TLabel;
    Button7: TButton;
    StatusBar1: TStatusBar;
    Label15: TLabel;
    Edit13: TEdit;
    Bevel1: TBevel;
    Label16: TLabel;
    MaskEdit3: TMaskEdit;
    Timer1: TTimer;
    Label17: TLabel;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Label17Click(Sender: TObject);
  private
    { Private declarations }
    Automatico: String;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation
uses DataMod, Funcoes1, IniFiles;
{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
var SL: TStringList;
  NomeArquivo,DD,MM,AA,HH,II,SS: String;
  D,M,A,H,I,S,Z: Word;
begin
  Screen.Cursor:=crHourGlass;
  DecodeDate(Date,A,M,D);
  DecodeTime(Time,H,I,S,Z);
  AA:=A.ToString;
  DD:=AT(D.ToString,'0',2,'R');
  MM:=AT(M.ToString,'0',2,'R');
  HH:=AT(H.ToString,'0',2,'R');
  II:=AT(I.ToString,'0',2,'R');
  SS:=AT(S.ToString,'0',2,'R');
  NomeArquivo:='RELPRO_'+LimparFormatacao(Edit2.Text)+'_'+AA+MM+DD+HH+II+SS+'.txt';
  SL:=TStringList.Create;
  SL.Add('01|RELPRO|'+Edit4.Text+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+HH+II+'|'+LimparFormatacao(Edit2.Text)+'|'+LimparFormatacao(Edit3.Text));
  DM.QYProdutos.Close;
  DM.QYProdutos.SQL.Clear;
  DM.QYProdutos.SQL.Add(
    'select PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_NOME, PRO_PRECOVENDA, FOR_NOME, FOR_CNPJ from PRODUTOS '+
    'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
    'where PRO_STATUS=''A'' and PRO_TIPO=''P'' and PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' and PRO_MARCA=:marca order by PRO_NOME');
  DM.QYProdutos.ParamByName('marca').AsInteger:=StrToInt(Edit8.Text);
  DM.QYProdutos.Open;
  DM.QYProdutos.First;
  while not DM.QYProdutos.Eof do
  begin
    SL.Add('02|'+LimparFormatacao(DM.QYProdutos.FieldByName('FOR_CNPJ').AsString)+'|'+
      DM.QYProdutos.FieldByName('PRO_CODIGO').AsString+'|'+
      DM.QYProdutos.FieldByName('PRO_CODIGOFAB').AsString+'|'+
      '01|'+ //01-regular 02-promocional.
      '1.00000|'+
      V2P(Decimais2(DM.QYProdutos.FieldByName('PRO_PRECOVENDA').AsExtended,2))+'|'+
      Copy(DM.QYProdutos.FieldByName('PRO_NOME').AsString,1,100)+'|'+
      '01' //01-ativo 02-inativo
    );
    DM.QYProdutos.Next;
  end;
  DM.QYProdutos.Close;
  SL.SaveToFile(Edit1.Text+'\'+NomeArquivo);
  SL.Free;
  StatusBar1.SimpleText:='Arquivo de Produtos gerado com sucesso.';
  Screen.Cursor:=crDefault;
end;

procedure TFormMain.Button2Click(Sender: TObject);
var SL: TStringList;
  NomeArquivo,DD,MM,AA,HH,II,SS: String;
  D,M,A,H,I,S,Z: Word;
begin
  Screen.Cursor:=crHourGlass;
  DecodeDate(Date,A,M,D);
  DecodeTime(Time,H,I,S,Z);
  AA:=A.ToString;
  DD:=AT(D.ToString,'0',2,'R');
  MM:=AT(M.ToString,'0',2,'R');
  HH:=AT(H.ToString,'0',2,'R');
  II:=AT(I.ToString,'0',2,'R');
  SS:=AT(S.ToString,'0',2,'R');
  NomeArquivo:='RELVEN_'+LimparFormatacao(Edit2.Text)+'_'+AA+MM+DD+HH+II+SS+'.txt';
  SL:=TStringList.Create;
  SL.Add('01|RELVEN|'+Edit5.Text+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+HH+II+'|'+LimparFormatacao(Edit2.Text)+'|'+LimparFormatacao(Edit3.Text));
  DM.QYVendedores.Close;
  DM.QYVendedores.SQL.Clear;
  DM.QYVendedores.SQL.Add(
    'select VEN_CODIGO, VEN_NOME, VEN_CNPJ, VEN_CPF, VEN_STATUS from VENDEDORES '+
    'where VEN_STATUS=''A'' order by VEN_NOME');
  DM.QYVendedores.Open;
  DM.QYVendedores.First;
  while not DM.QYVendedores.Eof do
  begin
    SL.Add('02|PESSOA FISICA|'+
      DM.QYVendedores.FieldByName('VEN_CODIGO').AsString+'|||||'+DM.QYVendedores.FieldByName('VEN_STATUS').AsString+'|'
    );
    DM.QYVendedores.Next;
  end;
  DM.QYVendedores.Close;
  SL.SaveToFile(Edit1.Text+'\'+NomeArquivo);
  SL.Free;
  StatusBar1.SimpleText:='Arquivo de Vendedores gerado com sucesso.';
  Screen.Cursor:=crDefault;
end;

procedure TFormMain.Button3Click(Sender: TObject);
var SL: TStringList;
  NomeArquivo,DD,MM,AA,HH,II,SS,Qtde: String;
  D,M,A,H,I,S,Z: Word;
begin
  Screen.Cursor:=crHourGlass;
  DecodeDate(Date,A,M,D);
  DecodeTime(Time,H,I,S,Z);
  AA:=A.ToString;
  DD:=AT(D.ToString,'0',2,'R');
  MM:=AT(M.ToString,'0',2,'R');
  HH:=AT(H.ToString,'0',2,'R');
  II:=AT(I.ToString,'0',2,'R');
  SS:=AT(S.ToString,'0',2,'R');
  NomeArquivo:='RELEST_'+LimparFormatacao(Edit2.Text)+'_'+AA+MM+DD+HH+II+SS+'.txt';
  SL:=TStringList.Create;
  SL.Add('01|RELEST|'+Edit6.Text+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+'|'+AA+MM+DD+'|'+LimparFormatacao(Edit2.Text)+'|'+LimparFormatacao(Edit13.Text));
  DM.QYProdutos.Close;
  DM.QYProdutos.SQL.Clear;
  DM.QYProdutos.SQL.Add(
    'select PRO_CODIGO, PRO_ESTOQUEATUAL from PRODUTOS '+
    'where PRO_STATUS=''A'' and PRO_TIPO=''P'' and PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' and PRO_MARCA=:marca order by PRO_NOME');
  DM.QYProdutos.ParamByName('marca').AsInteger:=StrToInt(Edit8.Text);
  DM.QYProdutos.Open;
  DM.QYProdutos.First;
  while not DM.QYProdutos.Eof do
  begin
    Qtde:=V2P(Decimais2(DM.QYProdutos.FieldByName('PRO_ESTOQUEATUAL').AsExtended,2));
    if DM.QYProdutos.FieldByName('PRO_ESTOQUEATUAL').AsExtended < 0 then
    Qtde:='0.00';

    SL.Add('02|'+AA+MM+DD+HH+II+'|'+
      DM.QYProdutos.FieldByName('PRO_CODIGO').AsString+'|'+
      Qtde+'|0.00|0.00' //adicionado qtde comprometida. 19/11/2025
    );
    DM.QYProdutos.Next;
  end;
  DM.QYProdutos.Close;
  SL.SaveToFile(Edit1.Text+'\'+NomeArquivo);
  SL.Free;
  StatusBar1.SimpleText:='Arquivo de Estoque gerado com sucesso.';
  Screen.Cursor:=crDefault;
end;

procedure TFormMain.Button4Click(Sender: TObject);
var SL: TStringList;
  NomeArquivo,DD,MM,AA,HH,II,SS,TipoVenda,Data1,Data2,Documento,Frete: String;
  D,M,A,H,I,S,Z: Word;
  Venda: Integer;
begin
  Screen.Cursor:=crHourGlass;
  DecodeDate(Date,A,M,D);
  DecodeTime(Time,H,I,S,Z);
  AA:=A.ToString;
  DD:=AT(D.ToString,'0',2,'R');
  MM:=AT(M.ToString,'0',2,'R');
  HH:=AT(H.ToString,'0',2,'R');
  II:=AT(I.ToString,'0',2,'R');
  SS:=AT(S.ToString,'0',2,'R');
  Data1:=LimparFormatacao(MaskEdit1.Text);
  Data2:=LimparFormatacao(MaskEdit2.Text);
  Data1:=Copy(Data1,5,4)+Copy(Data1,3,2)+Copy(Data1,1,2); //formato AAAAMMDD
  Data2:=Copy(Data2,5,4)+Copy(Data2,3,2)+Copy(Data2,1,2); //formato AAAAMMDD
  NomeArquivo:='VENDAS_'+LimparFormatacao(Edit2.Text)+'_'+AA+MM+DD+HH+II+SS+'.txt';
  SL:=TStringList.Create;
  SL.Add('01|VENDAS|'+Edit7.Text+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+HH+II+'|'+
    Data1+'|'+
    Data2+'|'+
    LimparFormatacao(Edit2.Text)+'|'+LimparFormatacao(Edit13.Text));

  DM.QYEmpresa.Open;

  DM.QYVendas.Close;
  DM.QYVendas.SQL.Clear;
  DM.QYVendas.SQL.Add(
    'select NFI_PRODUTO, NFI_QUANTIDADE, NFI_VALORUNIT, NFI_VALORIPI, NFI_VALORPIS, NFI_VALORCOFINS, NFI_VALORICMS, NFI_VALORTOTAL, '+
    'NFI_DESCRICAO, NFI_VALORICMSST, NFI_DESCVALOR, NFI_VALORTOTALBRUTO, NFE_FINALIDADE, NFE_STATUS, NFE_FRETE, NFE_VENDEDOR, '+
    'NFE_CODIGO, NFE_CONDICAO, NFE_SERIE, NFE_MODELO, NFE_DTEMISSAO, NFE_CLIENTE, NFE_CEP, NFE_ESTADO from NFEITENS '+
    'left join NFE on NFI_NOTA=NFE_CODIGO '+
    'left join PRODUTOS on NFI_PRODUTO=PRO_CODIGO '+
    'where NFE_STATUS=''F'' and PRO_MARCA=:marca and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_CODIGO, NFI_DESCRICAO');
  DM.QYVendas.ParamByName('marca').AsInteger:=StrToInt(Edit8.Text);
  DM.QYVendas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
  DM.QYVendas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
  DM.QYVendas.Open;
  DM.QYVendas.First;
  Venda:=0;
  while not DM.QYVendas.Eof do
  begin
    //capa da NFE.
    if Venda<>DM.QYVendas.FieldByName('NFE_CODIGO').AsInteger then
    begin
      Venda:=DM.QYVendas.FieldByName('NFE_CODIGO').AsInteger;

      TipoVenda:='01';
      if DM.QYVendas.FieldByName('NFE_FINALIDADE').AsString='4 - DEVOLUCAO DE MERCADORIA' then
      TipoVenda:='02';
      if DM.QYVendas.FieldByName('NFE_STATUS').AsString='C' then
      TipoVenda:='03';

      Data1:=DM.QYVendas.FieldByName('NFE_DTEMISSAO').AsString;
      Data1:=LimparFormatacao(Data1);
      Data1:=Copy(Data1,5,4)+Copy(Data1,3,2)+Copy(Data1,1,2); //formato AAAAMMDD

      Frete:='FOB';
      if DM.QYVendas.FieldByName('NFE_FRETE').AsString='0 - EMITENTE' then
      Frete:='CIF';

      DM.QYCondicoes.Close;
      DM.QYCondicoes.ParamByName('codigo').AsInteger:=DM.QYVendas.FieldByName('NFE_CONDICAO').AsInteger;
      DM.QYCondicoes.Open;

      SL.Add(
        '02|'+
        '01|'+ //01=direto (venda direta) 02=indireto (via revenda)
        DM.QYVendas.FieldByName('NFE_CODIGO').AsString+'|'+
        DM.QYVendas.FieldByName('NFE_SERIE').AsString+'|'+
        TipoVenda+'|'+ //01-venda 02-devolucao
        Data1+'|'+
        DM.QYVendas.FieldByName('NFE_VENDEDOR').AsString+'|'+
        DM.QYVendas.FieldByName('NFE_CLIENTE').AsString+'|'+
        DM.QYEmpresaEMP_ESTADO.Value+'|'+
        LimparFormatacao(DM.QYEmpresaEMP_CEP.Value)+'|'+
        DM.QYVendas.FieldByName('NFE_ESTADO').AsString+'|'+
        LimparFormatacao(DM.QYVendas.FieldByName('NFE_CEP').AsString)+'|'+
        Frete+'|'+
        DM.QYCondicoesDIAS.Value.ToString+'|'+
        '01' //venda tradicional.
      );
    end;

    //Itens da NFE.
    SL.Add(
      '03|'+
      DM.QYVendas.FieldByName('NFE_CODIGO').AsString+'|'+
      DM.QYVendas.FieldByName('NFE_SERIE').AsString+'|'+
      TipoVenda+'|'+
      DM.QYVendas.FieldByName('NFI_PRODUTO').AsString+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_QUANTIDADE').AsExtended,5))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORUNIT').AsExtended,2))+'|'+
      'N|'+ //N=nao bonificado S=bonificado.
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORTOTALBRUTO').AsExtended,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORTOTAL').AsExtended,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORIPI').AsExtended,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORPIS').AsExtended + DM.QYVendas.FieldByName('NFI_VALORCOFINS').AsExtended ,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORICMSST').AsExtended,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_VALORICMS').AsExtended,2))+'|'+
      V2P(Decimais2(DM.QYVendas.FieldByName('NFI_DESCVALOR').AsExtended,2))
    );

    DM.QYVendas.Next;
  end;
  DM.QYVendas.Close;
  DM.QYEmpresa.Close;
  DM.QYCondicoes.Close;
  SL.SaveToFile(Edit1.Text+'\'+NomeArquivo);
  SL.Free;
  StatusBar1.SimpleText:='Arquivo de Vendas gerado com sucesso.';
  Screen.Cursor:=crDefault;
end;

procedure TFormMain.Button5Click(Sender: TObject);
var SL: TStringList;
  NomeArquivo,DD,MM,AA,HH,II,SS,Nome,Endereco,Documento,Fone,Contato: String;
  D,M,A,H,I,S,Z: Word;
  Cliente: Integer;
begin
  Screen.Cursor:=crHourGlass;
  DecodeDate(Date,A,M,D);
  DecodeTime(Time,H,I,S,Z);
  AA:=A.ToString;
  DD:=AT(D.ToString,'0',2,'R');
  MM:=AT(M.ToString,'0',2,'R');
  HH:=AT(H.ToString,'0',2,'R');
  II:=AT(I.ToString,'0',2,'R');
  SS:=AT(S.ToString,'0',2,'R');
  NomeArquivo:='RELCLI_'+LimparFormatacao(Edit2.Text)+'_'+AA+MM+DD+HH+II+SS+'.txt';
  SL:=TStringList.Create;
  SL.Add('01|RELCLI|'+Edit9.Text+'|'+AA+MM+DD+HH+II+'|'+AA+MM+DD+HH+II+'|'+LimparFormatacao(Edit2.Text)+'|'+LimparFormatacao(Edit3.Text));
  DM.QYClientes.Close;
  DM.QYClientes.SQL.Clear;
  DM.QYClientes.SQL.Add(
    'select CLI_CODIGO, CLI_CNPJ, CLI_CPF, CLI_TIPOPESSOA, CLI_CEP, CLI_ESTADO, CLI_CIDADE, CLI_ENDERECO, CLI_BAIRRO, CLI_NOME, CLI_CONTATO, CLI_FONE1 from NFEITENS '+
    'left join NFE on NFI_NOTA=NFE_CODIGO '+
    'left join PRODUTOS on NFI_PRODUTO=PRO_CODIGO '+
    'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
    'where NFE_STATUS=''F'' and PRO_MARCA=:marca and NFE_DTEMISSAO between :datainicial and :datafinal order by CLI_NOME');
  DM.QYClientes.ParamByName('marca').AsInteger:=StrToInt(Edit8.Text);
  DM.QYClientes.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
  DM.QYClientes.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
  DM.QYClientes.Open;
  DM.QYClientes.First;
  Cliente:=0;
  while not DM.QYClientes.Eof do
  begin
    if Cliente<>DM.QYClientes.FieldByName('CLI_CODIGO').AsInteger then
    begin
      Cliente:=DM.QYClientes.FieldByName('CLI_CODIGO').AsInteger;
      Nome:=DM.QYClientes.FieldByName('CLI_NOME').AsString;
      Endereco:=DM.QYClientes.FieldByName('CLI_ENDERECO').AsString;
      Documento:=DM.QYClientes.FieldByName('CLI_CODIGO').AsString; // LimparFormatacao(DM.QYClientes.FieldByName('CLI_CNPJ').AsString);
      Fone:=DM.QYClientes.FieldByName('CLI_FONE1').AsString;
      Contato:=DM.QYClientes.FieldByName('CLI_CONTATO').AsString;
      if DM.QYClientes.FieldByName('CLI_TIPOPESSOA').AsString='F' then
      begin
        Nome:='PESSOA FISICA';
        Endereco:='PESSOA FISICA';
        Documento:=DM.QYClientes.FieldByName('CLI_CODIGO').AsString;
        Fone:='PESSOA FISICA';
        Contato:='PESSOA FISICA';
      end;

      SL.Add('02|'+
        Documento+'|'+
        LimparFormatacao(DM.QYClientes.FieldByName('CLI_CEP').AsString)+'|'+
        DM.QYClientes.FieldByName('CLI_ESTADO').AsString+'|'+
        DM.QYClientes.FieldByName('CLI_CIDADE').AsString+'|'+
        Endereco+'|'+
        DM.QYClientes.FieldByName('CLI_BAIRRO').AsString+'|'+
        Nome+'|'+
        '169|'+ //169-outros. (segmento)
        '04|'+ //04-outros. (frequencia visita)
        Fone+'|'+
        Contato
      );
    end;
    DM.QYClientes.Next;
  end;
  DM.QYClientes.Close;
  SL.SaveToFile(Edit1.Text+'\'+NomeArquivo);
  SL.Free;
  StatusBar1.SimpleText:='Arquivo de Clientes gerado com sucesso.';
  Screen.Cursor:=crDefault;
end;

procedure TFormMain.Button7Click(Sender: TObject);
begin
  Button1.Click;
  Button2.Click;
  Button3.Click;
  Button4.Click;
  Button5.Click;
  StatusBar1.SimpleText:='Arquivos gerados com sucesso.';
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var F: TIniFile;
begin
  {DM.IBDatabase1.Connected:=False;
  DM.IBDatabase1.DatabaseName:=Edit11.Text;
  DM.IBDatabase1.Params.Clear;
  DM.IBDatabase1.Params.AddPair('user_name',Edit10.Text);
  DM.IBDatabase1.Params.AddPair('password',Edit12.Text);
  DM.IBDatabase1.Connected:=True;
  if DM.IBDatabase1.Connected then
  begin }
    F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
    F.WriteString('BASE DE DADOS', 'BASE', Edit11.Text);
    F.WriteString('BASE DE DADOS', 'USER', Edit10.Text);
    F.WriteString('BASE DE DADOS', 'PASS', Edit12.Text);

    F.WriteString('DIVERSOS', 'PASTA', Edit1.Text);
    F.WriteString('DIVERSOS', 'CNPJEMISSOR', Edit2.Text);
    F.WriteString('DIVERSOS', 'CNPJNEOGRID', Edit3.Text);
    F.WriteString('DIVERSOS', 'CNPJ3M', Edit13.Text);
    F.WriteString('DIVERSOS', 'CODIGO', Edit8.Text);
    F.WriteString('DIVERSOS', 'PRODUTOS', Edit4.Text);
    F.WriteString('DIVERSOS', 'VENDEDORES', Edit5.Text);
    F.WriteString('DIVERSOS', 'CLIENTES', Edit9.Text);
    F.WriteString('DIVERSOS', 'ESTOQUE', Edit6.Text);
    F.WriteString('DIVERSOS', 'VENDAS', Edit7.Text);
    F.WriteString('DIVERSOS', 'HORARIO', MaskEdit3.Text);
    F.WriteString('DIVERSOS', 'AUTOMATICO', Automatico);
    F.Free;
    //MessageDlg('Conexão OK.',mtInformation,[mbOk],0);
  //end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var F: TIniFile;
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));

  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  Edit11.Text:=F.ReadString('BASE DE DADOS', 'BASE', Edit11.Text);
  Edit10.Text:=F.ReadString('BASE DE DADOS', 'USER', Edit10.Text);
  Edit12.Text:=F.ReadString('BASE DE DADOS', 'PASS', Edit12.Text);

  Edit1.Text:=F.ReadString('DIVERSOS', 'PASTA', Edit1.Text);
  Edit2.Text:=F.ReadString('DIVERSOS', 'CNPJEMISSOR', Edit2.Text);
  Edit3.Text:=F.ReadString('DIVERSOS', 'CNPJNEOGRID', Edit3.Text);
  Edit13.Text:=F.ReadString('DIVERSOS', 'CNPJ3M', Edit13.Text);
  Edit8.Text:=F.ReadString('DIVERSOS', 'CODIGO', Edit8.Text);
  Edit4.Text:=F.ReadString('DIVERSOS', 'PRODUTOS', Edit4.Text);
  Edit5.Text:=F.ReadString('DIVERSOS', 'VENDEDORES', Edit5.Text);
  Edit9.Text:=F.ReadString('DIVERSOS', 'CLIENTES', Edit9.Text);
  Edit6.Text:=F.ReadString('DIVERSOS', 'ESTOQUE', Edit6.Text);
  Edit7.Text:=F.ReadString('DIVERSOS', 'VENDAS', Edit7.Text);
  MaskEdit3.Text:=F.ReadString('DIVERSOS', 'HORARIO', MaskEdit3.Text);
  Automatico:=F.ReadString('DIVERSOS', 'AUTOMATICO', Automatico);
  F.Free;

  DM.FDConnection1.Connected:=False;
  DM.FDConnection1.Params.Clear;
  DM.FDConnection1.Params.Add('User_Name='+Edit10.Text);
  DM.FDConnection1.Params.Add('Password='+Edit12.Text);
  DM.FDConnection1.Params.Add('Database='+Edit11.Text);
  DM.FDConnection1.Params.Add('Server='+'localhost');
  DM.FDConnection1.Params.Add('Port=3050');
  DM.FDConnection1.Params.Add('Protocol=TCPIP');
  DM.FDConnection1.Params.Add('DriverID=FB');

//  DM.FDConnection1.DatabaseName:=Edit11.Text;
//  DM.FDConnection1.Params.Clear;
//  DM.FDConnection1.Params.AddPair('user_name',Edit10.Text);
//  DM.FDConnection1.Params.AddPair('password',Edit12.Text);

  if Automatico='S' then
  Label17Click(Self);
end;

procedure TFormMain.Label17Click(Sender: TObject);
begin
  Timer1.Enabled:=not Timer1.Enabled;

  if Timer1.Enabled then
  begin
    Shape1.Brush.Color:=clGreen;
    Label17.Caption:='ATIVO';
    Automatico:='S';
  end else
  begin
    Shape1.Brush.Color:=clRed;
    Label17.Caption:='INATIVO';
    Automatico:='N';
  end;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if TimeToStr(Time)=MaskEdit3.Text then
  begin
    Timer1.Enabled:=False;
    MaskEdit1.Text:=DateToStr(Date);
    MaskEdit2.Text:=DateToStr(Date);
    Application.ProcessMessages;
    Button7.Click;
    Sleep(2000);
    Timer1.Enabled:=True;
  end;
end;

end.
