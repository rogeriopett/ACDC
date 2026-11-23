unit Agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, ExtCtrls, Menus,
  Buttons, DBSBtn, StdCtrls;

type
  TFormAgenda = class(TForm)
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    SpeedButton5: TSpeedButton;
    Bevel7: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Query1TEV_DATAPROX: TDateField;
    Query1TEV_HORARIO: TStringField;
    Query1NOME: TStringField;
    Query1TEV_CODIGO: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query2: TQuery;
    Query2Qtde: TIntegerField;
    Bevel1: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Query1tev_cliente: TStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgenda: TFormAgenda;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormAgenda.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAgenda.DBGrid1DblClick(Sender: TObject);
begin
  if Query1.IsEmpty then
  begin
    MessageDlg('Nenhum contato para este dia.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBClientes.Locate('numreg',Query1TEV_CLIENTE.Value,[]);
  DM.TBTele.Locate('TEV_CODIGO',Query1TEV_CODIGO.Value,[]);
  Close;
end;

procedure TFormAgenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  DBGrid1DblClick(Self);
end;

procedure TFormAgenda.FormCreate(Sender: TObject);
begin
  Label2.Caption:=DateToStr(MonthCalendar1.Date);
  Label4.Caption:='0';
  Label6.Caption:=DataMod.CodigoVendedor+' - '+DataMod.NomeVendedor;
  Query1.DatabaseName:=localbase;
  Query2.DatabaseName:=localbase;
  MonthCalendar1.Date:=Date;
  MonthCalendar1DblClick(Self);
end;

procedure TFormAgenda.MonthCalendar1DblClick(Sender: TObject);
begin
  Query1.Close;
  Query1.ParamByName('datainicial').AsDate:=MonthCalendar1.Date;
  Query1.ParamByName('datafinal').AsDate:=MonthCalendar1.Date;
  Query1.ParamByName('codvendedor').AsInteger:=StrToInt(DataMod.CodigoVendedor);
  Query1.ParamByName('status').AsString:='PENDENTE';
  Query1.Open;
  Query2.Close;
  Query2.ParamByName('datainicial').AsDate:=MonthCalendar1.Date;
  Query2.ParamByName('datafinal').AsDate:=MonthCalendar1.Date;
  Query2.ParamByName('codvendedor').AsInteger:=StrToInt(DataMod.CodigoVendedor);
  Query2.ParamByName('status').AsString:='PENDENTE';
  Query2.Open;
  Label2.Caption:=DateToStr(MonthCalendar1.Date);
  Label4.Caption:=IntToStr(Query2QTDE.Value);
end;

procedure TFormAgenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

end.
