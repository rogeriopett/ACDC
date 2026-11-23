unit Evolucoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormEvolucoes = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    DBMemo1: TDBMemo;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    Label34: TLabel;
    DBText7: TDBText;
    N3: TMenuItem;
    FinalizarEvolucao1: TMenuItem;
    FinalizarEvolucao1Button: TPngSpeedButton;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    procedure Localizar1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FinalizarEvolucao1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvolucoes: TFormEvolucoes;

implementation
uses DataMod, DataMod2, Funcoes1, Clientes, Vendedores, DataModSearch,
  DB, EvolucoesLoc, EvolucoesRel, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormEvolucoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEvolucoes.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormEvolucoes.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormEvolucoes.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEvolucoes.DBEdit2Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit2,DBEdit3,DM2.TBEvolucoes);
end;

procedure TFormEvolucoes.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormEvolucoes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEvolucoes.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEvolucoes.DBEdit6Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit6,DBEdit7,nil,DM2.TBEvolucoes);
end;

procedure TFormEvolucoes.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormEvolucoes.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEvolucoes.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  Key:=UpCase(Key);
end;

procedure TFormEvolucoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEvolucoes.FinalizarEvolucao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBEvolucoes.IsEmpty,'Nenhuma evolução selecionada.');
  AbortIf(DM2.TBEvolucoesEVO_STATUS.Value='F','Esta evolução já está finalizada.');

  if MessageDlg('Deseja finalizar a evolução?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBEvolucoes.Edit;
    DM2.TBEvolucoesEVO_STATUS.Value:='F';
    DM2.TBEvolucoes.Post;
  end;
end;

procedure TFormEvolucoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBEvolucoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEvolucoes.FormCreate(Sender: TObject);
begin
  if not DM.AtualizarUsuariosAcessos then //evita aparecer a mensagem quando está atualizando o sistema.
  //if not AtualizandoAcessos then
  begin
    //atualiza todos as evolucoes anterior a data atual com status=F para evitar que sejam alteradas.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update EVOLUCOES set EVO_STATUS=''F'' where EVO_STATUS=''A'' and EVO_DTCADASTRO < :dtcadastro');
    DM.QYAux.ParamByName('dtcadastro').AsDate:=DM.ServerDate;
    DM.QYAux.ExecSQL;
  end;
end;

procedure TFormEvolucoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEvolucoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEvolucoes);
end;

procedure TFormEvolucoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEvolucoesLoc, FormEvolucoesLoc);
  FormEvolucoesLoc.ShowModal;
  if EvolucoesLoc.Procurar then
  begin
    DM2.TBEvolucoes.Close;
    DM2.TBEvolucoes.ParamByName('codigo').AsInteger:=FormEvolucoesLoc.QYEvolucoesEVO_CODIGO.Value;
    DM2.TBEvolucoes.Open;
  end;
  FormEvolucoesLoc.Free;
  FormEvolucoesLoc:=nil;
end;

procedure TFormEvolucoes.PngSpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit6,DBEdit7,nil,DM2.TBEvolucoes);
end;

procedure TFormEvolucoes.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormEvolucoesRel, FormEvolucoesRel);
  FormEvolucoesRel.ShowModal;
  FormEvolucoesRel.Free;
  FormEvolucoesRel:=nil;
end;

procedure TFormEvolucoes.SpeedButton9Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit2,DBEdit3,DM2.TBEvolucoes);
end;

initialization
  RegisterClass(TFormEvolucoes);

finalization
  UnRegisterClass(TFormEvolucoes);

end.
