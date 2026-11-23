unit ZapMensagensLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormZapMensagensLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSZapMensagens: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRZapMensagens: TFDTransaction;
    QYZapMensagens: TFDQuery;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    QYZapMensagensZAM_ARQUIVONOME: TStringField;
    QYZapMensagensZAM_CODIGO: TIntegerField;
    QYZapMensagensZAM_CONTEUDO: TStringField;
    QYZapMensagensZAM_DESTINO: TStringField;
    QYZapMensagensZAM_DTENVIO: TDateField;
    QYZapMensagensZAM_DTSTATUSWPP: TDateField;
    QYZapMensagensZAM_HRENVIO: TTimeField;
    QYZapMensagensZAM_HRSTATUSWPP: TTimeField;
    QYZapMensagensZAM_STATUS: TStringField;
    QYZapMensagensZAM_STATUSWPP: TStringField;
    QYZapMensagensZAM_VENDEDOR: TIntegerField;
    QYZapMensagensZAM_ZAPINSTANCIA: TIntegerField;
    QYZapMensagensVEN_NOME: TStringField;
    QYZapMensagensZIN_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    SalvarColunas: Boolean;
  public
    { Public declarations }
    Procurar: Boolean;
  end;

var
  FormZapMensagensLoc: TFormZapMensagensLoc;

const
  NomeArquivoFormTxt='FormZapMensagensLoc.txt';
  Campos='ZAM_ARQUIVONOME, ZAM_CODIGO, ZAM_CONTEUDO, ZAM_DESTINO, ZAM_DTENVIO, ZAM_DTSTATUSWPP, ZAM_HRENVIO, '+
    'ZAM_HRSTATUSWPP, ZAM_STATUS, ZAM_STATUSWPP, ZAM_VENDEDOR, ZAM_ZAPINSTANCIA, VEN_NOME, ZIN_NOME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormZapMensagensLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYZapMensagens.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormZapMensagensLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYZapMensagens.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormZapMensagensLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYZapMensagens.Active:=False;
    QYZapMensagens.SQL.Clear;
    QYZapMensagens.SQL.Add(
      'select '+Campos+' from ZAPMENSAGENS '+
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO '+
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO '+
      'where ZAM_CODIGO='+QuotedStr(Edit1.Text)+' '+
      'order by ZAM_CODIGO'
    );
    QYZapMensagens.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormZapMensagensLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYZapMensagens.Active:=False;
    QYZapMensagens.SQL.Clear;
    QYZapMensagens.SQL.Add(
      'select '+Campos+' from ZAPMENSAGENS '+
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO '+
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO '+
      'where ZAM_DESTINO like '+QuotedStr(Edit2.Text+'%')+' '+
      'order by ZAM_DESTINO'
    );
    QYZapMensagens.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormZapMensagensLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYZapMensagens.Active:=False;
    QYZapMensagens.SQL.Clear;
    QYZapMensagens.SQL.Add(
      'select '+Campos+' from ZAPMENSAGENS '+
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO '+
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO '+
      'where ZAM_VENDEDOR='+QuotedStr(Edit3.Text)+' '+
      'order by ZAM_VENDEDOR, ZAM_CODIGO desc'
    );
    QYZapMensagens.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormZapMensagensLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYZapMensagens.Active:=False;
    QYZapMensagens.SQL.Clear;
    QYZapMensagens.SQL.Add(
      'select '+Campos+' from ZAPMENSAGENS '+
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO '+
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO '+
      'where VEN_NOME like '+QuotedStr(Edit4.Text+'%')+' '+
      'order by VEN_NOME, ZAM_CODIGO desc'
    );
    QYZapMensagens.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormZapMensagensLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYZapMensagens.Active:=False;
    QYZapMensagens.SQL.Clear;
    QYZapMensagens.SQL.Add(
      'select '+Campos+' from ZAPMENSAGENS '+
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO '+
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO '+
      'where ZAM_CONTEUDO like '+QuotedStr(Edit5.Text+'%')+' '+
      'order by ZAM_CONTEUDO, ZAM_CODIGO desc'
    );
    QYZapMensagens.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormZapMensagensLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormZapMensagensLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormZapMensagensLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormZapMensagensLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Zap Mensagens',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESTINO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME VENDEDOR' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CONTEUDO' then Edit5.SetFocus;
end;

procedure TFormZapMensagensLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
