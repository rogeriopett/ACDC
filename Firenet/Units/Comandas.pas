unit Comandas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, PngSpeedButton, DB, ImgList,
  PngImageList, Menus, DBSBtn, ExtCtrls, System.ImageList, System.UITypes;

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
    DBText1: TDBText;
    DBText2: TDBText;
    EstornarComanda1Button: TPngSpeedButton;
    BaixarComanda1Button: TPngSpeedButton;
    ImprimirComanda1Button: TPngSpeedButton;
    UnirComanda1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
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
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    ImprimirComanda1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    CadastroDeVendedores1: TMenuItem;
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
    Label14: TLabel;
    DBEdit15: TDBEdit;
    CadastroDeClientes1Button: TPngSpeedButton;
    IncluirMaoDeObra1Button: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    IncluirMaoDeObra1: TMenuItem;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    CancelarComanda1: TMenuItem;
    CancelarComanda1Button: TPngSpeedButton;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    PngSpeedButton5: TPngSpeedButton;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
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
    procedure CancelarComanda1Click(Sender: TObject);
    procedure ImprimirComanda1Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComandas: TFormComandas;

implementation
uses DataMod, DataMod2, Funcoes1, VendedoresLoc, Vendedores, ComandasLoc, Main,
  ClientesLoc, Clientes, ComandasBaixar, FuncoesFirenet, DataModSearch;
{$R *.dfm}

procedure TFormComandas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormComandas.BaixarComanda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,            'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='B','Esta comanda já está baixada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Esta comanda está cancelada.');

  Application.CreateForm(TFormComandasBaixar, FormComandasBaixar);
  FormComandasBaixar.ShowModal;
  FormComandasBaixar.Free;
  FormComandasBaixar:=nil;
end;

procedure TFormComandas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormComandas.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormComandas.CancelarComanda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,            'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='B','Esta comanda já está baixada. Para cancelar é necessário estorná-la antes.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Esta comanda já está cancelada.');

  if MessageDlg('Deseja cancelar a comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBComandas.Edit;
    DM2.TBComandasCMD_STATUS.Value:='C';
    DM2.TBComandasCMD_DATABAIXA.Value:=DM.ServerDate;
    DM2.TBComandas.Post;
  end;
end;

procedure TFormComandas.DBEdit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComandas.DBEdit13Exit(Sender: TObject);
begin
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBComandasCMD_CLIENTE.Clear;
    DM2.TBComandasCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBComandasCMD_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBComandasCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBComandasCMD_CLIENTE.Clear;
      DM2.TBComandasCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
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

procedure TFormComandas.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComandas.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
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
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBComandas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      DM2.TBComandasCMD_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
      DM2.TBComandasVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
      DM2.TBComandasCMD_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
    end else
    begin
      DM2.TBComandasCMD_VENDEDOR.Clear;
      DM2.TBComandasVEN_NOME.Clear;
      DM2.TBComandasCMD_COMISSAO.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVendedores.Close;
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

procedure TFormComandas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComandas.EstornarComanda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,            'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='A','Esta comanda ainda não foi baixada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Esta comanda foi cancelada.');

  if MessageDlg('Deseja estornar a baixa da comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //verifica se já existe uma comanda com o mesmo número em aberto.
    DM.QYAux.Close; //era DM2.QYComandas.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) QTDE from COMANDAS where CMD_STATUS=''A'' and CMD_COMANDA=:comanda');
    DM.QYAux.ParamByName('comanda').AsInteger:=DM2.TBComandasCMD_COMANDA.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('QTDE').AsInteger>0 then
    begin
      MessageDlg('Já existe uma comanda com o número '+IntToStr(DM2.TBComandasCMD_COMANDA.Value)+' em aberto.'+#13#10+
                 'Não é possível ter duas comandas em aberto com o mesmo número.',mtWarning,[mbOk],0);
      DM.QYAux.Close;
      Exit;
    end;
    //baixa a comanda via SQL. - não deixa alterar comanda depois de baixada/cancelada.
    DM.CodigoMark:=DM2.TBComandasCMD_CODIGO.Value;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update COMANDAS set CMD_STATUS=''A'' where CMD_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBComandasCMD_CODIGO.Value;
    DM.QYAux.ExecSQL;
    DM2.TBComandas.Close;
    DM2.TBComandas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM2.TBComandas.Open;
    //faz lançamento no caixa.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='DINHEIRO';
    DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM2.TBComandasCMD_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBComandasCMD_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
    DM.TBCaixaCAI_DESCRICAO.Value:='ESTORNO AUTOM. CONTROLE DE COMANDAS';
    DM.TBCaixaCAI_ORIGEM.Value:='COMANDAS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBComandasCMD_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBComandasCLI_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
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
  FormMain.DesabilitarControles(FormComandas);
end;

procedure TFormComandas.ImprimirComanda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,'Nenhuma comanda selecionada.');

  if MessageDlg('Imprimir comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.ComandasEstilo='DOS' then
    ImprimirComandaTermica;
    if DM.ComandasEstilo='WINDOWS' then
    begin
      MessageDlg('Estilo windows ainda não disponível.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TFormComandas.IncluirMaoDeObra1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,            'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='B','Esta comanda já está baixada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Esta comanda está cancelada.');
  AbortIf(DM2.TBComandasItens.Locate('CDI_PRODUTO',DM.TBParametrosPAR_PRODUTOMAODEOBRA.Value,[]),'Já existe um item de mão de obra incluso nesta comanda.');

  if MessageDlg('Incluir serviço de mão de obra na comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_PRODUTOMAODEOBRA.Value;
    DM.TBProdutos.Open;
    AbortIf(DM.TBProdutos.IsEmpty,'O produto mão de obra não foi localizado no cadastro de produtos.'+#13#10+
      'Informe o código do produto referente à mão de obra na guia Comandas em parâmetros do sistema.'
    );

    AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='S','Não é possível incluir mão de obra como produto composto.');

    if DM2.TBComandasCMD_HORAFIMMIN.Value<=0 then
    begin
      DM2.TBComandas.Edit;
      DM2.TBComandasCMD_HORAFIM.Value:=Time;
      DM2.TBComandas.Post;
    end;

    AbortIf(DM2.TBComandasCMD_TEMPOTOTALDEC.Value<=0,'O tempo total não pode ser zero. Informe a hora final.');

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

procedure TFormComandas.PngSpeedButton5Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='B','Comanda já baixada.');

  DM2.TBComandas.Edit;
  DM2.TBComandasCMD_HORAFIM.Value:=Time;
  DM2.TBComandas.Post;
end;

procedure TFormComandas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
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
  AbortIf(DM2.TBComandas.IsEmpty,            'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='B','Esta comanda já está baixada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Esta comanda está cancelada.');

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
