unit ComandasMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, PngSpeedButton, IBDatabase, DB,
  IBCustomDataSet, IBQuery, ImgList, PngImageList, Menus, DBSBtn, ExtCtrls;

type
  TFormComandas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton9: TPngSpeedButton;
    Label34: TLabel;
    DBText7: TDBText;
    Label35: TLabel;
    Label40: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit29: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    QYVendedores: TIBQuery;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TIBStringField;
    QYVendedoresVEN_COMISSAO: TIBBCDField;
    TRVendedores: TIBTransaction;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton2: TPngSpeedButton;
    Bevel1: TBevel;
    SpeedButton6: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton4: TPngSpeedButton;
    SpeedButton8: TPngSpeedButton;
    SpeedButton10: TPngSpeedButton;
    SpeedButton11: TPngSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    SpeedButton15: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    AtualizarItens1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatorios1: TMenuItem;
    ImprimirComanda1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    CadastrodeVendedores1: TMenuItem;
    BaixarComanda1: TMenuItem;
    EstornarComanda1: TMenuItem;
    UnirComanda1: TMenuItem;
    PngImageList1: TPngImageList;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    QYClientes: TIBQuery;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_NOME: TIBStringField;
    TRClientes: TIBTransaction;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    IncluirMaoDeObra1: TMenuItem;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure CadastrodeVendedores1Click(Sender: TObject);
    procedure BaixarComanda1Click(Sender: TObject);
    procedure EstornarComanda1Click(Sender: TObject);
    procedure UnirComanda1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure IncluirMaoDeObra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComandas: TFormComandas;

implementation
uses DataMod, DataMod2, Funcoes1, VendedoresLoc, Vendedores, ComandasLoc, Main,
  ClientesLoc, Clientes;
{$R *.dfm}

procedure TFormComandas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormComandas.BaixarComanda1Click(Sender: TObject);
begin
  if DM2.TBComandas.IsEmpty then
  begin
    MessageDlg('Nenhuma comanda selecionada.',mtInformation,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='B' then
  begin
    MessageDlg('Esta comanda já está baixada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='C' then
  begin
    MessageDlg('Esta comanda está cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Realizar a baixa da comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormComandas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormComandas.CadastrodeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormComandas.DBEdit13Exit(Sender: TObject);
begin
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBComandasCMD_CLIENTE.Clear;
    DM2.TBComandasCLI_NOME.Clear;
    Exit;
  end;
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYClientes.Close;
    QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYClientes.Open;
    if not QYClientes.IsEmpty then
    begin
      DM2.TBComandasCMD_CLIENTE.Value:=QYClientesCLI_CODIGO.Value;
      DM2.TBComandasCLI_NOME.Value:=QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBComandasCMD_CLIENTE.Clear;
      DM2.TBComandasCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYClientes.Close;
  end;
end;

procedure TFormComandas.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormComandas.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBComandasCMD_VENDEDOR.Clear;
    DM2.TBComandasVEN_NOME.Clear;
    DM2.TBComandasCMD_COMISSAO.Clear;
    Exit;
  end;
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYVendedores.Close;
    QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYVendedores.Open;
    if not QYVendedores.IsEmpty then
    begin
      DM2.TBComandasCMD_VENDEDOR.Value:=QYVendedoresVEN_CODIGO.Value;
      DM2.TBComandasVEN_NOME.Value:=QYVendedoresVEN_NOME.Value;
      DM2.TBComandasCMD_COMISSAO.Value:=QYVendedoresVEN_COMISSAO.Value;
    end else
    begin
      DM2.TBComandasCMD_VENDEDOR.Clear;
      DM2.TBComandasVEN_NOME.Clear;
      DM2.TBComandasCMD_COMISSAO.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYVendedores.Close;
  end;
end;

procedure TFormComandas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormComandas.EstornarComanda1Click(Sender: TObject);
begin
  if DM2.TBComandas.IsEmpty then
  begin
    MessageDlg('Nenhuma comanda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='A' then
  begin
    MessageDlg('Esta comanda ainda não foi baixada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='C' then
  begin
    MessageDlg('Esta comanda foi cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja estornar a baixa da comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormComandas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComandas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBComandas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormComandas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComandas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormComandasMain);
end;

procedure TFormComandas.IncluirMaoDeObra1Click(Sender: TObject);
begin
  if DM2.TBComandas.IsEmpty then
  begin
    MessageDlg('Nenhuma comanda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='B' then
  begin
    MessageDlg('Esta comanda já está baixada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='C' then
  begin
    MessageDlg('Esta comanda está cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasItens.Locate('CDI_PRODUTO',DM.TBParametrosPAR_PRODUTOMAODEOBRA.Value,[]) then
  begin
    MessageDlg('Já existe um item de mão de obra incluso nesta comanda.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Incluir serviço de mão de obra na comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_PRODUTOMAODEOBRA.Value;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    begin
      MessageDlg('O produto mão de obra não foi localizado no cadastro de produtos.'+#13#10+
                 'Informe o código do produto referente à mão de obra na guia Comandas em parâmetros do sistema.',mtError,[mbOk],0);
      Exit;
    end;
    if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    begin
      MessageDlg('Não é possível incluir mão de obra como produto composto.',mtError,[mbOk],0);
      Exit;
    end;
    if DM2.TBComandasCMD_HORAFIMMIN.Value<=0 then
    begin
      DM2.TBComandas.Edit;
      DM2.TBComandasCMD_HORAFIM.Value:=Time;
      DM2.TBComandas.Post;
    end;
    if DM2.TBComandasCMD_TEMPOTOTALDEC.Value<=0 then
    begin
      MessageDlg('O tempo total não pode ser zero. Informe a hora final.',mtError,[mbOk],0);
      Exit;
    end;
    DM2.TBComandasItens.Insert;
    DM2.TBComandasItensCDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM2.TBComandasItensCDI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM2.TBComandasItensCDI_QUANTIDADE.Value:=DM2.TBComandasCMD_TEMPOTOTALDEC.Value;
    DM2.TBComandasItensCDI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
    DM2.TBComandasItensCDI_VALORUNITARIO.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
    DM2.TBComandasItens.Post;
  end;
end;

procedure TFormComandas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComandasLoc, FormComandasLoc);
  FormComandasLoc.ShowModal;
  if ComandasLoc.Procurar then
  begin
    DM2.TBComandas.Close;
    DM2.TBComandas.ParamByName('codigo').AsInteger:=FormComandasLoc.QYComandasCMD_CODIGO.Value;
    DM2.TBComandas.Open;
  end;
  FormComandasLoc.Free;
  FormComandasLoc:=nil;
end;

procedure TFormComandas.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBComandas.Edit;
    DM2.TBComandasCMD_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBComandasCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormComandas.Relatorios1Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormComandas.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM2.TBComandas.Edit;
    DM2.TBComandasCMD_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM2.TBComandasVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    DM2.TBComandasCMD_COMISSAO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormComandas.UnirComanda1Click(Sender: TObject);
begin
  if DM2.TBComandas.IsEmpty then
  begin
    MessageDlg('Nenhuma comanda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='B' then
  begin
    MessageDlg('Esta comanda já está baixada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBComandasCMD_STATUS.Value='C' then
  begin
    MessageDlg('Esta comanda está cancelada.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Unir comandas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
  end;
end;

initialization
  RegisterClass(TFormComandas);

finalization
  UnRegisterClass(TFormComandas);

end.
