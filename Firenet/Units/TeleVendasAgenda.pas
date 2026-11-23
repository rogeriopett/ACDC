unit TeleVendasAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ComCtrls, ExtCtrls, Menus, System.UITypes,
  Buttons, DBSBtn, StdCtrls, Mask, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTeleVendasAgenda = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    DSTeleVendas: TDataSource;
    MonthCalendar1: TMonthCalendar;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton9: TPngSpeedButton;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    PngImageList1: TPngImageList;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit4: TEdit;
    Edit5: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizaoOriginal1: TMenuItem;
    QYTeleVendas: TFDQuery;
    TRTeleVendas: TFDTransaction;
    QYTeleVendas2: TFDQuery;
    TRTeleVendas2: TFDTransaction;
    QYTeleVendasTEV_CODIGO: TIntegerField;
    QYTeleVendasTEV_CLIENTE: TIntegerField;
    QYTeleVendasTEV_DATA: TDateField;
    QYTeleVendasTEV_DATAPROX: TDateField;
    QYTeleVendasTEV_DEMODATA: TDateField;
    QYTeleVendasTEV_DEMOHORA: TTimeField;
    QYTeleVendasTEV_DESCRICAO: TStringField;
    QYTeleVendasTEV_HORAPROX: TTimeField;
    QYTeleVendasTEV_MOTIVO: TIntegerField;
    QYTeleVendasTEV_REAGENDADO: TStringField;
    QYTeleVendasCLI_NOME: TStringField;
    QYTeleVendasMOT_DESCRICAO: TStringField;
    QYTeleVendas2QTDE: TLargeintField;
    procedure Fechar1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure RestaurarVisualizaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeleVendasAgenda: TFormTeleVendasAgenda;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormTeleVendasAgenda.txt';

implementation
uses DataMod, DataMod2, Main, Funcoes1, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormTeleVendasAgenda.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTeleVendasAgenda.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTeleVendasAgenda.DBGrid1DblClick(Sender: TObject);
begin
  AbortIf(QYTeleVendas.IsEmpty,'Nenhum contato para este dia.');

  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=QYTeleVendasTEV_CLIENTE.Value;
  DM.TBClientes.Open;
  DM2.TBTeleVendas.Locate('TEV_CODIGO',QYTeleVendasTEV_CODIGO.Value,[]);
  Close;
end;

procedure TFormTeleVendasAgenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  DBGrid1DblClick(Self);
end;

procedure TFormTeleVendasAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormTeleVendasAgenda.FormCreate(Sender: TObject);
begin
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  Label2.Caption:=DateToStr(MonthCalendar1.Date,FS);
  Label4.Caption:='0';
  //localiza o usuario logado para garantir os dados corretos.
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  //...
  Edit1.Text:=IntToStr(DM.TBUsuariosUSU_VENDEDOR.Value);
  Edit2.Text:=DM.TBUsuariosVEN_NOME.Value;
  MonthCalendar1.Date:=DM.ServerDate;
  MonthCalendar1DblClick(Self);
end;

procedure TFormTeleVendasAgenda.MonthCalendar1DblClick(Sender: TObject);
var Where: String;
begin
  AbortIf(Trim(Edit1.Text)='','Informe o vendedor.');

  Where:='';
  if Edit3.Text<>'' then Where:=Where+' and TEV_DESCRICAO like '+QuotedStr(Edit3.Text+'%');
  if Edit5.Text<>'' then Where:=Where+' and TEV_MOTIVO='+QuotedStr(Edit4.Text);
  QYTeleVendas.Close;
  QYTeleVendas.SQL.Clear;
  QYTeleVendas.SQL.Add(
    'select TEV_CODIGO, TEV_CLIENTE, TEV_DATA, TEV_DATAPROX, TEV_DEMODATA, TEV_DEMOHORA, TEV_DESCRICAO, TEV_HORAPROX, TEV_MOTIVO, '+
    'TEV_REAGENDADO, CLI_NOME, MOT_DESCRICAO from TELEVENDAS '+
    'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO '+
    'left join MOTIVOS on TEV_MOTIVO=MOT_CODIGO '+
    'where TEV_DATAPROX between :datainicial and :datafinal '+
    'and TEV_VENDEDOR=:codvendedor and TEV_STATUS=:status '+Where+' order by TEV_HORAPROX, CLI_NOME');
  QYTeleVendas.ParamByName('datainicial').AsDate:=MonthCalendar1.Date;
  QYTeleVendas.ParamByName('datafinal').AsDate:=MonthCalendar1.Date;
  QYTeleVendas.ParamByName('codvendedor').AsInteger:=StrToInt(Edit1.Text);
  QYTeleVendas.ParamByName('status').AsString:='A';
  QYTeleVendas.Open;
  QYTeleVendas2.Close;
  QYTeleVendas2.SQL.Clear;
  QYTeleVendas2.SQL.Add(
    'select count(TEV_CODIGO) as QTDE from TELEVENDAS '+
    'where TEV_DATAPROX between :datainicial and :datafinal '+
    'and TEV_VENDEDOR=:codvendedor and TEV_STATUS=:status '+Where);
  QYTeleVendas2.ParamByName('datainicial').AsDate:=MonthCalendar1.Date;
  QYTeleVendas2.ParamByName('datafinal').AsDate:=MonthCalendar1.Date;
  QYTeleVendas2.ParamByName('codvendedor').AsInteger:=StrToInt(Edit1.Text);
  QYTeleVendas2.ParamByName('status').AsString:='A';
  QYTeleVendas2.Open;
  Label2.Caption:=DateToStr(MonthCalendar1.Date,FS);
  Label4.Caption:=IntToStr(QYTeleVendas2QTDE.Value);
end;

procedure TFormTeleVendasAgenda.PngSpeedButton2Click(Sender: TObject);
begin
  LocMotivosBotao(Edit4,Edit5);
end;

procedure TFormTeleVendasAgenda.RestaurarVisualizaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormTeleVendasAgenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTeleVendasAgenda.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTeleVendasAgenda.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormTeleVendasAgenda.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormTeleVendasAgenda.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormTeleVendasAgenda.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendasAgenda.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    MonthCalendar1DblClick(Self);
  end;
end;

procedure TFormTeleVendasAgenda.Edit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTeleVendasAgenda.Edit4Exit(Sender: TObject);
begin
  LocMotivosExit(Edit4,Edit5);
end;

procedure TFormTeleVendasAgenda.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormTeleVendasAgenda.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendasAgenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QYTeleVendasTEV_REAGENDADO.Value='S' then
  DBGrid1.Canvas.Font.Color:=clRed;
  DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormTeleVendasAgenda.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then
  begin
    try
      StrToDate(MaskEdit1.Text,FS);
      MonthCalendar1.Date:=StrToDate(MaskEdit1.Text,FS);
      MonthCalendar1DblClick(Self);
      MaskEdit1.SelectAll;
    except on exception do
      MessageDlg('Data inválida.',mtError,[mbOk],0);
    end;
  end;
end;

procedure TFormTeleVendasAgenda.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormTeleVendasAgenda);
end;

initialization
  RegisterClass(TFormTeleVendasAgenda);

finalization
  UnRegisterClass(TFormTeleVendasAgenda);

end.
