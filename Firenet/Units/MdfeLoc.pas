unit MdfeLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMdfeLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    DSMdfe: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    QYMdfe: TFDQuery;
    TRMdfe: TFDTransaction;
    QYMdfeMDF_CODIGO: TIntegerField;
    QYMdfeMDF_DTEMISSAO: TDateField;
    QYMdfeMDF_CHAVEACESSO: TStringField;
    QYMdfeMDF_ESTADOINI: TStringField;
    QYMdfeMDF_ESTADOFIM: TStringField;
    QYMdfeMDF_STATUS: TStringField;
    QYMdfeMDF_VALORCARGA: TFMTBCDField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMdfeLoc: TFormMdfeLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormMdfeLoc.txt';

implementation
uses DataMod, DataMod2, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormMdfeLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMdfe.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMdfeLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYMdfe.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMdfeLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMdfe.Active:=False;
    QYMdfe.SQL.Clear;
    QYMdfe.SQL.Add('select MDF_CODIGO, MDF_DTEMISSAO, MDF_CHAVEACESSO, MDF_ESTADOINI, MDF_ESTADOFIM, MDF_STATUS, MDF_VALORCARGA from MDFE '+
                   'where MDF_CODIGO='+QuotedStr(Edit1.Text)+' order by MDF_CODIGO');
    QYMdfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMdfe.SQL.Text);
  end;
end;

procedure TFormMdfeLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMdfeLoc.FormCreate(Sender: TObject);
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
    QYMdfe.Close;
    QYMdfe.SQL.Clear;
    QYMdfe.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYMdfe.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormMdfeLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMdfeLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Manifesto de Documentos Eletronico',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CHAVE ACESSO' then MaskEdit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Manifesto de Documentos Eletronico com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='VIGENCIA' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormMdfeLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormMdfeLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYMdfe.Active:=False;
    QYMdfe.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
    QYMdfe.SQL.Add('select MDF_CODIGO, MDF_DTEMISSAO, MDF_CHAVEACESSO, MDF_ESTADOINI, MDF_ESTADOFIM, MDF_STATUS, MDF_VALORCARGA from MDFE '+
                   'where MDF_DTEMISSAO between '+Where+' order by MDF_DTEMISSAO desc, MDF_CODIGO desc');
    QYMdfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMdfe.SQL.Text);
  end;
end;

procedure TFormMdfeLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#8 then MaskEdit3.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    QYMdfe.Active:=False;
    QYMdfe.SQL.Clear;
    if ComboBox1.Text='ABERTOS' then Where:=' CTE_STATUS=''A''';
    if ComboBox1.Text='FINALIZADOS' then Where:=' CTE_STATUS=''F''';
    if ComboBox1.Text='CANCELADOS' then Where:=' CTE_STATUS=''C''';
    QYMdfe.SQL.Add('select MDF_CODIGO, MDF_DTEMISSAO, MDF_CHAVEACESSO, MDF_ESTADOINI, MDF_ESTADOFIM, MDF_STATUS, MDF_VALORCARGA from MDFE '+
                   'where MDF_CHAVEACESSO like '+QuotedStr(MaskEdit3.Text+'%')+' '+Where+' order by MDF_DTEMISSAO desc, MDF_CODIGO desc');
    QYMdfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMdfe.SQL.Text);
  end;
end;

procedure TFormMdfeLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
