unit Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons, DBSBtn, System.UITypes,
  ExtCtrls, Menus, ComCtrls, DB, ImgList, PngImageList, PngSpeedButton, System.ImageList;

type
  TFormClientes = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label14: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label3: TLabel;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    DBEdit30: TDBEdit;
    N1: TMenuItem;
    CadastroDeRamosDeAtividades1: TMenuItem;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    Label5: TLabel;
    CadastroDeVendedores1: TMenuItem;
    DBEdit33: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    SpeedButton10: TPngSpeedButton;
    DBComboBox3: TDBComboBox;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    SpeedButton11: TPngSpeedButton;
    HistoricosDoCliente1Button: TPngSpeedButton;
    HistoricosDoCliente1: TMenuItem;
    N3: TMenuItem;
    CadastroDeRamosDeAtividades1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    DBEdit40: TDBEdit;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit41: TDBEdit;
    Label44: TLabel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N4: TMenuItem;
    ClientesSemComprasEmUmPeriodo1: TMenuItem;
    ClientesPorEstado1: TMenuItem;
    ClientesQueNuncaCompraram1: TMenuItem;
    ClientesDevedoresAcimaDoLimiteDeCredito1: TMenuItem;
    ClientesPorRamoDeAtividade1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Label50: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit48: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    SpeedButton16: TPngSpeedButton;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    SpeedButton17: TPngSpeedButton;
    CadastroDeMailings1: TMenuItem;
    CadastroDeMailings1Button: TPngSpeedButton;
    CadastroDeEnderecos1: TMenuItem;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    ClientesPorMailing1: TMenuItem;
    Label4: TLabel;
    DBText3: TDBText;
    DBEdit54: TDBEdit;
    CadastroDeLocais1: TMenuItem;
    CadastroDeLocais1Button: TPngSpeedButton;
    DBEdit57: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit58: TDBEdit;
    PngImageList1: TPngImageList;
    Label45: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    ClientesPorCidade1: TMenuItem;
    DBComboBox8: TDBComboBox;
    Label63: TLabel;
    DBComboBox9: TDBComboBox;
    Label64: TLabel;
    ClientesDevedoresAMaisDeXDias1: TMenuItem;
    AlterarSenhaDoCliente1: TMenuItem;
    AlterarSenhaDoCliente1Button: TPngSpeedButton;
    Label66: TLabel;
    DBEdit66: TDBEdit;
    Label67: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit69: TDBEdit;
    Label70: TLabel;
    DBEdit70: TDBEdit;
    Label71: TLabel;
    DBEdit71: TDBEdit;
    AnexosDoCliente1Button: TPngSpeedButton;
    AnexosDoCliente1: TMenuItem;
    Label49: TLabel;
    DBEdit45: TDBEdit;
    DBComboBox10: TDBComboBox;
    Label72: TLabel;
    ClientesPorLocalDeTrabalho1: TMenuItem;
    ClientesPorLocalDeEstudo1: TMenuItem;
    DBComboBox12: TDBComboBox;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit72: TDBEdit;
    Label76: TLabel;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    Label78: TLabel;
    DBEdit77: TDBEdit;
    Label82: TLabel;
    DBComboBox13: TDBComboBox;
    Label48: TLabel;
    DBEdit44: TDBEdit;
    DBEdit43: TDBEdit;
    Label47: TLabel;
    Label46: TLabel;
    DBEdit42: TDBEdit;
    Label83: TLabel;
    DBComboBox14: TDBComboBox;
    DBEdit82: TDBEdit;
    Label84: TLabel;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    Contrato1: TMenuItem;
    OpenDialog1: TOpenDialog;
    AlterarLimiteDeCredito1: TMenuItem;
    AlterarBloquearVenda1: TMenuItem;
    DBEdit83: TDBEdit;
    AlterarBloquearVenda1Button: TPngSpeedButton;
    AlterarLimiteDeCredito1Button: TPngSpeedButton;
    Cadastros1: TMenuItem;
    CadastroDeTaxas1: TMenuItem;
    CadastroDeTaxas1Button: TPngSpeedButton;
    ConsultarCEP1Button: TPngSpeedButton;
    ConsultarCEP1: TMenuItem;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngSpeedButton9: TPngSpeedButton;
    Label86: TLabel;
    DBEdit86: TDBEdit;
    N2: TMenuItem;
    ContatosDoCliente1: TMenuItem;
    ContatosDoCliente1Button: TPngSpeedButton;
    BuscarDoCadastroDeFornecedores1: TMenuItem;
    BuscarDoCadastroDeFornecedores1Button: TPngSpeedButton;
    Label87: TLabel;
    DBComboBox5: TDBComboBox;
    Label88: TLabel;
    DBComboBox15: TDBComboBox;
    ClientesAniversariantesPorVendedor1: TMenuItem;
    Label79: TLabel;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    Label80: TLabel;
    Label73: TLabel;
    DBComboBox11: TDBComboBox;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    DBComboBox6: TDBComboBox;
    Label62: TLabel;
    Label60: TLabel;
    SpeedButton23: TPngSpeedButton;
    DBEdit59: TDBEdit;
    DBComboBox7: TDBComboBox;
    Label24: TLabel;
    ClassificaoDosClientes1: TMenuItem;
    Label89: TLabel;
    DBText4: TDBText;
    AlterarNmerodeReposies1: TMenuItem;
    Clientescomreposies1: TMenuItem;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    SpeedButton8: TPngSpeedButton;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label65: TLabel;
    Label77: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    Label57: TLabel;
    SpeedButton21: TPngSpeedButton;
    Label61: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    Label81: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Label85: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    Label56: TLabel;
    SpeedButton18: TPngSpeedButton;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Localizar1ButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure Relatorios2ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CadastroDeRamosDeAtividades1Click(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure HistoricosDoCliente1Click(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ClientesSemComprasEmUmPeriodo1Click(Sender: TObject);
    procedure ClientesPorEstado1Click(Sender: TObject);
    procedure ClientesQueNuncaCompraram1Click(Sender: TObject);
    procedure ClientesDevedoresAcimaDoLimiteDeCredito1Click(Sender: TObject);
    procedure ClientesPorRamoDeAtividade1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure CadastroDeMailings1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ClientesPorMailing1Click(Sender: TObject);
    procedure DBEdit55Exit(Sender: TObject);
    procedure DBEdit55KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton21Click(Sender: TObject);
    procedure CadastroDeLocais1Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure DBEdit60Exit(Sender: TObject);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure ClientesPorCidade1Click(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure ClientesDevedoresAMaisDeXDias1Click(Sender: TObject);
    procedure AlterarSenhaDoCliente1Click(Sender: TObject);
    procedure AnexosDoCliente1Click(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit33Enter(Sender: TObject);
    procedure DBEdit52Enter(Sender: TObject);
    procedure DBEdit55Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit60Enter(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure ClientesPorLocalDeTrabalho1Click(Sender: TObject);
    procedure ClientesPorLocalDeEstudo1Click(Sender: TObject);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit80Enter(Sender: TObject);
    procedure DBEdit80Exit(Sender: TObject);
    procedure DBEdit80KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit80KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure AlterarLimiteDeCredito1Click(Sender: TObject);
    procedure AlterarBloquearVenda1Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure DBEdit84Enter(Sender: TObject);
    procedure DBEdit84Exit(Sender: TObject);
    procedure DBEdit84KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit84KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeTaxas1Click(Sender: TObject);
    procedure ConsultarCEP1Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure ContatosDoCliente1Click(Sender: TObject);
    procedure BuscarDoCadastroDeFornecedores1Click(Sender: TObject);
    procedure ClientesAniversariantesPorVendedor1Click(Sender: TObject);
    procedure ClassificaoDosClientes1Click(Sender: TObject);
    procedure AlterarNmerodeReposies1Click(Sender: TObject);
    procedure Clientescomreposies1Click(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
    procedure DBEdit51Change(Sender: TObject);
    procedure DBEdit48Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation
uses ShellApi, DataMod, Main, FuncoesFirenet, EnderecosEstadosLoc, EnderecosCidadesLoc,
  EnderecosBairrosLoc, EnderecosRuasLoc, ClientesLoc, Funcoes1, ClientesRel,
  Atividades, VendedoresLoc, Vendedores, ClientesHistoricos, Mailings, Enderecos,
  Locais, Condicoes, ClientesAlterarSenha, DataModSearch, ClientesAnexos,
  ConsultarCPF, ConsultarCNPJ, Fornecedores, FornecedoresLoc, InputFloat, Taxas,
  EnderecosBuscaCEP, Odontogramas, DataMod2, Contatos, InputNumber,
  AtualizacoesBase;
{$R *.dfm}

procedure TFormClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBClientes.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClientes.SpeedButton1Click(Sender: TObject);
begin
  DBEdit25.SetFocus; //tira o foco do campo CEP.
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM.TBClientesCLI_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
    DM.TBClientesCLI_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM.TBClientesCLI_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM.TBClientesCLI_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBClientesCLI_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM.TBClientesCLI_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
    DM.TBClientesCLI_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
    DM.TBClientesCLI_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasPAI_CODIGO.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormClientes.Localizar1ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar=True then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormClientes.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    if DM.TBClientes.State in [dsBrowse] then
    DM.TBClientes.Edit;
    DM.TBClientesCLI_DTCADASTRO.Clear;
  end;
end;

procedure TFormClientes.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBClientesCLI_DTNASC.Clear;
end;

procedure TFormClientes.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormClientes.SpeedButton3Click(Sender: TObject);
begin
  if DM.TBClientesCLI_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Primeiro endereço de email não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormClientes.SpeedButton4Click(Sender: TObject);
begin
  if DM.TBClientesCLI_SITE.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBClientesCLI_SITE.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Nenhum endereço de site cadastrado.',mtError,[mbOk],0);
end;

procedure TFormClientes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientes.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormClientes.DBEdit48Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormClientes.DBEdit4Exit(Sender: TObject);
begin
  if (Length(DM.TBClientesCLI_CNPJ.Value)=18) and (DM.TBClientes.State in [dsInsert,dsEdit]) then
  begin
    if not CNPJAlfa(DM.TBClientesCLI_CNPJ.Value) then
    begin
      MessageDlg('CNPJ inválido!',mtError,[mbOk],0);
      DBEdit4.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormClientes.DBEdit12Exit(Sender: TObject);
begin
  if (Length(DM.TBClientesCLI_CPF.Value)=14) and (DM.TBClientes.State in [dsInsert,dsEdit]) then
  begin
    if not Cpf(DM.TBClientesCLI_CPF.Value) then
    begin
      MessageDlg('CPF inválido!',mtError,[mbOk],0);
      DBEdit12.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormClientes.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_CPF.Clear;
  end;
end;

procedure TFormClientes.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_CNPJ.Clear;
  end;
end;

procedure TFormClientes.Relatorios2ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClientes);
end;

procedure TFormClientes.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  TabSheet3.TabVisible:=False; //excluir tab nas proximas atualizacoes.
end;

procedure TFormClientes.SpeedButton8Click(Sender: TObject);
begin
  DBEdit27.SetFocus;
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_BAIRROCOB.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM.TBClientesCLI_CEPCOB.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
    DM.TBClientesCLI_CIDADECOB.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM.TBClientesCLI_CIDADECODIGOCOB.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM.TBClientesCLI_ESTADOCOB.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM.TBClientesCLI_ENDERECOCOB.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBClientesCLI_PAISCOB.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
    DM.TBClientesCLI_PAISCODIGOCOB.Value:=FormEnderecosRuasLoc.QYRuasPAI_CODIGO.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormClientes.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit30Exit(Sender: TObject);
begin
  LocAtividadesExit(DBEdit30,DBEdit29,DM.TBClientes);
end;

procedure TFormClientes.DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormClientes.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.SpeedButton7Click(Sender: TObject);
begin
  LocAtividadesBotao(DBEdit30,DBEdit29,DM.TBClientes);
end;

procedure TFormClientes.CadastroDeRamosDeAtividades1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtividades, FormAtividades);
  FormAtividades.ShowModal;
  FormAtividades.Free;
  FormAtividades:=nil;
end;

procedure TFormClientes.CadastroDeTaxas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxas, FormTaxas);
  FormTaxas.ShowModal;
  FormTaxas.Free;
  FormTaxas:=nil;
end;

procedure TFormClientes.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit31Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit31,DBEdit32,nil,DM.TBClientes);
end;

procedure TFormClientes.DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormClientes.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit31,DBEdit32,nil,DM.TBClientes);
end;

procedure TFormClientes.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormClientes.DBEdit33Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit33Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit33,DBEdit34,nil,DM.TBClientes);
end;

procedure TFormClientes.DBEdit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormClientes.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit35Exit(Sender: TObject);
begin
  if (Length(DM.TBClientesCLI_CNPJCOB.Value)=18) and (DM.TBClientes.State in [dsInsert,dsEdit]) then
  begin
    if not CNPJAlfa(DM.TBClientesCLI_CNPJCOB.Value) then
    begin
      MessageDlg('CNPJ inválido!',mtError,[mbOk],0);
      DBEdit35.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormClientes.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_CNPJCOB.Clear;
  end;
end;

procedure TFormClientes.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormClientes.SpeedButton10Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit33,DBEdit34,nil,DM.TBClientes);
end;

procedure TFormClientes.SpeedButton11Click(Sender: TObject);
begin
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_EMAIL2.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Segundo endereço de email não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormClientes.HistoricosDoCliente1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  Application.CreateForm(TFormClientesHistoricos, FormClientesHistoricos);
  FormClientesHistoricos.ShowModal;
  FormClientesHistoricos.Free;
  FormClientesHistoricos:=nil;
end;

procedure TFormClientes.DBEdit10Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormClientes.DBEdit10Enter(Sender: TObject);
begin
  if DM.TBClientes.State in [dsInsert] then
  DBEdit10.SelStart:=6;
end;

procedure TFormClientes.DBEdit11Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormClientes.DBEdit11Enter(Sender: TObject);
begin
  if DM.TBClientes.State in [dsInsert] then
  DBEdit11.SelStart:=6;
end;

procedure TFormClientes.DBEdit15Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormClientes.DBEdit15Enter(Sender: TObject);
begin
  if DM.TBClientes.State in [dsInsert] then
  DBEdit15.SelStart:=6;
end;

procedure TFormClientes.Ajuda2Click(Sender: TObject);
begin
//  MostrarAjuda('');
  ShellExecute(GetDesktopWindow,'open',PChar('http://firenet.runtimesistemas.com.br'),nil,nil,sw_ShowNormal);
end;

procedure TFormClientes.AlterarBloquearVenda1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  if DM.TBClientesCLI_BLOQUEARVENDA.Value='S' then
  begin
    if MessageDlg('Alterar o campo Bloquear Venda para NÃO?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_BLOQUEARVENDA.Value:='N';
      DM.TBClientes.Post;
    end;
  end else
  begin
    if MessageDlg('Alterar o campo Bloquear Venda para SIM?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_BLOQUEARVENDA.Value:='S';
      DM.TBClientes.Post;
    end;
  end;
end;

procedure TFormClientes.AlterarLimiteDeCredito1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  Application.CreateForm(TFormInputFloat, FormInputFloat);
  FormInputFloat.ImageDollar.Visible:=True;
  FormInputFloat.Caption:='Alterar Limite de Crédito';
  FormInputFloat.Label1.Caption:='Informe o novo Limite de Crédito (R$):';
  FormInputFloat.Edit1.Text:=DM.TBClientesCLI_LIMITECREDITO.AsString;
  if (FormInputFloat.ShowModal=mrOK) then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_LIMITECREDITO.Value:=StrToFloat(FormInputFloat.Edit1.Text);
    DM.TBClientes.Post;
  end;
  FormInputFloat.Free;
  FormInputFloat:=nil;
end;

procedure TFormClientes.AlterarNmerodeReposies1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  Application.CreateForm(TFormInputNumber, FormInputNumber);
  InputNumber.Titulo:='Alterar reposições';
  InputNumber.Etiqueta:='Digite o número de reposições do cliente:';
  InputNumber.DefaultValue:=DM.TBClientesCLI_REPOSICOES.Value.ToString;
  InputNumber.AceitaVirgula:=False;
  FormInputNumber.ShowModal;
  if InputNumber.Retorno<>'' then
  begin
    DM.TBClientes.Edit;
    DM.TBClientesCLI_REPOSICOES.Value:=StrToInt(InputNumber.Retorno);
    DM.TBClientes.Post;
  end;
end;

procedure TFormClientes.AlterarSenhaDoCliente1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  Application.CreateForm(TFormClientesAlterarSenha, FormClientesAlterarSenha);
  FormClientesAlterarSenha.ShowModal;
  FormClientesAlterarSenha.Free;
  FormClientesAlterarSenha:=nil;
end;

procedure TFormClientes.AnexosDoCliente1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSCLIENTES.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSCLIENTES.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormClientesAnexos, FormClientesAnexos);
  FormClientesAnexos.Pasta:=Pasta;
  FormClientesAnexos.FileListBox1.Directory:=Pasta;
  FormClientesAnexos.FileListBox1.ItemIndex:=0;
  FormClientesAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormClientesAnexos.ShowModal;
  FormClientesAnexos.Free;
  FormClientesAnexos:=nil;
end;

procedure TFormClientes.BuscarDoCadastroDeFornecedores1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.State in [dsInsert, dsEdit],'Salve ou cancele a edição antes de buscar os dados do cadastro de fornecedores.');

  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    //verificar se já existe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from CLIENTES where (CLI_CNPJ<>'''' and CLI_CNPJ=:cnpj) or (CLI_CPF<>'''' and CLI_CPF=:cpf) or CLI_NOME=:nome');
    DM.QYAux.ParamByName('cnpj').AsString:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.QYAux.ParamByName('cpf').AsString:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.QYAux.ParamByName('nome').AsString:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
    begin
      MessageDlg('Já existe um cliente cadastrado com esses dados. (NOME ou CNPJ ou CPF)',mtError,[mbOk],0);
      FormFornecedoresLoc.Free;
      FormFornecedoresLoc:=nil;
      DM.QYAux.Close;
      Exit;
    end;

    DM.QYAux.Close;
    DM.TBClientes.Insert;
    DM.TBClientesCLI_BAIRRO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_BAIRRO.Value;
    DM.TBClientesCLI_CEP.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CEP.Value;
    DM.TBClientesCLI_CIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBClientesCLI_CIDADECODIGO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADECODIGO.Value;
    DM.TBClientesCLI_CNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBClientesCLI_COMPLEMENTO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_COMPLEMENTO.Value;
    DM.TBClientesCLI_CPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBClientesCLI_EMAIL.Value:=FormFornecedoresLoc.QYFornecedoresFOR_EMAIL.Value;
    DM.TBClientesCLI_ENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBClientesCLI_ESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBClientesCLI_ESTADOCODIGO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADOCODIGO.Value;
    DM.TBClientesCLI_FANTASIA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FANTASIA.Value;
    DM.TBClientesCLI_FONE1.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
    DM.TBClientesCLI_FONE2.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE2.Value;
    DM.TBClientesCLI_FONE3.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE3.Value;
    DM.TBClientesCLI_IE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBClientesCLI_NOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBClientesCLI_NUMERO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NUMERO.Value;
    DM.TBClientesCLI_PAIS.Value:=FormFornecedoresLoc.QYFornecedoresFOR_PAIS.Value;
    DM.TBClientesCLI_PAISCODIGO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_PAISCODIGO.Value;
    DM.TBClientesCLI_RG.Value:=FormFornecedoresLoc.QYFornecedoresFOR_RG.Value;
    DM.TBClientesCLI_TIPOPESSOA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_TIPOPESSOA.Value;
    DM.TBClientes.Post;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormClientes.ConsultarCEP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure TFormClientes.ContatosDoCliente1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  //DM.TBContatos.DataSource:=DM.DSClientes; //no firedac é mastersource... testar com ele sempre ligado.
  Application.CreateForm(TFormContatos, FormContatos);
  FormContatos.ShowModal;
  FormContatos.Free;
  FormContatos:=nil;
  //DM.TBContatos.DataSource:=nil;
end;

procedure TFormClientes.Contrato1Click(Sender: TObject);
var M: TMemo;
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');

  OpenDialog1.InitialDir:=DM.TBParametrosPAR_LOCALMODELOSDOC.Value;
  if OpenDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    M:=TMemo.CreateParented(Application.Handle);
    M.WordWrap:=False;
    M.Lines.LoadFromFile(OpenDialog1.FileName);

    M.Text:=StringReplace(M.Text,'|CLI_NOME|',DM.TBClientesCLI_NOME.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_BAIRRO|',AnsiString(DM.TBClientesCLI_BAIRRO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CEP|',DM.TBClientesCLI_CEP.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CIDADE|',AnsiString(DM.TBClientesCLI_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_COMPLEMENTO|',DM.TBClientesCLI_COMPLEMENTO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CPF|',AnsiString(DM.TBClientesCLI_CPF.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_DTNASC|',AnsiString(DateToStr(DM.TBClientesCLI_DTNASC.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_EMAIL|',AnsiString(DM.TBClientesCLI_EMAIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ENDERECO|',AnsiString(DM.TBClientesCLI_ENDERECO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ESTADO|',AnsiString(DM.TBClientesCLI_ESTADO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ESTADOCIVIL|',AnsiString(DM.TBClientesCLI_ESTADOCIVIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FANTASIA|',AnsiString(DM.TBClientesCLI_FANTASIA.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE1|',AnsiString(DM.TBClientesCLI_FONE1.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE2|',AnsiString(DM.TBClientesCLI_FONE2.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE3|',AnsiString(DM.TBClientesCLI_FONE3.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_NOME|',AnsiString(DM.TBClientesCLI_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_NUMERO|',AnsiString(DM.TBClientesCLI_NUMERO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_PROFISSAO|',AnsiString(DM.TBClientesCLI_PROFISSAO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_RG|',AnsiString(DM.TBClientesCLI_RG.Value),[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|EMP_BAIRRO|',DM.TBEmpresaEMP_BAIRRO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CIDADE|',DM.TBEmpresaEMP_CIDADE.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CEP|',DM.TBEmpresaEMP_CEP.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CNPJ|',DM.TBEmpresaEMP_CNPJ.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_EMAIL|',DM.TBEmpresaEMP_EMAIL.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_ENDERECO|',DM.TBEmpresaEMP_ENDERECO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_ESTADO|',DM.TBEmpresaEMP_ESTADO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_IE|',DM.TBEmpresaEMP_IE.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_NUMERO|',DM.TBEmpresaEMP_NUMERO.Value,[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|DATAEXTENSO|',FormatDateTime('dddddd',Now),[rfReplaceAll]);

    M.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\ClienteContrato.rtf');
    M.Destroy;

    Screen.Cursor:=crDefault;
    ShellExecute(GetDesktopWindow,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\ClienteContrato.rtf'),nil,nil,sw_ShowNormal);
  end;
end;

procedure TFormClientes.ClientesPorRamoDeAtividade1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=0;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesPorCidade1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=1;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesQueNuncaCompraram1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=2;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesSemComprasEmUmPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=3;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesPorMailing1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=4;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesPorLocalDeTrabalho1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=5;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesPorLocalDeEstudo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=6;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesPorEstado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=7;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesDevedoresAcimaDoLimiteDeCredito1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=8;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesDevedoresAMaisDeXDias1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=9;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClientesAniversariantesPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=10;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.ClassificaoDosClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=11;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.Clientescomreposies1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesRel, FormClientesRel);
  FormClientesRel.ComboBox4.Enabled:=False;
  FormClientesRel.ComboBox4.ItemIndex:=12;
  FormClientesRel.ComboBox4Change(Self);
  FormClientesRel.ShowModal;
  FormClientesRel.Free;
  FormClientesRel:=nil;
end;

procedure TFormClientes.SpeedButton17Click(Sender: TObject);
begin
  if DM.TBClientesCLI_MAEEMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_MAEEMAIL.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Endereço de email não cadastrado.',mtInformation,[mbOk],0);
end;

procedure TFormClientes.SpeedButton16Click(Sender: TObject);
begin
  if DM.TBClientesCLI_PAIEMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_PAIEMAIL.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Endereço de email não cadastrado.',mtInformation,[mbOk],0);
end;

procedure TFormClientes.DBEdit51Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormClientes.DBEdit52Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit52Exit(Sender: TObject);
begin
  LocMailingsExit(DBEdit52,DBEdit53,DM.TBClientes);
end;

procedure TFormClientes.DBEdit52KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton18.Click;
end;

procedure TFormClientes.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.SpeedButton18Click(Sender: TObject);
begin
  LocMailingsBotao(DBEdit52,DBEdit53,DM.TBClientes);
end;

procedure TFormClientes.CadastroDeMailings1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMailings, FormMailings);
  FormMailings.ShowModal;
  FormMailings.Free;
  FormMailings:=nil;
end;

procedure TFormClientes.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormClientes.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormClientes.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormClientes.DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormClientes.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit21Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBClientes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM.TBClientesCLI_CEP.Clear;
    DM.TBClientesCLI_ENDERECO.Clear;
    DM.TBClientesCLI_BAIRRO.Clear;
    DM.TBClientesCLI_ESTADO.Clear;
    DM.TBClientesCLI_ESTADOCODIGO.Clear;
    DM.TBClientesCLI_CIDADE.Clear;
    DM.TBClientesCLI_CIDADECODIGO.Clear;
    DM.TBClientesCLI_PAIS.Clear;
    DM.TBClientesCLI_PAISCODIGO.Clear;
    Exit;
  end;
  if (DM.TBClientes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    DMS.QYRuas.FetchAll;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM.TBClientesCLI_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM.TBClientesCLI_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM.TBClientesCLI_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM.TBClientesCLI_ESTADOCODIGO.Value:=DMS.QYRuasRUA_ESTADO.Value;
      DM.TBClientesCLI_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM.TBClientesCLI_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
      DM.TBClientesCLI_PAIS.Value:=DMS.QYRuasPAI_NOME.Value;
      DM.TBClientesCLI_PAISCODIGO.Value:=DMS.QYRuasRUA_PAIS.Value;
      //se tiver mais de uma rua com o mesmo CEP, abre a tela de localização de ruas já com a listagem das ruas.
      if DMS.QYRuas.RecordCount>1 then
      begin
        Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
        FormEnderecosRuasLoc.QYRuas.SQL.Clear;
        FormEnderecosRuasLoc.QYRuas.SQL.Add(
          'select * from RUAS '+
          'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
          'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
          'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
          'left join PAISES on RUA_PAIS=PAI_CODIGO '+
          'where RUA_CEP like '+QuotedStr('%'+(Sender as TDBEdit).Text+'%')+' order by RUA_NOME'
        );
        FormEnderecosRuasLoc.QYRuas.Active:=True;
        EnderecosRuasLoc.FocoNoGrid:=True;
        FormEnderecosRuasLoc.ShowModal;
        if EnderecosRuasLoc.Procurar then
        begin
          DM.TBClientesCLI_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM.TBClientesCLI_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM.TBClientesCLI_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM.TBClientesCLI_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM.TBClientesCLI_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM.TBClientesCLI_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM.TBClientesCLI_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
          DM.TBClientesCLI_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
          DM.TBClientesCLI_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_PAIS.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM.TBClientesCLI_CEP.Clear;
      DM.TBClientesCLI_ENDERECO.Clear;
      DM.TBClientesCLI_BAIRRO.Clear;
      DM.TBClientesCLI_ESTADO.Clear;
      DM.TBClientesCLI_ESTADOCODIGO.Clear;
      DM.TBClientesCLI_CIDADE.Clear;
      DM.TBClientesCLI_CIDADECODIGO.Clear;
      DM.TBClientesCLI_PAIS.Clear;
      DM.TBClientesCLI_PAISCODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormClientes.DBEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton8.Click;
end;

procedure TFormClientes.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit80Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit80Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit80,DBEdit81,nil,DM.TBClientes);
end;

procedure TFormClientes.DBEdit80KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormClientes.DBEdit80KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit84Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit84Exit(Sender: TObject);
begin
  LocTaxasExit(DBEdit84,DBEdit85,DM.TBClientes);
end;

procedure TFormClientes.DBEdit84KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormClientes.DBEdit84KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit60Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit60Exit(Sender: TObject);
begin
  LocCondicoesExit(DBEdit60,DBEdit61,DM.TBClientes);
end;

procedure TFormClientes.DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormClientes.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit63Exit(Sender: TObject);
begin
  LocLocaisExit(DBEdit63,DBEdit64,DM.TBClientes);
end;

procedure TFormClientes.DBEdit63KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormClientes.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.PngSpeedButton1Click(Sender: TObject);
begin
  LocCondicoesBotao(DBEdit60,DBEdit61,DM.TBClientes);
end;

procedure TFormClientes.PngSpeedButton2Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit80,DBEdit81,nil,DM.TBClientes);
end;

procedure TFormClientes.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarCNPJ, FormConsultarCNPJ);
  ConsultarCNPJ.CadastroAtual:='Clientes';
  FormConsultarCNPJ.MaskEdit1.Text:=DBEdit4.Text; // DM.TBClientesCLI_CNPJ.Value;
  FormConsultarCNPJ.ShowModal;
  FormConsultarCNPJ.Free;
  FormConsultarCNPJ:=nil;
end;

procedure TFormClientes.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarCPF, FormConsultarCPF);
  FormConsultarCPF.CadastroAtual:='Clientes';
  FormConsultarCPF.MaskEdit1.Text:=DM.TBClientesCLI_CPF.Value;
  FormConsultarCPF.MaskEdit2.Text:=DateToStr(DM.TBClientesCLI_DTNASC.Value);
  FormConsultarCPF.ShowModal;
  FormConsultarCPF.Free;
  FormConsultarCPF:=nil;
end;

procedure TFormClientes.PngSpeedButton5Click(Sender: TObject);
var Fone, Texto: String;
begin
  Fone:=LimparFormatacao(DM.TBClientesCLI_FONE1.Value);
  AbortIf(Fone='','Nenhum número telefônico preenchido.');

  Texto:=InputBox('Mensagem','Digite a mensagem...','Olá '+DM.TBClientesCLI_NOME.Value);
  if Texto<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('https://wa.me/55'+Fone+'?text='+Texto),nil,nil,sw_ShowNormal);
end;

procedure TFormClientes.PngSpeedButton6Click(Sender: TObject);
begin
  LocLocaisBotao(DBEdit63,DBEdit64,DM.TBClientes);
end;

procedure TFormClientes.PngSpeedButton7Click(Sender: TObject);
begin
  LocTaxasBotao(DBEdit84,DBEdit85,DM.TBClientes);
end;

procedure TFormClientes.PngSpeedButton8Click(Sender: TObject);
var Fone, Texto: String;
begin
  Fone:=LimparFormatacao(DM.TBClientesCLI_FONE2.Value);
  AbortIf(Fone='','Nenhum número telefônico preenchido.');

  Texto:=InputBox('Mensagem','Digite a mensagem...','Olá '+DM.TBClientesCLI_NOME.Value);
  if Texto<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('https://wa.me/55'+Fone+'?text='+Texto),nil,nil,sw_ShowNormal);
end;

procedure TFormClientes.PngSpeedButton9Click(Sender: TObject);
var Fone, Texto: String;
begin
  Fone:=LimparFormatacao(DM.TBClientesCLI_FONE3.Value);
  AbortIf(Fone='','Nenhum número telefônico preenchido.');

  Texto:=InputBox('Mensagem','Digite a mensagem...','Olá '+DM.TBClientesCLI_NOME.Value);
  if Texto<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('https://wa.me/55'+Fone+'?text='+Texto),nil,nil,sw_ShowNormal);
end;

procedure TFormClientes.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit6Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBClientes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM.TBClientesCLI_CEPCOB.Clear;
    DM.TBClientesCLI_ENDERECOCOB.Clear;
    DM.TBClientesCLI_BAIRROCOB.Clear;
    DM.TBClientesCLI_ESTADOCOB.Clear;
    DM.TBClientesCLI_CIDADECOB.Clear;
    DM.TBClientesCLI_CIDADECODIGOCOB.Clear;
    DM.TBClientesCLI_PAISCOB.Clear;
    DM.TBClientesCLI_PAISCODIGOCOB.Clear;
    Exit;
  end;
  if (DM.TBClientes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM.TBClientesCLI_ENDERECOCOB.Value:=DMS.QYRuasRUA_NOME.Value;
      DM.TBClientesCLI_BAIRROCOB.Value:=DMS.QYRuasBAI_NOME.Value;
      DM.TBClientesCLI_ESTADOCOB.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM.TBClientesCLI_CIDADECOB.Value:=DMS.QYRuasCID_NOME.Value;
      DM.TBClientesCLI_CIDADECODIGOCOB.Value:=DMS.QYRuasRUA_CIDADE.Value;
      DM.TBClientesCLI_PAISCOB.Value:=DMS.QYRuasPAI_NOME.Value;
      DM.TBClientesCLI_PAISCODIGOCOB.Value:=DMS.QYRuasRUA_PAIS.Value;
      DMS.QYRuas.FetchAll;
      //se tiver mais de uma rua com o mesmo CEP, abre a tela de localização de ruas já com a listagem das ruas.
      if DMS.QYRuas.RecordCount>1 then
      begin
        Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
        FormEnderecosRuasLoc.QYRuas.SQL.Clear;
        FormEnderecosRuasLoc.QYRuas.SQL.Add('select * from RUAS '+
                                            'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                                            'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                                            'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                                            'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                                            'where RUA_CEP like '+QuotedStr('%'+(Sender as TDBEdit).Text+'%')+' order by RUA_NOME');
        FormEnderecosRuasLoc.QYRuas.Active:=True;
        EnderecosRuasLoc.FocoNoGrid:=True;
        FormEnderecosRuasLoc.ShowModal;
        if EnderecosRuasLoc.Procurar then
        begin
          DM.TBClientesCLI_ENDERECOCOB.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM.TBClientesCLI_BAIRROCOB.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM.TBClientesCLI_ESTADOCOB.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM.TBClientesCLI_ESTADOCODIGOCOB.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM.TBClientesCLI_CIDADECOB.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM.TBClientesCLI_CIDADECODIGOCOB.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM.TBClientesCLI_CEPCOB.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
          DM.TBClientesCLI_PAISCOB.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
          DM.TBClientesCLI_PAISCODIGOCOB.Value:=FormEnderecosRuasLoc.QYRuasPAI_CODIGO.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM.TBClientesCLI_CEPCOB.Clear;
      DM.TBClientesCLI_ENDERECOCOB.Clear;
      DM.TBClientesCLI_BAIRROCOB.Clear;
      DM.TBClientesCLI_ESTADOCOB.Clear;
      DM.TBClientesCLI_CIDADECOB.Clear;
      DM.TBClientesCLI_CIDADECODIGOCOB.Clear;
      DM.TBClientesCLI_PAISCOB.Clear;
      DM.TBClientesCLI_PAISCODIGOCOB.Clear;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormClientes.DBEdit55Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClientes.DBEdit55Exit(Sender: TObject);
begin
  LocLocaisExit(DBEdit55,DBEdit56,DM.TBClientes);
end;

procedure TFormClientes.DBEdit55KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton21.Click;
end;

procedure TFormClientes.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientes.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormClientes.SpeedButton21Click(Sender: TObject);
begin
  LocLocaisBotao(DBEdit55,DBEdit56,DM.TBClientes);
end;

procedure TFormClientes.CadastroDeLocais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocais, FormLocais);
  FormLocais.ShowModal;
  FormLocais.Free;
  FormLocais:=nil;
end;

procedure TFormClientes.SpeedButton23Click(Sender: TObject);
begin
  if DM.TBClientesCLI_MSN.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_MSN.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  MessageDlg('Endereço de MSN não cadastrado.',mtError,[mbOk],0);
end;

initialization
  RegisterClass(TFormClientes);

finalization
  UnRegisterClass(TFormClientes);

end.
