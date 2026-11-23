unit TecnicosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, StdCtrls, Grids,
  DBGrids;

type
  TFormTecnicosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSTecnicos: TDataSource;
    QYTecnicos: TIBQuery;
    TRTecnicos: TIBTransaction;
    QYTecnicosTEC_CODIGO: TIntegerField;
    QYTecnicosTEC_NOME: TIBStringField;
    QYTecnicosTEC_COMISSAO: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTecnicosLoc: TFormTecnicosLoc;
  Procurar : Boolean = False;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormTecnicosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
end;

procedure TFormTecnicosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTecnicosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9',Chr(8),#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYTecnicos.Active:=False;
    QYTecnicos.SQL.Clear;
    QYTecnicos.SQL.Add('select TEC_CODIGO, TEC_NOME, TEC_COMISSAO from TECNICOS where TEC_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by TEC_CODIGO');
    QYTecnicos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTecnicosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYTecnicos.Active:=False;
    QYTecnicos.SQL.Clear;
    QYTecnicos.SQL.Add('select TEC_CODIGO, TEC_NOME, TEC_COMISSAO from TECNICOS where TEC_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by TEC_NOME');
    QYTecnicos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTecnicosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYTecnicos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTecnicosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYTecnicos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTecnicosLoc.FormShow(Sender: TObject);
begin
  if DM.TBParametrosPAR_LOCTECNICOS.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBParametrosPAR_LOCTECNICOS.Value='NOME' then Edit2.SetFocus;
end;

end.
