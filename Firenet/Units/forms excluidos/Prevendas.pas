unit Prevendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Data.DB, PngBitBtn, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormPrevendas = class(TForm)
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
    BaixarBoleto1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeProdutos1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    FluxoDeCaixa1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeECFs1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
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
    N6: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    Label25: TLabel;
    DBText3: TDBText;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label21: TLabel;
    DBEdit26: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    N3: TMenuItem;
    FinalizarPreVenda1: TMenuItem;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FinalizarPreVenda1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastroDeECFs1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrevendas: TFormPrevendas;

implementation
uses DataMod, DataModSearch, ClientesLoc, Clientes, Produtos, Ecf, Funcoes1,
  PrevendasItens;
{$R *.dfm}

procedure TFormPrevendas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormPrevendas.BitBtn1Click(Sender: TObject);
begin
  if DM.TBPrevendas.IsEmpty then
  begin
    MessageDlg('Nenhuma pré venda selecionada.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='E' then
  begin
    MessageDlg('Esta pré venda já foi enviada para o SALC.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='F' then
  begin
    MessageDlg('Esta pré venda está finalizada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='C' then
  begin
    MessageDlg('Esta pré venda está cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBPrevendasItens.Insert;
  Application.CreateForm(TFormPrevendasItens, FormPrevendasItens);
  FormPrevendasItens.ShowModal;
  FormPrevendasItens.Free;
  FormPrevendasItens:=nil;
end;

procedure TFormPrevendas.BitBtn2Click(Sender: TObject);
begin
  if DM.TBPrevendas.IsEmpty then
  begin
    MessageDlg('Nenhuma pré venda selecionada.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='E' then
  begin
    MessageDlg('Esta pré venda já foi enviada para o SALC.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='F' then
  begin
    MessageDlg('Esta pré venda está finalizada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasPRE_STATUS.Value='C' then
  begin
    MessageDlg('Esta pré venda está cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBPrevendasItens.IsEmpty then
  begin
    MessageDlg('Nenhum item pra cancelar.',mtInformation,[mbOk],0);
    Exit;
  end;
  DM.TBPrevendasItens.Edit;
  DM.TBPrevendasItensPRI_CANCELADO.Value:='S';
  DM.TBPrevendasItens.Post;
end;

procedure TFormPrevendas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormPrevendas.CadastroDeECFs1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEcf, FormEcf);
  FormEcf.ShowModal;
  FormEcf.Free;
  FormEcf:=nil;
end;

procedure TFormPrevendas.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormPrevendas.DBEdit5Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPrevendas.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBPrevendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBPrevendasPRE_CLIENTE.Clear;
    DM.TBPrevendasPRE_CNPJ.Clear;
    DM.TBPrevendasPRE_CPF.Clear;
    DM.TBPrevendasPRE_NOME.Clear;
    DM.TBPrevendasPRE_TIPOPESSOA.Clear;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBPrevendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM.TBPrevendasPRE_CNPJ.Value:=DMS.QYClientesCLI_CNPJCOB.Value;
      DM.TBPrevendasPRE_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM.TBPrevendasPRE_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBPrevendasPRE_TIPOPESSOA.Value:=DMS.QYClientesCLI_TIPOPESSOA.Value;
    end else
    begin
      DM.TBPrevendasPRE_CLIENTE.Clear;
      DM.TBPrevendasPRE_CNPJ.Clear;
      DM.TBPrevendasPRE_CPF.Clear;
      DM.TBPrevendasPRE_TIPOPESSOA.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormPrevendas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormPrevendas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormPrevendas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPrevendas.FinalizarPreVenda1Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormPrevendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBPrevendas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormPrevendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPrevendas.Localizar1Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormPrevendas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormPrevendas.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBPrevendas.Edit;
    DM.TBPrevendasPRE_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBPrevendasPRE_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJCOB.Value;
    DM.TBPrevendasPRE_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBPrevendasPRE_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBPrevendasPRE_TIPOPESSOA.Value:=FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormPrevendas);

finalization
  UnRegisterClass(TFormPrevendas);

end.
