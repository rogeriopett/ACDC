unit PontosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormPontosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DSPontos: TDataSource;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit5: TEdit;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYPontos: TFDQuery;
    TRPontos: TFDTransaction;
    QYPontosPTS_CODIGO: TIntegerField;
    QYPontosPTS_CLIENTE: TIntegerField;
    QYPontosPTS_SALDOANTERIOR: TFMTBCDField;
    QYPontosPTS_SALDOPOSTERIOR: TFMTBCDField;
    QYPontosPTS_VALOR: TFMTBCDField;
    QYPontosPTS_PONTOS: TFMTBCDField;
    QYPontosPTS_COTACAO: TFMTBCDField;
    QYPontosPTS_ENTRADASAIDA: TStringField;
    QYPontosPTS_DTCADASTRO: TDateField;
    QYPontosPTS_NUMDOCTO: TStringField;
    QYPontosPTS_DESCRICAO: TStringField;
    QYPontosCLI_NOME: TStringField;
    QYPontosCLI_PONTOS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPontosLoc: TFormPontosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormPontosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormPontosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormPontosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormPontosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPontosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Pontos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit3.SetFocus;
end;

procedure TFormPontosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYPontos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPontosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYPontos.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPontosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where PTS_CODIGO='+QuotedStr(Edit1.Text)+' order by PTS_CODIGO desc');
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPontosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where PTS_NUMDOCTO like '+QuotedStr(Edit5.Text+'%')+' order by PTS_NUMDOCTO, PTS_CODIGO desc');
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPontosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormPontosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit2.Text='  /  /    ' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where PTS_DTCADASTRO between :datainicial and :datafinal order by PTS_DTCADASTRO, CLI_NOME');
    QYPontos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYPontos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPontosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormPontosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where PTS_CLIENTE='+QuotedStr(Edit4.Text)+' order by PTS_CODIGO desc');
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPontosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME, PTS_CODIGO desc');
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPontosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYPontos.Close;
    QYPontos.SQL.Clear;
    QYPontos.SQL.Add('select PTS_CODIGO, PTS_CLIENTE, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, PTS_VALOR, PTS_PONTOS, '+
                     'PTS_COTACAO, PTS_ENTRADASAIDA, PTS_DTCADASTRO, PTS_NUMDOCTO, PTS_DESCRICAO, CLI_NOME, CLI_PONTOS '+
                     'from PONTOS left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
                     'where PTS_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' order by PTS_DESCRICAO, PTS_CODIGO desc');
    QYPontos.Open;
    DBGrid1.SetFocus;
  end;
end;

end.
