unit RecibosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormRecibosLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DSRecibos: TDataSource;
    Label2: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYRecibos: TFDQuery;
    TRRecibos: TFDTransaction;
    QYRecibosRCB_CBAIRRO: TStringField;
    QYRecibosRCB_CCEP: TStringField;
    QYRecibosRCB_CCIDADE: TStringField;
    QYRecibosRCB_CCNPJCPF: TStringField;
    QYRecibosRCB_CENDERECO: TStringField;
    QYRecibosRCB_CFONE1: TStringField;
    QYRecibosRCB_CNOME: TStringField;
    QYRecibosRCB_CNUMERO: TStringField;
    QYRecibosRCB_CODIGO: TIntegerField;
    QYRecibosRCB_DATA: TDateField;
    QYRecibosRCB_DTATUALIZACAO: TDateField;
    QYRecibosRCB_DTCADASTRO: TDateField;
    QYRecibosRCB_HRATUALIZACAO: TTimeField;
    QYRecibosRCB_HRCADASTRO: TTimeField;
    QYRecibosRCB_PROVENIENTE: TStringField;
    QYRecibosRCB_SBAIRRO: TStringField;
    QYRecibosRCB_SCEP: TStringField;
    QYRecibosRCB_SCIDADE: TStringField;
    QYRecibosRCB_SCNPJCPF: TStringField;
    QYRecibosRCB_SENDERECO: TStringField;
    QYRecibosRCB_SFONE1: TStringField;
    QYRecibosRCB_SNOME: TStringField;
    QYRecibosRCB_SNUMERO: TStringField;
    QYRecibosRCB_USUARIO: TStringField;
    QYRecibosRCB_VALOR: TFMTBCDField;
    QYRecibosRCB_VALOREXTENSO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosLoc: TFormRecibosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormRecibosLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormRecibosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormRecibosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYRecibos.Close;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYRecibos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormRecibosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormRecibosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Recibos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CEDENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SACADO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PROVENIENTE' then Edit4.SetFocus;
end;

procedure TFormRecibosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYRecibos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormRecibosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYRecibos.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormRecibosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYRecibos.Active:=False;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add('select * from RECIBOS where RCB_CODIGO='+QuotedStr(Edit1.Text)+' order by RCB_CODIGO');
    QYRecibos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRecibos.SQL.Text);
  end;
end;

procedure TFormRecibosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormRecibosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit2.Text)='__/__/____' then Exit;
    Where:=' where RCB_DATA between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)))+' ';
    QYRecibos.Active:=False;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add('select * from RECIBOS '+Where+' order by RCB_DATA desc');
    QYRecibos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRecibos.SQL.Text);
  end;
end;

procedure TFormRecibosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormRecibosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYRecibos.Active:=False;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add('select * from RECIBOS where RCB_CNOME like '+QuotedStr(Edit3.Text+'%')+' order by RCB_CNOME, RCB_DATA desc');
    QYRecibos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRecibos.SQL.Text);
  end;
end;

procedure TFormRecibosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYRecibos.Active:=False;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add('select * from RECIBOS where RCB_SNOME like '+QuotedStr(Edit2.Text+'%')+' order by RCB_CNOME, RCB_DATA desc');
    QYRecibos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRecibos.SQL.Text);
  end;
end;

procedure TFormRecibosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYRecibos.Active:=False;
    QYRecibos.SQL.Clear;
    QYRecibos.SQL.Add('select * from RECIBOS where RCB_PROVENIENTE like '+QuotedStr(Edit4.Text+'%')+' order by RCB_PROVENIENTE, RCB_DATA desc');
    QYRecibos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRecibos.SQL.Text);
  end;
end;

end.
