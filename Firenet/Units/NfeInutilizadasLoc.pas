unit NfeInutilizadasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids, Mask, StdCtrls, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfeInutilizadasLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    DSNfeInutilizadas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Edit2: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    QYNfeInutilizadas: TFDQuery;
    TRNfeInutilizadas: TFDTransaction;
    QYNfeInutilizadasNIN_ANO: TStringField;
    QYNfeInutilizadasNIN_CODIGO: TIntegerField;
    QYNfeInutilizadasNIN_DTATUALIZACAO: TDateField;
    QYNfeInutilizadasNIN_DTCADASTRO: TDateField;
    QYNfeInutilizadasNIN_HRATUALIZACAO: TTimeField;
    QYNfeInutilizadasNIN_HRCADASTRO: TTimeField;
    QYNfeInutilizadasNIN_JUSTIFICATIVA: TStringField;
    QYNfeInutilizadasNIN_MODELO: TIntegerField;
    QYNfeInutilizadasNIN_NUMFINAL: TIntegerField;
    QYNfeInutilizadasNIN_NUMINICIAL: TIntegerField;
    QYNfeInutilizadasNIN_PROTOCOLO: TStringField;
    QYNfeInutilizadasNIN_PROTOCOLODH: TStringField;
    QYNfeInutilizadasNIN_SERIE: TIntegerField;
    QYNfeInutilizadasNIN_USUARIO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeInutilizadasLoc: TFormNfeInutilizadasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNfeInutilizadasLoc.txt';

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfeInutilizadasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYNfeInutilizadas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfeInutilizadasLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYNfeInutilizadas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfeInutilizadasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYNfeInutilizadas.Active:=False;
    QYNfeInutilizadas.SQL.Clear;
    QYNfeInutilizadas.SQL.Add('select * from NFEINUTILIZADAS where NIN_CODIGO='+QuotedStr(Edit1.Text)+' order by NIN_CODIGO');
    QYNfeInutilizadas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormNfeInutilizadasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYNfeInutilizadas.Active:=False;
    QYNfeInutilizadas.SQL.Clear;
    QYNfeInutilizadas.SQL.Add('select * from NFEINUTILIZADAS where NIN_JUSTIFICATIVA like '+QuotedStr(Edit2.Text+'%')+' order by NIN_CODIGO desc');
    QYNfeInutilizadas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormNfeInutilizadasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYNfeInutilizadas.Active:=False;
    QYNfeInutilizadas.SQL.Clear;
    QYNfeInutilizadas.SQL.Add('select * from NFEINUTILIZADAS where '+QuotedStr(Edit3.Text)+' between NIN_NUMINICIAL and NIN_NUMFINAL order by NIN_CODIGO desc');
    QYNfeInutilizadas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormNfeInutilizadasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYNfeInutilizadas.Active:=False;
    QYNfeInutilizadas.SQL.Clear;
    QYNfeInutilizadas.SQL.Add('select * from NFEINUTILIZADAS where NIN_PROTOCOLO like '+QuotedStr(Edit4.Text+'%')+' order by NIN_CODIGO desc');
    QYNfeInutilizadas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormNfeInutilizadasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormNfeInutilizadasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormNfeInutilizadasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeInutilizadasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais Eletronicas - Inutilizacoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO NFE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='JUSTIFICATIVA' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PROTOCOLO' then Edit4.SetFocus;
end;

procedure TFormNfeInutilizadasLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormNfeInutilizadasLoc.MaskEdit2KeyPress(Sender: TObject;
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
    QYNfeInutilizadas.Active:=False;
    QYNfeInutilizadas.SQL.Clear;
    QYNfeInutilizadas.SQL.Add('select * from NFEINUTILIZADAS where NIN_DTCADASTRO between :datainicial and :datafinal order by NIN_DTCADASTRO desc, NIN_CODIGO desc');
    QYNfeInutilizadas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYNfeInutilizadas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYNfeInutilizadas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormNfeInutilizadasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
