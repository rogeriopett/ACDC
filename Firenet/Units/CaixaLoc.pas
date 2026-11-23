unit CaixaLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCaixaLoc = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Label5: TLabel;
    DSCaixa: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label2: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    TRCaixa: TFDTransaction;
    QYCaixa: TFDQuery;
    QYCaixaCAI_CLIENTE: TIntegerField;
    QYCaixaCAI_CODIGO: TIntegerField;
    QYCaixaCAI_DATA: TDateField;
    QYCaixaCAI_DESCRICAO: TStringField;
    QYCaixaCAI_ENTRADASAIDA: TStringField;
    QYCaixaCAI_NUMDOCTO: TStringField;
    QYCaixaCAI_TIPODOCTO: TStringField;
    QYCaixaCAI_VALOR: TFMTBCDField;
    QYCaixaCLI_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaLoc: TFormCaixaLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormCaixaLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormCaixaLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormCaixaLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCaixa.Close;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCaixa.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormCaixaLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCaixaLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CAI_CODIGO like '+QuotedStr(Edit1.Text)+' order by CAI_CODIGO');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CAI_CLIENTE='+QuotedStr(Edit2.Text)+' order by CAI_CODIGO desc');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CAI_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by CAI_DATA, CAI_CODIGO');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CLI_NOME like '+QuotedStr(Edit4.Text+'%')+' order by CLI_NOME, CAI_CODIGO desc');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CAI_VALOR like '+QuotedStr(Edit5.Text+'%')+' order by CAI_VALOR, CAI_CODIGO desc');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormCaixaLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
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
    end; //try.
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYCaixa.Active:=False;
    QYCaixa.SQL.Clear;
    QYCaixa.SQL.Add('select CAI_CLIENTE, CAI_CODIGO, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
                    'CAI_NUMDOCTO, CAI_TIPODOCTO, CAI_VALOR, CLI_NOME from CAIXAMOV '+
                    'left join CLIENTES on CAI_CLIENTE=CLI_CODIGO '+
                    'where CAI_DATA between '+Where+' order by CAI_DATA, CAI_CODIGO');
    QYCaixa.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCaixa.SQL.Text);
  end;
end;

procedure TFormCaixaLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormCaixaLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCaixa.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCaixaLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCaixa.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCaixaLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Fluxo de Caixa',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;
end;

end.
