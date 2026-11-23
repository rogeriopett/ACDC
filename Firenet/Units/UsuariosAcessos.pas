unit UsuariosAcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, DBSBtn,
  ExtCtrls, Menus, ComCtrls, DB, System.UITypes, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormUsuariosAcessos = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton2: TPngSpeedButton;
    Atualizarlistadecontrolesdeacesso1: TMenuItem;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
    SpeedButton3: TPngSpeedButton;
    N2: TMenuItem;
    Localizar1: TMenuItem;
    SpeedButton4: TPngSpeedButton;
    Label2: TLabel;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Copiaracessosdeoutrousuario1: TMenuItem;
    SpeedButton1: TPngSpeedButton;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBText2: TDBText;
    PngImageList1: TPngImageList;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PopupMenu1: TPopupMenu;
    LiberarEsteAcessoParaTodosOsUsuarios1: TMenuItem;
    BloquearEsteAcessoParaTodosOsUsuarios1: TMenuItem;
    StatusBar1: TStatusBar;
    BloquearAcessoAOpcaoEliminarRegistro1: TMenuItem;
    CheckBox1: TCheckBox;
    N3: TMenuItem;
    VerQuemTemEsseAcesso1: TMenuItem;
    QYAceORI: TFDQuery;
    TRAceORI: TFDTransaction;
    TRAceDES: TFDTransaction;
    QYAceDES: TFDQuery;
    QYAceORIACE_ACESSO: TStringField;
    QYAceORIACE_CODIGO: TIntegerField;
    QYAceORIACE_COMPONENTE: TStringField;
    QYAceORIACE_DESCRICAO: TStringField;
    QYAceORIACE_TELA: TStringField;
    QYAceORIACE_TIPO: TStringField;
    QYAceORIACE_USUARIO: TIntegerField;
    Edit1: TEdit;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Relatorios1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Atualizarlistadecontrolesdeacesso1Click(Sender: TObject);
    procedure Copiaracessosdeoutrousuario1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure LiberarEsteAcessoParaTodosOsUsuarios1Click(Sender: TObject);
    procedure BloquearEsteAcessoParaTodosOsUsuarios1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BloquearAcessoAOpcaoEliminarRegistro1Click(Sender: TObject);
    procedure VerQuemTemEsseAcesso1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AlterarPermissao(Acesso, Tela, Componente: String; Usuario: Integer; Todos: Boolean);
  end;

var
  FormUsuariosAcessos: TFormUsuariosAcessos;

implementation
uses DataMod, Funcoes1, UsuariosLoc, UsuariosAcessosAtualizar,
  UsuariosAcessosRel, UsuariosAcessosQuem;
{$R *.dfm}

procedure TFormUsuariosAcessos.AlterarPermissao(Acesso, Tela, Componente: String; Usuario: Integer; Todos: Boolean);
var Where: String;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  Where:='';
  if Todos=False then Where:=Where+' and ACE_USUARIO='+Usuario.ToString;
  if Tela<>'*' then Where:=Where+' and ACE_TELA='+QuotedStr(Tela);
  if Componente<>'*' then Where:=Where+' and ACE_COMPONENTE='+QuotedStr(Componente);
  if Where<>'' then
  begin
    Delete(Where,1,4); //elimina o primeiro " and".
    Where:=' where '+Where;
  end;
  DM.QYAux.SQL.Add('update ACESSOS set ACE_ACESSO='+QuotedStr(Acesso)+' '+Where);
  DM.QYAux.ExecSQL;
  DM.QYAux.Close;
end;

procedure TFormUsuariosAcessos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuariosAcessos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormUsuariosAcessos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBAcessos.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
  DM.TBTelas.Filtered:=False;
  DM.TBTelas.Filter:='';
end;

procedure TFormUsuariosAcessos.FormCreate(Sender: TObject);
begin
  DBGrid2.Columns[0].Width:=280;

  DBGrid1.Columns[0].Width:=334;
  DBGrid1.Columns[1].Width:=123;
  DBGrid1.Columns[2].Width:=43;
end;

procedure TFormUsuariosAcessos.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosAcessosRel, FormUsuariosAcessosRel);
  FormUsuariosAcessosRel.ShowModal;
  FormUsuariosAcessosRel.Free;
  FormUsuariosAcessosRel:=nil;
end;

procedure TFormUsuariosAcessos.VerQuemTemEsseAcesso1Click(Sender: TObject);
var Codigo: Integer;
begin
  Codigo:=DM.TBAcessosACE_CODIGO.Value;
  Application.CreateForm(TFormUsuariosAcessosQuem, FormUsuariosAcessosQuem);
  FormUsuariosAcessosQuem.QYAcessos.Close;
  FormUsuariosAcessosQuem.QYAcessos.ParamByName('tela').AsString:=DM.TBAcessosACE_TELA.Value;
  FormUsuariosAcessosQuem.QYAcessos.ParamByName('componente').AsString:=DM.TBAcessosACE_COMPONENTE.Value;
  FormUsuariosAcessosQuem.QYAcessos.Open;
  FormUsuariosAcessosQuem.ShowModal;
  FormUsuariosAcessosQuem.Free;
  FormUsuariosAcessosQuem:=nil;
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',Codigo,[]);
end;

procedure TFormUsuariosAcessos.BloquearAcessoAOpcaoEliminarRegistro1Click(
  Sender: TObject);
begin
  if MessageDlg('Bloquear acesso à opção "Eliminar Registro"?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update ACESSOS set ACE_ACESSO=''N'' where ACE_COMPONENTE=''EliminarRegistro1''');
    DM.QYAux.ExecSQL;
    DM.TBAcessos.Refresh;
  end;
end;

procedure TFormUsuariosAcessos.LiberarEsteAcessoParaTodosOsUsuarios1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBAcessos.IsEmpty,'Nenhum acesso selecionado.');

  if MessageDlg('Liberar este acesso para todos os usuários?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    AlterarPermissao('S',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,True);
    DM.TBAcessos.Refresh;
  end;
end;

procedure TFormUsuariosAcessos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosLoc, FormUsuariosLoc);
  FormUsuariosLoc.ShowModal;
  if UsuariosLoc.Procurar then
  begin
    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=FormUsuariosLoc.QYUsuariosUSU_CODIGO.Value;
    DM.TBUsuarios.Open;
  end;
  FormUsuariosLoc.Free;
  FormUsuariosLoc:=nil;
end;

procedure TFormUsuariosAcessos.PngSpeedButton2Click(Sender: TObject);
begin
  DM.CodigoMark:=DM.TBAcessosACE_CODIGO.Value;
  DM.TBAcessos.DisableControls;
  DM.TBAcessos.First;
  while not DM.TBAcessos.Eof do
  begin
    if DM.TBAcessosACE_ACESSO.Value='N' then
    AlterarPermissao('S',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,False) else
    AlterarPermissao('N',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,False);
    DM.TBAcessos.Next;
  end;
  DM.TBAcessos.EnableControls;
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormUsuariosAcessos.PngSpeedButton3Click(Sender: TObject);
begin
  DM.CodigoMark:=DM.TBAcessosACE_CODIGO.Value;
  AlterarPermissao('N',DM.TBAcessosACE_TELA.Value,'*',DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormUsuariosAcessos.PngSpeedButton4Click(Sender: TObject);
begin
  DM.CodigoMark:=DM.TBAcessosACE_CODIGO.Value;
  AlterarPermissao('S',DM.TBAcessosACE_TELA.Value,'*',DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormUsuariosAcessos.PngSpeedButton5Click(Sender: TObject);
begin
  DM.CodigoMark:=DM.TBAcessosACE_CODIGO.Value;
  AlterarPermissao('S','*','*',DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormUsuariosAcessos.PngSpeedButton6Click(Sender: TObject);
begin
  DM.CodigoMark:=DM.TBAcessosACE_CODIGO.Value;
  AlterarPermissao('N','*','*',DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
  DM.TBAcessos.Refresh;
  DM.TBAcessos.Locate('ACE_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormUsuariosAcessos.FormShow(Sender: TObject);
begin
  DM.DSTelasDataChange(Sender,nil);
  if DM.InserindoNovoUsuario then
  begin
    Application.CreateForm(TFormUsuariosAcessosAtualizar, FormUsuariosAcessosAtualizar);
    FormUsuariosAcessosAtualizar.ShowModal;
    FormUsuariosAcessosAtualizar.Free;
    FormUsuariosAcessosAtualizar:=nil;
  end;
//tinha essa linha antes.  AtualizarAcessosUsuarioAtual;
end;

procedure TFormUsuariosAcessos.DBGrid1DblClick(Sender: TObject);
begin
  if not DM.TBAcessos.IsEmpty then
  begin
    if DM.TBAcessosACE_ACESSO.Value='S' then
    AlterarPermissao('N',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked) else
    AlterarPermissao('S',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
    DM.TBAcessos.Refresh;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormUsuariosAcessos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  {if DM.TBAcessosACE_ACESSO.Value='N' then
  DBGrid1.Canvas.Font.Color:=clRed;
  DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);}

  //if DM.TBAcessosACE_ACESSO.Value='N' then //assim faz a linha inteira.
  if (Column.FieldName='ACE_ACESSO') and (Column.Field.AsString='N') then //somente a coluna acesso.
  begin
    DBGrid1.Canvas.Font.Color:=clRed;
    DBGrid1.Canvas.Font.Style:=[fsBold];
  end;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormUsuariosAcessos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not DM.TBAcessos.IsEmpty) then
  begin
    Key:=#0;
    if DM.TBAcessosACE_ACESSO.Value='S' then
    AlterarPermissao('N',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked) else
    AlterarPermissao('S',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,CheckBox1.Checked);
    DM.TBAcessos.Refresh;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormUsuariosAcessos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;

    DM.TBTelas.Filtered := False;
    DM.TBTelas.Filter := Format('upper(TEL_DESCRICAO) LIKE ''%%%s%%''', [Edit1.Text]);
    DM.TBTelas.Filtered := True;
    //DM.TBTelas.Locate('TEL_DESCRICAO',Edit1.Text,[loCaseInsensitive,loPartialKey]);
    Edit1.SelectAll;
  end;
end;

procedure TFormUsuariosAcessos.Atualizarlistadecontrolesdeacesso1Click(Sender: TObject);
begin
  if MessageDlg('Atualizar lista de controles de acessos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.CodigoMark:=DM.TBUsuariosUSU_CODIGO.Value;
    Application.CreateForm(TFormUsuariosAcessosAtualizar, FormUsuariosAcessosAtualizar);
    FormUsuariosAcessosAtualizar.ShowModal;
    FormUsuariosAcessosAtualizar.Free;
    FormUsuariosAcessosAtualizar:=nil;

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBUsuarios.Open;
  end;
end;

procedure TFormUsuariosAcessos.BloquearEsteAcessoParaTodosOsUsuarios1Click(Sender: TObject);
begin
  AbortIf(DM.TBAcessos.IsEmpty,'Nenhum acesso selecionado.');

  if MessageDlg('Bloquear este acesso para todos os usuários?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    AlterarPermissao('N',DM.TBAcessosACE_TELA.Value,DM.TBAcessosACE_COMPONENTE.Value,DM.TBUsuariosUSU_CODIGO.Value,True);
    DM.TBAcessos.Refresh;
  end;
end;

procedure TFormUsuariosAcessos.Copiaracessosdeoutrousuario1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosLoc, FormUsuariosLoc);
  FormUsuariosLoc.ShowModal;
  if UsuariosLoc.Procurar then
  begin
    if MessageDlg('Copiar acessos de '+FormUsuariosLoc.QYUsuariosUSU_LOGIN.Value+' para '+DM.TBUsuariosUSU_LOGIN.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Screen.Cursor:=crHourGlass;
      QYAceORI.Close;
      QYAceORI.ParamByName('usuario').AsInteger:=FormUsuariosLoc.QYUsuariosUSU_CODIGO.Value;
      QYAceORI.Open;
      QYAceORI.First;
      while not QYAceORI.Eof do
      begin
        QYAceDES.Close;
        QYAceDES.ParamByName('acesso').AsString:=QYAceORIACE_ACESSO.Value;
        QYAceDES.ParamByName('usuario').AsInteger:=DM.TBUsuariosUSU_CODIGO.Value;
        QYAceDES.ParamByName('tela').AsString:=QYAceORIACE_TELA.Value;
        QYAceDES.ParamByName('componente').AsString:=QYAceORIACE_COMPONENTE.Value;
        QYAceDES.ExecSQL; //autocommit=true.

        QYAceORI.Next;
      end;
      QYAceORI.Close;
      QYAceDES.Close;
      DM.TBAcessos.Close;
      DM.TBAcessos.Open;
      Screen.Cursor:=crDefault;
      MessageDlg('Acessos copiados com sucesso.',mtInformation,[mbOk],0);
    end;
  end;
  FormUsuariosLoc.Free;
  FormUsuariosLoc:=nil;
end;

procedure TFormUsuariosAcessos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
