unit ComprasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, Menus, System.UITypes, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormComprasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DSCompras: TDataSource;
    Edit4: TEdit;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    MaskEdit3: TMaskEdit;
    Panel1: TPanel;
    Label9: TLabel;
    DBText1: TDBText;
    DSComprasTotais: TDataSource;
    Label10: TLabel;
    DBText2: TDBText;
    TRCompras: TFDTransaction;
    QYCompras: TFDQuery;
    QYComprasTotais: TFDQuery;
    TRComprasTotais: TFDTransaction;
    QYComprasCOM_CHAVEACESSO: TStringField;
    QYComprasCOM_CODIGO: TIntegerField;
    QYComprasCOM_DTENTRADA: TDateField;
    QYComprasCOM_NOME: TStringField;
    QYComprasCOM_NOTADATA: TDateField;
    QYComprasCOM_NOTANUMERO: TIntegerField;
    QYComprasCOM_STATUS: TStringField;
    QYComprasCOM_VALORTOTAL: TFMTBCDField;
    QYComprasTotaisQTDE: TLargeintField;
    QYComprasTotaisVALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasLoc: TFormComprasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormComprasLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormComprasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCompras.Close;
    QYCompras.SQL.Clear;
    QYCompras.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCompras.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormComprasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComprasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCompras.Close;
    QYCompras.SQL.Clear;
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS from COMPRAS where COM_CODIGO='+QuotedStr(Edit1.Text)+' order by COM_CODIGO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_CODIGO='+QuotedStr(Edit1.Text));
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

procedure TFormComprasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCompras.Close;
    QYCompras.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
    if ComboBox1.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS '+
                      'from COMPRAS where COM_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by COM_NOME, COM_CODIGO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_NOME like '+QuotedStr(Edit2.Text+'%')+Where);
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

procedure TFormComprasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCompras.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormComprasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCompras.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormComprasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Compras',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM. NOTA' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO FORNECEDOR' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Compras com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormComprasLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormComprasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
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
    QYCompras.Close;
    QYCompras.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COM_STATUS=''A''';
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and COM_STATUS=''F''';
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COM_STATUS=''C''';
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS '+
                      'from COMPRAS where COM_DTENTRADA between '+Where+' order by COM_DTENTRADA desc, COM_CODIGO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_DTENTRADA between '+Where);
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

procedure TFormComprasLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit3.Text)='' then Exit; //44 caracteres.
    QYCompras.Close;
    QYCompras.SQL.Clear;
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS from COMPRAS where COM_CHAVEACESSO like '+QuotedStr('%'+Trim(MaskEdit3.Text+'%'))+' order by COM_CHAVEACESSO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_CHAVEACESSO like '+QuotedStr('%'+Trim(MaskEdit3.Text+'%')));
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

procedure TFormComprasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormComprasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCompras.Close;
    QYCompras.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
    if ComboBox1.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS '+
                      'from COMPRAS where COM_FORNECEDOR='+QuotedStr(Edit3.Text)+Where+' order by COM_FORNECEDOR, COM_CODIGO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_FORNECEDOR='+QuotedStr(Edit3.Text)+Where);
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

procedure TFormComprasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCompras.Close;
    QYCompras.SQL.Clear;
    QYCompras.SQL.Add('select COM_CHAVEACESSO, COM_CODIGO, COM_FORNECEDOR, COM_NOME, COM_DTENTRADA, COM_NOTANUMERO, COM_NOTADATA, COM_VALORTOTAL, COM_STATUS from COMPRAS where COM_NOTANUMERO='+QuotedStr(Edit4.Text)+' order by COM_CODIGO');
    QYCompras.Open;

    QYComprasTotais.Close;
    QYComprasTotais.SQL.Clear;
    QYComprasTotais.SQL.Add('select count(*) as QTDE, sum(COM_VALORTOTAL) as VALORTOTAL from COMPRAS where COM_NOTANUMERO='+QuotedStr(Edit4.Text));
    QYComprasTotais.Open;

    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCompras.SQL.Text);
  end;
end;

end.
