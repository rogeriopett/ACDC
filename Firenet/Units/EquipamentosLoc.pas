unit EquipamentosLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEquipamentosLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSEquipamentos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label5: TLabel;
    Edit7: TEdit;
    QYEquipamentos: TFDQuery;
    TREquipamentos: TFDTransaction;
    QYEquipamentosEQP_ACESSORIOS: TStringField;
    QYEquipamentosEQP_ANOFAB: TIntegerField;
    QYEquipamentosEQP_ANOMOD: TIntegerField;
    QYEquipamentosEQP_CHASSI: TStringField;
    QYEquipamentosEQP_CLIENTE: TIntegerField;
    QYEquipamentosEQP_CODIGO: TIntegerField;
    QYEquipamentosEQP_COMBUSTIVEL: TStringField;
    QYEquipamentosEQP_COR: TStringField;
    QYEquipamentosEQP_DTCADASTRO: TDateField;
    QYEquipamentosEQP_DESCRICAO: TStringField;
    QYEquipamentosEQP_LOCALIZACAO: TStringField;
    QYEquipamentosEQP_MARCA: TStringField;
    QYEquipamentosEQP_MODELO: TStringField;
    QYEquipamentosEQP_REVENDEDOR: TStringField;
    QYEquipamentosEQP_SERIE: TStringField;
    QYEquipamentosEQP_STATUS: TStringField;
    QYEquipamentosEQP_TAMANHO: TStringField;
    QYEquipamentosCLI_CODIGO: TIntegerField;
    QYEquipamentosCLI_NOME: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    const Campos = 'EQP_ACESSORIOS, EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, EQP_CLIENTE, EQP_CODIGO, EQP_COMBUSTIVEL, '+
      'EQP_COR, EQP_DTCADASTRO, EQP_DESCRICAO, EQP_LOCALIZACAO, EQP_MARCA, EQP_MODELO, EQP_REVENDEDOR, '+
      'EQP_SERIE, EQP_STATUS, EQP_TAMANHO, CLI_CODIGO, CLI_NOME';
  end;

var
  FormEquipamentosLoc: TFormEquipamentosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEquipamentosLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEquipamentosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEquipamentos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEquipamentosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEquipamentos.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEquipamentosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_CODIGO like '+QuotedStr('%'+Edit1.Text)+' '+
      'order by EQP_CODIGO');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' '+
      'order by CLI_NOME, CLI_CODIGO desc');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' '+
      'order by EQP_DESCRICAO, EQP_CODIGO desc');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_MODELO like '+QuotedStr(Edit4.Text+'%')+' '+
      'order by EQP_MODELO, EQP_CODIGO desc');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_SERIE like '+QuotedStr(Edit5.Text+'%')+' '+
      'order by EQP_SERIE, EQP_CODIGO desc');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_MARCA like '+QuotedStr(Edit6.Text+'%')+' '+
      'order by EQP_DESCRICAO, EQP_CODIGO desc');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_CLIENTE='+QuotedStr(Edit7.Text)+' '+
      'order by EQP_DESCRICAO');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEquipamentosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if not DM.TBClientes.IsEmpty then
  begin
    QYEquipamentos.Close;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_CLIENTE='+DM.TBClientesCLI_CODIGO.Value.ToString+' '+
      'order by EQP_DTCADASTRO, EQP_DESCRICAO');
    QYEquipamentos.Active:=True;
    QYEquipamentos.Open;
  end else
  begin
    if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
    begin
      QYEquipamentos.Close;
      QYEquipamentos.SQL.Clear;
      QYEquipamentos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
      QYEquipamentos.Open;
    end;
  end;

  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEquipamentosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEquipamentosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Equipamentos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit7.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MARCA' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MODELO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SERIE' then Edit5.SetFocus;
end;

procedure TFormEquipamentosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormEquipamentosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end;
    Key:=#0;
    QYEquipamentos.Active:=False;
    QYEquipamentos.SQL.Clear;
    QYEquipamentos.SQL.Add(
      'select '+Campos+' from EQUIPAMENTOS '+
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO '+
      'where EQP_DTCADASTRO between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text)))+' '+
      'order by EQP_DTCADASTRO, EQP_DESCRICAO');
    QYEquipamentos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEquipamentos.SQL.Text);
  end;
end;

procedure TFormEquipamentosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
