unit DemosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery, Grids,
  DBGrids, Menus;

type
  TFormDemosLoc = class(TForm)
    DBGrid1: TDBGrid;
    DSDemos: TDataSource;
    QYDemos: TIBQuery;
    TRDemos: TIBTransaction;
    Edit1: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    QYDemosDEM_CODIGO: TIntegerField;
    QYDemosDEM_CLIENTE: TIntegerField;
    QYDemosDEM_AULAHORA: TDateField;
    QYDemosDEM_DTCADASTRO: TDateField;
    QYDemosDEM_STATUS: TIBStringField;
    QYDemosDEM_TESTEESCRITO: TIBStringField;
    QYDemosDEM_TESTEORAL: TIBStringField;
    QYDemosDEM_NIVELESCRITO: TIBStringField;
    QYDemosDEM_NIVELORAL: TIBStringField;
    QYDemosCLI_NOME: TIBStringField;
    QYDemosDEM_AULADATA: TDateField;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDemosLoc: TFormDemosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormDemosLoc.txt';

implementation
uses DataMod, Funcoes1;

{$R *.dfm}

procedure TFormDemosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYDemos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDemosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYDemos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDemosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYDemos.Active:=False;
    QYDemos.SQL.Clear;
    QYDemos.SQL.Add('select DEM_CODIGO, DEM_CLIENTE, DEM_AULADATA, DEM_AULAHORA, DEM_TESTEESCRITO, DEM_TESTEORAL, '+
                    'DEM_NIVELESCRITO, DEM_NIVELORAL, DEM_STATUS, DEM_DTCADASTRO, CLI_NOME from DEMOS '+
                    'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO '+
                    'where DEM_CODIGO='+QuotedStr(Edit1.Text)+' order by DEM_CODIGO');
    QYDemos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormDemosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYDemos.Active:=False;
    QYDemos.SQL.Clear;
    QYDemos.SQL.Add('select DEM_CODIGO, DEM_CLIENTE, DEM_AULADATA, DEM_AULAHORA, DEM_TESTEESCRITO, DEM_TESTEORAL, '+
                    'DEM_NIVELESCRITO, DEM_NIVELORAL, DEM_STATUS, DEM_DTCADASTRO, CLI_NOME from DEMOS '+
                    'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO '+
                    'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME');
    QYDemos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormDemosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYDemos.Active:=False;
    QYDemos.SQL.Clear;
    QYDemos.SQL.Add('select DEM_CODIGO, DEM_CLIENTE, DEM_AULADATA, DEM_AULAHORA, DEM_TESTEESCRITO, DEM_TESTEORAL, '+
                    'DEM_NIVELESCRITO, DEM_NIVELORAL, DEM_STATUS, DEM_DTCADASTRO, CLI_NOME from DEMOS '+
                    'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO '+
                    'where DEM_CLIENTE='+QuotedStr(Edit5.Text)+' order by DEM_CLIENTE');
    QYDemos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormDemosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormDemosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormDemosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDemosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Demonstracoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD CLIENTE' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus;
end;

procedure TFormDemosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormDemosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYDemos.Active:=False;
    QYDemos.SQL.Clear;
    QYDemos.SQL.Add('select DEM_CODIGO, DEM_CLIENTE, DEM_AULADATA, DEM_AULAHORA, DEM_TESTEESCRITO, DEM_TESTEORAL, '+
                    'DEM_NIVELESCRITO, DEM_NIVELORAL, DEM_STATUS, DEM_DTCADASTRO, CLI_NOME from DEMOS '+
                    'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO '+
                    'where DEM_DTCADASTRO between :datainicial and :datafinal order by DEM_DTCADASTRO');
    QYDemos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYDemos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYDemos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormDemosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
