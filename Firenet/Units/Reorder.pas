unit Reorder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, Grids, DBGrids, PngBitBtn, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormReorder = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ListBox1: TListBox;
    BitBtn1: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    BitBtn2: TPngBitBtn;
    DSReorder: TDataSource;
    DSTabelas: TDataSource;
    DSCampos: TDataSource;
    DSIndices: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn5: TPngBitBtn;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    QYReorder: TFDQuery;
    TRReorder: TFDTransaction;
    QYTabelas: TFDQuery;
    TRTabelas: TFDTransaction;
    TRCampos: TFDTransaction;
    QYCampos: TFDQuery;
    TRIndices: TFDTransaction;
    QYIndices: TFDQuery;
    QYReorderRDBVIEW_BLR: TBlobField;
    QYReorderRDBVIEW_SOURCE: TMemoField;
    QYReorderRDBDESCRIPTION: TMemoField;
    QYReorderRDBRELATION_ID: TSmallintField;
    QYReorderRDBSYSTEM_FLAG: TSmallintField;
    QYReorderRDBDBKEY_LENGTH: TSmallintField;
    QYReorderRDBFORMAT: TSmallintField;
    QYReorderRDBFIELD_ID: TSmallintField;
    QYReorderRDBRELATION_NAME: TWideStringField;
    QYReorderRDBSECURITY_CLASS: TWideStringField;
    QYReorderRDBEXTERNAL_FILE: TStringField;
    QYReorderRDBRUNTIME: TBlobField;
    QYReorderRDBEXTERNAL_DESCRIPTION: TBlobField;
    QYReorderRDBOWNER_NAME: TWideStringField;
    QYReorderRDBDEFAULT_CLASS: TWideStringField;
    QYReorderRDBFLAGS: TSmallintField;
    QYReorderRDBRELATION_TYPE: TSmallintField;
    QYReorderRDBSQL_SECURITY: TBooleanField;
    QYTabelasRDBVIEW_BLR: TBlobField;
    QYTabelasRDBVIEW_SOURCE: TMemoField;
    QYTabelasRDBDESCRIPTION: TMemoField;
    QYTabelasRDBRELATION_ID: TSmallintField;
    QYTabelasRDBSYSTEM_FLAG: TSmallintField;
    QYTabelasRDBDBKEY_LENGTH: TSmallintField;
    QYTabelasRDBFORMAT: TSmallintField;
    QYTabelasRDBFIELD_ID: TSmallintField;
    QYTabelasRDBRELATION_NAME: TWideStringField;
    QYTabelasRDBSECURITY_CLASS: TWideStringField;
    QYTabelasRDBEXTERNAL_FILE: TStringField;
    QYTabelasRDBRUNTIME: TBlobField;
    QYTabelasRDBEXTERNAL_DESCRIPTION: TBlobField;
    QYTabelasRDBOWNER_NAME: TWideStringField;
    QYTabelasRDBDEFAULT_CLASS: TWideStringField;
    QYTabelasRDBFLAGS: TSmallintField;
    QYTabelasRDBRELATION_TYPE: TSmallintField;
    QYTabelasRDBSQL_SECURITY: TBooleanField;
    QYCamposRDBFIELD_NAME: TWideStringField;
    QYCamposRDBRELATION_NAME: TWideStringField;
    QYCamposRDBFIELD_SOURCE: TWideStringField;
    QYCamposRDBQUERY_NAME: TWideStringField;
    QYCamposRDBBASE_FIELD: TWideStringField;
    QYCamposRDBEDIT_STRING: TStringField;
    QYCamposRDBFIELD_POSITION: TSmallintField;
    QYCamposRDBQUERY_HEADER: TMemoField;
    QYCamposRDBUPDATE_FLAG: TSmallintField;
    QYCamposRDBFIELD_ID: TSmallintField;
    QYCamposRDBVIEW_CONTEXT: TSmallintField;
    QYCamposRDBDESCRIPTION: TMemoField;
    QYCamposRDBDEFAULT_VALUE: TBlobField;
    QYCamposRDBSYSTEM_FLAG: TSmallintField;
    QYCamposRDBSECURITY_CLASS: TWideStringField;
    QYCamposRDBCOMPLEX_NAME: TWideStringField;
    QYCamposRDBNULL_FLAG: TSmallintField;
    QYCamposRDBDEFAULT_SOURCE: TMemoField;
    QYCamposRDBCOLLATION_ID: TSmallintField;
    QYCamposRDBGENERATOR_NAME: TWideStringField;
    QYCamposRDBIDENTITY_TYPE: TSmallintField;
    QYIndicesRDBCONSTRAINT_NAME: TWideStringField;
    QYIndicesRDBCONSTRAINT_TYPE: TStringField;
    QYIndicesRDBRELATION_NAME: TWideStringField;
    QYIndicesRDBDEFERRABLE: TStringField;
    QYIndicesRDBINITIALLY_DEFERRED: TStringField;
    QYIndicesRDBINDEX_NAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSTabelasDataChange(Sender: TObject; Field: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReorder: TFormReorder;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormReorder.FormCreate(Sender: TObject);
begin
  QYTabelas.Open;
  QYCampos.Open;
end;

procedure TFormReorder.PngBitBtn1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  QYTabelas.First;
  while not QYTabelas.Eof do
  begin
    BitBtn1.Click;
    BitBtn3.Click;
    QYTabelas.Next;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TFormReorder.BitBtn1Click(Sender: TObject);
var I: Integer;
begin
  ListBox1.Items.Clear;
  ListBox2.Items.Clear;
  ListBox3.Items.Clear;
  ListBox4.Items.Clear;
  QYCampos.First;
  while not QYCampos.Eof do
  begin
//    QYIndices.Close;
//    QYIndices.SQL.Clear;
//    QYIndices.SQL.Add('select * from RDB$RELATION_CONSTRAINTS where RDB$CONSTRAINT_NAME like '+QuotedStr('%'+Trim(QYCamposRDBFIELD_NAME.Value)+'%'));
//    QYIndices.Open;
//    if not QYIndices.IsEmpty then
//    begin
//      if QYIndicesRDBCONSTRAINT_TYPE.Value='PRIMARY KEY' then
//      ListBox2.Items.Add(QYCamposRDBFIELD_NAME.Value) else
//      ListBox3.Items.Add(QYCamposRDBFIELD_NAME.Value);
//    end else
    ListBox1.Items.Add(QYCamposRDBFIELD_NAME.Value);
    QYCampos.Next;
    Application.ProcessMessages;
  end;
  //for I:=0 to ListBox2.Items.Count-1 do
  //ListBox4.Items.Add(ListBox2.Items[I]);
  //for I:=0 to ListBox3.Items.Count-1 do
  //ListBox4.Items.Add(ListBox3.Items[I]);
  for I:=0 to ListBox1.Items.Count-1 do
  ListBox4.Items.Add(ListBox1.Items[I]);
end;

procedure TFormReorder.BitBtn3Click(Sender: TObject);
var I: Integer;
begin
//  if MessageDlg('Reordenar campos da tabela?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
//  begin
    for I:=0 to ListBox4.Items.Count-1 do
    begin
      QYReorder.Close;
      QYReorder.SQL.Clear;
      QYReorder.SQL.Add('alter table '+QYTabelasRDBRELATION_NAME.Value+' alter '+ListBox4.Items[I]+' position '+IntToStr(I+1));
      QYReorder.ExecSQL;
      Application.ProcessMessages;
    end;
    QYCampos.Close;
    QYCampos.Open;
//  end;
end;

procedure TFormReorder.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Reordenar todas as tabelas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYTabelas.First;
    while not QYTabelas.Eof do
    begin
      BitBtn1.Click;
      BitBtn3.Click;
      QYTabelas.Next;
    end;
    MessageDlg('Reordenação OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormReorder.DSTabelasDataChange(Sender: TObject; Field: TField);
begin
  ListBox1.Items.Clear;
  ListBox2.Items.Clear;
  ListBox3.Items.Clear;
  ListBox4.Items.Clear;
end;

procedure TFormReorder.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
