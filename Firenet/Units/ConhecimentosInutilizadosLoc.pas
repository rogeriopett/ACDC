unit ConhecimentosInutilizadosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids, Mask, StdCtrls, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormConhecimentosInutilizadosLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit4: TEdit;
    DSCteInutilizados: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYCteInutilizados: TFDQuery;
    TRCteInutilizados: TFDTransaction;
    QYCteInutilizadosCIN_ANO: TStringField;
    QYCteInutilizadosCIN_CODIGO: TIntegerField;
    QYCteInutilizadosCIN_DTATUALIZACAO: TDateField;
    QYCteInutilizadosCIN_DTCADASTRO: TDateField;
    QYCteInutilizadosCIN_HRATUALIZACAO: TTimeField;
    QYCteInutilizadosCIN_HRCADASTRO: TTimeField;
    QYCteInutilizadosCIN_JUSTIFICATIVA: TStringField;
    QYCteInutilizadosCIN_MODELO: TIntegerField;
    QYCteInutilizadosCIN_NUMFINAL: TIntegerField;
    QYCteInutilizadosCIN_NUMINICIAL: TIntegerField;
    QYCteInutilizadosCIN_PROTOCOLO: TStringField;
    QYCteInutilizadosCIN_PROTOCOLODH: TStringField;
    QYCteInutilizadosCIN_SERIE: TIntegerField;
    QYCteInutilizadosCIN_USUARIO: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosInutilizadosLoc: TFormConhecimentosInutilizadosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormConhecimentosInutilizadosLoc.txt';

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormConhecimentosInutilizadosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCteInutilizados.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYCteInutilizados.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCteInutilizados.Active:=False;
    QYCteInutilizados.SQL.Clear;
    QYCteInutilizados.SQL.Add('select * from CTEINUTILIZADOS where CIN_CODIGO='+QuotedStr(Edit1.Text)+' order by CIN_CODIGO');
    QYCteInutilizados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCteInutilizados.Active:=False;
    QYCteInutilizados.SQL.Clear;
    QYCteInutilizados.SQL.Add('select * from CTEINUTILIZADOS where CIN_JUSTIFICATIVA like '+QuotedStr(Edit2.Text+'%')+' order by CIN_CODIGO desc');
    QYCteInutilizados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCteInutilizados.Active:=False;
    QYCteInutilizados.SQL.Clear;
    QYCteInutilizados.SQL.Add('select * from CTEINUTILIZADOS where '+QuotedStr(Edit3.Text)+' between CIN_NUMINICIAL and CIN_NUMFINAL order by CIN_CODIGO desc');
    QYCteInutilizados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCteInutilizados.Active:=False;
    QYCteInutilizados.SQL.Clear;
    QYCteInutilizados.SQL.Add('select * from CTEINUTILIZADOS where CIN_PROTOCOLO like '+QuotedStr(Edit4.Text+'%')+' order by CIN_CODIGO desc');
    QYCteInutilizados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormConhecimentosInutilizadosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormConhecimentosInutilizadosLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Conhecimentos de Transporte Eletronicos - Inutilizacoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO NFE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='JUSTIFICATIVA' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PROTOCOLO' then Edit4.SetFocus;
end;

procedure TFormConhecimentosInutilizadosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormConhecimentosInutilizadosLoc.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
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
    QYCteInutilizados.Active:=False;
    QYCteInutilizados.SQL.Clear;
    QYCteInutilizados.SQL.Add('select * from CTEINUTILIZADOS where CIN_DTCADASTRO between :datainicial and :datafinal order by CIN_DTCADASTRO desc, CIN_CODIGO desc');
    QYCteInutilizados.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYCteInutilizados.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYCteInutilizados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormConhecimentosInutilizadosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
