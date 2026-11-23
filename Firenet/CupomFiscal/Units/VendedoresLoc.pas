unit VendedoresLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, StdCtrls, Grids,
  DBGrids;

type
  TFormVendedoresLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSVendedores: TDataSource;
    QYVendedores: TIBQuery;
    TRVendedores: TIBTransaction;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TIBStringField;
    QYVendedoresVEN_COMISSAO: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendedoresLoc: TFormVendedoresLoc;
  Procurar : Boolean = False;
implementation
uses DataMod, FuncoesPomPom;
{$R *.dfm}

procedure TFormVendedoresLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormVendedoresLoc.txt');
end;

procedure TFormVendedoresLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  if FileExists(GetTempDir+'FormVendedoresLoc.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormVendedoresLoc.txt');
end;

procedure TFormVendedoresLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendedoresLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYVendedores.Active:=False;
    QYVendedores.SQL.Clear;
    QYVendedores.SQL.Add('select VEN_CODIGO, VEN_NOME, VEN_COMISSAO from VENDEDORES where VEN_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by VEN_CODIGO');
    QYVendedores.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendedoresLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYVendedores.Active:=False;
    QYVendedores.SQL.Clear;
    QYVendedores.SQL.Add('select VEN_CODIGO, VEN_NOME, VEN_COMISSAO from VENDEDORES where VEN_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by VEN_NOME');
    QYVendedores.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendedoresLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYVendedores.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendedoresLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYVendedores.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendedoresLoc.FormShow(Sender: TObject);
begin
{  if DM.TBParametrosPAR_LOCVENDEDORES.Value='CODIGO' then
  Edit1.SetFocus else
  if DM.TBParametrosPAR_LOCVENDEDORES.Value='NOME' then
  Edit2.SetFocus;}
end;

end.
