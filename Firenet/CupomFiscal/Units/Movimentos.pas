unit Movimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Grids, DBGrids, DBCtrls, DB,
  IBCustomDataSet, IBDatabase, IBQuery;

type
  TFormMovimentos = class(TForm)
    Edit1: TEdit;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Edit3: TEdit;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QYTerminais: TIBQuery;
    TRTerminais: TIBTransaction;
    DSTerminais: TDataSource;
    QYTerminaisTER_CODIGO: TIntegerField;
    QYTerminaisTER_DESCRICAO: TIBStringField;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovimentos: TFormMovimentos;
  Fechar: Boolean;

implementation
uses DataMod, IniFiles, MD5;
{$R *.dfm}

procedure TFormMovimentos.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44,#46]) then Key:=#0;
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMovimentos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=Fechar; //soh fecha o form se o usuario clicar no botao ok e a senha estiver correta.
end;

procedure TFormMovimentos.FormCreate(Sender: TObject);
begin
  Edit1.Text:=DataMod.DefaultUser;
  QYTerminais.Open;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from MOVIMENTOS where MOV_STATUS=''A'' or MOV_STATUS=''T''');
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then
  begin
    DM.TBMovimentos.Insert;
    Label3.Caption:='Informe seu login e senha para iniciar um novo movimento.';
  end else
  if DM.QYAux.FieldByName('MOV_STATUS').AsString='A' then
  begin
    DM.TBMovimentos.Close;
    DM.TBMovimentos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('MOV_CODIGO').AsInteger;
    DM.TBMovimentos.Open;
    DM.TBMovimentos.Edit;
    Edit3.Enabled:=False;
    DBLookupComboBox1.Enabled:=False;
    Label3.Caption:='Já existe um movimento em aberto. Informe seu login e senha.'
  end else
  if DM.QYAux.FieldByName('MOV_STATUS').AsString='A' then
  begin
    DM.TBMovimentos.Close;
    DM.TBMovimentos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('MOV_CODIGO').AsInteger;
    DM.TBMovimentos.Open;
    DM.TBMovimentos.Edit;
    Edit3.Enabled:=False;
    DBLookupComboBox1.Enabled:=False;
    Label3.Caption:='Movimento fechado temporariamente. Informe seu login e senha.';
  end;
end;

procedure TFormMovimentos.PngBitBtn1Click(Sender: TObject);
var F: TIniFile;
  I: Byte;
begin
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsString:=Edit1.Text;
  DM.TBUsuarios.Open;
  if DM.TBUsuarios.IsEmpty then
  begin
    MessageDlg('Usuário inválido!',mtWarning,[mbOk],0);
    Edit1.SetFocus;
    Edit1.SelectAll;
    Exit;
  end;
  if MD5Print(MD5String(Edit2.Text))=DM.TBUsuariosUSU_PASSWORD.Value then
  begin
    UsuarioLogado:=DM.TBUsuariosUSU_LOGIN.Value; //variavel no DataMod.
    UsuarioNome:=DM.TBUsuariosUSU_NOME.Value; //variavel no DataMod.
    UsuarioVendedor:=DM.TBUsuariosUSU_VENDEDOR.Value;
    if UsuarioVendedor=0 then UsuarioVendedor:=1;
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_LOGADO.Value:='S';
    DM.TBUsuarios.Post;
    Fechar:=True;  //pode fechar o form.
    //salva o usuario default;
    DefaultUser:=Edit1.Text;
    DM.Variaveis('SAVE');
    //Inicia ou altera movimento.
    if DM.TBMovimentosMOV_STATUS.Value='T' then
    DM.TBMovimentosMOV_STATUS.Value:='A';
    if DM.TBMovimentosMOV_TERMINAL.IsNull then
    begin
      MessageDlg('Selecione o terminal.',mtError,[mbOk],0);
      Exit;
    end;
    DM.TBMovimentos.Post;
    if StrToFloat(Edit3.Text)>0 then
    begin
      //TODO... criar registro na tabela suprimentos.
    end;
    //...
    DM.TBTerminais.Close;
    DM.TBTerminais.ParamByName('codigo').AsInteger:=DM.TBMovimentosMOV_TERMINAL.Value;
    DM.TBTerminais.Open;
    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=UsuarioVendedor;
    DM.TBVendedores.Open;
    QYTerminais.Close;
    Close;
  end else
  begin
    MessageDlg('Senha Inválida!',mtWarning,[mbOk],0);
    Edit2.SelectAll;
  end;
end;

procedure TFormMovimentos.PngBitBtn2Click(Sender: TObject);
begin
  DM.TBMovimentos.Cancel;
  QYTerminais.Close;
  Application.ShowMainForm:=False;
  Application.Terminate;
end;

end.
