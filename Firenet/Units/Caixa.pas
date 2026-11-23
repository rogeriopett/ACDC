unit Caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, StdCtrls, DBCtrls, Mask,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormCaixa = class(TForm)
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
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label13: TLabel;
    DBComboBox2: TDBComboBox;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Label14: TLabel;
    SpeedButton3: TPngSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit32: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBEdit24: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    MovimentacoesPorContaAnalitico1: TMenuItem;
    CadastroDeVendedores1Button: TPngSpeedButton;
    N3: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    SaldosPorVendedor1: TMenuItem;
    PngImageList1: TPngImageList;
    CadastroDeContasBancarias1: TMenuItem;
    CadastroDeContasBancarias1Button: TPngSpeedButton;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    PngSpeedButton3: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeFornecedore1Button: TPngSpeedButton;
    N4: TMenuItem;
    TransferirSaldoDeUmVendedorParaOutro1: TMenuItem;
    TransferirSaldoDeUmVendedorParaOutro1Button: TPngSpeedButton;
    TotaisPorTipoDeDocumento1: TMenuItem;
    MovimentacoesPorVendedorAnalitico1: TMenuItem;
    MovimentacoesPorVendedorSintetico1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    MovimentacoesAnalitico1: TMenuItem;
    MovimentacoesPorVendedorAnaliticoVendedorAtual1: TMenuItem;
    MovimentacoesPorVendedorSinteticoVendedorAtual1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure MovimentacoesPorContaAnalitico1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure SaldosPorVendedor1Click(Sender: TObject);
    procedure CadastroDeContasBancarias1Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure TransferirSaldoDeUmVendedorParaOutro1Click(Sender: TObject);
    procedure TotaisPorTipoDeDocumento1Click(Sender: TObject);
    procedure MovimentacoesPorVendedorAnalitico1Click(
      Sender: TObject);
    procedure MovimentacoesPorVendedorSintetico1Click(
      Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure MovimentacoesAnalitico1Click(Sender: TObject);
    procedure MovimentacoesPorVendedorAnaliticoVendedorAtual1Click(Sender: TObject);
    procedure MovimentacoesPorVendedorSinteticoVendedorAtual1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixa: TFormCaixa;

implementation
uses DataMod, Main, CaixaLoc, CaixaRel, Funcoes1, Vendedores, Contas, Clientes, Fornecedores,
  CaixaTransferencias, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBCaixa.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCaixa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCaixa.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCaixa);
end;

procedure TFormCaixa.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaLoc, FormCaixaLoc);
  FormCaixaLoc.ShowModal;
  if CaixaLoc.Procurar then
  begin
    DM.TBCaixa.Close;
    DM.TBCaixa.ParamByName('codigo').AsInteger:=FormCaixaLoc.QYCaixaCAI_CODIGO.Value;
    DM.TBCaixa.Open;
  end;
  FormCaixaLoc.Free;
  FormCaixaLoc:=nil;
end;

procedure TFormCaixa.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCaixa.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCaixa.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCaixa.DBEdit3Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit3,DBEdit32,nil,DM.TBCaixa);
end;

procedure TFormCaixa.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormCaixa.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixa.DBEdit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCaixa.DBEdit9Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit9,DBEdit12,DM.TBCaixa);
end;

procedure TFormCaixa.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormCaixa.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixa.SpeedButton3Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit3,DBEdit32,nil,DM.TBCaixa);
end;

procedure TFormCaixa.DBEdit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCaixa.DBEdit13Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit13,DBEdit14,nil,DM.TBCaixa);
end;

procedure TFormCaixa.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormCaixa.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixa.DBEdit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCaixa.DBEdit15Exit(Sender: TObject);
begin
  LocContasExit(DBEdit15,DBEdit24,DM.TBCaixa);
end;

procedure TFormCaixa.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormCaixa.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixa.SpeedButton4Click(Sender: TObject);
begin
  LocContasBotao(DBEdit15,DBEdit24,DM.TBCaixa);
end;

procedure TFormCaixa.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormCaixa.CadastroDeContasBancarias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormCaixa.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormCaixa.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormCaixa.PngSpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit9,DBEdit12,DM.TBCaixa);
end;

procedure TFormCaixa.PngSpeedButton3Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit13,DBEdit14,nil,DM.TBCaixa);
end;

procedure TFormCaixa.TransferirSaldoDeUmVendedorParaOutro1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaTransferencias, FormCaixaTransferencias);
  FormCaixaTransferencias.ShowModal;
  FormCaixaTransferencias.Free;
  FormCaixaTransferencias:=nil;
end;

procedure TFormCaixa.MovimentacoesPorVendedorAnalitico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=0;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.MovimentacoesPorVendedorAnaliticoVendedorAtual1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=0;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.Edit1.Enabled:=False;
  FormCaixaRel.SpeedButton1.Enabled:=False;
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.MovimentacoesPorVendedorSintetico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=1;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.MovimentacoesPorVendedorSinteticoVendedorAtual1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=1;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.Edit1.Enabled:=False;
  FormCaixaRel.SpeedButton1.Enabled:=False;
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.MovimentacoesPorContaAnalitico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=2;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.SaldosPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=3;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.TotaisPorTipoDeDocumento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=4;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

procedure TFormCaixa.MovimentacoesAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaRel, FormCaixaRel);
  FormCaixaRel.ComboBox1.Enabled:=False;
  FormCaixaRel.ComboBox1.ItemIndex:=5;
  FormCaixaRel.ComboBox1Change(Self);
  FormCaixaRel.ShowModal;
  FormCaixaRel.Free;
  FormCaixaRel:=nil;
end;

initialization
  RegisterClass(TFormCaixa);

finalization
  UnRegisterClass(TFormCaixa);

end.

