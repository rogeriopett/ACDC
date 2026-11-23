unit FornecedoresHistoricos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBSBtn, ExtCtrls, ImgList, PngImageList, Menus, DB, Buttons, PngSpeedButton,
  Grids, DBGrids, ComCtrls, DBCtrls, StdCtrls, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormFornecedoresHistoricos = class(TForm)
    Label1: TLabel;
    DBText8: TDBText;
    DBText1: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label2: TLabel;
    DBText2: TDBText;
    DBGrid3: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    DSPagar: TDataSource;
    DSPagarTotal: TDataSource;
    DSCompras: TDataSource;
    DSComprasItens: TDataSource;
    PopupMenu1: TPopupMenu;
    PrBaixar1: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Bevel1: TBevel;
    QYCompras: TFDQuery;
    TRCompras: TFDTransaction;
    TRComprasItens: TFDTransaction;
    QYComprasItens: TFDQuery;
    QYPagar: TFDQuery;
    TRPagar: TFDTransaction;
    QYPagarTotal: TFDQuery;
    TRPagarTotal: TFDTransaction;
    QYComprasCOM_CODIGO: TIntegerField;
    QYComprasCOM_CONDICAO: TIntegerField;
    QYComprasCOM_DTCADASTRO: TDateField;
    QYComprasCOM_DTENTRADA: TDateField;
    QYComprasCOM_TRANSPORTADORA: TIntegerField;
    QYComprasCOM_VALORTOTAL: TFMTBCDField;
    QYComprasCPG_DESCRICAO: TStringField;
    QYComprasItensCOI_CODIGO: TIntegerField;
    QYComprasItensCOI_DESCRICAO: TStringField;
    QYComprasItensCOI_PRODUTO: TIntegerField;
    QYComprasItensCOI_QUANTIDADE: TFMTBCDField;
    QYComprasItensCOI_VALORTOTAL: TFMTBCDField;
    QYComprasItensCOI_VALORUNIT: TFMTBCDField;
    QYPagarPAG_CODIGO: TIntegerField;
    QYPagarPAG_DIASPRAZO: TIntegerField;
    QYPagarPAG_DTEMISSAO: TDateField;
    QYPagarPAG_DTVENCIMENTO: TDateField;
    QYPagarPAG_NUMDOCTO: TStringField;
    QYPagarPAG_TIPODOCTO: TStringField;
    QYPagarPAG_VALOR: TFMTBCDField;
    QYPagarTotalVALOR: TFMTBCDField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustarNavegador(DS: TDataSource);
  public
    { Public declarations }
  end;

var
  FormFornecedoresHistoricos: TFormFornecedoresHistoricos;

implementation
uses DataMod, Pagar;
{$R *.dfm}

procedure TFormFornecedoresHistoricos.AjustarNavegador(DS: TDataSource);
begin
  dbSBtnFirst1.DataSource:=DS;
  dbSBtnPrior1.DataSource:=DS;
  dbSBtnNext1.DataSource:=DS;
  dbSBtnLast1.DataSource:=DS;
end;

procedure TFormFornecedoresHistoricos.DBGrid3DblClick(Sender: TObject);
begin
  if not QYPagar.IsEmpty then
  begin
    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=QYPagarPAG_CODIGO.Value;
    DM.TBPagar.Open;
    Application.CreateForm(TFormPagar, FormPagar);
    FormPagar.ShowModal;
    FormPagar.Free;
    FormPagar:=nil;
  end;
end;

procedure TFormFornecedoresHistoricos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFornecedoresHistoricos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QYPagar.Close;
  QYPagarTotal.Close;
  QYCompras.Close;
  QYComprasItens.Close;
end;

procedure TFormFornecedoresHistoricos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(Self); //gera o evento.
  QYCompras.ParamByName('codigo').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value;
  QYCompras.Open;
  QYComprasItens.Open;
  SpeedButton1.Click;
end;

procedure TFormFornecedoresHistoricos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFornecedoresHistoricos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: begin
          AjustarNavegador(DSCompras);
        end;
    01: begin
          AjustarNavegador(DSPagar);
        end;
  end;
end;

procedure TFormFornecedoresHistoricos.SpeedButton1Click(Sender: TObject);
begin
  QYPagar.Close;
  QYPagar.SQL.Clear;
  QYPagar.SQL.Add('select PAG_CODIGO, PAG_NUMDOCTO, PAG_TIPODOCTO, PAG_DTEMISSAO, PAG_DIASPRAZO, PAG_DTVENCIMENTO, PAG_VALOR from PAGAR where PAG_FORNECEDOR=:codigo and PAG_DTVENCIMENTO < :data and PAG_STATUS=''A'' order by PAG_DTVENCIMENTO desc');
  QYPagar.ParamByName('codigo').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value;
  QYPagar.ParamByName('data').AsDate:=DM.ServerDate;
  QYPagar.Open;
  QYPagarTotal.Close;
  QYPagarTotal.SQL.Clear;
  QYPagarTotal.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_FORNECEDOR=:codigo and PAG_DTVENCIMENTO < :data and PAG_STATUS=''A''');
  QYPagarTotal.ParamByName('codigo').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value;
  QYPagarTotal.ParamByName('data').AsDate:=DM.ServerDate;
  QYPagarTotal.open;
end;

procedure TFormFornecedoresHistoricos.SpeedButton2Click(Sender: TObject);
begin
  QYPagar.Close;
  QYPagar.SQL.Clear;
  QYPagar.SQL.Add('select PAG_CODIGO, PAG_NUMDOCTO, PAG_TIPODOCTO, PAG_DTEMISSAO, PAG_DIASPRAZO, PAG_DTVENCIMENTO, PAG_VALOR from PAGAR where PAG_FORNECEDOR=:codigo and PAG_DTVENCIMENTO >= :data and PAG_STATUS=''A'' order by PAG_DTVENCIMENTO desc');
  QYPagar.ParamByName('codigo').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value;
  QYPagar.ParamByName('data').AsDate:=DM.ServerDate;
  QYPagar.Open;
  QYPagarTotal.Close;
  QYPagarTotal.SQL.Clear;
  QYPagarTotal.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_FORNECEDOR=:codigo and PAG_DTVENCIMENTO >= :data and PAG_STATUS=''A''');
  QYPagarTotal.ParamByName('codigo').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value;
  QYPagarTotal.ParamByName('data').AsDate:=DM.ServerDate;
  QYPagarTotal.open;
end;

end.


