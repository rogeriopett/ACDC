unit VendasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVendasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSVendas: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    ComboBox2: TComboBox;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    QYVendasVED_CODIGO: TIntegerField;
    QYVendasVED_CLIENTE: TIntegerField;
    QYVendasVED_DTEMISSAO: TDateField;
    QYVendasVED_PEDIDOCLIENTE: TStringField;
    QYVendasVED_VENDEDOR: TIntegerField;
    QYVendasVED_VALORTOTAL: TFMTBCDField;
    QYVendasVED_STATUS: TStringField;
    QYVendasVED_USUARIO: TStringField;
    QYVendasVIAINTERNET: TStringField;
    QYVendasCLI_NOME: TStringField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ListarDAVs;
  end;

var
  FormVendasLoc: TFormVendasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;
  SetarFocus: Boolean = True;

const
  NomeArquivoFormTxt='FormVendasLoc.txt';
  Campos: String = 'VED_CODIGO, VED_CLIENTE, VED_DTEMISSAO, VED_PEDIDOCLIENTE, VED_VENDEDOR, VED_VALORTOTAL, VED_STATUS, VED_USUARIO, VED_VIAINTERNET ||''/''|| VED_VIAINTERNETSTATUS as VIAINTERNET, CLI_NOME';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormVendasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox2.ItemIndex:=0;

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYVendas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormVendasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where VED_CODIGO='+QuotedStr(Edit1.Text)+' '+
      'order by VED_CODIGO'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM - ABERTOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A');
    if ComboBox2.Text='SIM - FINALIZADOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F');
    if ComboBox2.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');

    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' '+
      'order by CLI_NOME, VED_CODIGO desc'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYVendas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYVendas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendasLoc.FormShow(Sender: TObject);
begin
  if SetarFocus then
  begin
    try
      DM.TBLocs.Locate('LOS_TELA','Vendas',[]);
      if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
      if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
      if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
      if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
      if DM.TBLocsLOS_CAMPO.Value='PEDIDO CLIENTE' then Edit5.SetFocus;

      DM.TBLocs.Locate('LOS_TELA','Vendas com Status',[]);
      if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
      if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
      if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=2 else
      if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=3;
    except on Exception do
      //nada.
    end;
  end;
end;

procedure TFormVendasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormVendasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYVendas.Close;
    QYVendas.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM - ABERTOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A');
    if ComboBox2.Text='SIM - FINALIZADOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F');
    if ComboBox2.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');

    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where VED_DTEMISSAO between '+Where+' '+
      'order by VED_DTEMISSAO desc, VED_CODIGO desc'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormVendasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYVendas.CLose;
    QYVendas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM - ABERTOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A');
    if ComboBox2.Text='SIM - FINALIZADOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F');
    if ComboBox2.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');

    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where VED_CLIENTE like '+QuotedStr(Edit3.Text)+Where+' '+
      'order by VED_CLIENTE, VED_CODIGO desc'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where VED_CODIMPORTACAO like '+QuotedStr(Edit4.Text+'%')+' '+
      'order by VED_CODIMPORTACAO'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add(
      'select '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'where VED_PEDIDOCLIENTE like '+QuotedStr(Edit5.Text+'%')+' '+
      'order by VED_PEDIDOCLIENTE, CLI_NOME'
    );
    QYVendas.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendas.SQL.Text);
  end;
end;

procedure TFormVendasLoc.ListarDAVs;
begin
  Caption:='Listagem dos DAV em aberto...';
  ComboBox1.Visible:=False;
  ComboBox2.Visible:=False;
  Edit1.Visible:=False;
  Edit2.Visible:=False;
  Edit3.Visible:=False;
  Edit4.Visible:=False;
  Edit5.Visible:=False;
  MaskEdit1.Visible:=False;
  MaskEdit2.Visible:=False;

  Label1.Caption:='Selecione e DAV desejado.';
  Label2.Visible:=False;
  Label3.Visible:=False;
  Label4.Visible:=False;
  Label5.Visible:=False;
  Label6.Visible:=False;
  Label7.Visible:=False;
  Label8.Visible:=False;
  Label9.Visible:=False;

  QYVendas.Close;
  QYVendas.SQL.Clear;
  QYVendas.SQL.Add(
    'select '+Campos+' from VENDAS '+
    'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
    'where VED_DAV=''S'' and VED_STATUS=''F'' and VED_NFCE is null '+
    'order by CLI_NOME'
  );
  QYVendas.Open;
  //DBGrid1.SetFocus;
  SetarFocus:=False;
end;

end.
