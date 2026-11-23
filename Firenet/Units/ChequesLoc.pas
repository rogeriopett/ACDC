unit ChequesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormChequesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSCheques: TDataSource;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label9: TLabel;
    Edit7: TEdit;
    TRCheques: TFDTransaction;
    QYCheques: TFDQuery;
    QYChequesCHE_CODIGO: TIntegerField;
    QYChequesCHE_BANCO: TIntegerField;
    QYChequesCHE_CLIENTE: TIntegerField;
    QYChequesCHE_VALOR: TFMTBCDField;
    QYChequesCHE_BOMPARA: TDateField;
    QYChequesCHE_AGENCIA: TStringField;
    QYChequesCHE_CONTA: TStringField;
    QYChequesCHE_DTCADASTRO: TDateField;
    QYChequesCHE_ESPECIAL: TStringField;
    QYChequesCHE_STATUS: TStringField;
    QYChequesCLI_NOME: TStringField;
    QYChequesBAN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequesLoc: TFormChequesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormChequesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormChequesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormChequesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCheques.Close;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCheques.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormChequesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormChequesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_CODIGO='+Edit1.Text);
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' '+
                      'order by CLI_NOME, CLI_CODIGO desc');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCheques.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormChequesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCheques.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormChequesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Cheques',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='BANCO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='AGENCIA' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CONTA' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit7.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit1.SetFocus;
end;

procedure TFormChequesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where BAN_NOME like '+QuotedStr(Edit3.Text+'%')+' '+
                      'order by CLI_NOME, CLI_CODIGO desc');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_AGENCIA like '+QuotedStr('%'+Edit5.Text+'%')+' '+
                      'order by CHE_AGENCIA');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_CONTA like '+QuotedStr('%'+Edit6.Text+'%')+' '+
                      'order by CHE_CONTA');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_VALOR like '+QuotedStr('%'+Edit7.Text+'%')+' '+
                      'order by CHE_VALOR');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_NUMERO like '+QuotedStr('%'+Edit4.Text+'%')+' '+
                      'order by CHE_NUMERO');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormChequesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then
    begin
      ShowMessage('Digite as datas');
      Exit;
    end;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYCheques.Active:=False;
    QYCheques.SQL.Clear;
    QYCheques.SQL.Add('select CHE_CODIGO, CHE_BANCO, CHE_CLIENTE, CHE_VALOR, CHE_BOMPARA, CHE_AGENCIA, CHE_CONTA, CHE_DTCADASTRO, '+
                      'CHE_NUMERO, CHE_ESPECIAL, CHE_STATUS, CLI_NOME, BAN_NOME from CHEQUES '+
                      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
                      'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
                      'where CHE_BOMPARA between '+Where+' '+
                      'order by CHE_NUMERO');
    QYCheques.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCheques.SQL.Text);
  end;
end;

procedure TFormChequesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
