unit ManifestacoesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormManifestacoesLoc = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DSManifestacoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    QYManifestacoes: TFDQuery;
    TRManifestacoes: TFDTransaction;
    QYManifestacoesMAN_CIENCIA: TStringField;
    QYManifestacoesMAN_CODIGO: TIntegerField;
    QYManifestacoesMAN_CONCLUSAO: TStringField;
    QYManifestacoesMAN_DTCONSULTA: TDateField;
    QYManifestacoesMAN_HRCONSULTA: TTimeField;
    QYManifestacoesMAN_JUSTIFICATIVA: TStringField;
    QYManifestacoesMAN_NSU: TStringField;
    QYManifestacoesMAN_SCHEMA: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    QYManifestacoesMAN_CNPJ: TStringField;
    QYManifestacoesMAN_DESCRICAO: TStringField;
    QYManifestacoesMAN_DHRECEBIMENTO: TStringField;
    QYManifestacoesMAN_NOME: TStringField;
    QYManifestacoesMAN_VALORNOTA: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManifestacoesLoc: TFormManifestacoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormManifestacoesLoc.txt';
  Campos: String = 'MAN_CIENCIA, MAN_CNPJ, MAN_CODIGO, MAN_CONCLUSAO, MAN_DESCRICAO, MAN_DHRECEBIMENTO, MAN_DTCONSULTA, MAN_HRCONSULTA, '+
    'MAN_JUSTIFICATIVA, MAN_NOME, MAN_NSU, MAN_SCHEMA, MAN_VALORNOTA';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormManifestacoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYManifestacoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormManifestacoesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYManifestacoes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormManifestacoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYManifestacoes.Active:=False;
    QYManifestacoes.SQL.Clear;
    QYManifestacoes.SQL.Add('select '+Campos+' from MANIFESTACOES where MAN_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by MAN_CODIGO desc');
    QYManifestacoes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormManifestacoesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormManifestacoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYManifestacoes.Close;
    QYManifestacoes.SQL.Clear;
    QYManifestacoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYManifestacoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormManifestacoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormManifestacoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Manifestacoes do destinatario',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus;
end;

procedure TFormManifestacoesLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormManifestacoesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYManifestacoes.Active:=False;
    QYManifestacoes.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if (CheckBox1.Checked)     and (not CheckBox2.Checked) then Where:=Where+' and MAN_SCHEMA='+QuotedStr('resNFe_v1.01.xsd');
    if (not CheckBox1.Checked) and (CheckBox2.Checked)     then Where:=Where+' and MAN_SCHEMA='+QuotedStr('procNFe_v4.00.xsd');
    if (CheckBox1.Checked)     and (CheckBox2.Checked)     then Where:=Where+' and (MAN_SCHEMA='+QuotedStr('resNFe_v1.01.xsd')+' or MAN_SCHEMA='+QuotedStr('procNFe_v4.00.xsd');
    QYManifestacoes.SQL.Add('select '+Campos+' from MANIFESTACOES where MAN_DTCONSULTA between '+Where+' order by MAN_DTCONSULTA desc, MAN_CODIGO desc');
    QYManifestacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYManifestacoes.SQL.Text);
  end;
end;

procedure TFormManifestacoesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
