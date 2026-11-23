unit ProcessosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, Mask, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProcessosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DSProcessos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    QYProcessos: TFDQuery;
    TRProcessos: TFDTransaction;
    QYProcessosPCS_CODIGO: TIntegerField;
    QYProcessosPCS_ACAO: TIntegerField;
    QYProcessosPCS_ADVOGADO: TIntegerField;
    QYProcessosPCS_CHAVE: TStringField;
    QYProcessosPCS_DESCRICAO: TStringField;
    QYProcessosPCS_DTCADASTRO: TDateField;
    QYProcessosPCS_FORO: TIntegerField;
    QYProcessosPCS_LOCALFISICO: TStringField;
    QYProcessosPCS_NUMEROANTIGO: TStringField;
    QYProcessosPCS_NUMEROUNIFICADO: TStringField;
    QYProcessosPCS_NUMEROUNIFICADOFED: TStringField;
    QYProcessosPCS_STATUS: TStringField;
    QYProcessosACO_DESCRICAO: TStringField;
    QYProcessosFRS_NOME: TStringField;
    QYProcessosVEN_NOME: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosLoc: TFormProcessosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormProcessosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProcessosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProcessos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProcessosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProcessos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProcessosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProcessos.Active:=False;
    QYProcessos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and PCS_STATUS='+QuotedStr('A');
    if ComboBox1.Text='ARQUIVADOS' then Where:=' and PCS_STATUS='+QuotedStr('Q');
    if ComboBox1.Text='SUSPENSOS' then Where:=' and PCS_STATUS='+QuotedStr('S');
    QYProcessos.SQL.Add('select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO, '+
                        'PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
                        'left join ACOES on PCS_ACAO=ACO_CODIGO '+
                        'left join FOROS on PCS_FORO=FRS_CODIGO '+
                        'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
                        'where PCS_CODIGO like '+QuotedStr('%'+Edit1.Text)+Where+' order by PCS_CODIGO');
    QYProcessos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProcessosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYProcessos.Active:=False;
    QYProcessos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and PCS_STATUS='+QuotedStr('A');
    if ComboBox1.Text='ARQUIVADOS' then Where:=' and PCS_STATUS='+QuotedStr('Q');
    if ComboBox1.Text='SUSPENSOS' then Where:=' and PCS_STATUS='+QuotedStr('S');
    QYProcessos.SQL.Add('select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO, '+
                        'PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
                        'left join ACOES on PCS_ACAO=ACO_CODIGO '+
                        'left join FOROS on PCS_FORO=FRS_CODIGO '+
                        'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
                        'where PCS_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+Where+' order by PCS_DESCRICAO, PCS_CODIGO desc');
    QYProcessos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProcessosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYProcessos.Active:=False;
    QYProcessos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and PCS_STATUS='+QuotedStr('A');
    if ComboBox1.Text='ARQUIVADOS' then Where:=' and PCS_STATUS='+QuotedStr('Q');
    if ComboBox1.Text='SUSPENSOS' then Where:=' and PCS_STATUS='+QuotedStr('S');
    QYProcessos.SQL.Add('select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO, '+
                        'PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
                        'left join ACOES on PCS_ACAO=ACO_CODIGO '+
                        'left join FOROS on PCS_FORO=FRS_CODIGO '+
                        'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
                        'where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+Where+' order by VEN_NOME, PCS_CODIGO desc');
    QYProcessos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProcessosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYProcessos.Active:=False;
    QYProcessos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and PCS_STATUS='+QuotedStr('A');
    if ComboBox1.Text='ARQUIVADOS' then Where:=' and PCS_STATUS='+QuotedStr('Q');
    if ComboBox1.Text='SUSPENSOS' then Where:=' and PCS_STATUS='+QuotedStr('S');
    QYProcessos.SQL.Add('select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO, '+
                        'PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
                        'left join ACOES on PCS_ACAO=ACO_CODIGO '+
                        'left join FOROS on PCS_FORO=FRS_CODIGO '+
                        'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
                        'where ((PCS_NUMEROANTIGO like '+QuotedStr('%'+Edit4.Text+'%')+') or '+
                        '(PCS_NUMEROUNIFICADO like '+QuotedStr('%'+Edit4.Text+'%')+') or '+
                        '(PCS_NUMEROUNIFICADOFED like '+QuotedStr('%'+Edit4.Text+'%')+')) '+Where+' order by PCS_DESCRICAO');
    QYProcessos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProcessosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProcessosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProcessosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Processos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SIGLA' then Edit3.SetFocus;
end;

procedure TFormProcessosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormProcessosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYProcessos.Active:=False;
    QYProcessos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and PCS_STATUS='+QuotedStr('A');
    if ComboBox1.Text='ARQUIVADOS' then Where:=' and PCS_STATUS='+QuotedStr('Q');
    if ComboBox1.Text='SUSPENSOS' then Where:=' and PCS_STATUS='+QuotedStr('S');
    QYProcessos.SQL.Add('select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO, '+
                        'PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
                        'left join ACOES on PCS_ACAO=ACO_CODIGO '+
                        'left join FOROS on PCS_FORO=FRS_CODIGO '+
                        'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
                        'where PCS_DTCADASTRO between :datainicial and :datafinal '+Where+' order by PCS_DTCADASTRO, PCS_CODIGO desc');
    QYProcessos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYProcessos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYProcessos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProcessosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
