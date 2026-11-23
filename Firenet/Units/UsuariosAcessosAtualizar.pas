unit UsuariosAcessosAtualizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormUsuariosAcessosAtualizar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    QYComponentes: TFDQuery;
    TRComponentes: TFDTransaction;
    TRAcessos: TFDTransaction;
    QYAcessos: TFDQuery;
    QYComponentesCOM_COMPONENTE: TStringField;
    QYComponentesCOM_DESCRICAO: TStringField;
    QYComponentesCOM_TELA: TStringField;
    QYComponentesCOM_TIPO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarControleAcessos;
    procedure AtualizarControleAcessosNovoUsuario;
  public
    { Public declarations }
  end;

var
  FormUsuariosAcessosAtualizar: TFormUsuariosAcessosAtualizar;
  PodeFechar: Boolean = False; //o timer verifica esta variavel para fechar o form automaticamente.

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormUsuariosAcessosAtualizar.AtualizarControleAcessosNovoUsuario;
begin
  PodeFechar:=False;
  DM.AtualizandoAcessos:=True;
  Screen.Cursor:=crHourGlass;

  Label1.Caption:='Inserindo novos controles para usuário '+DM.TBUsuariosUSU_LOGIN.Value;
  Application.ProcessMessages;
  DM.QYAux2.Close;
  DM.QYAux2.SQL.Clear;
  DM.QYAux2.SQL.Add(
    'insert into ACESSOS (ACE_CODIGO, ACE_TELA, ACE_USUARIO, ACE_ACESSO, ACE_COMPONENTE, ACE_DESCRICAO, ACE_TIPO) '+
    'select gen_id(GEN_ACESSOS,1), COM_TELA, :usuario, ''N'', COM_COMPONENTE, COM_DESCRICAO, COM_TIPO from COMPONENTES '+
    'left join ACESSOS on COM_TELA=ACE_TELA and COM_COMPONENTE=ACE_COMPONENTE and ACE_USUARIO=:usuario '+
    'where ACE_USUARIO is null'
  );
  DM.QYAux2.ParamByName('usuario').AsInteger:=DM.TBUsuariosUSU_CODIGO.Value;
  DM.QYAux2.ExecSQL;

  //DM.FDConnection1.Connected:=False; //por que precisa fechar?
  //DM.TBVersao.Open;
  //DM.AbrirTabelas;

  //...
//  DM.TBUsuarios.Close;
//  DM.TBUsuarios.ParamByName('codigo').AsString:=DM.CodigoMarkStr; //localiza usuário que foi recém inserido.
//  DM.TBUsuarios.Open;

  DM.TBAcessos.Close;
  DM.TBAcessos.Open;
  //...
  Screen.Cursor:=crDefault;
  DM.AtualizandoAcessos:=False; //ver declaração em DM.
  DM.DSTelasDataChange(Self,nil); //dispara evento.
  PodeFechar:=True;
end;

procedure TFormUsuariosAcessosAtualizar.AtualizarControleAcessos;
var
  TU: Integer;
begin //sincroniza as duas tabelas guardando o valor dos campos acesso e readonly.
  PodeFechar:=False;
  DM.AtualizandoAcessos:=True;
  Screen.Cursor:=crHourGlass;

  //retorna total de usuarios.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from USUARIOS');
  DM.QYAux.Open;
  TU:=DM.QYAux.FieldByName('QTDE').AsInteger;
  DM.QYAux.Close;

  //ajusta barra de progresso.
  ProgressBar1.Max:=TU;
  ProgressBar1.Position:=0;
  //##############################################################################
  // Insere os que não tem na tabela de ACESSOS.                                //
  //##############################################################################
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select USU_CODIGO, USU_LOGIN from USUARIOS order by USU_CODIGO');
  DM.QYAux.Open;
  DM.QYAux.First;
  DM.QYAux.FetchAll;
  while not DM.QYAux.Eof do
  begin
    Label1.Caption:='Inserindo novos controles para usuário '+AlignText(IntToStr(ProgressBar1.Position+1),'0',3,taRight)+' de '+IntToStr(ProgressBar1.Max)+' - '+DM.QYAux.FieldByName('USU_LOGIN').AsString;
    Application.ProcessMessages;
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add(
      'insert into ACESSOS (ACE_CODIGO, ACE_TELA, ACE_USUARIO, ACE_ACESSO, ACE_COMPONENTE, ACE_DESCRICAO, ACE_TIPO) '+
      'select gen_id(GEN_ACESSOS,1), COM_TELA, :usuario, ''N'', COM_COMPONENTE, COM_DESCRICAO, COM_TIPO from COMPONENTES '+
      'left join ACESSOS on COM_TELA=ACE_TELA and COM_COMPONENTE=ACE_COMPONENTE and ACE_USUARIO=:usuario '+
      'where ACE_USUARIO is null'
    );
    DM.QYAux2.ParamByName('usuario').AsInteger:=DM.QYAux.FieldByName('USU_CODIGO').AsInteger;
    DM.QYAux2.ExecSQL;

    ProgressBar1.Position:=ProgressBar1.Position+1;
    Application.ProcessMessages;
    DM.QYAux.Next;
  end;
  ProgressBar1.Position:=0;

  //##############################################################################
  // Elimina os que nao tem na tabela de COMPONENTES.                           //
  //##############################################################################
  Label1.Caption:='Eliminando controles antigos...';
  Application.ProcessMessages;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  //com left join o resultado será todos os registros da tabela acessos.
  //com right join o resultado seria todos os registros da tabela componentes.
  DM.QYAux.SQL.Add(
    'delete from ACESSOS where ACE_CODIGO in '+
    '(select ACE_CODIGO from ACESSOS '+
    '   left join COMPONENTES on ACE_TELA=COM_TELA and ACE_COMPONENTE=COM_COMPONENTE '+
    '   where (COM_TELA is null) or (COM_COMPONENTE is null) '+
    ')'
  );
  DM.QYAux.ExecSQL;

  //##############################################################################
  // Atualiza os que mudaram a descricao na tabela COMPONENTES.                 //
  //##############################################################################
  Label1.Caption:='Atualizando controles alterados...';
  Application.ProcessMessages;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'update ACESSOS set ACE_DESCRICAO= '+
    '(select COM_DESCRICAO from COMPONENTES where COM_TELA=ACE_TELA and COM_COMPONENTE=ACE_COMPONENTE) '+
    'where ACE_DESCRICAO<>(select COM_DESCRICAO from COMPONENTES where COM_TELA=ACE_TELA and COM_COMPONENTE=ACE_COMPONENTE)'
  );
  DM.QYAux.ExecSQL;
  //...

  //rever a linha abaixo depois de ter atualizado para firedac.
//  DM.FDConnection1.Connected:=False; //por que precisa fechar?
//  DM.TBVersao.Open;
//  DM.AbrirTabelas;

  Label1.Caption:='';
  Screen.Cursor:=crDefault;
  DM.AtualizandoAcessos:=False; //ver declaração em DM.
  DM.DSTelasDataChange(Self,nil); //dispara evento.
  PodeFechar:=True;
end;

procedure TFormUsuariosAcessosAtualizar.FormActivate(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  try
    Timer1.Enabled:=True;
    if DM.InserindoNovoUsuario then
    AtualizarControleAcessosNovoUsuario else
    AtualizarControleAcessos;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormUsuariosAcessosAtualizar.FormCreate(Sender: TObject);
begin
  Label1.Caption:='';
  ProgressBar1.Position:=0;
end;

procedure TFormUsuariosAcessosAtualizar.Timer1Timer(Sender: TObject);
begin
  if PodeFechar then
  begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

end.
