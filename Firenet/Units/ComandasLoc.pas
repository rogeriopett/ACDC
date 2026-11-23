unit ComandasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Mask, StdCtrls, Grids, DBGrids, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormComandasLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    DSComandas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Label6: TLabel;
    TRComandas: TFDTransaction;
    QYComandas: TFDQuery;
    QYComandasCMD_CLIENTE: TIntegerField;
    QYComandasCMD_CODIGO: TIntegerField;
    QYComandasCMD_COMANDA: TIntegerField;
    QYComandasCMD_COMISSAO: TFMTBCDField;
    QYComandasCMD_DATA: TDateField;
    QYComandasCMD_DATABAIXA: TDateField;
    QYComandasCMD_DESCPORC: TFMTBCDField;
    QYComandasCMD_DESCVALOR: TFMTBCDField;
    QYComandasCMD_DINHEIRO: TFMTBCDField;
    QYComandasCMD_DTATUALIZACAO: TDateField;
    QYComandasCMD_DTCADASTRO: TDateField;
    QYComandasCMD_HORAFIM: TTimeField;
    QYComandasCMD_HORAFIMMIN: TIntegerField;
    QYComandasCMD_HORAINICIO: TTimeField;
    QYComandasCMD_HORAINICIOMIN: TIntegerField;
    QYComandasCMD_HRATUALIZACAO: TTimeField;
    QYComandasCMD_HRCADASTRO: TTimeField;
    QYComandasCMD_OBSERVACOES: TMemoField;
    QYComandasCMD_SEQUENCIAITEM: TIntegerField;
    QYComandasCMD_STATUS: TStringField;
    QYComandasCMD_TEMPOTOTAL: TStringField;
    QYComandasCMD_TEMPOTOTALDEC: TFMTBCDField;
    QYComandasCMD_TEMPOTOTALMIN: TIntegerField;
    QYComandasCMD_TOTALITENS: TFMTBCDField;
    QYComandasCMD_TROCO: TFMTBCDField;
    QYComandasCMD_USUARIO: TStringField;
    QYComandasCMD_VALORCOMISSAO: TFMTBCDField;
    QYComandasCMD_VALORPAGAR: TFMTBCDField;
    QYComandasCMD_VALORPAGO: TFMTBCDField;
    QYComandasCMD_VALORTOTAL: TFMTBCDField;
    QYComandasCMD_VENDEDOR: TIntegerField;
    QYComandasVEN_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComandasLoc: TFormComandasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormComandasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormComandasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYComandas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormComandasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYComandas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormComandasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYComandas.Active:=False;
    QYComandas.SQL.Clear;
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_CODIGO='+QuotedStr(Edit1.Text)+' order by CMD_CODIGO');
    QYComandas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormComandasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYComandas.Active:=False;
    QYComandas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit2.Text+'%')+' order by VEN_NOME, CMD_CODIGO desc');
    if ComboBox1.Text='ABERTAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit2.Text+'%')+' and CMD_STATUS=''A'' order by VEN_NOME, CMD_CODIGO desc');
    if ComboBox1.Text='BAIXADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit2.Text+'%')+' and CMD_STATUS=''B'' order by VEN_NOME, CMD_CODIGO desc');
    if ComboBox1.Text='CANCELADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit2.Text+'%')+' and CMD_STATUS=''C'' order by VEN_NOME, CMD_CODIGO desc');
    QYComandas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormComandasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYComandas.Active:=False;
    QYComandas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_VENDEDOR='+QuotedStr(Edit3.Text)+' order by CMD_CODIGO desc');
    if ComboBox1.Text='ABERTAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_VENDEDOR='+QuotedStr(Edit3.Text)+' and CMD_STATUS=''A'' order by CMD_CODIGO desc');
    if ComboBox1.Text='BAIXADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_VENDEDOR='+QuotedStr(Edit3.Text)+' and CMD_STATUS=''B'' order by CMD_CODIGO desc');
    if ComboBox1.Text='CANCELADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_VENDEDOR='+QuotedStr(Edit3.Text)+' and CMD_STATUS=''C'' order by CMD_CODIGO desc');
    QYComandas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormComandasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYComandas.Active:=False;
    QYComandas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_COMANDA='+QuotedStr(Edit4.Text)+' order by CMD_CODIGO desc');
    if ComboBox1.Text='ABERTAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_COMANDA='+QuotedStr(Edit4.Text)+' and CMD_STATUS=''A'' order by CMD_CODIGO desc');
    if ComboBox1.Text='BAIXADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_COMANDA='+QuotedStr(Edit4.Text)+' and CMD_STATUS=''B'' order by CMD_CODIGO desc');
    if ComboBox1.Text='CANCELADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_COMANDA='+QuotedStr(Edit4.Text)+' and CMD_STATUS=''C'' order by CMD_CODIGO desc');

    QYComandas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormComandasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormComandasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormComandasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComandasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Comandas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COMANDA' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO VENDEDOR' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Comandas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormComandasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormComandasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYComandas.Active:=False;
    QYComandas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_DATA between :datainicial and :datafinal order by CMD_DATA desc, CMD_COMANDA');
    if ComboBox1.Text='ABERTAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_DATA between :datainicial and :datafinal and CMD_STATUS=''A'' order by CMD_DATA desc, CMD_COMANDA');
    if ComboBox1.Text='BAIXADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_DATA between :datainicial and :datafinal and CMD_STATUS=''B'' order by CMD_DATA desc, CMD_COMANDA');
    if ComboBox1.Text='CANCELADAS' then
    QYComandas.SQL.Add('select * from COMANDAS left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO where CMD_DATA between :datainicial and :datafinal and CMD_STATUS=''C'' order by CMD_DATA desc, CMD_COMANDA');
    QYComandas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYComandas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYComandas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormComandasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
