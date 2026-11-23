unit ContasMovLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormContasMovLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSContasMov: TDataSource;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRContasMov: TFDTransaction;
    QYContasMov: TFDQuery;
    QYContasMovCMO_CODIGO: TIntegerField;
    QYContasMovCMO_CONTA: TIntegerField;
    QYContasMovCMO_DTMOVIMENTO: TDateField;
    QYContasMovCMO_ENTRADASAIDA: TStringField;
    QYContasMovCMO_VALOR: TFMTBCDField;
    QYContasMovCMO_DESCRICAO: TStringField;
    QYContasMovCMO_NUMDOCTO: TStringField;
    QYContasMovCMO_TIPODOCTO: TStringField;
    QYContasMovCON_NOME: TStringField;
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasMovLoc: TFormContasMovLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormContasMovLoc.txt';

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormContasMovLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormContasMovLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYContasMov.Active:=False;
    QYContasMov.SQL.Clear;
    QYContasMov.SQL.Add('select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_ENTRADASAIDA, CMO_VALOR, CMO_DESCRICAO, CMO_NUMDOCTO, CMO_TIPODOCTO, CON_NOME '+
                        'from CONTASMOV left join CONTAS on CMO_CONTA=CON_CODIGO where CMO_DTMOVIMENTO between :datainicial and :datafinal order by CMO_DTMOVIMENTO desc, CMO_CODIGO desc');
    QYContasMov.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYContasMov.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYContasMov.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContasMovLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormContasMovLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYContasMov.Active:=False;
    QYContasMov.SQL.Clear;
    QYContasMov.SQL.Add('select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_ENTRADASAIDA, CMO_VALOR, CMO_DESCRICAO, CMO_NUMDOCTO, CMO_TIPODOCTO, CON_NOME '+
                        'from CONTASMOV left join CONTAS on CMO_CONTA=CON_CODIGO where CON_NOME like '+QuotedStr(Edit2.Text+'%')+' '+
                        'and CMO_DTMOVIMENTO between :datainicial and :datafinal order by CON_NOME, CMO_CODIGO desc');
    QYContasMov.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYContasMov.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYContasMov.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContasMovLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYContasMov.Active:=False;
    QYContasMov.SQL.Clear;
    QYContasMov.SQL.Add('select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_ENTRADASAIDA, CMO_VALOR, CMO_DESCRICAO, CMO_NUMDOCTO, CMO_TIPODOCTO, CON_NOME '+
                        'from CONTASMOV left join CONTAS on CMO_CONTA=CON_CODIGO where CMO_CODIGO='+QuotedStr(Edit1.Text)+' order by CMO_CODIGO');
    QYContasMov.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContasMovLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYContasMov.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContasMovLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYContasMov.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContasMovLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormContasMovLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormContasMovLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContasMovLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYContasMov.Active:=False;
    QYContasMov.SQL.Clear;
    QYContasMov.SQL.Add('select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_ENTRADASAIDA, CMO_VALOR, CMO_DESCRICAO, CMO_NUMDOCTO, CMO_TIPODOCTO, CON_NOME '+
                        'from CONTASMOV left join CONTAS on CMO_CONTA=CON_CODIGO where CMO_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' '+
                        'and CMO_DTMOVIMENTO between :datainicial and :datafinal order by CMO_DESCRICAO, CMO_CODIGO desc');
    QYContasMov.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYContasMov.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYContasMov.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContasMovLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit; //nao faz pesquisa nula.
    QYContasMov.Active:=False;
    QYContasMov.SQL.Clear;
    QYContasMov.SQL.Add('select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_ENTRADASAIDA, CMO_VALOR, CMO_DESCRICAO, CMO_NUMDOCTO, CMO_TIPODOCTO, CON_NOME '+
                        'from CONTASMOV left join CONTAS on CMO_CONTA=CON_CODIGO where CMO_NUMDOCTO like '+QuotedStr(Edit4.Text+'%')+' '+
                        'and CMO_DTMOVIMENTO between :datainicial and :datafinal order by CMO_NUMDOCTO, CMO_CODIGO desc');
    QYContasMov.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYContasMov.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYContasMov.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContasMovLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Movimentacao Contas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CONTA' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit4.SetFocus;
end;

end.
