unit VeiculosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, Menus,
  DBSBtn, ExtCtrls, DB, PngSpeedButton, ImgList, PngImageList, System.ImageList,
  System.UITypes;

type
  TFormVeiculosCliente = class(TForm)
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
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
    CadastroDeVeiculos1: TMenuItem;
    N2: TMenuItem;
    CadastroDeVeiculos1Button: TPngSpeedButton;
    Label7: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label12: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit22: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit10: TDBEdit;
    DBText6: TDBText;
    DBText7: TDBText;
    SelecionarOpcionais1Button: TPngSpeedButton;
    SelecionarOpcionais1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    N3: TMenuItem;
    ConsultarDadosDoVeiculoNoDetran1: TMenuItem;
    ConsultarDadosDoVeiculoNoDetran1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    N6: TMenuItem;
    PorCliente1: TMenuItem;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure CadastroDeVeiculos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText4Click(Sender: TObject);
    procedure SelecionarOpcionais1Click(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure ConsultarDadosDoVeiculoNoDetran1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure PorCliente1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosCliente: TFormVeiculosCliente;

implementation
uses Main, DataMod, ClientesLoc, VeiculosLoc, Veiculos, ShellAPI,
  OpcionaisSelecionar, Clientes, Funcoes1, VeiculosClienteRel, DataMod2,
  DataModSearch;

{$R *.dfm}

procedure TFormVeiculosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBVeiculosCliente.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
  //DM2.TBVeiculosCliente.DataSource:=nil; //retira o relacionamento.
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormVeiculosCliente.txt');
end;

procedure TFormVeiculosCliente.FormCreate(Sender: TObject);
begin
  if FileExists(GetTempDir+'FormVeiculosCliente.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormVeiculosCliente.txt');
end;

procedure TFormVeiculosCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosCliente.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=UpCase(Key);
end;

procedure TFormVeiculosCliente.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosLoc, FormVeiculosLoc);
  FormVeiculosLoc.ShowModal;
  if VeiculosLoc.Procurar then
  begin
    DM2.TBVeiculosCliente.Edit;
    DM2.TBVeiculosClienteVEC_VEICULO.Value:=FormVeiculosLoc.QYVeiculosVEL_CODIGO.Value;
    DM2.TBVeiculosClienteVEL_DESCRICAO.Value:=FormVeiculosLoc.QYVeiculosVEL_DESCRICAO.Value;
  end;
  FormVeiculosLoc.Free;
  FormVeiculosLoc:=nil;
end;

procedure TFormVeiculosCliente.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculosCliente.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosClienteRel, FormVeiculosClienteRel);
  FormVeiculosClienteRel.ShowModal;
  FormVeiculosClienteRel.Free;
  FormVeiculosClienteRel:=nil;
end;

procedure TFormVeiculosCliente.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormVeiculosCliente.DBEdit22Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVeiculosCliente.DBEdit22Exit(Sender: TObject);
begin
  if (DM2.TBVeiculosCliente.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBVeiculosClienteVEC_VEICULO.Clear;
    DM2.TBVeiculosClienteVEL_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBVeiculosCliente.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVeiculos.Close;
    DMS.QYVeiculos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVeiculos.Open;
    if not DMS.QYVeiculos.IsEmpty then
    begin
      DM2.TBVeiculosClienteVEC_VEICULO.Value:=DMS.QYVeiculosVEL_CODIGO.Value;
      DM2.TBVeiculosClienteVEL_DESCRICAO.Value:=DMS.QYVeiculosVEL_DESCRICAO.Value;
    end else
    begin
      DM2.TBVeiculosClienteVEC_VEICULO.Clear;
      DM2.TBVeiculosClienteVEL_DESCRICAO.Clear;
      MessageDlg('Veículo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVeiculos.Close;
  end;
end;

procedure TFormVeiculosCliente.CadastroDeVeiculos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculos, FormVeiculos);
  FormVeiculos.ShowModal;
  FormVeiculos.Free;
  FormVeiculos:=nil;
end;

procedure TFormVeiculosCliente.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVeiculosCliente);
  //DM2.TBVeiculosCliente.DataSource:=DM.DSClientes; //conecta o relacionamento.
end;

procedure TFormVeiculosCliente.DBEdit22KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormVeiculosCliente.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosCliente.DBText4Click(Sender: TObject);
begin
  if DM.TBClientesCLI_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_EMAIL.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormVeiculosCliente.SelecionarOpcionais1Click(Sender: TObject);
var I: Integer;
begin
  AbortIf(DM2.TBVeiculosCliente.IsEmpty,'Nenhum veículo selecionado.');

  Application.CreateForm(TFormOpcionaisSelecionar, FormOpcionaisSelecionar);
  FormOpcionaisSelecionar.ShowModal;
  if OpcionaisSelecionar.Acao='OK' then
  begin
    DBMemo2.SetFocus; //se nao colocar isso, qdo entrar no dbmemo ele limpa o texto.
    DM2.TBVeiculosCliente.Edit;
    DM2.TBVeiculosClienteVEC_OPCIONAIS.Clear;
    if FormOpcionaisSelecionar.DBGrid1.SelectedRows.Count>0 then
    for I:=0 to FormOpcionaisSelecionar.DBGrid1.SelectedRows.Count-1 do
    begin
      FormOpcionaisSelecionar.DBGrid1.DataSource.DataSet.GotoBookmark(FormOpcionaisSelecionar.DBGrid1.SelectedRows.Items[I]);
      DBMemo2.Lines.Add(FormOpcionaisSelecionar.DBGrid1.DataSource.DataSet.Fields[0].AsString);
    end;
  end;
  FormOpcionaisSelecionar.Free;
  FormOpcionaisSelecionar:=nil;
end;

procedure TFormVeiculosCliente.DBEdit20Enter(Sender: TObject);
begin
  if (DM2.TBVeiculosCliente.State in [dsInsert, dsEdit]) and ((DM2.TBVeiculosClienteVEC_ANOMOD.Value='    ') or (DM2.TBVeiculosClienteVEC_ANOMOD.IsNull)) then
  DM2.TBVeiculosClienteVEC_ANOMOD.Value:=DM2.TBVeiculosClienteVEC_ANOFAB.Value;
end;

procedure TFormVeiculosCliente.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormVeiculosCliente.ConsultarDadosDoVeiculoNoDetran1Click(
  Sender: TObject);
var Link, Placa: String;
begin
  AbortIf(DM2.TBVeiculosCliente.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf((Trim(DM2.TBVeiculosClienteVEC_PLACA.Value)='') or (DM2.TBVeiculosClienteVEC_RENAVAN.Value=''),'Placa e/ou renavam incompletos.');

  Placa:=DM2.TBVeiculosClienteVEC_PLACA.Value;
  Delete(Placa,4,1); //retira o "-".
  Link:='http://www.detrannet.sc.gov.br/servicos/consultaveiculo.asp?placa='+Placa+'&renavam='+DM2.TBVeiculosClienteVEC_RENAVAN.Value;
  ShellExecute(GetDesktopWindow,'open',PChar(Link),nil,nil,sw_ShowNormal);
end;

procedure TFormVeiculosCliente.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVeiculosCliente.PorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosClienteRel, FormVeiculosClienteRel);
  FormVeiculosClienteRel.ComboBox1.Enabled:=False;
  FormVeiculosClienteRel.ComboBox1.ItemIndex:=0;
  FormVeiculosClienteRel.ComboBox1Change(Self);
  FormVeiculosClienteRel.ShowModal;
  FormVeiculosClienteRel.Free;
  FormVeiculosClienteRel:=nil;
end;

initialization
  RegisterClass(TFormVeiculosCliente);

finalization
  UnRegisterClass(TFormVeiculosCliente);

end.
