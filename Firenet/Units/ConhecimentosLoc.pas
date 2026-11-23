unit ConhecimentosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConhecimentosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DSCte: TDataSource;
    Label6: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label9: TLabel;
    Edit6: TEdit;
    TRCte: TFDTransaction;
    QYCte: TFDQuery;
    QYCteCTE_CODIGO: TIntegerField;
    QYCteCTE_CHAVEACESSO: TStringField;
    QYCteCTE_DTEMISSAO: TDateField;
    QYCteCTE_REMETENTE: TIntegerField;
    QYCteCTE_REMNOME: TStringField;
    QYCteCTE_DESTINATARIO: TIntegerField;
    QYCteCTE_DESNOME: TStringField;
    QYCteCTE_REFERENCIA: TStringField;
    QYCteCTE_STATUS: TStringField;
    QYCteCTE_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosLoc: TFormConhecimentosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormConhecimentosLoc.txt';

implementation
uses DataMod, DataMod2, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormConhecimentosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCte.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConhecimentosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCte.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConhecimentosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_CODIGO='+QuotedStr(Edit1.Text)+' order by CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    Where:='';
    if ComboBox1.Text='TODOS' then Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    if ComboBox1.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_REMNOME like '+QuotedStr(Edit2.Text+'%')+' '+Where+' order by CTE_REMNOME, CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    Where:='';
    if ComboBox1.Text='TODOS' then Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    if ComboBox1.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_REMETENTE='+QuotedStr(Edit3.Text)+' '+Where+' order by CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    Where:='';
    if ComboBox1.Text='TODOS' then Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    if ComboBox1.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_DESNOME like '+QuotedStr(Edit4.Text+'%')+' '+Where+' order by CTE_DESNOME, CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    Where:='';
    if ComboBox1.Text='TODOS' then Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    if ComboBox1.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_DESTINATARIO='+QuotedStr(Edit5.Text)+' '+Where+' order by CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_REFERENCIA='+QuotedStr(Edit6.Text)+' order by CTE_CODIGO');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormConhecimentosLoc.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;

  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCte.Close;
    QYCte.SQL.Clear;
    QYCte.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCte.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormConhecimentosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Conhecimentos Transporte Eletronicos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO REMETENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='REMETENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO DESTINATARIO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESTINATARIO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='REFERENCIA' then Edit6.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Conhecimentos Transporte Eletronicos com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='INUTILIZADOS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormConhecimentosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormConhecimentosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYCte.Active:=False;
    QYCte.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    if ComboBox1.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
    QYCte.SQL.Add('select CTE_CODIGO, CTE_DTEMISSAO, CTE_REMETENTE, CTE_REMNOME, CTE_CHAVEACESSO, '+
                  'CTE_DESTINATARIO, CTE_DESNOME, CTE_REFERENCIA, CTE_STATUS, CTE_VALORTOTAL from CTE '+
                  'where CTE_DTEMISSAO between '+Where+' order by CTE_DTEMISSAO desc, CTE_CODIGO desc');
    QYCte.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCte.SQL.Text);
  end;
end;

procedure TFormConhecimentosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
