unit ProducaoLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProducaoLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DSProducao: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    Edit3: TEdit;
    QYProducao: TFDQuery;
    TRProducao: TFDTransaction;
    QYProducaoPRD_CODIGO: TIntegerField;
    QYProducaoPRD_DTCADASTRO: TDateField;
    QYProducaoPRD_CLIENTE: TIntegerField;
    QYProducaoPRD_DATABAIXA: TDateField;
    QYProducaoPRD_STATUS: TStringField;
    QYProducaoPRD_NOTACLIENTE: TIntegerField;
    QYProducaoCLI_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoLoc: TFormProducaoLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormProducaoLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormProducaoLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProducaoLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYProducao.Close;
    QYProducao.SQL.Clear;
    QYProducao.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYProducao.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProducaoLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProducaoLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Ordens de Producao',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOTA CLIENTE' then Edit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Ordens de Producao com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormProducaoLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProducao.Active:=False;
    QYProducao.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
    QYProducao.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_NOTACLIENTE, CLI_NOME from PRODUCAO '+
                       'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
                       'where PRD_CODIGO='+QuotedStr(Edit1.Text)+Where+' order by PRD_CODIGO');
    QYProducao.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProducao.SQL.Text);
  end;
end;

procedure TFormProducaoLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYProducao.Active:=False;
    QYProducao.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
    QYProducao.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_NOTACLIENTE, CLI_NOME from PRODUCAO '+
                       'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
                       'where PRD_DTCADASTRO between '+Where+' order by PRD_DTCADASTRO desc, CLI_NOME');
    QYProducao.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProducao.SQL.Text);
  end;
end;

procedure TFormProducaoLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormProducaoLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormProducaoLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYProducao.Active:=False;
    QYProducao.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
    QYProducao.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_NOTACLIENTE, CLI_NOME from PRODUCAO '+
                       'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
                       'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, PRD_DTCADASTRO desc');
    QYProducao.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProducao.SQL.Text);
  end;
end;

procedure TFormProducaoLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYProducao.Active:=False;
    QYProducao.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
    QYProducao.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_NOTACLIENTE, CLI_NOME from PRODUCAO '+
                       'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
                       'where PRD_NOTACLIENTE like '+QuotedStr(Edit3.Text+'%')+Where+' order by PRD_NOTACLIENTE');
    QYProducao.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProducao.SQL.Text);
  end;
end;

procedure TFormProducaoLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProducao.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProducaoLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProducao.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

end.
