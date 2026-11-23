unit Sysdba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, PngBitBtn, PngSpeedButton,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList,
  DBSBtn, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, System.UITypes;

type
  TFormSysdba = class(TForm)
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton1: TPngSpeedButton;
    DBGrid1: TDBGrid;
    DSConexoes: TDataSource;
    TBConexoes: TClientDataSet;
    TBConexoesDescricao: TStringField;
    TBConexoesBase: TStringField;
    TBConexoesSenha: TStringField;
    TBConexoesServidor: TStringField;
    TBConexoesUsuario: TStringField;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel7: TBevel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    PngImageList1: TPngImageList;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MostrarSenhaAtual1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TBConexoesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSysdba: TFormSysdba;

implementation
uses Funcoes1, IniFiles, DataMod;
{$R *.dfm}

procedure TFormSysdba.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSysdba.MostrarSenhaAtual1Click(Sender: TObject);
var F: TIniFile;
  S: String;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  S:=F.ReadString('BASE DE DADOS','SENHA',S);
  F.Free;
  F:=nil;
  MessageDlg('A Senha Atual é: '+SenhaDecode(AnsiString(S),ChaveSenhaNEW),mtWarning,[mbOk],0);
end;

procedure TFormSysdba.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSysdba.FormClose(Sender: TObject; var Action: TCloseAction);
var F: TIniFile;
  S1, S2, S3, S4, S5: String;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+ParamFile) then
  begin
    S1:='';
    S2:='';
    S3:='';
    S4:='';
    S5:='';
    TBConexoes.First;
    while not TBConexoes.Eof do
    begin
      S1:=S1+';'+TBConexoesBase.Value;
      S2:=S2+';'+TBConexoesDescricao.Value;
      S3:=S3+';'+SenhaEncode(TBConexoesSenha.Value,ChaveSenhaNEW);
      S4:=S4+';'+TBConexoesServidor.Value;
      S5:=S5+';'+TBConexoesUsuario.Value;
      TBConexoes.Next;
    end;
    Delete(S1,1,1); //elimina o primeiro ";".
    Delete(S2,1,1);
    Delete(S3,1,1);
    Delete(S4,1,1);
    Delete(S5,1,1);
    ConexoesBases:=S1;
    ConexoesDescricoes:=S2;
    ConexoesSenhas:=S3;
    ConexoesServidores:=S4;
    ConexoesUsuarios:=S5;
    F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
    F.WriteString('CONEXOES','Bases',S1);
    F.WriteString('CONEXOES','Descricoes',S2);
    F.WriteString('CONEXOES','Senhas',S3);
    F.WriteString('CONEXOES','Servidores',S4);
    F.WriteString('CONEXOES','Usuarios',S5);
    F.Free;
    F:=nil;
  end;
end;

procedure TFormSysdba.FormCreate(Sender: TObject);
var
  SL1, SL2, SL3, SL4, SL5: TStringList;
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
  SL1.DelimitedText:=ConexoesBases;
  SL2.DelimitedText:=ConexoesDescricoes;
  SL3.DelimitedText:=ConexoesSenhas;
  SL4.DelimitedText:=ConexoesServidores;
  SL5.DelimitedText:=ConexoesUsuarios;
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
  TBConexoes.Locate('Base',BaseBase,[]);
end;

procedure TFormSysdba.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    TBConexoes.Edit;
    TBConexoesBase.Value:=OpenDialog1.FileName;
  end;
end;

procedure TFormSysdba.TBConexoesAfterInsert(DataSet: TDataSet);
begin
  TBConexoesUsuario.Value:='SYSDBA';
  TBConexoesSenha.Value:='borland';
  TBConexoesBase.Value:='C:\RUNTIME\FIRENET\DADOS\FIRENET.FDB';
  //DBEdit1.SetFocus;
end;

end.
