unit ProdutosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, StdCtrls, Grids,
  DBGrids;

type
  TFormProdutosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSProdutos: TDataSource;
    QYProdutos: TIBQuery;
    TRProdutos: TIBTransaction;
    QYProdutosPRO_CODIGO: TIntegerField;
    QYProdutosPRO_NOME: TIBStringField;
    QYProdutosPRO_ESTOQUEATUAL: TIBBCDField;
    QYProdutosPRO_PRECOVENDA: TIBBCDField;
    QYProdutosPRO_TIPO: TIBStringField;
    QYProdutosPRO_CODIGOFAB: TIBStringField;
    QYProdutosPRO_CODIGOBARRAS: TIBStringField;
    QYProdutosPRO_FAMILIA: TIntegerField;
    QYProdutosPRO_GRUPO: TIntegerField;
    QYProdutosPRO_DESCRICAO: TMemoField;
    QYProdutosPRO_CORSABOR: TIBStringField;
    QYProdutosPRO_TAMANHO: TIBStringField;
    QYProdutosPRO_LOCALIZACAO: TIBStringField;
    QYProdutosPRO_UNIDADE: TIBStringField;
    QYProdutosPRO_ESTOQUEMIN: TIBBCDField;
    QYProdutosPRO_ESTOQUEMAX: TIBBCDField;
    QYProdutosPRO_ALIQICMS: TIBBCDField;
    QYProdutosPRO_ALIQICMSRED: TIBBCDField;
    QYProdutosPRO_ALIQIPI: TIBBCDField;
    QYProdutosPRO_ALIQISS: TIBBCDField;
    QYProdutosPRO_ALIQOUTROS: TIBBCDField;
    QYProdutosPRO_COMISSAO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOULT: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField;
    QYProdutosPRO_PRECOVENDAULT: TIBBCDField;
    QYProdutosPRO_PRECOVENDAMEDIO: TIBBCDField;
    QYProdutosPRO_TABPRECO1: TIBStringField;
    QYProdutosPRO_MARGEM1: TIBBCDField;
    QYProdutosPRO_PRECO1: TIBBCDField;
    QYProdutosPRO_TABPRECO2: TIBStringField;
    QYProdutosPRO_MARGEM2: TIBBCDField;
    QYProdutosPRO_PRECO2: TIBBCDField;
    QYProdutosPRO_TABPRECO3: TIBStringField;
    QYProdutosPRO_MARGEM3: TIBBCDField;
    QYProdutosPRO_PRECO3: TIBBCDField;
    QYProdutosPRO_TABPRECO4: TIBStringField;
    QYProdutosPRO_MARGEM4: TIBBCDField;
    QYProdutosPRO_PRECO4: TIBBCDField;
    QYProdutosPRO_TABPRECO5: TIBStringField;
    QYProdutosPRO_MARGEM5: TIBBCDField;
    QYProdutosPRO_PRECO5: TIBBCDField;
    QYProdutosPRO_TABPRECO6: TIBStringField;
    QYProdutosPRO_MARGEM6: TIBBCDField;
    QYProdutosPRO_PRECO6: TIBBCDField;
    QYProdutosPRO_ATUALIZATABELA: TIBStringField;
    QYProdutosPRO_STATUS: TIBStringField;
    QYProdutosPRO_DTCADASTRO: TDateField;
    QYProdutosPRO_DTATUALIZACAO: TDateField;
    QYProdutosPRO_USUARIO: TIBStringField;
    QYProdutosPRO_PESO: TIBBCDField;
    QYProdutosGRU_CODIGO: TIntegerField;
    QYProdutosGRU_DESCRICAO: TIBStringField;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    QYProdutosPRO_REGISTROMS: TIBStringField;
    QYProdutosPRO_MARGEM: TIBBCDField;
    QYProdutosPRO_COMPOSTO: TIBStringField;
    QYProdutosPRO_ALIQICMSST: TIBBCDField;
    QYProdutosPRO_DTULTCOMPRA: TDateField;
    QYProdutosPRO_DTULTVENDA: TDateField;
    QYProdutosPRO_INTERNET: TIBStringField;
    QYProdutosPRO_OFERTA: TIBStringField;
    QYProdutosPRO_CSTICMS: TIntegerField;
    QYProdutosPRO_CSTIPI: TIntegerField;
    QYProdutosPRO_CSTPIS: TIntegerField;
    QYProdutosPRO_CSTCOFINS: TIntegerField;
    QYProdutosPRO_ALIQPIS: TIBBCDField;
    QYProdutosPRO_ALIQCOFINS: TIBBCDField;
    QYProdutosPRO_MODICMS: TIBStringField;
    QYProdutosPRO_MODICMSST: TIBStringField;
    QYProdutosPRO_CSTISS: TIntegerField;
    QYProdutosPRO_CLASSFISCAL: TIntegerField;
    QYProdutosPRO_ORIGEM: TIBStringField;
    QYProdutosPRO_ALIQPISST: TIBBCDField;
    QYProdutosPRO_ALIQCOFINSST: TIBBCDField;
    QYProdutosPRO_ALIQICMSADICST: TIBBCDField;
    QYProdutosPRO_MARCA: TIntegerField;
    QYProdutosPRO_PALAVRASCHAVE: TIBStringField;
    QYProdutosPRO_OBSERVACOES: TMemoField;
    QYProdutosPRO_COMPOEBASEICMS: TIBStringField;
    Edit6: TEdit;
    Label6: TLabel;
    QYProdutosMAR_CODIGO: TIntegerField;
    QYProdutosMAR_DESCRICAO: TIBStringField;
    Edit7: TEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosLoc: TFormProdutosLoc;
  Procurar : Boolean = False;
implementation
uses DataMod, FuncoesPomPom;
{$R *.dfm}

procedure TFormProdutosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormProdutosLoc.txt');
end;

procedure TFormProdutosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  if FileExists(GetTempDir+'FormProdutosLoc.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormProdutosLoc.txt');
  if DM.TBParametrosPAR_LOCPRODUTOSPRECOS.Value='N' then
  begin
    DBGrid1.Columns[6].Visible:=False;
    DBGrid1.Columns[7].Visible:=False;
    DBGrid1.Columns[8].Visible:=False;
    DBGrid1.Columns[9].Visible:=False;
    DBGrid1.Columns[10].Visible:=False;
    DBGrid1.Columns[11].Visible:=False;
    DBGrid1.Columns[12].Visible:=False;
  end;
end;

procedure TFormProdutosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGO like '+QuotedStr(Edit1.Text)+' and PRO_STATUS=''A'' order by PRO_CODIGO') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGO like '+QuotedStr(Edit1.Text)+' order by PRO_CODIGO');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_NOME like '+QuotedStr(Edit2.Text+'%')+' and PRO_STATUS=''A'' order by PRO_NOME') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_NOME like '+QuotedStr(Edit2.Text+'%')+' order by PRO_NOME');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProdutos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProdutos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.FormShow(Sender: TObject);
begin
{  if DM.TBParametrosPAR_LOCPRODUTOS.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='NOME' then Edit2.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='PALAVRAS CHAVE' then Edit6.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='GRUPO' then Edit3.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='MARCA' then Edit7.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='COD. FAB.' then Edit4.SetFocus else
  if DM.TBParametrosPAR_LOCPRODUTOS.Value='COD. BARRAS' then Edit5.SetFocus;}
end;

procedure TFormProdutosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where GRU_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' and PRO_STATUS=''A'' order by PRO_GRUPO, PRO_NOME') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where GRU_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' order by PRO_GRUPO, PRO_NOME');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGOFAB like '+QuotedStr(Edit4.Text+'%')+' and PRO_STATUS=''A'' order by PRO_CODIGOFAB, PRO_NOME') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGOFAB like '+QuotedStr(Edit4.Text+'%')+' order by PRO_CODIGOFAB, PRO_NOME');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGOBARRAS like '+QuotedStr(Edit5.Text+'%')+' and PRO_STATUS=''A'' order by PRO_CODIGOBARRAS, PRO_NOME') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_CODIGOBARRAS like '+QuotedStr(Edit5.Text+'%')+' order by PRO_CODIGOBARRAS, PRO_NOME');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_PALAVRASCHAVE like '+QuotedStr(Edit6.Text+'%')+' and PRO_STATUS=''A'' order by PRO_PALAVRASCHAVE') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where PRO_PALAVRASCHAVE like '+QuotedStr(Edit6.Text+'%')+' order by PRO_PALAVRASCHAVE');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProdutosLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    if CheckBox1.Checked then
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where MAR_DESCRICAO like '+QuotedStr(Edit7.Text+'%')+' and PRO_STATUS=''A'' order by MAR_DESCRICAO, PRO_NOME') else
    QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO where MAR_DESCRICAO like '+QuotedStr(Edit7.Text+'%')+' order by MAR_DESCRICAO, PRO_NOME');
    QYProdutos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
