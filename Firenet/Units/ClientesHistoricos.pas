unit ClientesHistoricos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus, ComCtrls, DBCtrls, StdCtrls, DBSBtn, Buttons,
  ExtCtrls, PngSpeedButton, ImgList, PngImageList, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormClientesHistoricos = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText8: TDBText;
    DBText1: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DSReceber: TDataSource;
    DBGrid3: TDBGrid;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    DSCompras: TDataSource;
    DSComprasItens: TDataSource;
    PopupMenu1: TPopupMenu;
    PrBaixar1: TMenuItem;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    Label3: TLabel;
    DBText3: TDBText;
    DSPontos: TDataSource;
    PngImageList1: TPngImageList;
    TabSheet4: TTabSheet;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    Label4: TLabel;
    DBText4: TDBText;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    DSBoletosTotal: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label11: TLabel;
    DBText7: TDBText;
    Label12: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label13: TLabel;
    DBText13: TDBText;
    Label14: TLabel;
    DBText14: TDBText;
    Label15: TLabel;
    DBText15: TDBText;
    Label16: TLabel;
    DBText16: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DSReceberTotal: TDataSource;
    TabSheet5: TTabSheet;
    DBMemo1: TDBMemo;
    DBText2: TDBText;
    Label2: TLabel;
    TabSheet6: TTabSheet;
    DBGrid7: TDBGrid;
    DSMedicoes: TDataSource;
    TRMedicoes: TFDTransaction;
    QYMedicoes: TFDQuery;
    QYCompras: TFDQuery;
    TRCompras: TFDTransaction;
    QYComprasVED_CODIGO: TIntegerField;
    QYComprasVED_CONDICAO: TIntegerField;
    QYComprasVED_DTEMISSAO: TDateField;
    QYComprasVED_NFE: TIntegerField;
    QYComprasVED_NOTA: TIntegerField;
    QYComprasVED_TRANSPORTADORA: TIntegerField;
    QYComprasVED_VALORTOTAL: TFMTBCDField;
    QYComprasVED_VENDEDOR: TIntegerField;
    QYComprasCPG_DESCRICAO: TStringField;
    QYComprasFOR_NOME: TStringField;
    QYComprasItens: TFDQuery;
    TRComprasItens: TFDTransaction;
    QYComprasItensVEI_CODIGO: TIntegerField;
    QYComprasItensVEI_PRODUTO: TIntegerField;
    QYComprasItensVEI_DESCRICAO: TStringField;
    QYComprasItensVEI_QUANTIDADE: TFMTBCDField;
    QYComprasItensVEI_VALORUNIT: TFMTBCDField;
    QYComprasItensVEI_VALORTOTAL: TFMTBCDField;
    QYPontos: TFDQuery;
    TRPontos: TFDTransaction;
    QYPontosPTS_DESCRICAO: TStringField;
    QYPontosPTS_DTCADASTRO: TDateField;
    QYPontosPTS_ENTRADASAIDA: TStringField;
    QYPontosPTS_NUMDOCTO: TStringField;
    QYPontosPTS_PONTOS: TFMTBCDField;
    QYPontosPTS_SALDOANTERIOR: TFMTBCDField;
    QYPontosPTS_SALDOPOSTERIOR: TFMTBCDField;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    QYReceberREE_CODIGO: TIntegerField;
    QYReceberREE_NUMDOCTO: TStringField;
    QYReceberREE_TIPODOCTO: TStringField;
    QYReceberREE_DTEMISSAO: TDateField;
    QYReceberREE_DIASPRAZO: TIntegerField;
    QYReceberREE_DTVENCIMENTO: TDateField;
    QYReceberREE_VALOR: TFMTBCDField;
    QYReceberTotal: TFDQuery;
    TRReceberTotal: TFDTransaction;
    QYBoletos: TFDQuery;
    TRBoletos: TFDTransaction;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_DTCADASTRO: TDateField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosCON_NOME: TStringField;
    QYReceberTotalVENCIDOS: TFMTBCDField;
    QYReceberTotalAVENCER: TFMTBCDField;
    QYBoletosItens: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_DTEMISSAO: TDateField;
    QYBoletosItensREE_DTVENCIMENTO: TDateField;
    QYBoletosItensREE_DTPAGAMENTO: TDateField;
    QYBoletosItensREE_STATUS: TStringField;
    QYBoletosItensREE_VALOR: TFMTBCDField;
    QYBoletosItensREE_VALORPAGO: TFMTBCDField;
    QYBoletosTotal: TFDQuery;
    TRBoletosTotal: TFDTransaction;
    QYBoletosTotalVENCIDOS: TFMTBCDField;
    QYBoletosTotalAVENCER: TFMTBCDField;
    QYMedicoesMED_BATIMENTOS: TIntegerField;
    QYMedicoesMED_CLIENTE: TIntegerField;
    QYMedicoesMED_CODIGO: TIntegerField;
    QYMedicoesMED_DTCADASTRO: TDateField;
    QYMedicoesMED_GLICEMIA: TIntegerField;
    QYMedicoesMED_HRCADASTRO: TTimeField;
    QYMedicoesMED_PERIODO: TStringField;
    QYMedicoesMED_PESO: TFMTBCDField;
    QYMedicoesMED_PRESSAO: TStringField;
    QYMedicoesMED_SATURACAO: TIntegerField;
    QYMedicoesMED_TEMPERATURA: TCurrencyField;
    QYMedicoesMED_USUARIO: TStringField;
    QYMedicoesCLI_NOME: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBText20Click(Sender: TObject);
  private
    { Private declarations }
    procedure AjustarNavegador(DS: TDataSource);
  public
    { Public declarations }
  end;

var
  FormClientesHistoricos: TFormClientesHistoricos;

implementation
uses DataMod, Receber, DataMod2, Boletos, ShellAPI;
{$R *.dfm}

procedure TFormClientesHistoricos.AjustarNavegador(DS: TDataSource);
begin
  dbSBtnFirst1.DataSource:=DS;
  dbSBtnPrior1.DataSource:=DS;
  dbSBtnNext1.DataSource:=DS;
  dbSBtnLast1.DataSource:=DS;
end;

procedure TFormClientesHistoricos.SpeedButton1Click(Sender: TObject);
begin
  QYReceber.Close;
  QYReceber.SQL.Clear;
  QYReceber.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_TIPODOCTO, REE_DTEMISSAO, REE_DIASPRAZO, REE_DTVENCIMENTO, REE_VALOR from RECEBER where REE_CLIENTE=:codigo and REE_DTVENCIMENTO < :data and REE_STATUS=''A'' order by REE_DTVENCIMENTO desc');
  QYReceber.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYReceber.ParamByName('data').AsDate:=DM.ServerDate;
  QYReceber.Open;
end;

procedure TFormClientesHistoricos.SpeedButton2Click(Sender: TObject);
begin
  QYReceber.Close;
  QYReceber.SQL.Clear;
  QYReceber.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_TIPODOCTO, REE_DTEMISSAO, REE_DIASPRAZO, REE_DTVENCIMENTO, REE_VALOR from RECEBER where REE_CLIENTE=:codigo and REE_DTVENCIMENTO >= :data and REE_STATUS=''A'' order by REE_DTVENCIMENTO desc');
  QYReceber.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYReceber.ParamByName('data').AsDate:=DM.ServerDate;
  QYReceber.Open;
end;

procedure TFormClientesHistoricos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(Self); //gera o evento.

  QYReceberTotal.Close;
  QYReceberTotal.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYReceberTotal.ParamByName('data').AsDate:=DM.ServerDate;
  QYReceberTotal.Open;

  QYBoletosTotal.Close;
  QYBoletosTotal.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYBoletosTotal.ParamByName('data').AsDate:=DM.ServerDate;
  QYBoletosTotal.Open;

  QYCompras.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYCompras.Open;
  QYComprasItens.Open;

  QYPontos.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYPontos.Open;
  SpeedButton1.Click; //contas a receber vencidas.
  PngSpeedButton1.Click; //boletos vencidos.

  DM.TBModulos.Locate('MOD_CODIGO','120',[]); //saude.
  if DM.TBModulosMOD_ACESSO.Value='N' then
  TabSheet6.TabVisible:=False;
end;

procedure TFormClientesHistoricos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClientesHistoricos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: begin
          AjustarNavegador(DSCompras);
        end;
    01: begin
          AjustarNavegador(DSReceber);
        end;
    02: begin
          AjustarNavegador(DSBoletos);
        end;
    03: begin
          AjustarNavegador(DSPontos);
        end;
  end;
end;

procedure TFormClientesHistoricos.PngSpeedButton1Click(Sender: TObject);
begin
  QYBoletosItens.Close;
  QYBoletos.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add('select BOL_CODIGO, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_CONTA, BOL_VALORTOTAL, CON_NOME from BOLETOS left join CONTAS on BOL_CONTA=CON_CODIGO where BOL_STATUS=''A'' and BOL_CLIENTE=:codigo and BOL_DTVENCIMENTO < :data order by BOL_DTVENCIMENTO desc');
  QYBoletos.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYBoletos.ParamByName('data').AsDate:=DM.ServerDate;
  QYBoletos.Open;
  QYBoletosItens.Open;
end;

procedure TFormClientesHistoricos.PngSpeedButton2Click(Sender: TObject);
begin
  QYBoletosItens.Close;
  QYBoletos.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add('select BOL_CODIGO, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_CONTA, BOL_VALORTOTAL, CON_NOME from BOLETOS left join CONTAS on BOL_CONTA=CON_CODIGO where BOL_STATUS=''A'' and BOL_CLIENTE=:codigo and BOL_DTVENCIMENTO >= :data order by BOL_DTVENCIMENTO desc');
  QYBoletos.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  QYBoletos.ParamByName('data').AsDate:=DM.ServerDate;
  QYBoletos.Open;
  QYBoletosItens.Open;
end;

procedure TFormClientesHistoricos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QYReceber.Close;
  QYReceberTotal.Close;
  QYCompras.Close;
  QYComprasItens.Close;
  QYBoletos.Close;
  QYBoletosItens.Close;
  QYBoletosTotal.Close;
  QYPontos.Close;
end;

procedure TFormClientesHistoricos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesHistoricos.DBGrid3DblClick(Sender: TObject);
begin
  if not QYReceber.IsEmpty then
  begin
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
    DM.TBReceber.Open;
    Application.CreateForm(TFormReceber, FormReceber);
    FormReceber.ShowModal;
    FormReceber.Free;
    FormReceber:=nil;
  end;
end;

procedure TFormClientesHistoricos.DBGrid5DblClick(Sender: TObject);
begin
  if not QYBoletos.IsEmpty then
  begin
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;
    Application.CreateForm(TFormBoletos, FormBoletos);
    FormBoletos.ShowModal;
    FormBoletos.Free;
    FormBoletos:=nil;
  end;
end;

procedure TFormClientesHistoricos.DBText20Click(Sender: TObject);
begin
  if DM.TBClientesCLI_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Endereço de email não cadastrado!');
end;

end.
