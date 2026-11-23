unit BoletosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBoletosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSBoletos: TDataSource;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    DSBoletosItens: TDataSource;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYBoletosItens: TFDQuery;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_NOSSONUMERO: TStringField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_NOME: TStringField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_DTCADASTRO: TDateField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_STATUS: TStringField;
    QYBoletosCON_BANCO: TIntegerField;
    QYBoletosCON_NOME: TStringField;
    QYBoletosItensBOL_CODIGO: TIntegerField;
    QYBoletosItensBOL_NOSSONUMERO: TStringField;
    QYBoletosItensBOL_CLIENTE: TIntegerField;
    QYBoletosItensBOL_NOME: TStringField;
    QYBoletosItensBOL_DTVENCIMENTO: TDateField;
    QYBoletosItensBOL_DTCADASTRO: TDateField;
    QYBoletosItensBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosItensBOL_CONTA: TIntegerField;
    QYBoletosItensBOL_STATUS: TStringField;
    QYBoletosItensCON_BANCO: TIntegerField;
    QYBoletosItensCON_NOME: TStringField;
    QYBoletosItensREE_NUMDOCTO: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosLoc: TFormBoletosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormBoletosLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYBoletos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormBoletosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYBoletos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormBoletosLoc.DBGrid2DblClick(Sender: TObject);
begin
  if not QYBoletosItens.IsEmpty then
  begin
    //localiza o registro na query principal.
    QYBoletos.Close;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_CODIGO='+IntToStr(QYBoletosItensBOL_CODIGO.Value)+' order by BOL_CODIGO');
    QYBoletos.Open;

    Procurar:=True;
    Close;
  end;
end;

procedure TFormBoletosLoc.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYBoletosItens.IsEmpty) then
  begin
    //localiza o registro na query principal.
    QYBoletos.Close;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_CODIGO='+IntToStr(QYBoletosItensBOL_CODIGO.Value)+' order by BOL_CODIGO');
    QYBoletos.Open;

    Procurar:=True;
    Close;
  end;
end;

procedure TFormBoletosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYBoletos.Active:=False;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_CODIGO='+QuotedStr(Edit1.Text)+' order by BOL_CODIGO');
    QYBoletos.Active:=True;
    DBGrid2.Visible:=False;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYBoletos.Active:=False;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_NOSSONUMERO like '+QuotedStr(Edit2.Text+'%')+' order by BOL_CODIGO');
    QYBoletos.Active:=True;
    DBGrid2.Visible:=False;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where, Order: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYBoletos.Active:=False;
    QYBoletos.SQL.Clear;
    if ComboBox2.Text='VENCIMENTO' then Order:='BOL_DTVENCIMENTO desc' else Order:='BOL_DTCADASTRO desc';
    if ComboBox1.Text='ABERTOS' then Where:=' and BOL_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and BOL_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and BOL_STATUS=''C''';
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_CLIENTE='+QuotedStr(Edit3.Text)+Where+' order by BOL_CODIGO desc, '+Order);
    QYBoletos.Active:=True;
    DBGrid2.Visible:=False;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where, Order: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYBoletos.Active:=False;
    QYBoletos.SQL.Clear;
    if ComboBox2.Text='VENCIMENTO' then Order:='BOL_DTVENCIMENTO desc' else Order:='BOL_DTCADASTRO desc';
    if ComboBox1.Text='ABERTOS' then Where:=' and BOL_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and BOL_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and BOL_STATUS=''C''';
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where BOL_NOME like '+QuotedStr(Edit4.Text+'%')+Where+' order by BOL_NOME, '+Order);
    QYBoletos.Active:=True;
    DBGrid2.Visible:=False;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYBoletosItens.Active:=False;
    QYBoletosItens.SQL.Clear;
    QYBoletosItens.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                           'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME, REE_NUMDOCTO from BOLETOSITENS '+
                           'left join BOLETOS on BOI_BOLETO=BOL_CODIGO '+
                           'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                           'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                           'left join RECEBER on BOI_RECEBER=REE_CODIGO '+
                           'where REE_NUMDOCTO like '+QuotedStr(Edit5.Text+'%')+' order by BOL_CODIGO');
    QYBoletosItens.Active:=True;
    DBGrid2.Visible:=True;
    DBGrid2.SetFocus;
    //nao salva pq quando abre novamente não aparece o dbgrid2. SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormBoletosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  DBGrid2.Visible:=False;

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYBoletos.Close;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYBoletos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormBoletosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Boletos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOSSO NUMERO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Boletos com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADOS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormBoletosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormBoletosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where, Order: String;
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit2.Text='  /  /    ' then Exit;
    QYBoletos.Active:=False;
    QYBoletos.SQL.Clear;

    if ComboBox2.Text='VENCIMENTO' then
    begin
      Where:='BOL_DTVENCIMENTO between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
      Order:='BOL_DTVENCIMENTO desc, BOL_NOME';
    end else
    begin
      Where:='BOL_DTCADASTRO between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
      Order:='BOL_DTCADASTRO desc, BOL_NOME';
    end;

    if ComboBox1.Text='ABERTOS' then Where:=Where+'and BOL_STATUS=''A''';
    if ComboBox1.Text='BAIXADOS' then Where:=Where+'and BOL_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=Where+'and BOL_STATUS=''C''';
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_NOSSONUMERO, BOL_CLIENTE, BOL_NOME, BOL_DTVENCIMENTO, BOL_DTCADASTRO, '+
                      'BOL_VALORTOTAL, BOL_CONTA, BOL_STATUS, CON_BANCO, CON_NOME from BOLETOS '+
                      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where '+Where+' order by '+Order);
    QYBoletos.Active:=True;
    DBGrid2.Visible:=False;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBoletos.SQL.Text);
  end;
end;

procedure TFormBoletosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
