unit HorasLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormHorasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSHoras: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYHoras: TFDQuery;
    TRHoras: TFDTransaction;
    QYHorasHOR_CODIGO: TIntegerField;
    QYHorasHOR_DESCRICAO: TStringField;
    QYHorasHOR_DTCADASTRO: TDateField;
    QYHorasHOR_QUANTIDADE: TCurrencyField;
    QYHorasHOR_SALDOANTERIOR: TCurrencyField;
    QYHorasHOR_SALDOPOSTERIOR: TCurrencyField;
    QYHorasHOR_TRANSACAO: TStringField;
    QYHorasHOR_VENDEDOR: TIntegerField;
    QYHorasVEN_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorasLoc: TFormHorasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormHorasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;

{$R *.dfm}

procedure TFormHorasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYHoras.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormHorasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYHoras.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormHorasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYHoras.Active:=False;
    QYHoras.SQL.Clear;
    QYHoras.SQL.Add('select HOR_CODIGO, HOR_DESCRICAO, HOR_DTCADASTRO, HOR_QUANTIDADE, HOR_SALDOANTERIOR, HOR_SALDOPOSTERIOR, '+
                    'HOR_TRANSACAO, HOR_VENDEDOR, VEN_NOME from HORAS '+
                    'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO '+
                    'where HOR_CODIGO='+Edit1.Text);
    QYHoras.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYHoras.SQL.Text);
  end;
end;

procedure TFormHorasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYHoras.Active:=False;
    QYHoras.SQL.Clear;
    QYHoras.SQL.Add('select HOR_CODIGO, HOR_DESCRICAO, HOR_DTCADASTRO, HOR_QUANTIDADE, HOR_SALDOANTERIOR, HOR_SALDOPOSTERIOR, '+
                    'HOR_TRANSACAO, HOR_VENDEDOR, VEN_NOME from HORAS '+
                    'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO '+
                    'where HOR_VENDEDOR='+Edit2.Text+' '+
                    'order by HOR_VENDEDOR, HOR_CODIGO desc');
    QYHoras.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYHoras.SQL.Text);
  end;
end;

procedure TFormHorasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYHoras.Active:=False;
    QYHoras.SQL.Clear;
    QYHoras.SQL.Add('select HOR_CODIGO, HOR_DESCRICAO, HOR_DTCADASTRO, HOR_QUANTIDADE, HOR_SALDOANTERIOR, HOR_SALDOPOSTERIOR, '+
                    'HOR_TRANSACAO, HOR_VENDEDOR, VEN_NOME from HORAS '+
                    'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO '+
                    'where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' '+
                    'order by VEN_NOME, HOR_CODIGO desc');
    QYHoras.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYHoras.SQL.Text);
  end;
end;

procedure TFormHorasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormHorasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYHoras.Close;
    QYHoras.SQL.Clear;
    QYHoras.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYHoras.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormHorasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormHorasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Horas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO VENDEDOR' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit3.SetFocus;
end;

procedure TFormHorasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormHorasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYHoras.Active:=False;
    QYHoras.SQL.Clear;
    QYHoras.SQL.Add('select HOR_CODIGO, HOR_DESCRICAO, HOR_DTCADASTRO, HOR_QUANTIDADE, HOR_SALDOANTERIOR, HOR_SALDOPOSTERIOR, '+
                    'HOR_TRANSACAO, HOR_VENDEDOR, VEN_NOME from HORAS '+
                    'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO '+
                    'where HOR_DTCADASTRO between '+Where+' '+
                    'order by HOR_VENDEDOR, HOR_CODIGO desc');
    QYHoras.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYHoras.SQL.Text);
  end;
end;

procedure TFormHorasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
