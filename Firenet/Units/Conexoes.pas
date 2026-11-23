unit Conexoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls,
  System.UITypes;

type
  TFormConexoes = class(TForm)
    TBConexoes: TClientDataSet;
    DSConexoes: TDataSource;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    TBConexoesDescricao: TStringField;
    TBConexoesBase: TStringField;
    TBConexoesSenha: TStringField;
    TBConexoesServidor: TStringField;
    TBConexoesUsuario: TStringField;
    PngBitBtn1: TPngBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexoes: TFormConexoes;

implementation
uses DataMod, Funcoes1, Sysdba;
{$R *.dfm}

procedure TFormConexoes.BitBtn1Click(Sender: TObject);
begin
  if TBConexoes.IsEmpty then
  begin
    MessageDlg('Nenhuma base de dados selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  DM.BaseBase:=TBConexoesBase.Value;
  DM.BaseDescricao:=TBConexoesDescricao.Value;
  DM.BaseSenha:=TBConexoesSenha.Value; //já está descriptografada.
  DM.BaseServidor:=TBConexoesServidor.Value;
  DM.BaseUsuario:=TBConexoesUsuario.Value;
  Close;
end;

procedure TFormConexoes.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConexoes.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConexoes.DBGrid1DblClick(Sender: TObject);
begin
  if not TBConexoes.IsEmpty then
  BitBtn1.Click;
end;

procedure TFormConexoes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not TBConexoes.IsEmpty) then
  BitBtn1.Click;
end;

procedure TFormConexoes.FormCreate(Sender: TObject);
var SL1, SL2, SL3, SL4, SL5: TStringList;
  I: Integer;
begin
  TBConexoes.EmptyDataSet;
  SL1:=TStringList.Create;
  SL2:=TStringList.Create;
  SL3:=TStringList.Create;
  SL4:=TStringList.Create;
  SL5:=TStringList.Create;
  SL1.StrictDelimiter:=True;
  SL2.StrictDelimiter:=True;
  SL3.StrictDelimiter:=True;
  SL4.StrictDelimiter:=True;
  SL5.StrictDelimiter:=True;
  SL1.Delimiter:=';';
  SL2.Delimiter:=';';
  SL3.Delimiter:=';';
  SL4.Delimiter:=';';
  SL5.Delimiter:=';';
  SL1.DelimitedText:=DM.ConexoesBases;
  SL2.DelimitedText:=DM.ConexoesDescricoes;
  SL3.DelimitedText:=DM.ConexoesSenhas;
  SL4.DelimitedText:=DM.ConexoesServidores;
  SL5.DelimitedText:=DM.ConexoesUsuarios;
  for I:=0 to SL1.Count-1 do
  begin
    TBConexoes.Insert;
    TBConexoesBase.Value:=SL1.Strings[I];
    TBConexoesDescricao.Value:=SL2.Strings[I];
    TBConexoesSenha.Value:=SenhaDecode(SL3.Strings[I],ChaveSenhaNEW);
    TBConexoesServidor.Value:=SL4.Strings[I];
    TBConexoesUsuario.Value:=SL5.Strings[I];
    TBConexoes.Post;
  end;
  SL1.Destroy;
  SL2.Destroy;
  SL3.Destroy;
  SL4.Destroy;
  SL5.Destroy;
  TBConexoes.Locate('Base',DM.BaseBase,[]);
end;

procedure TFormConexoes.PngBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSysdba, FormSysdba);
  FormSysdba.ShowModal;

  TBConexoes.EmptyDataSet;
  FormSysdba.TBConexoes.First;
  while not FormSysdba.TBConexoes.Eof do
  begin
    TBConexoes.Insert;
    TBConexoesBase.Value:=FormSysdba.TBConexoesBase.Value;
    TBConexoesDescricao.Value:=FormSysdba.TBConexoesDescricao.Value;
    TBConexoesSenha.Value:=FormSysdba.TBConexoesSenha.Value;
    TBConexoesServidor.Value:=FormSysdba.TBConexoesServidor.Value;
    TBConexoesUsuario.Value:=FormSysdba.TBConexoesUsuario.Value;
    TBConexoes.Post;
    FormSysdba.TBConexoes.Next;
  end;

  FormSysdba.Free;
  FormSysdba:=nil;
end;

end.
