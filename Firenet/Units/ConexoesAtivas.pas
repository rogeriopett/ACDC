unit ConexoesAtivas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, PngBitBtn, ExtCtrls,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConexoesAtivas = class(TForm)
    DBGrid1: TDBGrid;
    DSConexoes: TDataSource;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    PngBitBtn3: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TRConexoes: TFDTransaction;
    TBConexoes: TFDQuery;
    QYMinhaConexao: TFDQuery;
    TRMinhaConexao: TFDTransaction;
    QYMinhaConexaoMINHACONEXAO: TLargeintField;
    UPConexoes: TFDUpdateSQL;
    TBConexoesMONATTACHMENT_ID: TLargeintField;
    TBConexoesMONSERVER_PID: TIntegerField;
    TBConexoesMONSTATE: TSmallintField;
    TBConexoesMONATTACHMENT_NAME: TWideStringField;
    TBConexoesMONUSER: TWideStringField;
    TBConexoesMONROLE: TWideStringField;
    TBConexoesMONREMOTE_PROTOCOL: TStringField;
    TBConexoesMONREMOTE_ADDRESS: TStringField;
    TBConexoesMONREMOTE_PID: TIntegerField;
    TBConexoesMONCHARACTER_SET_ID: TSmallintField;
    TBConexoesMONTIMESTAMP: TSQLTimeStampOffsetField;
    TBConexoesMONGARBAGE_COLLECTION: TSmallintField;
    TBConexoesMONREMOTE_PROCESS: TWideStringField;
    TBConexoesMONSTAT_ID: TIntegerField;
    TBConexoesMONCLIENT_VERSION: TStringField;
    TBConexoesMONREMOTE_VERSION: TStringField;
    TBConexoesMONREMOTE_HOST: TWideStringField;
    TBConexoesMONREMOTE_OS_USER: TWideStringField;
    TBConexoesMONAUTH_METHOD: TStringField;
    TBConexoesMONSYSTEM_FLAG: TSmallintField;
    TBConexoesMONIDLE_TIMEOUT: TIntegerField;
    TBConexoesMONIDLE_TIMER: TSQLTimeStampOffsetField;
    TBConexoesMONSTATEMENT_TIMEOUT: TIntegerField;
    TBConexoesMONWIRE_COMPRESSED: TBooleanField;
    TBConexoesMONWIRE_ENCRYPTED: TBooleanField;
    TBConexoesMONWIRE_CRYPT_PLUGIN: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexoesAtivas: TFormConexoesAtivas;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormConexoesAtivas.DBGrid1DblClick(Sender: TObject);
begin
  if not TBConexoes.IsEmpty then
  PngBitBtn3.Click;
end;

procedure TFormConexoesAtivas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if TBConexoesMONATTACHMENT_ID.Value=QYMinhaConexaoMINHACONEXAO.Value then
  begin
    DBGrid1.Canvas.Font.Style:=[];
    DBGrid1.Canvas.Font.Color:=clRed;
    if (gdSelected in State) then
    DBGrid1.Canvas.Brush.Color:=clBtnFace;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
  end else
  begin
    DBGrid1.Canvas.Font.Style:=[];
    DBGrid1.Canvas.Font.Color:=clBlack;
    if (gdSelected in State) then
    DBGrid1.Canvas.Brush.Color:=clBtnFace;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
  end;
end;

procedure TFormConexoesAtivas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (not TBConexoes.IsEmpty) then
  PngBitBtn3.Click;
end;

procedure TFormConexoesAtivas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QYMinhaConexao.Close;
  TBConexoes.Close;
end;

procedure TFormConexoesAtivas.FormCreate(Sender: TObject);
begin
  QYMinhaConexao.Open;
  TBConexoes.Open;
  TBConexoes.FetchAll;
  Label3.Caption:=IntToStr(TBConexoes.RecordCount);
end;

procedure TFormConexoesAtivas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConexoesAtivas.PngBitBtn1Click(Sender: TObject);
begin
  TBConexoes.Close;
  TBConexoes.Open;
  TBConexoes.FetchAll;
  Label3.Caption:=IntToStr(TBConexoes.RecordCount);
end;

procedure TFormConexoesAtivas.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConexoesAtivas.PngBitBtn3Click(Sender: TObject);
var Arquivo, Parametros: String;
begin
  if TBConexoesMONATTACHMENT_ID.Value<>QYMinhaConexaoMINHACONEXAO.Value then
  begin
    if MessageDlg('Finalizar a conexão com o processo '+IntToStr(TBConexoesMONATTACHMENT_ID.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      if not TBConexoesMONREMOTE_PID.IsNull then
      begin
        Arquivo:=GetWinDir+'\System32\TaskKill.exe';
        Parametros:='/PID '+IntToStr(TBConexoesMONREMOTE_PID.Value)+' /S '+TBConexoesMONREMOTE_ADDRESS.Value+' /T /F';
        ExecutarArquivo(Arquivo,Parametros);
        TBConexoes.Delete;
        TBConexoes.Close;
        TBConexoes.Open;
      end else
      MessageDlg('Process ID não encontrado.',mtError,[mbOk],0);
    end;
  end;
end;

end.
