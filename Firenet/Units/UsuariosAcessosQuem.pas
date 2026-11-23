unit UsuariosAcessosQuem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormUsuariosAcessosQuem = class(TForm)
    DBGrid1: TDBGrid;
    DSAcessos: TDataSource;
    Label2: TLabel;
    DBText2: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    Label3: TLabel;
    QYAcessos: TFDQuery;
    TRAcessos: TFDTransaction;
    QYAcessosACE_ACESSO: TStringField;
    QYAcessosACE_CODIGO: TIntegerField;
    QYAcessosACE_COMPONENTE: TStringField;
    QYAcessosACE_DESCRICAO: TStringField;
    QYAcessosACE_TELA: TStringField;
    QYAcessosTEL_DESCRICAO: TStringField;
    QYAcessosUSU_STATUS: TStringField;
    QYAcessosACE_USUARIO: TIntegerField;
    QYAcessosUSU_LOGIN: TStringField;
    QYAcessosUSU_NOME: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosAcessosQuem: TFormUsuariosAcessosQuem;

implementation

{$R *.dfm}

uses DataMod, UsuariosAcessos;

procedure TFormUsuariosAcessosQuem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuariosAcessosQuem.DBGrid1DblClick(Sender: TObject);
var Codigo: Integer;
begin
  if not QYAcessos.IsEmpty then
  begin
    Codigo:=QYAcessosACE_CODIGO.Value;
    if QYAcessosACE_ACESSO.Value='S' then
    FormUsuariosAcessos.AlterarPermissao('N',QYAcessosACE_TELA.Value,QYAcessosACE_COMPONENTE.Value,QYAcessosACE_USUARIO.Value,False) else
    FormUsuariosAcessos.AlterarPermissao('S',QYAcessosACE_TELA.Value,QYAcessosACE_COMPONENTE.Value,QYAcessosACE_USUARIO.Value,False);
    QYAcessos.Close;
    QYAcessos.Open;
    QYAcessos.Locate('ACE_CODIGO',Codigo,[]);
    DBGrid1.SetFocus;
  end;
end;

procedure TFormUsuariosAcessosQuem.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //if QYAcessosACE_ACESSO.Value='N' then
  if (Column.FieldName='ACE_ACESSO') and (Column.Field.AsString='N') then //somente a coluna acesso.
  begin
    DBGrid1.Canvas.Font.Color:=clRed;
    DBGrid1.Canvas.Font.Style:=[fsBold];
  end;
  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormUsuariosAcessosQuem.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var Codigo: Integer;
begin
  if (Key=#13) and (not DM.TBAcessos.IsEmpty) then
  begin
    Key:=#0;
    Codigo:=QYAcessosACE_CODIGO.Value;
    if QYAcessosACE_ACESSO.Value='S' then
    FormUsuariosAcessos.AlterarPermissao('N',QYAcessosACE_TELA.Value,QYAcessosACE_COMPONENTE.Value,QYAcessosACE_USUARIO.Value,False) else
    FormUsuariosAcessos.AlterarPermissao('S',QYAcessosACE_TELA.Value,QYAcessosACE_COMPONENTE.Value,QYAcessosACE_USUARIO.Value,False);
    QYAcessos.Close;
    QYAcessos.Open;
    QYAcessos.Locate('ACE_CODIGO',Codigo,[]);
    DBGrid1.SetFocus;
  end;
end;

procedure TFormUsuariosAcessosQuem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
