unit DeliveryLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormDeliveryLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DSDeliverys: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYDeliverys: TFDQuery;
    TRDeliverys: TFDTransaction;
    QYDeliverysDLV_CODIGO: TIntegerField;
    QYDeliverysDLV_CLIENTE: TIntegerField;
    QYDeliverysDLV_DTCADASTRO: TDateField;
    QYDeliverysDLV_VENDEDOR: TIntegerField;
    QYDeliverysDLV_VALORTOTAL: TFMTBCDField;
    QYDeliverysDLV_STATUS: TStringField;
    QYDeliverysDLV_USUARIO: TStringField;
    QYDeliverysCLI_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryLoc: TFormDeliveryLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormVendasLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYDeliverys.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDeliveryLoc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.Field.FieldName='DLV_STATUS') then
  begin
    if QYDeliverysDLV_STATUS.Value='A' then
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=$0007c1ff; //amarelo.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='W' then
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=$00a340fc; //rosa
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='P' then
    begin
      //DBGrid1.Canvas.Font.Color:=clBlue;
      DBGrid1.Canvas.Brush.Color:=$00007cf5; //laranja.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='E' then
    begin
      //DBGrid1.Canvas.Font.Color:=clGreen;
      DBGrid1.Canvas.Brush.Color:=$00d27619; //azul.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='F' then
    begin
      //DBGrid1.Canvas.Font.Color:=clRed;
      DBGrid1.Canvas.Brush.Color:=$003c8e38; //verde.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='C' then
    begin
      //DBGrid1.Canvas.Font.Color:=clRed;
      DBGrid1.Canvas.Brush.Color:=$003643f4; //vermelho.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if QYDeliverysDLV_STATUS.Value='I' then
    begin
      //DBGrid1.Canvas.Font.Color:=clGreen;
      DBGrid1.Canvas.Brush.Color:=$00c6c6c6; //cinza.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //DBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
    //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFormDeliveryLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYDeliverys.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDeliveryLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYDeliverys.Active:=False;
    QYDeliverys.SQL.Clear;
    QYDeliverys.SQL.Add('select DLV_CLIENTE, DLV_CODIGO, DLV_DTCADASTRO, DLV_STATUS, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_USUARIO, CLI_NOME from DELIVERYS '+
                        'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO where DLV_CODIGO='+QuotedStr(Edit1.Text)+' order by DLV_CODIGO');
    QYDeliverys.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYDeliverys.SQL.Text);
  end;
end;

procedure TFormDeliveryLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    QYDeliverys.Active:=False;
    QYDeliverys.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='PRODUCAO' then Where:=Where+' and VED_STATUS='+QuotedStr('P');
    if ComboBox1.Text='ENTERGA' then Where:=Where+' and VED_STATUS='+QuotedStr('E');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    QYDeliverys.SQL.Add('select DLV_CLIENTE, DLV_CODIGO, DLV_DTCADASTRO, DLV_STATUS, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_USUARIO, CLI_NOME from DELIVERYS '+
                        'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
                        'where CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' '+Where+' order by CLI_NOME, DLV_CODIGO desc');
    QYDeliverys.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYDeliverys.SQL.Text);
  end;
end;

procedure TFormDeliveryLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    QYDeliverys.Active:=False;
    QYDeliverys.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='PRODUCAO' then Where:=Where+' and VED_STATUS='+QuotedStr('P');
    if ComboBox1.Text='ENTERGA' then Where:=Where+' and VED_STATUS='+QuotedStr('E');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    QYDeliverys.SQL.Add('select DLV_CLIENTE, DLV_CODIGO, DLV_DTCADASTRO, DLV_STATUS, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_USUARIO, CLI_NOME from DELIVERYS '+
                        'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
                        'where DLV_CLIENTE='+Edit3.Text+' '+Where+' order by DLV_CODIGO desc');
    QYDeliverys.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYDeliverys.SQL.Text);
  end;
end;

procedure TFormDeliveryLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormDeliveryLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYDeliverys.Close;
    QYDeliverys.SQL.Clear;
    QYDeliverys.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYDeliverys.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormDeliveryLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Deliverys',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Deliverys com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='PRODUCAO' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='ENTERGA' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=4 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=5 else
  if DM.TBLocsLOS_CAMPO.Value='INUTILIZADOS' then ComboBox1.ItemIndex:=6;
end;

procedure TFormDeliveryLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormDeliveryLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYDeliverys.Active:=False;
    QYDeliverys.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='PRODUCAO' then Where:=Where+' and VED_STATUS='+QuotedStr('P');
    if ComboBox1.Text='ENTERGA' then Where:=Where+' and VED_STATUS='+QuotedStr('E');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    QYDeliverys.SQL.Add('select DLV_CLIENTE, DLV_CODIGO, DLV_DTCADASTRO, DLV_STATUS, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_USUARIO, CLI_NOME from DELIVERYS '+
                        'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
                        'where DLV_DTCADASTRO between '+Where+' order by DLV_DTCADASTRO desc, DLV_CODIGO desc');
    QYDeliverys.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYDeliverys.SQL.Text);
  end;
end;

procedure TFormDeliveryLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
