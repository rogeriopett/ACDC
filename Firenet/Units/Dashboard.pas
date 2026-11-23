unit Dashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Mask, PngSpeedButton,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Data.DB, VCLTee.TeeData, VCLTee.DBChart, VCLTee.TeeDBCrossTab, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TFormDashboard = class(TForm)
    SeriesDataSet1: TSeriesDataSet;
    DBCrossTabSource1: TDBCrossTabSource;
    DSMetas: TDataSource;
    DSTeleVias: TDataSource;
    TRMetas: TFDTransaction;
    QYMetas: TFDQuery;
    QYTeleVias: TFDQuery;
    TRTeleVias: TFDTransaction;
    QYMetasMET_DTFIM: TDateField;
    QYMetasMET_DTINICIO: TDateField;
    QYMetasMET_METAATINGIDA: TFMTBCDField;
    QYMetasMET_METAVALOR: TFMTBCDField;
    QYMetasMET_VENDEDOR: TIntegerField;
    QYTeleViasQTDE: TLargeintField;
    QYTeleViasTEV_VIA: TIntegerField;
    QYTeleViasVIA_DESCRICAO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBText3: TDBText;
    Label32: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label33: TLabel;
    MaskEdit1: TMaskEdit;
    PngBitBtn1: TPngBitBtn;
    MaskEdit2: TMaskEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Chart1: TChart;
    Series1: TBarSeries;
    DBGrid1: TDBGrid;
    PngBitBtn2: TPngBitBtn;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    DSVendas: TDataSource;
    QYVendasANO: TSmallintField;
    QYVendasMES: TSmallintField;
    QYVendasVTOTAL: TFMTBCDField;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    DSReceber: TDataSource;
    QYReceberANO: TSmallintField;
    QYReceberMES: TSmallintField;
    QYReceberVTOTAL: TFMTBCDField;
    Chart3: TChart;
    BarSeries2: TBarSeries;
    Chart4: TChart;
    QYReceberPagarTotais: TFDQuery;
    TRReceberPagarTotais: TFDTransaction;
    DSReceberPagarTotais: TDataSource;
    DSReceberPagarMensais: TDataSource;
    TRReceberPagarMensais: TFDTransaction;
    QYReceberPagarMensais: TFDQuery;
    Chart5: TChart;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDashboard: TFormDashboard;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, dateutils, ClientesFast, Main;
{$R *.dfm}

procedure TFormDashboard.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormDashboard.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormDashboard.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormDashboard.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDashboard.FormCreate(Sender: TObject);
var NomeMes: String;
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(Date);
  Edit1.Text:=IntToStr(DM.UsuarioVendedor);
  Edit2.Text:=DM.UsuarioNome;
  PageControl1.ActivePageIndex:=0;

  {$REGION 'Dados do gráfico vendas nos ultimos 12 meses'}
  Chart2.Title.Text.Clear;
  Chart2.Title.Text.Add('Vendas dos últimos 12 meses');
  Chart2.Series[0].ValueFormat := 'R$ #,##0.00';

  QYVendas.Close;
  QYVendas.Open;
  QYVendas.First;
  while not QYVendas.Eof do
  begin
    NomeMes := AT(QYVendas.FieldByName('MES').AsString,'0',2,atRight) + '/' + QYVendas.FieldByName('ANO').AsString;
    Chart2.Series[0].Add(QYVendas.FieldByName('VTOTAL').AsExtended,NomeMes);
    QYVendas.Next;
  end;
  QYVendas.Close;
  {$ENDREGION}

  {$REGION 'Dados do gráfico contas a receber nos proximos 12 meses'}
  Chart3.Title.Text.Clear;
  Chart3.Title.Text.Add('Contas a receber nos próximos 12 meses.');
  Chart3.Series[0].ValueFormat := 'R$ #,##0.00';

  QYReceber.Close;
  QYReceber.Open;
  QYReceber.First;
  while not QYReceber.Eof do
  begin
    NomeMes := AT(QYReceber.FieldByName('MES').AsString,'0',2,atRight) + '/' + QYReceber.FieldByName('ANO').AsString;
    Chart3.Series[0].Add(QYReceber.FieldByName('VTOTAL').AsExtended, NomeMes);
    QYReceber.Next;
  end;
  QYReceber.Close;
  {$ENDREGION}

  {$REGION 'Dados do gráfico geral de contas a receber e pagar'}
  QYReceberPagarTotais.Close;
  QYReceberPagarTotais.Open;
  Chart4.Title.Text.Clear;
  Chart4.Title.Text.Add('Geral contas a receber e pagar.');
  Chart4.Series[0].ValueFormat := 'R$ #,##0.00';
  Chart4.Series[0].Clear;
  Chart4.Series[0].Add(QYReceberPagarTotais.FieldByName('REE_VENCER').AsExtended, 'A RECEBER EM DIA');
  Chart4.Series[0].Add(QYReceberPagarTotais.FieldByName('REE_VENCIDO').AsExtended,'A RECEBER ATRASADO');
  Chart4.Series[0].Add(QYReceberPagarTotais.FieldByName('PAG_VENCER').AsExtended,'A PAGAR EM DIA');
  Chart4.Series[0].Add(QYReceberPagarTotais.FieldByName('PAG_VENCIDO').AsExtended,'A PAGAR ATRASADO');
  QYReceberPagarTotais.Close;
  {$ENDREGION}

  {$REGION 'Dados do gráfico de contas recebidas vs pagas'}
  Chart5.Title.Text.Clear;
  Chart5.Title.Text.Add('Contas recebidas vs contas pagas nos últimos 12 meses.');
  Chart5.Series[0].ValueFormat := 'R$ #,##0.00';
  Chart5.Series[1].ValueFormat := 'R$ #,##0.00';
  QYReceberPagarMensais.Close;
  QYReceberPagarMensais.Open;
  QYReceberPagarMensais.First;
  while not QYReceberPagarMensais.Eof do
  begin
    NomeMes := AT(QYReceberPagarMensais.FieldByName('MES').AsString,'0',2,atRight) + '/' + QYReceberPagarMensais.FieldByName('ANO').AsString;
    Chart5.Series[0].Add(QYReceberPagarMensais.FieldByName('TOTAL_RECEBIDO').AsExtended, NomeMes);
    Chart5.Series[1].Add(QYReceberPagarMensais.FieldByName('TOTAL_PAGO').AsExtended, NomeMes);
    QYReceberPagarMensais.Next;
  end;
  QYReceberPagarMensais.Close;
  {$ENDREGION}

end;

procedure TFormDashboard.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDashboard.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormDashboard);
end;

procedure TFormDashboard.PngBitBtn1Click(Sender: TObject);
var DataInicial, DataFinal, hoje: TDate;
  Series: TBarSeries;
  Where: String;
  MetaAtingida, MetaDiaria, TotalVendas: Extended;
  Dias: Integer;
begin

  {$REGION 'Quantidade de clientes.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:=' and CLI_VENDEDOR='+Edit1.Text;
  DM.QYAux.SQL.Add('select count(*) as QTDE from CLIENTES where CLI_DTCADASTRO<=:datafinal '+Where);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  Label5.Caption:=DM.QYAux.FieldByName('QTDE').AsString;
  {$ENDREGION}

  {$REGION 'Quantidade de vendas e valor total.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:='and VED_VENDEDOR='+Edit1.Text;
  DM.QYAux.SQL.Add(
    'select count(*) as QTDE, sum(VED_VALORTOTAL) as VALORTOTAL from VENDAS where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' '+Where+' '+
    'and VED_DTEMISSAO between :datainicial and :datafinal');
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  Label8.Caption:=DM.QYAux.FieldByName('QTDE').AsString;
  Label11.Caption:=Format('%m',[DM.QYAux.FieldByName('VALORTOTAL').AsExtended]);
  {$ENDREGION}

  {$REGION 'Quantidade de clientes que compraram no periodo.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:='and VED_VENDEDOR='+Edit1.Text;
  DM.QYAux.SQL.Add(
    'select count(distinct(VED_CLIENTE)) as QTDE from VENDAS where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' '+Where+' '+
    'and VED_DTEMISSAO between :datainicial and :datafinal');
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  Label7.Caption:=DM.QYAux.FieldByName('QTDE').AsString;
  {$ENDREGION}

  {$REGION 'Quantidade de clientes novos no periodo.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:='and CLI_VENDEDOR='+Edit1.Text;
  DM.QYAux.SQL.Add(
    'select count(*) as QTDE from CLIENTES where CLI_DTCADASTRO between :datainicial and :datafinal '+Where);
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  Label25.Caption:=DM.QYAux.FieldByName('QTDE').AsString;
  {$ENDREGION}

  {$REGION 'Classificação dos clientes.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:='where CLI_VENDEDOR='+Edit1.Text;
//  DM.QYAux.SQL.Add(
//    'select '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) between 1   and 60,  1, 0)) as ATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) between 61  and 120, 1, 0)) as QUASEINATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) between 121 and 180, 1, 0)) as INATIVOSRECENTE, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) between 181 and 360, 1, 0)) as INATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) > 360, 1, 0)) as EXCLIENTES, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, current_date) is null, 1, 0)) as NUNCACOMPRARAM '+
//    'from (select CLI_CODIGO, CLI_NOME, '+
//    '(select first(1) VED_DTEMISSAO from VENDAS where VED_CLIENTE=CLI_CODIGO and VED_STATUS=:status and VED_ENTRADASAIDA=:entradasaida and VED_DTEMISSAO<=:datafinal order by VED_CODIGO desc) as ULTIMAVENDA '+
//    'from CLIENTES '+Where+' order by 3 desc, CLI_CODIGO) t'
//  );
  //alterado para o SQL abaixo.
  DM.QYAux.SQL.Add(
    'select '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 1   and 60,  1, 0)) as ATIVOS, '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 61  and 120, 1, 0)) as QUASEINATIVOS, '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 121 and 180, 1, 0)) as INATIVOSRECENTE, '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 181 and 360, 1, 0)) as INATIVOS, '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) > 360, 1, 0)) as EXCLIENTES, '+
    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) is null, 1, 0)) as NUNCACOMPRARAM '+
    'from (select CLI_CODIGO, CLI_NOME, '+
    '(select first(1) VED_DTEMISSAO from VENDAS where VED_CLIENTE=CLI_CODIGO and VED_STATUS=:status and VED_ENTRADASAIDA=:entradasaida and VED_DTEMISSAO<=:datafinal order by VED_CODIGO desc) as ULTIMAVENDA '+
    'from CLIENTES '+Where+' order by 3 desc, CLI_CODIGO) t'
  );
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.ParamByName('entradasaida').AsString:='S';
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  Label13.Caption:=DM.QYAux.FieldByName('ATIVOS').AsString;
  Label14.Caption:=DM.QYAux.FieldByName('QUASEINATIVOS').AsString;
  Label17.Caption:=DM.QYAux.FieldByName('INATIVOSRECENTE').AsString;
  Label19.Caption:=DM.QYAux.FieldByName('INATIVOS').AsString;
  Label21.Caption:=DM.QYAux.FieldByName('EXCLIENTES').AsString;
  Label23.Caption:=DM.QYAux.FieldByName('NUNCACOMPRARAM').AsString;

  Chart1.Title.Text.Clear;
  Chart1.Title.Text.Add('Classificação dos clientes.');
  Chart1.Series[0].Clear;
  Chart1.Series[0].Add(DM.QYAux.FieldByName('ATIVOS').AsInteger, '', clGreen);
  Chart1.Series[0].Add(DM.QYAux.FieldByName('QUASEINATIVOS').AsInteger, '', clOlive);
  Chart1.Series[0].Add(DM.QYAux.FieldByName('INATIVOSRECENTE').AsInteger, '', clPurple);
  Chart1.Series[0].Add(DM.QYAux.FieldByName('INATIVOS').AsInteger, '', clFuchsia);
  Chart1.Series[0].Add(DM.QYAux.FieldByName('EXCLIENTES').AsInteger, '', clBlue);
  Chart1.Series[0].Add(DM.QYAux.FieldByName('NUNCACOMPRARAM').AsInteger, '', clRed);

//  SeriesDataSet1.Open;
//  //Series:=TBarSeries.Create(Self);
//  SeriesDataSet1.Series.Clear;
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('ATIVOS').AsInteger, '', clGreen);
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('QUASEINATIVOS').AsInteger, '', clOlive);
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('INATIVOSRECENTE').AsInteger, '', clPurple);
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('INATIVOS').AsInteger, '', clFuchsia);
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('EXCLIENTES').AsInteger, '', clBlue);
//  SeriesDataSet1.Series.Add(DM.QYAux.FieldByName('NUNCACOMPRARAM').AsInteger, '', clRed);
//  //Chart1.SeriesList.Add(Series);
  {$ENDREGION}

  {$REGION 'Meta'}
  if Edit2.Text<>'' then
  begin
    QYMetas.Close;
    QYMetas.ParamByName('vendedor').AsInteger:=DM.TBUsuariosUSU_VENDEDOR.Value;
    QYMetas.Open;

    //totaliza as vendas finalizadas do vendedor.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select coalesce(sum(VED_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(VED_VALORTOTAL),0) as TOTALVENDAS from VENDAS '+
      'where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' and VED_VENDEDOR=:vendedor and VED_DTEMISSAO between :datainicial and :datafinal');
    DM.QYAux.ParamByName('datainicial').AsDate:=QYMetasMET_DTINICIO.Value;
    DM.QYAux.ParamByName('datafinal').AsDate:=QYMetasMET_DTFIM.Value;
    DM.QYAux.ParamByName('vendedor').AsInteger:=QYMetasMET_VENDEDOR.Value;
    DM.QYAux.Open;
    TotalVendas:=DM.QYAux.FieldByName('TOTALVENDAS').AsExtended;
    DM.QYAux.Close;

    MetaAtingida:=0;
    if TotalVendas > 0 then
    MetaAtingida:=Decimais(((TotalVendas * 100) / QYMetasMET_METAVALOR.AsExtended),2);
    Label29.Caption:=MetaAtingida.ToString+'%';

    Label26.Caption:='Meta de '+DateToStr(QYMetasMET_DTINICIO.Value)+' até '+DateToStr(QYMetasMET_DTFIM.Value)+':';
    Label27.Caption:=Format('%m',[TotalVendas]);

    if DateInRange(Date,QYMetasMET_DTINICIO.Value,QYMetasMET_DTFIM.Value) then
    begin
      Dias:=DaysBetween(Date,QYMetasMET_DTFIM.Value);
      MetaDiaria:=(QYMetasMET_METAVALOR.AsExtended - TotalVendas) / Dias;
      Label30.Caption:='Meta diária ('+Dias.ToString+' dias restantes):';
      Label31.Caption:=Format('%m',[MetaDiaria]);
    end else
    begin
      Label30.Caption:='Meta diária (0 dias restantes):';
      Label31.Caption:='N/D';
    end;
  end else
  begin
    QYMetas.Close;
    Label29.Caption:='';
    Label26.Caption:='Meta:';
  end;
  {$ENDREGION}

  {$REGION 'Atendimentos por via de contato'}
  QYTeleVias.Close;
  QYTeleVias.SQL.Clear;
  Where:='';
  if Edit2.Text<>'' then Where:='and TEV_VENDEDOR='+Edit1.Text;
  QYTeleVias.SQL.Add(
    'select count(*) as QTDE, TEV_VIA, VIA_DESCRICAO from TELEVENDAS '+
    'left join VIAS on TEV_VIA=VIA_CODIGO where TEV_DATABAIXA between :datainicial and :datafinal '+Where+' '+
    'group by VIA_DESCRICAO, TEV_VIA order by VIA_DESCRICAO'
  );
  QYTeleVias.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QYTeleVias.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QYTeleVias.Open;
  {$ENDREGION}
end;

procedure TFormDashboard.PngBitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesFast, FormClientesFast);
  FormClientesFast.QY12.Close;
  FormClientesFast.QY12.SQL.Clear;
  //if Edit2.Text<>'' then Where:='where CLI_VENDEDOR='+Edit1.Text;
  FormClientesFast.QY12.SQL.Add(
    'select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME, ULTIMAVENDA, datediff(day, x.ULTIMAVENDA, current_date) as DIAS, '+
    'case '+
    '  when datediff(day, x.ULTIMAVENDA, :datafinal) between 0   and 60  then ''01 - ATIVOS - 00 A 60 DIAS'' '+
    '  when datediff(day, x.ULTIMAVENDA, :datafinal) between 61  and 120 then ''02 - QUASE INATIVOS - 61 A 120 DIAS'' '+
    '  when datediff(day, x.ULTIMAVENDA, :datafinal) between 121 and 180 then ''03 - INATIVOS RECENTE - 121 A 180 DIAS'' '+
    '  when datediff(day, x.ULTIMAVENDA, :datafinal) between 181 and 360 then ''04 - INATIVOS - 181 A 360 DIAS'' '+
    '  when datediff(day, x.ULTIMAVENDA, :datafinal) > 360 then ''05 - EX-CLIENTES - MAIS DE 360 DIAS'' '+
    '  when x.ULTIMAVENDA is null then ''06 - NUNCA COMPRARAM'' '+
    'end as CLASSIFICACAO '+
    'from '+
    '  (select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME, '+
    '    (select first(1) VED_DTEMISSAO from VENDAS where VED_CLIENTE=CLI_CODIGO and VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' '+
    '     order by VED_CODIGO desc) as ULTIMAVENDA '+
    '   from CLIENTES '+
    '   left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
    '   where CLI_VENDEDOR='+Edit1.Text+' ) x '+
    'order by 6,10,5'

//    'select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME, ULTIMAVENDA, datediff(day, x.ULTIMAVENDA, current_date) as DIAS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 1   and 60,  1, 0)) as ATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 61  and 120, 1, 0)) as QUASEINATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 121 and 180, 1, 0)) as INATIVOSRECENTE, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) between 181 and 360, 1, 0)) as INATIVOS, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) > 360, 1, 0)) as EXCLIENTES, '+
//    'sum(iif( datediff(day, t.ULTIMAVENDA, :datafinal) is null, 1, 0)) as NUNCACOMPRARAM '+
//    'from (select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME,  '+
//    '(select first(1) VED_DTEMISSAO from VENDAS where VED_CLIENTE=CLI_CODIGO and VED_STATUS=:status and VED_ENTRADASAIDA=:entradasaida and VED_DTEMISSAO<=:datafinal order by VED_CODIGO desc) as ULTIMAVENDA '+
//    'from CLIENTES '+Where+' order by 3 desc, CLI_CODIGO) t'
  );
//  FormClientesFast.QY12.ParamByName('status').AsString:='F';
//  FormClientesFast.QY12.ParamByName('entradasaida').AsString:='S';
  FormClientesFast.QY12.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  FormClientesFast.QY12.Open;
  FormClientesFast.frxReport12.Variables['TITULO']:=QuotedStr('Classificação dos clientes.');
  FormClientesFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormClientesFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormClientesFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormClientesFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormClientesFast.frxReport12.Variables['CLI_STATUS']:=QuotedStr('TODOS');
  FormClientesFast.frxReport12.Variables['CLI_TIPOPESSOA']:=QuotedStr('TODOS');
  FormClientesFast.frxReport12.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text); //QuotedStr(DM.UsuarioVendedor.ToString);
  FormClientesFast.frxReport12.Variables['VEN_NOME']:=QuotedStr(Edit2.Text); //QuotedStr(DM.UsuarioNome);
  FormClientesFast.frxReport12.ShowReport;
  FormClientesFast.Free;
  FormClientesFast:=nil;
end;

procedure TFormDashboard.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

initialization
  RegisterClass(TFormDashboard);

finalization
  UnRegisterClass(TFormDashboard);

end.
