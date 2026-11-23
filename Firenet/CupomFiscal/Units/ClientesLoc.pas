unit ClientesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids,
  IBDatabase, Mask;

type
  TFormClientesLoc = class(TForm)
    DSClientes: TDataSource;
    QYClientes: TIBQuery;
    TRClientes: TIBTransaction;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_NOME: TIBStringField;
    QYClientesCLI_ATIVIDADE: TIntegerField;
    QYClientesCLI_VENDEDOR: TIntegerField;
    QYClientesCLI_ENDERECO: TIBStringField;
    QYClientesCLI_CEP: TIBStringField;
    QYClientesCLI_BAIRRO: TIBStringField;
    QYClientesCLI_CIDADE: TIBStringField;
    QYClientesCLI_ESTADO: TIBStringField;
    QYClientesCLI_FONE1: TIBStringField;
    QYClientesCLI_FONE2: TIBStringField;
    QYClientesCLI_FONE3: TIBStringField;
    QYClientesCLI_CNPJ: TIBStringField;
    QYClientesCLI_IE: TIBStringField;
    QYClientesCLI_CPF: TIBStringField;
    QYClientesCLI_RG: TIBStringField;
    QYClientesCLI_DTNASC: TDateField;
    QYClientesCLI_TIPOPESSOA: TIBStringField;
    QYClientesCLI_ESTADOCIVIL: TIBStringField;
    QYClientesCLI_DTCADASTRO: TDateField;
    QYClientesCLI_STATUS: TIBStringField;
    QYClientesCLI_OBSERVACOES: TMemoField;
    QYClientesCLI_CONTATO: TIBStringField;
    QYClientesCLI_SITE: TIBStringField;
    QYClientesCLI_EMAIL: TIBStringField;
    QYClientesCLI_NUMERO: TIntegerField;
    QYClientesCLI_DTATUALIZACAO: TDateField;
    QYClientesCLI_COMPLEMENTO: TIBStringField;
    QYClientesCLI_USUARIO: TIBStringField;
    QYClientesCLI_ENDERECOCOB: TIBStringField;
    QYClientesCLI_CEPCOB: TIBStringField;
    QYClientesCLI_BAIRROCOB: TIBStringField;
    QYClientesCLI_CIDADECOB: TIBStringField;
    QYClientesCLI_ESTADOCOB: TIBStringField;
    QYClientesCLI_NUMEROCOB: TIntegerField;
    QYClientesCLI_COMPLEMENTOCOB: TIBStringField;
    QYClientesCLI_CNPJCOB: TIBStringField;
    QYClientesCLI_IECOB: TIBStringField;
    QYClientesCLI_TELEVENDA: TIntegerField;
    QYClientesCLI_TABELAPRECO: TIBStringField;
    QYClientesCLI_FANTASIA: TIBStringField;
    Edit3: TEdit;
    Label3: TLabel;
    QYClientesCLI_SETOR: TIntegerField;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    QYClientesCLI_EMAIL2: TIBStringField;
    QYClientesCLI_LIMITECREDITO: TIBBCDField;
    QYClientesCLI_BLOQUEARVENDA: TIBStringField;
    Edit7: TEdit;
    Label7: TLabel;
    QYClientesCLI_DESCONTO: TIBBCDField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    QYClientesCLI_CIDADECODIGO: TIntegerField;
    QYClientesCLI_CIDADECODIGOCOB: TIntegerField;
    QYClientesCLI_ESTADOCODIGO: TIntegerField;
    QYClientesCLI_ESTADOCODIGOCOB: TIntegerField;
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
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesLoc: TFormClientesLoc;
  Procurar : Boolean = False;
implementation
uses DataMod;
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

procedure TFormClientesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClientes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClientesLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',Chr(8),#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CODIGO like '+QuotedStr(Edit1.Text)+' and CLI_STATUS=''A'' order by CLI_CODIGO') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CODIGO like '+QuotedStr(Edit1.Text)+' order by CLI_CODIGO');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' and CLI_STATUS=''A'' order by CLI_NOME') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
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
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_FANTASIA like '+QuotedStr(Edit3.Text+'%')+' and CLI_STATUS=''A'' order by CLI_FANTASIA') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_FANTASIA like '+QuotedStr(Edit3.Text+'%')+' order by CLI_FANTASIA');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_ENDERECO like '+QuotedStr(Edit4.Text+'%')+' and CLI_STATUS=''A'' order by CLI_ENDERECO, CLI_NOME') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_ENDERECO like '+QuotedStr(Edit4.Text+'%')+' order by CLI_ENDERECO, CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_BAIRRO like '+QuotedStr(Edit5.Text+'%')+' and CLI_STATUS=''A'' order by CLI_BAIRRO, CLI_NOME') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_BAIRRO like '+QuotedStr(Edit5.Text+'%')+' order by CLI_BAIRRO, CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_SETOR like '+QuotedStr(Edit6.Text+'%')+' and CLI_STATUS=''A'' order by CLI_SETOR, CLI_NOME') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_SETOR like '+QuotedStr(Edit6.Text+'%')+' order by CLI_SETOR, CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.FormShow(Sender: TObject);
begin
{  if DM.TBParametrosPAR_LOCCLIENTES.Value='CODIGO' then
  Edit1.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='NOME' then
  Edit2.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='NOME FANTASIA' then
  Edit3.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='ENDERECO' then
  Edit4.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='BAIRRO' then
  Edit5.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='CIDADE' then
  Edit7.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='SETOR' then
  Edit6.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='TELEFONE' then
  MaskEdit1.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='CPF' then
  MaskEdit2.SetFocus else
  if DM.TBParametrosPAR_LOCCLIENTES.Value='CNPJ' then
  MaskEdit3.SetFocus;                 }
end;

procedure TFormClientesLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CIDADE like '+QuotedStr(Edit7.Text+'%')+' and CLI_STATUS=''A'' order by CLI_CIDADE, CLI_NOME') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CIDADE like '+QuotedStr(Edit7.Text+'%')+' order by CLI_CIDADE, CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',Chr(8),#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit1.Text='(   )     -    ' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_FONE1 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_FONE2 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_FONE3 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_MAEFONE like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_PAIFONE like '+QuotedStr(MaskEdit1.Text+'%')+' and CLI_STATUS=''A'' order by CLI_FONE1') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_FONE1 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_FONE2 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_FONE3 like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_MAEFONE like '+QuotedStr(MaskEdit1.Text+'%')+' or CLI_PAIFONE like '+QuotedStr(MaskEdit1.Text+'%')+' order by CLI_FONE1');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.MaskEdit1Enter(Sender: TObject);
begin
  MaskEdit1.Text:=DM.TBParametrosPAR_DDDPADRAO.Value;
  MaskEdit1.SelStart:=6;
end;

procedure TFormClientesLoc.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',Chr(8),#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit2.Text='   .   .   -  ' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CPF like '+QuotedStr(MaskEdit2.Text+'%')+' and CLI_STATUS=''A'' order by CLI_CPF') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CPF like '+QuotedStr(MaskEdit2.Text+'%')+' order by CLI_CPF');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesLoc.MaskEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',Chr(8),#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit3.Text='  .   .   /    -  ' then Exit; //nao faz pesquisa nula.
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CNPJ like '+QuotedStr(MaskEdit3.Text+'%')+' and CLI_STATUS=''A'' order by CLI_CPF') else
    QYClientes.SQL.Add('select * from CLIENTES where CLI_CNPJ like '+QuotedStr(MaskEdit3.Text+'%')+' order by CLI_CPF');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
