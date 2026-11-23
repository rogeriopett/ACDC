unit Atendimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DBSBtn, ExtCtrls, Menus,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormAtendimentos = class(TForm)
    Label15: TLabel;
    SpeedButton7: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
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
    DBText12: TDBText;
    DBText13: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCursos1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N6: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N3: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    AulasDemoAgendadasNoPeriodo1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    CadastroDeCursos1: TMenuItem;
    TestesEscritosAgendadosNoPeriodo1: TMenuItem;
    TestesOraisAgendadosNoPeriodo1: TMenuItem;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    AtendimentosNoPeriodoPorVendedor1: TMenuItem;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    CadastroDeMailings1: TMenuItem;
    CadastroDeMailings1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure AulasDemoAgendadasNoPeriodo1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure CadastroDeCursos1Click(Sender: TObject);
    procedure TestesEscritosAgendadosNoPeriodo1Click(Sender: TObject);
    procedure TestesOraisAgendadosNoPeriodo1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure AtendimentosNoPeriodoPorVendedor1Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure CadastroDeMailings1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentos: TFormAtendimentos;

implementation
uses DataMod2, Clientes, Funcoes1, ClientesLoc, AtendimentosLoc, DataMod, AtendimentosRel,
  Vendedores, Cursos, CursosLoc, Mailings, DataModSearch, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormAtendimentos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAtendimentos.CadastroDeClientes1Click(Sender: TObject);
begin
  if not DM2.TBAtendimentosATE_CLIENTE.IsNull then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBAtendimentosATE_CLIENTE.Value;
    DM.TBClientes.Open;
  end;
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormAtendimentos.CadastroDeCursos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursos, FormCursos);
  FormCursos.ShowModal;
  FormCursos.Free;
  FormCursos:=nil;
end;

procedure TFormAtendimentos.CadastroDeMailings1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMailings, FormMailings);
  FormMailings.ShowModal;
  FormMailings.Free;
  FormMailings:=nil;
end;

procedure TFormAtendimentos.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormAtendimentos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_TESTEESCRITOHORA.Clear;
end;

procedure TFormAtendimentos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_TESTEORALDATA.Clear;
end;

procedure TFormAtendimentos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_TESTEORALHORA.Clear;
end;

procedure TFormAtendimentos.DBEdit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormAtendimentos.DBEdit13Exit(Sender: TObject);
begin
  if (DM2.TBAtendimentos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBAtendimentosATE_CURSO.Clear;
    DM2.TBAtendimentosCUR_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBAtendimentos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCursos.Close;
    DMS.QYCursos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCursos.Open;
    if not DMS.QYCursos.IsEmpty then
    begin
      DM2.TBAtendimentosATE_CURSO.Value:=DMS.QYCursosCUR_CODIGO.Value;
      DM2.TBAtendimentosCUR_DESCRICAO.Value:=DMS.QYCursosCUR_DESCRICAO.Value;
    end else
    begin
      DM2.TBAtendimentosATE_CURSO.Clear;
      DM2.TBAtendimentosCUR_DESCRICAO.Clear;
      MessageDlg('Curso não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCursos.Close;
  end;
end;

procedure TFormAtendimentos.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormAtendimentos.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAtendimentos.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormAtendimentos.DBEdit17Exit(Sender: TObject);
begin
  LocMailingsExit(DBEdit17,DBEdit18,DM2.TBAtendimentos);
end;

procedure TFormAtendimentos.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormAtendimentos.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAtendimentos.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormAtendimentos.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBAtendimentos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBAtendimentosATE_CLIENTE.Clear;
    DM2.TBAtendimentosCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBAtendimentos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBAtendimentosATE_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBAtendimentosCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBAtendimentosATE_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM2.TBAtendimentosVEN_NOME.Value:=DMS.QYClientesVEN_NOME.Value;
      DM2.TBAtendimentosATE_MAILING.Value:=DMS.QYClientesCLI_MAILING.Value;
      DM2.TBAtendimentosMAI_DESCRICAO.Value:=DMS.QYClientesMAI_DESCRICAO.Value;
    end else
    begin
      DM2.TBAtendimentosATE_CLIENTE.Clear;
      DM2.TBAtendimentosCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormAtendimentos.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormAtendimentos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAtendimentos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_AULADATA.Clear;
end;

procedure TFormAtendimentos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_AULAHORA.Clear;
end;

procedure TFormAtendimentos.DBEdit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormAtendimentos.DBEdit7Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit7,DBEdit8,nil,DM2.TBAtendimentos);
end;

procedure TFormAtendimentos.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormAtendimentos.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAtendimentos.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBAtendimentosATE_TESTEESCRITODATA.Clear;
end;

procedure TFormAtendimentos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAtendimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBAtendimentos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAtendimentos.FormCreate(Sender: TObject);
begin
  Label3.Caption:='';
  DM2.DSAtendimentosDataChange(Self,nil);
end;

procedure TFormAtendimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAtendimentos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAtendimentos);
end;

procedure TFormAtendimentos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosLoc, FormAtendimentosLoc);
  FormAtendimentosLoc.ShowModal;
  if AtendimentosLoc.Procurar then
  begin
    DM2.TBAtendimentos.Close;
    DM2.TBAtendimentos.ParamByName('codigo').AsInteger:=FormAtendimentosLoc.QYAtendimentosATE_CODIGO.Value;
    DM2.TBAtendimentos.Open;
  end;
  FormAtendimentosLoc.Free;
  FormAtendimentosLoc:=nil;
end;

procedure TFormAtendimentos.PngSpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit7,DBEdit8,nil,DM2.TBAtendimentos);
end;

procedure TFormAtendimentos.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursosLoc, FormCursosLoc);
  FormCursosLoc.ShowModal;
  if CursosLoc.Procurar then
  begin
    DM2.TBAtendimentos.Edit;
    DM2.TBAtendimentosATE_CURSO.Value:=FormCursosLoc.QYCursosCUR_CODIGO.Value;
    DM2.TBAtendimentosCUR_DESCRICAO.Value:=FormCursosLoc.QYCursosCUR_DESCRICAO.Value;
  end;
  FormCursosLoc.Free;
  FormCursosLoc:=nil;
end;

procedure TFormAtendimentos.PngSpeedButton4Click(Sender: TObject);
begin
  LocMailingsBotao(DBEdit17,DBEdit18,DM2.TBAtendimentos);
end;

procedure TFormAtendimentos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosRel, FormAtendimentosRel);
  FormAtendimentosRel.ShowModal;
  FormAtendimentosRel.Free;
  FormAtendimentosRel:=nil;
end;

procedure TFormAtendimentos.AulasDemoAgendadasNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosRel, FormAtendimentosRel);
  FormAtendimentosRel.ComboBox4.Enabled:=False;
  FormAtendimentosRel.ComboBox4.ItemIndex:=0;
  FormAtendimentosRel.ComboBox4Change(Self);
  FormAtendimentosRel.ShowModal;
  FormAtendimentosRel.Free;
  FormAtendimentosRel:=nil;
end;

procedure TFormAtendimentos.TestesEscritosAgendadosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosRel, FormAtendimentosRel);
  FormAtendimentosRel.ComboBox4.Enabled:=False;
  FormAtendimentosRel.ComboBox4.ItemIndex:=1;
  FormAtendimentosRel.ComboBox4Change(Self);
  FormAtendimentosRel.ShowModal;
  FormAtendimentosRel.Free;
  FormAtendimentosRel:=nil;
end;

procedure TFormAtendimentos.TestesOraisAgendadosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosRel, FormAtendimentosRel);
  FormAtendimentosRel.ComboBox4.Enabled:=False;
  FormAtendimentosRel.ComboBox4.ItemIndex:=2;
  FormAtendimentosRel.ComboBox4Change(Self);
  FormAtendimentosRel.ShowModal;
  FormAtendimentosRel.Free;
  FormAtendimentosRel:=nil;
end;

procedure TFormAtendimentos.AtendimentosNoPeriodoPorVendedor1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentosRel, FormAtendimentosRel);
  FormAtendimentosRel.ComboBox4.Enabled:=False;
  FormAtendimentosRel.ComboBox4.ItemIndex:=3;
  FormAtendimentosRel.ComboBox4Change(Self);
  FormAtendimentosRel.ShowModal;
  FormAtendimentosRel.Free;
  FormAtendimentosRel:=nil;
end;

procedure TFormAtendimentos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBAtendimentos.Edit;
    DM2.TBAtendimentosATE_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBAtendimentosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBAtendimentosATE_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM2.TBAtendimentosVEN_NOME.Value:=FormClientesLoc.QYClientesVEN_NOME.Value;
    DM2.TBAtendimentosATE_MAILING.Value:=FormClientesLoc.QYClientesCLI_MAILING.Value;
    DM2.TBAtendimentosMAI_DESCRICAO.Value:=FormClientesLoc.QYClientesMAI_DESCRICAO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormAtendimentos);

finalization
  UnRegisterClass(TFormAtendimentos);

end.
