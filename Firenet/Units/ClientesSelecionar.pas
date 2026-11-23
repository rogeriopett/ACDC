unit ClientesSelecionar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormClientesSelecionar = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    TBSelecao: TClientDataSet;
    DSSelecao: TDataSource;
    TBSelecaoCLI_CODIGO: TIntegerField;
    TBSelecaoCLI_NOME: TStringField;
    DSClientes: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    TRClientes: TFDTransaction;
    QYClientes: TFDQuery;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_NOME: TStringField;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesSelecionar: TFormClientesSelecionar;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormClientesSelecionar.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClientes.IsEmpty then
  PngBitBtn3.Click;
end;

procedure TFormClientesSelecionar.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn3.Click;
  end;
end;

procedure TFormClientesSelecionar.DBGrid2DblClick(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  PngBitBtn4.Click;
end;

procedure TFormClientesSelecionar.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn4.Click;
  end;
end;

procedure TFormClientesSelecionar.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then Where:=' and CLI_MENSALISTA=''S'' ';
    QYClientes.SQL.Add('select CLI_CODIGO, CLI_NOME from CLIENTES '+
                       'where CLI_CODIGO like '+QuotedStr(Edit1.Text)+Where+' order by CLI_CODIGO');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesSelecionar.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYClientes.Active:=False;
    QYClientes.SQL.Clear;
    if CheckBox1.Checked then Where:=' and CLI_MENSALISTA=''S'' ';
    QYClientes.SQL.Add('select CLI_CODIGO, CLI_NOME from CLIENTES '+
                       'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME');
    QYClientes.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClientesSelecionar.FormCreate(Sender: TObject);
begin
  TBSelecao.CreateDataSet;
end;

procedure TFormClientesSelecionar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClientesSelecionar.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesSelecionar.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesSelecionar.PngBitBtn3Click(Sender: TObject);
begin
  if not QYClientes.IsEmpty then
  begin
    if not TBSelecao.Locate('CLI_CODIGO',QYClientesCLI_CODIGO.Value,[]) then
    begin
      TBSelecao.Insert;
      TBSelecaoCLI_CODIGO.Value:=QYClientesCLI_CODIGO.Value;
      TBSelecaoCLI_NOME.Value:=QYClientesCLI_NOME.Value;
      TBSelecao.Post;
    end;
  end;
end;

procedure TFormClientesSelecionar.PngBitBtn4Click(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  TBSelecao.Delete;
end;

procedure TFormClientesSelecionar.PngBitBtn5Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  QYClientes.DisableControls;
  QYClientes.First;
  while not QYClientes.Eof do
  begin
    if not TBSelecao.Locate('CLI_CODIGO',QYClientesCLI_CODIGO.Value,[]) then
    begin
      TBSelecao.Insert;
      TBSelecaoCLI_CODIGO.Value:=QYClientesCLI_CODIGO.Value;
      TBSelecaoCLI_NOME.Value:=QYClientesCLI_NOME.Value;
      TBSelecao.Post;
    end;
    QYClientes.Next;
  end;
  QYClientes.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormClientesSelecionar.PngBitBtn6Click(Sender: TObject);
begin
  TBSelecao.EmptyDataSet;
end;

end.

