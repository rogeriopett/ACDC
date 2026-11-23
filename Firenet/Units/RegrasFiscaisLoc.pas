unit RegrasFiscaisLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormRegrasFiscaisLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSRegrasFiscais: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYRegrasFiscais: TFDQuery;
    TRRegrasFiscais: TFDTransaction;
    QYRegrasFiscaisRGF_ALIQCBS: TFMTBCDField;
    QYRegrasFiscaisRGF_ALIQIBSMUN: TFMTBCDField;
    QYRegrasFiscaisRGF_ALIQIBSUF: TFMTBCDField;
    QYRegrasFiscaisRGF_CLASSTRIBIBSCBS: TStringField;
    QYRegrasFiscaisRGF_CLASSTRIBIS: TStringField;
    QYRegrasFiscaisRGF_CODIGO: TIntegerField;
    QYRegrasFiscaisRGF_CREDITOPRES: TIntegerField;
    QYRegrasFiscaisRGF_CSTIBSCBS: TStringField;
    QYRegrasFiscaisRGF_CSTIS: TStringField;
    QYRegrasFiscaisRGF_DESCRICAO: TStringField;
    QYRegrasFiscaisCPR_APROPRIADFE: TStringField;
    QYRegrasFiscaisCPR_APROPRIAEVENTO: TStringField;
    QYRegrasFiscaisCPR_CBS: TStringField;
    QYRegrasFiscaisCPR_DEDUZTOTAL: TStringField;
    QYRegrasFiscaisCPR_DESCRICAO: TStringField;
    QYRegrasFiscaisCPR_IBS: TStringField;
    QYRegrasFiscaisCLT_DESCRICAO_IC: TStringField;
    QYRegrasFiscaisCLT_ALIQCBSRED_IC: TFMTBCDField;
    QYRegrasFiscaisCLT_ALIQIBSRED_IC: TFMTBCDField;
    QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC: TStringField;
    QYRegrasFiscaisCLT_MONODIFERIMENTO_IC: TStringField;
    QYRegrasFiscaisCLT_MONOFASICO_IC: TStringField;
    QYRegrasFiscaisCLT_MONORETENCAO_IC: TStringField;
    QYRegrasFiscaisCLT_MONORETIDO_IC: TStringField;
    QYRegrasFiscaisCLT_REDBASE_IC: TStringField;
    QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC: TStringField;
    QYRegrasFiscaisCLT_DESCRICAO_IS: TStringField;
    QYRegrasFiscaisCLT_ALIQCBSRED_IS: TFMTBCDField;
    QYRegrasFiscaisCLT_ALIQIBSRED_IS: TFMTBCDField;
    QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS: TStringField;
    QYRegrasFiscaisCLT_MONODIFERIMENTO_IS: TStringField;
    QYRegrasFiscaisCLT_MONOFASICO_IS: TStringField;
    QYRegrasFiscaisCLT_MONORETENCAO_IS: TStringField;
    QYRegrasFiscaisCLT_MONORETIDO_IS: TStringField;
    QYRegrasFiscaisCLT_REDBASE_IS: TStringField;
    QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegrasFiscaisLoc: TFormRegrasFiscaisLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormRegrasFiscaisLoc.txt';
  Campos='RGF_ALIQCBS, RGF_ALIQIBSMUN, RGF_ALIQIBSUF, RGF_CLASSTRIBIBSCBS, RGF_CLASSTRIBIS, RGF_CODIGO, RGF_CREDITOPRES, RGF_CSTIBSCBS, RGF_CSTIS, RGF_DESCRICAO, '+
    'CPR_APROPRIADFE, CPR_APROPRIAEVENTO, CPR_CBS, CPR_DEDUZTOTAL, CPR_DESCRICAO, CPR_IBS, IBSCBS.CLT_DESCRICAO as CLT_DESCRICAO_IC, '+
    'IBSCBS.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IC, IBSCBS.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IC, IBSCBS.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IC, '+
    'IBSCBS.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IC, IBSCBS.CLT_MONOFASICO as CLT_MONOFASICO_IC, IBSCBS.CLT_MONORETENCAO as CLT_MONORETENCAO_IC, '+
    'IBSCBS.CLT_MONORETIDO as CLT_MONORETIDO_IC, IBSCBS.CLT_REDBASE as CLT_REDBASE_IC, IBSCBS.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IC, '+
    'IS_.CLT_DESCRICAO as CLT_DESCRICAO_IS, IS_.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IS, IS_.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IS, '+
    'IS_.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IS, IS_.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IS, IS_.CLT_MONOFASICO as CLT_MONOFASICO_IS, '+
    'IS_.CLT_MONORETENCAO as CLT_MONORETENCAO_IS, IS_.CLT_MONORETIDO as CLT_MONORETIDO_IS, IS_.CLT_REDBASE as CLT_REDBASE_IS, '+
    'IS_.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IS';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormRegrasFiscaisLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYRegrasFiscais.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormRegrasFiscaisLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYRegrasFiscais.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormRegrasFiscaisLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYRegrasFiscais.Active:=False;
    QYRegrasFiscais.SQL.Clear;
    QYRegrasFiscais.SQL.Add(
      'select '+Campos+' from REGRASFISCAIS '+
      ' left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_CODIGO '+
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO '+
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO '+
      'where RGF_CODIGO='+QuotedStr(Edit1.Text)+' order by RGF_CODIGO'
    );
    QYRegrasFiscais.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRegrasFiscais.SQL.Text);
  end;
end;

procedure TFormRegrasFiscaisLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYRegrasFiscais.Active:=False;
    QYRegrasFiscais.SQL.Clear;
    QYRegrasFiscais.SQL.Add(
      'select '+Campos+' from REGRASFISCAIS '+
      'left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_CODIGO '+
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO '+
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO '+
      'where RGF_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by RGF_DESCRICAO'
    );
    QYRegrasFiscais.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYRegrasFiscais.SQL.Text);
  end;
end;

procedure TFormRegrasFiscaisLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormRegrasFiscaisLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYRegrasFiscais.Close;
    QYRegrasFiscais.SQL.Clear;
    QYRegrasFiscais.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYRegrasFiscais.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormRegrasFiscaisLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormRegrasFiscaisLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Regras Fiscais',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormRegrasFiscaisLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
