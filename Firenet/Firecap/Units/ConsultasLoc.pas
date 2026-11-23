unit ConsultasLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.Menus,
  IBX.IBDatabase, Vcl.Grids, Vcl.DBGrids, IBX.IBCustomDataSet, IBX.IBQuery,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormConsultasLoc = class(TForm)
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    DSConsultas: TDataSource;
    QYConsultas: TIBQuery;
    TRConsultas: TIBTransaction;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    QYConsultasCOS_CODIGO: TIntegerField;
    QYConsultasCOS_CLIENTE: TIntegerField;
    QYConsultasCOS_CONVENIO: TIntegerField;
    QYConsultasCOS_MEDICO: TIntegerField;
    QYConsultasCOS_SOLICITANTE: TIntegerField;
    QYConsultasCOS_STATUS: TIBStringField;
    QYConsultasCOS_VALORTOTAL: TFMTBCDField;
    QYConsultasCLI_NOME: TIBStringField;
    QYConsultasCLI_NOMESOLICITANTE: TIBStringField;
    QYConsultasCOV_DESCRICAO: TIBStringField;
    QYConsultasVEN_NOME: TIBStringField;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    QYConsultasItens: TIBQuery;
    DSConsultasItens: TDataSource;
    TRConsultasItens: TIBTransaction;
    QYConsultasItensCSI_EXAME: TIntegerField;
    QYConsultasItensCSI_DESCRICAO: TIBStringField;
    QYConsultasItensCSI_SIGLA: TIBStringField;
    QYConsultasCOS_DATAINICIO: TDateField;
    QYConsultasCOS_HORAINICIO: TTimeField;
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasLoc: TFormConsultasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormConsultasLoc.txt';

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormConsultasLoc.DateTimePicker1CloseUp(Sender: TObject);
var Where: String;
begin
  QYConsultasItens.Close;
  QYConsultas.Close;
  QYConsultas.SQL.Clear;
  Where:=QuotedStr(DateToFBDate(DateTimePicker1.Date))+' and '+QuotedStr(DateToFBDate(DateTimePicker1.DateTime));
  if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
  if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
  if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
  QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                      'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                      'where COS_DATAINICIO between '+Where+
                      'order by COS_DATAINICIO, COS_HORAINICIO');
  QYConsultas.Open;
  QYConsultasItens.Open;
  DBGrid1.SetFocus;
  //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
end;

procedure TFormConsultasLoc.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  //if Key=#8 then DateTimePicker1.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    DateTimePicker1CloseUp(Self);
{    QYConsultas.Active:=False;
    QYConsultas.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(DateTimePicker1.Date))+' and '+QuotedStr(DateToFBDate(DateTimePicker1.DateTime));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DTCONSULTA, COS_HRCONSULTA, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where COS_DTCONSULTA between '+Where+
                        'order by COS_DTCONSULTA, COS_HRCONSULTA');
    QYConsultas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);}
  end;
end;

procedure TFormConsultasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYConsultas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConsultasLoc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//  if (Column.Field.Name='COS_STATUS') then
//  begin
    if QYConsultasCOS_STATUS.Value='A' then
    begin
      DBGrid1.Canvas.Font.Color:=clBlack;
      //DBGrid1.Canvas.FillRect(Rect);
    end else
    if QYConsultasCOS_STATUS.Value='B' then
    begin
      DBGrid1.Canvas.Font.Color:=clBlue;
      //DBGrid1.Canvas.FillRect(Rect);
    end else
    if QYConsultasCOS_STATUS.Value='C' then
    begin
      DBGrid1.Canvas.Font.Color:=clRed;
      //DBGrid1.Canvas.FillRect(Rect);
    end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//  end;

  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormConsultasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYConsultas.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConsultasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where COS_CODIGO='+QuotedStr(Edit1.Text)+' '+Where+
                        'order by COS_CODIGO, COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where COS_CLIENTE='+QuotedStr(Edit2.Text)+' '+Where+
                        'order by COS_CLIENTE, COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where A.CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' '+Where+
                        'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where COS_MEDICO='+QuotedStr(Edit4.Text)+' '+Where+
                        'order by COS_MEDICO, COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where VEN_NOME like '+QuotedStr(Edit5.Text+'%')+' '+Where+
                        'order by VEN_NOME, COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  //SalvarTamanhoForm(Self.Name,UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormConsultasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(DM.ServerDate);
  MaskEdit2.Text:=DateToStr(DM.ServerDate);
  if DM.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,UsuarioLogado]),[]) then
  begin
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    QYConsultas.SQL.Add(DM.TBSqlsSQL_QUERY.Value);
    QYConsultas.Open;
    QYConsultasItens.Open;
  end;
  //RestaurarTamanhoForm(Self,UsuarioLogado);
end;

procedure TFormConsultasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Consultas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO MEDICO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME MEDICO' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Consultas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3;

  if not QYConsultas.IsEmpty then
  DBGrid1.SetFocus;
end;

procedure TFormConsultasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormConsultasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYConsultasItens.Close;
    QYConsultas.Close;
    QYConsultas.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                        'where COS_DATAINICIO between '+Where+
                        'order by COS_DATAINICIO, COS_HORAINICIO');
    QYConsultas.Open;
    QYConsultasItens.Open;
    DBGrid1.SetFocus;
    //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
  end;
end;

procedure TFormConsultasLoc.MonthCalendar1DblClick(Sender: TObject);
var Where: String;
begin
  QYConsultasItens.Close;
  QYConsultas.Close;
  QYConsultas.SQL.Clear;
  Where:=QuotedStr(DateToFBDate(MonthCalendar1.Date))+' and '+QuotedStr(DateToFBDate(MonthCalendar1.Date));
  if ComboBox1.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
  if ComboBox1.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
  if ComboBox1.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
  QYConsultas.SQL.Add('select COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
                      'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
                      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
                      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
                      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
                      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                      'where COS_DATAINICIO between '+Where+
                      'order by COS_DATAINICIO, COS_HORAINICIO');
  QYConsultas.Open;
  QYConsultasItens.Open;
  DBGrid1.SetFocus;
  //SalvarConsultaSQL(Self.Name,UsuarioLogado,QYConsultas.SQL.Text);
end;

procedure TFormConsultasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
