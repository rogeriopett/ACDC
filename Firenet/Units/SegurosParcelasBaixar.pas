unit SegurosParcelasBaixar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  PngSpeedButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSegurosParcelasBaixar = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    PngBitBtn1: TPngBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox3: TComboBox;
    ComboBox5: TComboBox;
    DSSegurosParcelas: TDataSource;
    DSSegurosParcelasTotais: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    MaskEdit3: TMaskEdit;
    PngBitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    SpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label15: TLabel;
    ComboBox4: TComboBox;
    Label7: TLabel;
    ComboBox2: TComboBox;
    QYSegurosParcelasTotais: TFDQuery;
    TRSegurosParcelasTotais: TFDTransaction;
    QYSegurosParcelasTotaisCOMISSAO: TFMTBCDField;
    QYSegurosParcelasTotaisCOMISSAOVENDEDOR: TFMTBCDField;
    QYSegurosParcelas: TFDQuery;
    TRSegurosParcelas: TFDTransaction;
    QYSegurosParcelasSGP_CODIGO: TIntegerField;
    QYSegurosParcelasSGP_COMISSAO: TFMTBCDField;
    QYSegurosParcelasSGP_COMISSAOVENDEDOR: TFMTBCDField;
    QYSegurosParcelasSGP_DTPAGAMENTO: TDateField;
    QYSegurosParcelasSGP_DTRECEBIMENTO: TDateField;
    QYSegurosParcelasSGP_DTVENCIMENTO: TDateField;
    QYSegurosParcelasSGP_PARCELA: TIntegerField;
    QYSegurosParcelasSGP_SEGURO: TIntegerField;
    QYSegurosParcelasSGP_STATUS: TStringField;
    QYSegurosParcelasSGP_VALOR: TFMTBCDField;
    QYSegurosParcelasSEG_APOLICE: TStringField;
    QYSegurosParcelasSEG_STATUS: TStringField;
    QYSegurosParcelasSEG_VENDEDOR: TIntegerField;
    QYSegurosParcelasCLI_NOME: TStringField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosParcelasBaixar: TFormSegurosParcelasBaixar;

implementation
uses DataMod, Funcoes1, DataMod2, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosParcelasBaixar.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormSegurosParcelasBaixar.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormSegurosParcelasBaixar.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormSegurosParcelasBaixar.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSegurosParcelasBaixar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=1;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=3; //apolices.
  ComboBox5.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormSegurosParcelasBaixar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSegurosParcelasBaixar.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    MaskEdit1.Clear;
  end;
end;

procedure TFormSegurosParcelasBaixar.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    MaskEdit2.Clear;
  end;
end;

procedure TFormSegurosParcelasBaixar.MaskEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    MaskEdit3.Clear;
  end;
end;

procedure TFormSegurosParcelasBaixar.PngBitBtn1Click(Sender: TObject);
var Where, Order: String;
begin
  if ComboBox3.Text='VENCIMENTO'  then Where:=' SGP_DTVENCIMENTO between :datainicial and :datafinal ' else
  if ComboBox3.Text='PAGAMENTO'   then Where:=' SGP_DTPAGAMENTO between :datainicial and :datafinal ' else
  if ComboBox3.Text='RECEBIMENTO' then Where:=' SGP_DTRECEBIMENTO between :datainicial and :datafinal ';
  if ComboBox5.Text='ABERTAS'     then Where:=Where+' and SGP_STATUS=''A''' else
  if ComboBox5.Text='BAIXADAS'    then Where:=Where+' and SGP_STATUS=''B''';

  if ComboBox5.Text='PROPOSTAS'    then Where:=Where+' and SEG_STATUS=''P'' ';
  if ComboBox5.Text='INUTILIZADAS' then Where:=Where+' and SEG_STATUS=''I'' ';
  if ComboBox5.Text='APOLICES'     then Where:=Where+' and SEG_STATUS=''A'' ';
  if ComboBox5.Text='CANCELADAS'   then Where:=Where+' and SEG_STATUS=''C'' ';

  if Edit2.Text<>'' then Where:=Where+' and SEG_VENDEDOR='+Edit1.Text;

  if ComboBox3.Text='VENCIMENTO'  then Order:=' order by SGP_DTVENCIMENTO, SGP_SEGURO ' else
  if ComboBox3.Text='PAGAMENTO'   then Order:=' order by SGP_DTPAGAMENTO, SGP_SEGURO ' else
  if ComboBox3.Text='RECEBIMENTO' then Order:=' order by SGP_DTRECEBIMENTO, SGP_SEGURO ';

  QYSegurosParcelas.Close;
  QYSegurosParcelas.SQL.Clear;
  QYSegurosParcelas.SQL.Add('select SGP_CODIGO, SGP_COMISSAO, SGP_COMISSAOVENDEDOR, SGP_DTPAGAMENTO, SGP_DTRECEBIMENTO, '+
                            'SGP_DTVENCIMENTO, SGP_PARCELA, SGP_SEGURO, SGP_STATUS, SGP_VALOR, CLI_NOME, SEG_APOLICE, SEG_STATUS, SEG_VENDEDOR from SEGUROSPARCELAS '+
                            'left join SEGUROS on SGP_SEGURO=SEG_CODIGO '+
                            'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                            'where '+Where+' '+Order);
  QYSegurosParcelas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QYSegurosParcelas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QYSegurosParcelas.Open;

  QYSegurosParcelasTotais.Close;
  QYSegurosParcelasTotais.SQL.Clear;
  QYSegurosParcelasTotais.SQL.Add('select sum(SGP_COMISSAO) as COMISSAO, sum(SGP_COMISSAOVENDEDOR) as COMISSAOVENDEDOR from SEGUROSPARCELAS '+
                                  'left join SEGUROS on SGP_SEGURO=SEG_CODIGO '+
                                  'where '+Where);
  QYSegurosParcelasTotais.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QYSegurosParcelasTotais.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QYSegurosParcelasTotais.Open;
end;

procedure TFormSegurosParcelasBaixar.PngBitBtn2Click(Sender: TObject);
var S, Campo, Status: String;
  I: Integer;
begin
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhuma parcela selecionada.');
  AbortIf(MaskEdit3.Text='  /  /    ','Informe a data.');

  if MessageDlg('Deseja baixar as parcelas selecionadas com a data de '+ComboBox1.Text+' = '+MaskEdit3.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    S:='';
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      S:=S+','+IntToStr(QYSegurosParcelasSGP_CODIGO.Value);
    end;
    Delete(S,1,1); //retira a primeira vírgula.
    if ComboBox1.Text='PAGAMENTO'   then Campo:='SGP_DTPAGAMENTO' else
    if ComboBox1.Text='RECEBIMENTO' then Campo:='SGP_DTRECEBIMENTO' else
    if ComboBox1.Text='VENCIMENTO'  then Campo:='SGP_DTVENCIMENTO';

    if ComboBox2.Text='ABERTA' then Status:='A' else Status:='B';

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update SEGUROSPARCELAS set '+Campo+'=:data, SGP_STATUS='+QuotedStr(Status)+' where SGP_CODIGO in ('+S+')');
    DM.QYAux.ParamByName('data').AsDate:=StrToDate(MaskEdit3.Text,FS);
    DM.QYAux.ExecSQL;
    DM2.TBSegurosParcelas.Close;
    DM2.TBSegurosParcelas.Open;

    PngBitBtn1.Click; //refaz a pesquisa.
  end;
end;

procedure TFormSegurosParcelasBaixar.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

end.
