unit ImoveisLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, Menus, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormImoveisLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    DSImoveis: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    MaskEdit1: TMaskEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label4: TLabel;
    QYImoveis: TFDQuery;
    TRImoveis: TFDTransaction;
    QYImoveisIMO_AREALOCALIZACAO: TStringField;
    QYImoveisIMO_BAIRRO: TStringField;
    QYImoveisIMO_CEP: TStringField;
    QYImoveisIMO_CIDADE: TStringField;
    QYImoveisIMO_CIDADECODIGO: TIntegerField;
    QYImoveisIMO_CLIENTE: TIntegerField;
    QYImoveisIMO_CODIGO: TIntegerField;
    QYImoveisIMO_COMPLEMENTO: TStringField;
    QYImoveisIMO_DESCRICAO: TStringField;
    QYImoveisIMO_DESCQTDE: TIntegerField;
    QYImoveisIMO_DESCVALOR: TFMTBCDField;
    QYImoveisIMO_ENDERECO: TStringField;
    QYImoveisIMO_ESTADO: TStringField;
    QYImoveisIMO_FINALIDADE: TStringField;
    QYImoveisIMO_NUMERO: TStringField;
    QYImoveisIMO_STATUS: TStringField;
    QYImoveisIMO_TIPOIMOVEL: TIntegerField;
    QYImoveisIMO_TIPONEGOCIO: TStringField;
    QYImoveisIMO_VALORALUGUEL: TFMTBCDField;
    QYImoveisCLI_BAIRRO: TStringField;
    QYImoveisCLI_CEP: TStringField;
    QYImoveisCLI_CIDADE: TStringField;
    QYImoveisCLI_CIDADECODIGO: TIntegerField;
    QYImoveisCLI_CNPJ: TStringField;
    QYImoveisCLI_COMPLEMENTO: TStringField;
    QYImoveisCLI_CPF: TStringField;
    QYImoveisCLI_ENDERECO: TStringField;
    QYImoveisCLI_ESTADO: TStringField;
    QYImoveisCLI_ESTADOCIVIL: TStringField;
    QYImoveisCLI_NOME: TStringField;
    QYImoveisCLI_NUMERO: TStringField;
    QYImoveisIMT_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImoveisLoc: TFormImoveisLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormImoveisLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormImoveisLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYImoveis.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormImoveisLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYImoveis.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormImoveisLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYImoveis.Active:=False;
    QYImoveis.SQL.Clear;
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_CODIGO='+QuotedStr(Edit1.Text)+' order by IMO_CODIGO');
    QYImoveis.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYImoveis.Active:=False;
    QYImoveis.SQL.Clear;
    if CheckBox1.Checked then
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' and IMO_STATUS=''A'' order by IMO_DESCRICAO') else
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by IMO_DESCRICAO');
    QYImoveis.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYImoveis.Active:=False;
    QYImoveis.SQL.Clear;
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_CONTRATO='+QuotedStr(Edit3.Text)+' order by IMO_CONTRATO');
    QYImoveis.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYImoveis.Active:=False;
    QYImoveis.SQL.Clear;
    if CheckBox1.Checked then
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where CLI_NOME like '+QuotedStr(Edit6.Text+'%')+' and IMO_STATUS=''A'' order by CLI_NOME') else
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where CLI_NOME like '+QuotedStr(Edit6.Text+'%')+' order by CLI_NOME');
    QYImoveis.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormImoveisLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormImoveisLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormImoveisLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Imoveis',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PROPRIETARIO' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CONTRATO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CEP' then MaskEdit1.SetFocus;
end;

procedure TFormImoveisLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit1.Text='     -   ' then Exit;
    QYImoveis.Active:=False;
    QYImoveis.SQL.Clear;
    if CheckBox1.Checked then
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_CEP like '+QuotedStr(MaskEdit1.Text+'%')+' and IMO_STATUS=''A'' order by IMO_CEP') else
    QYImoveis.SQL.Add('select IMO_CODIGO, IMO_CLIENTE, IMO_DESCRICAO, IMO_TIPOIMOVEL, IMO_VALORALUGUEL, IMO_STATUS, '+
                      'IMO_DESCQTDE, IMO_DESCVALOR, CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, '+
                      'CLI_CPF, CLI_ENDERECO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_NUMERO, IMO_CEP, IMO_NUMERO, IMO_COMPLEMENTO, '+
                      'IMO_BAIRRO, IMO_CIDADE, IMO_CIDADECODIGO, IMO_ESTADO, '+
                      'IMO_AREALOCALIZACAO, IMO_FINALIDADE, IMO_TIPONEGOCIO, IMO_ENDERECO, CLI_NOME, IMT_DESCRICAO from IMOVEIS '+
                      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO '+
                      'where IMO_CEP like '+QuotedStr(MaskEdit1.Text+'%')+' order by IMO_CEP');
    QYImoveis.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
