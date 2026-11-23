unit ClientesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormClientesLoc = class(TForm)
    DSClientes: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Edit8: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit9: TEdit;
    TRClientes: TFDTransaction;
    QYClientes: TFDQuery;
    QYClientesCLI_BAIRRO: TStringField;
    QYClientesCLI_BLOQUEARVENDA: TStringField;
    QYClientesCLI_CEP: TStringField;
    QYClientesCLI_CIDADE: TStringField;
    QYClientesCLI_CIDADECODIGO: TIntegerField;
    QYClientesCLI_CNPJ: TStringField;
    QYClientesCLI_CNS: TStringField;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_COMPLEMENTO: TStringField;
    QYClientesCLI_CONDICAO: TIntegerField;
    QYClientesCLI_CONTATO: TStringField;
    QYClientesCLI_CPF: TStringField;
    QYClientesCLI_DESCONTO: TFMTBCDField;
    QYClientesCLI_EMAIL: TStringField;
    QYClientesCLI_EMAIL2: TStringField;
    QYClientesCLI_ENDERECO: TStringField;
    QYClientesCLI_ESTADO: TStringField;
    QYClientesCLI_ESTADOCODIGO: TIntegerField;
    QYClientesCLI_FANTASIA: TStringField;
    QYClientesCLI_FONE1: TStringField;
    QYClientesCLI_FONE2: TStringField;
    QYClientesCLI_FONE3: TStringField;
    QYClientesCLI_FRETE: TStringField;
    QYClientesCLI_IDESTRANGEIRO: TStringField;
    QYClientesCLI_IE: TStringField;
    QYClientesCLI_IM: TIntegerField;
    QYClientesCLI_LIMITECREDITO: TFMTBCDField;
    QYClientesCLI_MAILING: TIntegerField;
    QYClientesCLI_NOME: TStringField;
    QYClientesCLI_NUMERO: TStringField;
    QYClientesCLI_OBITO: TStringField;
    QYClientesCLI_PAIS: TStringField;
    QYClientesCLI_PAISCODIGO: TIntegerField;
    QYClientesCLI_PONTOS: TFMTBCDField;
    QYClientesCLI_RG: TStringField;
    QYClientesCLI_SAME: TStringField;
    QYClientesCLI_SITE: TStringField;
    QYClientesCLI_SUFRAMA: TStringField;
    QYClientesCLI_SETOR: TIntegerField;
    QYClientesCLI_TABELAPRECO: TStringField;
    QYClientesCLI_TAXA: TIntegerField;
    QYClientesCLI_TIPOCONSUMIDOR: TStringField;
    QYClientesCLI_TIPOPESSOA: TStringField;
    QYClientesCLI_TELEVENDA: TIntegerField;
    QYClientesCLI_VENDEDOR: TIntegerField;
    QYClientesMAI_DESCRICAO: TStringField;
    QYClientesTAX_DESCRICAO: TStringField;
    QYClientesTAX_TIPO: TStringField;
    QYClientesTAX_VALOR: TFMTBCDField;
    QYClientesVEN_NOME: TStringField;
    Label13: TLabel;
    ComboBox1: TComboBox;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure CadastrarNovoCliente(Documento, Nome: String);
  public
    { Public declarations }
    PermitirCadastrar: Boolean;
  end;

var
  FormClientesLoc: TFormClientesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormClientesLoc.txt';
  Campos='CLI_BAIRRO, CLI_BLOQUEARVENDA, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, '+
         'CLI_CNPJ, CLI_CNS, CLI_CODIGO, CLI_COMPLEMENTO, CLI_CONDICAO, CLI_CONTATO, CLI_CPF, CLI_DESCONTO, CLI_EMAIL, CLI_EMAIL2, '+
         'CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCODIGO, CLI_FANTASIA, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_FRETE, CLI_IDESTRANGEIRO, CLI_IE, CLI_IM, '+
         'CLI_LIMITECREDITO, CLI_MAILING, CLI_NOME, CLI_NUMERO, CLI_OBITO, CLI_PAIS, CLI_PAISCODIGO, CLI_PONTOS, CLI_RG, '+
         'CLI_SAME, CLI_SETOR, CLI_SITE, CLI_SUFRAMA, CLI_TABELAPRECO, CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCONSUMIDOR, CLI_TIPOPESSOA, CLI_VENDEDOR, '+
         'MAI_DESCRICAO, TAX_DESCRICAO, TAX_TIPO, TAX_VALOR, VEN_NOME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormClientesLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYClientes.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClientesLoc.CadastrarNovoCliente(Documento, Nome: String);
begin
  try
    DM.TBClientes.Insert;
    if AlfaNum(Documento).Length=14 then DM.TBClientesCLI_CNPJ.Value:=Documento;
    if AlfaNum(Documento).Length=11 then DM.TBClientesCLI_CPF.Value:=Documento;
    DM.TBClientesCLI_NOME.Value:=UpperCase(Nome);
    DM.TBClientes.Post;
  except on E:Exception do
    begin
      DM.TBClientes.Cancel;
      MessageDlg(E.Message,mtError,[mbOk],0);
    end;
  end;
end;

procedure TFormClientesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClientes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClientesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_CODIGO like '+QuotedStr(Edit1.Text)+Where+' order by CLI_CODIGO'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where (CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' or CLI_CONTATO like '+QuotedStr(Edit2.Text+'%')+') '+Where+' order by CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormClientesLoc.FormCreate(Sender: TObject);
begin
  PermitirCadastrar:=False;
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYClientes.Close;
    QYClientes.SQL.Clear;
    QYClientes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYClientes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormClientesLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClientesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_FANTASIA like '+QuotedStr(Edit3.Text+'%')+Where+' order by CLI_FANTASIA'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_ENDERECO like '+QuotedStr(Edit4.Text+'%')+Where+' order by CLI_ENDERECO, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_BAIRRO like '+QuotedStr(Edit5.Text+'%')+Where+' order by CLI_BAIRRO, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_SETOR like '+QuotedStr(Edit6.Text+'%')+Where+' order by CLI_SETOR, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Clientes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME FANTASIA' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='ENDERECO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='BAIRRO' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CIDADE' then Edit7.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SETOR' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='TELEFONE' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CPF' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CNPJ' then MaskEdit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='EMAIL' then Edit8.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='REG PROFISSIONAL' then Edit9.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Clientes com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ATIVOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='INATIVOS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormClientesLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_CIDADE like '+QuotedStr(Edit7.Text+'%')+Where+' order by CLI_CIDADE, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit8KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit8.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_EMAIL like '+QuotedStr(Edit8.Text+'%')+Where+' order by CLI_EMAIL, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.Edit9KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit9.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_REGPROFISSIONAL like '+QuotedStr(Edit9.Text+'%')+Where+' order by CLI_REGPROFISSIONAL, CLI_NOME'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
var S, Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#32,#37,#40,#41,#45]) then Key:=#0; //37=%.
  if Key=#13 then
  begin
    Key:=#0;
    S:=Trim(MaskEdit1.Text);
    QYClientes.Close;
    QYClientes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=' and CLI_STATUS='+QuotedStr('I');
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO where ('+
      'CLI_FONE1 like '+QuotedStr('%'+S+'%')+' or '+
      'CLI_FONE2 like '+QuotedStr('%'+S+'%')+' or '+
      'CLI_FONE3 like '+QuotedStr('%'+S+'%')+' or '+
      'CLI_MAEFONE like '+QuotedStr('%'+S+'%')+' or '+
      'CLI_PAIFONE like '+QuotedStr('%'+S+'%')+') '+Where+' order by CLI_FONE1'
    );
    QYClientes.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Nome: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if LimparFormatacao(MaskEdit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_CPF like '+QuotedStr(MaskEdit2.Text+'%')+' order by CLI_CPF'
    );
    QYClientes.Open;

    if (PermitirCadastrar) and (QYClientes.IsEmpty) then
    begin
      if QYClientes.IsEmpty then
      Nome:=InputBox('Cadastrar Cliente Novo','Digite o nome do Cliente','');
      if Nome<>'' then
      begin
        CadastrarNovoCliente(MaskEdit2.Text,Nome);
        QYClientes.Close; //fecha e abre novamente pq agora vai ter o cliente;
        QYClientes.Open;
      end;
    end;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
var Nome: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if AlfaNum(MaskEdit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Close;
    QYClientes.SQL.Clear;
    QYClientes.SQL.Add(
      'select '+Campos+' from CLIENTES '+
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
      'left join TAXAS on CLI_TAXA=TAX_CODIGO '+
      'where CLI_CNPJ like '+QuotedStr(MaskEdit3.Text+'%')+' order by CLI_CPF'
    );
    QYClientes.Open;

    if (PermitirCadastrar) and (QYClientes.IsEmpty) then
    begin
      if QYClientes.IsEmpty then
      Nome:=InputBox('Cadastrar Cliente Novo','Digite o nome do Cliente','');
      if Nome<>'' then
      begin
        CadastrarNovoCliente(MaskEdit3.Text,Nome);
        QYClientes.Close; //fecha e abre novamente pq agora vai ter o cliente;
        QYClientes.Open;
      end;
    end;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClientes.SQL.Text);
  end;
end;

procedure TFormClientesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
