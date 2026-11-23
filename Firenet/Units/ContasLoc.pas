unit ContasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormContasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSContas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRContas: TFDTransaction;
    QYContas: TFDQuery;
    QYContasCON_AGENCIA: TStringField;
    QYContasCON_AGENCIADIGITO: TIntegerField;
    QYContasCON_BAIXACODIGO: TIntegerField;
    QYContasCON_BANCO: TIntegerField;
    QYContasCON_CARTEIRA: TStringField;
    QYContasCON_CEDENTE: TStringField;
    QYContasCON_CEDENTEDIGITO: TIntegerField;
    QYContasCON_CEDENTENOME: TStringField;
    QYContasCON_CODIGO: TIntegerField;
    QYContasCON_CONTA: TStringField;
    QYContasCON_CONTADIGITO: TIntegerField;
    QYContasCON_CONVENIO: TStringField;
    QYContasCON_DIASBAIXA: TIntegerField;
    QYContasCON_DIASPROTESTO: TIntegerField;
    QYContasCON_ESPECIE: TStringField;
    QYContasCON_INSTRUCAO1: TStringField;
    QYContasCON_INSTRUCAO2: TStringField;
    QYContasCON_INSTRUCAO3: TStringField;
    QYContasCON_INSTRUCAO4: TStringField;
    QYContasCON_INSTRUCAO5: TStringField;
    QYContasCON_LOCALPAGTO: TStringField;
    QYContasCON_MODALIDADE: TIntegerField;
    QYContasCON_MORACODIGO: TStringField;
    QYContasCON_MORAJUROS: TFMTBCDField;
    QYContasCON_MULTA: TFMTBCDField;
    QYContasCON_NOME: TStringField;
    QYContasCON_PROTESTOCODIGO: TIntegerField;
    QYContasCON_SALDO: TFMTBCDField;
    QYContasCON_VALORBOLETO: TFMTBCDField;
    QYContasBAN_NOME: TStringField;
    QYContasCON_DESCONTOTIPO: TStringField;
    QYContasCON_MORATIPO: TStringField;
    QYContasCON_MULTATIPO: TStringField;
    QYContasCON_PROTESTOTIPO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasLoc: TFormContasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = False;

const
  NomeArquivoFormTxt='FormContaLoc.txt';
  Campos='CON_AGENCIA, CON_AGENCIADIGITO, CON_BAIXACODIGO, CON_BANCO, CON_CARTEIRA, CON_CEDENTE, CON_CEDENTEDIGITO, CON_CEDENTENOME, CON_CODIGO, '+
         'CON_CONTA, CON_CONTADIGITO, CON_CONVENIO, CON_DESCONTOTIPO, CON_DIASBAIXA, CON_DIASPROTESTO, CON_ESPECIE, CON_INSTRUCAO1, CON_INSTRUCAO2, CON_INSTRUCAO3, '+
         'CON_INSTRUCAO4, CON_INSTRUCAO5, CON_LOCALPAGTO, CON_MODALIDADE, CON_MORACODIGO, CON_MORAJUROS, CON_MORATIPO, CON_MULTA, CON_MULTATIPO, CON_NOME, '+
         'CON_PROTESTOCODIGO, CON_PROTESTOTIPO, CON_SALDO, CON_VALORBOLETO, BAN_NOME';
implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormContasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormContasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYContas.Close;
    QYContas.SQL.Clear;
    QYContas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYContas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormContasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYContas.Active:=False;
    QYContas.SQL.Clear;
    QYContas.SQL.Add(
      'select '+Campos+' from CONTAS '+
      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
      'where CON_CODIGO like '+QuotedStr('%'+Edit1.Text+'%')+' order by CON_CODIGO'
    );
    QYContas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYContas.SQL.Text);
  end;
end;

procedure TFormContasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYContas.Active:=False;
    QYContas.SQL.Clear;
    QYContas.SQL.Add(
      'select '+Campos+' from CONTAS '+
      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
      'where CON_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by CON_NOME'
    );
    QYContas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYContas.SQL.Text);
  end;
end;

procedure TFormContasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYContas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYContas.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;
end;

procedure TFormContasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
