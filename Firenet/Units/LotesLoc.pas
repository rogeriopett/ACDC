unit LotesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormLotesLoc = class(TForm)
    DBGrid1: TDBGrid;
    DSLotes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    QYLotes: TFDQuery;
    TRLotes: TFDTransaction;
    QYLotesLOT_CODIGO: TIntegerField;
    QYLotesLOT_COMPRA: TIntegerField;
    QYLotesLOT_FABRICACAO: TDateField;
    QYLotesLOT_LOTE: TStringField;
    QYLotesLOT_PRODUTO: TIntegerField;
    QYLotesLOT_PROPRIO: TStringField;
    QYLotesLOT_STATUS: TStringField;
    QYLotesLOT_VALIDADE: TDateField;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    QYLotesLOT_QUANTIDADE: TFMTBCDField;
    QYLotesPRO_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLotesLoc: TFormLotesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormLotesLoc.txt';
  Campos='LOT_CODIGO, LOT_COMPRA, LOT_FABRICACAO, LOT_LOTE, LOT_PRODUTO, LOT_PROPRIO, LOT_QUANTIDADE, LOT_STATUS, LOT_VALIDADE, PRO_NOME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormLotesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormLotesLoc.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormLotesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLotesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYLotes.Active:=False;
    QYLotes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:='and LOT_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:='and LOT_STATUS=''B''';
    QYLotes.SQL.Add(
      'select '+Campos+' from LOTES '+
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO '+
      'where LOT_LOTE like '+QuotedStr('%'+Edit1.Text)+' '+Where+' '+
      'order by LOT_LOTE'
    );
    QYLotes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormLotesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:='and LOT_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:='and LOT_STATUS=''B''';
    QYLotes.Active:=False;
    QYLotes.SQL.Clear;
    QYLotes.SQL.Add(
      'select '+Campos+' from LOTES '+
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO '+
      'where LOT_CODIGO='+QuotedStr(Edit2.Text)+' '+Where+' '+
      'order by LOT_CODIGO'
    );
    QYLotes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormLotesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:='and LOT_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:='and LOT_STATUS=''B''';
    QYLotes.Active:=False;
    QYLotes.SQL.Clear;
    QYLotes.SQL.Add(
      'select '+Campos+' from LOTES '+
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO '+
      'where LOT_PRODUTO='+QuotedStr(Edit3.Text)+' '+Where+' '+
      'order by LOT_CODIGO'
    );
    QYLotes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormLotesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:='and LOT_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:='and LOT_STATUS=''B''';
    QYLotes.Active:=False;
    QYLotes.SQL.Clear;
    QYLotes.SQL.Add(
      'select '+Campos+' from LOTES '+
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO '+
      'where PRO_NOME like '+QuotedStr(Edit4.Text+'%')+' '+Where+' '+
      'order by LOT_CODIGO'
    );
    QYLotes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormLotesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYLotes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormLotesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYLotes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormLotesLoc.FormShow(Sender: TObject);
begin
  //criar os registros das telas consultas.
  DM.TBLocs.Locate('LOS_TELA','Lotes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='LOTE' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO PRODUTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME PRODUTO' then Edit4.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Lotes com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADOS' then ComboBox1.ItemIndex:=2;

  if Edit3.Text<>'' then
  begin
    //já tras uma lista dos lotes cadastrados para um produto se o edit3 (código do produto) estiver preenchido.
    //associar o codigo do produto antes de criar o form.
    QYLotes.Active:=False;
    QYLotes.SQL.Clear;
    QYLotes.SQL.Add(
      'select '+Campos+' from LOTES '+
      'left join PRODUTOS on LOT_PRODUTO=PRO_CODIGO '+
      'where LOT_STATUS=''A'' and LOT_PRODUTO='+QuotedStr(Edit3.Text)+' order by LOT_CODIGO desc'
    );
    QYLotes.Active:=True;
  end;
end;

procedure TFormLotesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
