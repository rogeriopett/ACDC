unit Contratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, PngImageList, Menus, DBCtrls, DBSBtn, ExtCtrls, StdCtrls,
  Mask, Buttons, PngSpeedButton, ComCtrls, DB, PngBitBtn, DateUtils, Grids,
  DBGrids, System.ImageList, System.UITypes;

type
  TFormContratos = class(TForm)
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
    ContasAReceber1Button: TPngSpeedButton;
    EstornarContrato1Button: TPngSpeedButton;
    ImprimirContrato1Button: TPngSpeedButton;
    LocalizarContratoNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeImoveis1Button: TPngSpeedButton;
    ContasAPagar1Button: TPngSpeedButton;
    CancelarContrato1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    LocalizarContratoNoContasAPagar1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    FecharContrato1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarContratoNoContasAReceber1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
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
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    AtualizarItens1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label14: TLabel;
    Label15: TLabel;
    Label34: TLabel;
    DBText7: TDBText;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    ImprimirContrato1: TMenuItem;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label18: TLabel;
    Label29: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label30: TLabel;
    Label21: TLabel;
    DBComboBox6: TDBComboBox;
    DBEdit46: TDBEdit;
    Label32: TLabel;
    DBEdit50: TDBEdit;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit51: TDBEdit;
    Label36: TLabel;
    DBEdit52: TDBEdit;
    BitBtn5: TPngBitBtn;
    Label37: TLabel;
    DBEdit53: TDBEdit;
    LocalizarContratoNoContasAPagar1: TMenuItem;
    CadastroDeImoveis1: TMenuItem;
    ContasAReceber1: TMenuItem;
    ContasAPagar1: TMenuItem;
    CancelarContrato1: TMenuItem;
    EstornarContrato1: TMenuItem;
    FecharContrato1: TMenuItem;
    BaixarContrato1: TMenuItem;
    BaixarContrato1Button: TPngSpeedButton;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label50: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure LocalizarContratoNoContasAReceber1Click(Sender: TObject);
    procedure LocalizarContratoNoContasAPagar1Click(Sender: TObject);
    procedure CancelarContrato1Click(Sender: TObject);
    procedure EstornarContrato1Click(Sender: TObject);
    procedure FecharContrato1Click(Sender: TObject);
    procedure BaixarContrato1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeImoveis1Click(Sender: TObject);
    procedure ContasAReceber1Click(Sender: TObject);
    procedure ContasAPagar1Click(Sender: TObject);
    procedure ImprimirContrato1Click(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit53Exit(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContratos: TFormContratos;

implementation
uses DataMod, DataMod2, Main, Funcoes1, FuncoesFirenet, ClientesLoc, ImoveisLoc,
  Clientes, Imoveis, Pagar, Receber, ContratosLoc, ShellApi, DataModSearch,
  ContratosPartes;
{$R *.dfm}

procedure TFormContratos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormContratos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormContratos.CadastroDeImoveis1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveis, FormImoveis);
  FormImoveis.ShowModal;
  FormImoveis.Free;
  FormImoveis:=nil;
end;

procedure TFormContratos.CancelarContrato1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.ContasAPagar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagar, FormPagar);
  FormPagar.ShowModal;
  FormPagar.Free;
  FormPagar:=nil;
end;

procedure TFormContratos.ContasAReceber1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceber, FormReceber);
  FormReceber.ShowModal;
  FormReceber.Free;
  FormReceber:=nil;
end;

procedure TFormContratos.DBEdit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormContratos.DBEdit14Exit(Sender: TObject);
begin
  if (DM2.TBContratos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBContratosCTI_IMOVEL.Clear;
    DM2.TBContratosCTI_DESCPARCELAPORC.Clear;
    DM2.TBContratosCTI_DESCPARCELAQTDE.Clear;
    DM2.TBContratosCTI_DESCPARCELAVALOR.Clear;
    DM2.TBContratosCTI_DESCPORCVECTO.Clear;
    DM2.TBContratosCTI_FINALIDADE.Clear;
    DM2.TBContratosCTI_VALORALUGUEL.Clear;

    DM2.TBContratosCTI_LOCADOR.Clear;
    DM2.TBContratosCTI_LOCADORBAIRRO.Clear;
    DM2.TBContratosCTI_LOCADORCEP.Clear;
    DM2.TBContratosCTI_LOCADORCIDADE.Clear;
    DM2.TBContratosCTI_LOCADORCIDADECODIGO.Clear;
    DM2.TBContratosCTI_LOCADORCNPJ.Clear;
    DM2.TBContratosCTI_LOCADORCOMPLEMENTO.Clear;
    DM2.TBContratosCTI_LOCADORCPF.Clear;
    DM2.TBContratosCTI_LOCADORENDERECO.Clear;
    DM2.TBContratosCTI_LOCADORESTADO.Clear;
    DM2.TBContratosCTI_LOCADORESTADOCIVIL.Clear;
    DM2.TBContratosCTI_LOCADORNOME.Clear;
    DM2.TBContratosCTI_LOCADORNUMERO.Clear;
    DM2.TBContratosCTI_LOCADOR.Clear;

    DM2.TBContratosIMO_DESCRICAO.Clear;
    DM2.TBContratosIMO_TIPOIMOVEL.Clear;
    DM2.TBContratosIMO_CEP.Clear;
    DM2.TBContratosIMO_ENDERECO.Clear;
    DM2.TBContratosIMO_NUMERO.Clear;
    DM2.TBContratosIMO_COMPLEMENTO.Clear;
    DM2.TBContratosIMO_BAIRRO.Clear;
    DM2.TBContratosIMO_CIDADE.Clear;
    DM2.TBContratosIMO_CIDADECODIGO.Clear;
    DM2.TBContratosIMO_ESTADO.Clear;
    DM2.TBContratosIMT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBContratos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYImoveis.Close;
    DMS.QYImoveis.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYImoveis.Open;
    if not DMS.QYImoveis.IsEmpty then
    begin
      DM2.TBContratosCTI_IMOVEL.Value:=DMS.QYImoveisIMO_CODIGO.Value;
      DM2.TBContratosCTI_DESCPARCELAPORC.Value:=0;
      DM2.TBContratosCTI_DESCPARCELAQTDE.Value:=DMS.QYImoveisIMO_DESCQTDE.Value;
      DM2.TBContratosCTI_DESCPARCELAVALOR.Value:=DMS.QYImoveisIMO_DESCVALOR.Value;
      DM2.TBContratosCTI_DESCPORCVECTO.Value:=0;
      DM2.TBContratosCTI_FINALIDADE.Value:=DMS.QYImoveisIMO_FINALIDADE.Value;
      DM2.TBContratosCTI_VALORALUGUEL.Value:=DMS.QYImoveisIMO_VALORALUGUEL.Value;

      DM2.TBContratosCTI_LOCADOR.Value:=DMS.QYImoveisIMO_CLIENTE.Value;
      DM2.TBContratosCTI_LOCADORBAIRRO.Value:=DMS.QYImoveisCLI_BAIRRO.Value;
      DM2.TBContratosCTI_LOCADORCEP.Value:=DMS.QYImoveisCLI_CEP.Value;
      DM2.TBContratosCTI_LOCADORCIDADE.Value:=DMS.QYImoveisCLI_CIDADE.Value;
      DM2.TBContratosCTI_LOCADORCIDADECODIGO.Value:=DMS.QYImoveisCLI_CIDADECODIGO.Value;
      DM2.TBContratosCTI_LOCADORCNPJ.Value:=DMS.QYImoveisCLI_CNPJ.Value;
      DM2.TBContratosCTI_LOCADORCOMPLEMENTO.Value:=DMS.QYImoveisCLI_COMPLEMENTO.Value;
      DM2.TBContratosCTI_LOCADORCPF.Value:=DMS.QYImoveisCLI_CPF.Value;
      DM2.TBContratosCTI_LOCADORENDERECO.Value:=DMS.QYImoveisCLI_ENDERECO.Value;
      DM2.TBContratosCTI_LOCADORESTADO.Value:=DMS.QYImoveisCLI_ESTADO.Value;
      DM2.TBContratosCTI_LOCADORESTADOCIVIL.Value:=DMS.QYImoveisCLI_ESTADOCIVIL.Value;
      DM2.TBContratosCTI_LOCADORNOME.Value:=DMS.QYImoveisCLI_NOME.Value;
      DM2.TBContratosCTI_LOCADORNUMERO.Value:=DMS.QYImoveisCLI_NUMERO.Value;
      DM2.TBContratosCTI_LOCADOR.Value:=DMS.QYImoveisIMO_CLIENTE.Value;

      DM2.TBContratosIMO_DESCRICAO.Value:=DMS.QYImoveisIMO_DESCRICAO.Value;
      DM2.TBContratosIMO_TIPOIMOVEL.Value:=DMS.QYImoveisIMO_TIPOIMOVEL.Value;
      DM2.TBContratosIMO_CEP.Value:=DMS.QYImoveisIMO_CEP.Value;
      DM2.TBContratosIMO_ENDERECO.Value:=DMS.QYImoveisIMO_ENDERECO.Value;
      DM2.TBContratosIMO_NUMERO.Value:=DMS.QYImoveisIMO_NUMERO.Value;
      DM2.TBContratosIMO_COMPLEMENTO.Value:=DMS.QYImoveisIMO_COMPLEMENTO.Value;
      DM2.TBContratosIMO_BAIRRO.Value:=DMS.QYImoveisIMO_BAIRRO.Value;
      DM2.TBContratosIMO_CIDADE.Value:=DMS.QYImoveisIMO_CIDADE.Value;
      DM2.TBContratosIMO_CIDADECODIGO.Value:=DMS.QYImoveisIMO_CIDADECODIGO.Value;
      DM2.TBContratosIMO_ESTADO.Value:=DMS.QYImoveisIMO_ESTADO.Value;
      DM2.TBContratosIMT_DESCRICAO.Value:=DMS.QYImoveisIMT_DESCRICAO.Value;
    end else
    begin
      DM2.TBContratosCTI_IMOVEL.Clear;
      DM2.TBContratosCTI_DESCPARCELAPORC.Clear;
      DM2.TBContratosCTI_DESCPARCELAQTDE.Clear;
      DM2.TBContratosCTI_DESCPARCELAVALOR.Clear;
      DM2.TBContratosCTI_DESCPORCVECTO.Clear;
      DM2.TBContratosCTI_FINALIDADE.Clear;
      DM2.TBContratosCTI_VALORALUGUEL.Clear;

      DM2.TBContratosCTI_LOCADOR.Clear;
      DM2.TBContratosCTI_LOCADORBAIRRO.Clear;
      DM2.TBContratosCTI_LOCADORCEP.Clear;
      DM2.TBContratosCTI_LOCADORCIDADE.Clear;
      DM2.TBContratosCTI_LOCADORCIDADECODIGO.Clear;
      DM2.TBContratosCTI_LOCADORCNPJ.Clear;
      DM2.TBContratosCTI_LOCADORCOMPLEMENTO.Clear;
      DM2.TBContratosCTI_LOCADORCPF.Clear;
      DM2.TBContratosCTI_LOCADORENDERECO.Clear;
      DM2.TBContratosCTI_LOCADORESTADO.Clear;
      DM2.TBContratosCTI_LOCADORESTADOCIVIL.Clear;
      DM2.TBContratosCTI_LOCADORNOME.Clear;
      DM2.TBContratosCTI_LOCADORNUMERO.Clear;
      DM2.TBContratosCTI_LOCADOR.Clear;

      DM2.TBContratosIMO_DESCRICAO.Clear;
      DM2.TBContratosIMO_TIPOIMOVEL.Clear;
      DM2.TBContratosIMO_CEP.Clear;
      DM2.TBContratosIMO_ENDERECO.Clear;
      DM2.TBContratosIMO_NUMERO.Clear;
      DM2.TBContratosIMO_COMPLEMENTO.Clear;
      DM2.TBContratosIMO_BAIRRO.Clear;
      DM2.TBContratosIMO_CIDADE.Clear;
      DM2.TBContratosIMO_CIDADECODIGO.Clear;
      DM2.TBContratosIMO_ESTADO.Clear;
      DM2.TBContratosIMT_DESCRICAO.Clear;
      MessageDlg('Imóvel não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYImoveis.Close;
  end;
end;

procedure TFormContratos.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormContratos.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormContratos.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBContratosCTI_VIGENCIAINICIO.Clear;
end;

procedure TFormContratos.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBContratosCTI_VIGENCIAFIM.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if DM2.TBContratos.State in [dsInsert, dsEdit] then
    begin
      if (not DM2.TBContratosCTI_VIGENCIAFIM.IsNull) and (not DM2.TBContratosCTI_VIGENCIAINICIO.IsNull) then
      DM2.TBContratosCTI_VIGENCIATOTAL.Value:=MonthsBetween(DM2.TBContratosCTI_VIGENCIAINICIO.Value,DM2.TBContratosCTI_VIGENCIAFIM.Value);
    end;
  end;
end;

procedure TFormContratos.DBEdit46Exit(Sender: TObject);
begin
  if DM2.TBContratos.State in [dsInsert, dsEdit] then
  DM2.TBContratosCTI_DESCPARCELAVALOR.Value:=(DM2.TBContratosCTI_VALORALUGUEL.Value/100.0)*DM2.TBContratosCTI_DESCPARCELAPORC.Value;
end;

procedure TFormContratos.DBEdit51Exit(Sender: TObject);
begin
  if DM2.TBContratos.State in [dsInsert, dsEdit] then
  DM2.TBContratosCTI_VALORALUGUELVECTO.Value:=DM2.TBContratosCTI_VALORALUGUEL.Value-((DM2.TBContratosCTI_VALORALUGUEL.Value/100.0)*DM2.TBContratosCTI_DESCPORCVECTO.Value);
end;

procedure TFormContratos.DBEdit53Exit(Sender: TObject);
begin
  if DM2.TBContratos.State in [dsInsert, dsEdit] then
  DM2.TBContratosCTI_DESCPARCELAPORC.Value:=(100.0/DM2.TBContratosCTI_VALORALUGUEL.Value)*DM2.TBContratosCTI_DESCPARCELAVALOR.Value;
end;

procedure TFormContratos.EstornarContrato1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormContratos.FecharContrato1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.BaixarContrato1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBContratos.IsEmpty,'Nenhum contrato selecionado.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='F','Contrato já finalizado.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='C','Contrato cancelado.');

  DM2.TBContratosPartes.Insert;
  Application.CreateForm(TFormContratosPartes, FormContratosPartes);
  FormContratosPartes.ShowModal;
  FormContratosPartes.Free;
  FormContratosPartes:=nil;
end;

procedure TFormContratos.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBContratosPartes.IsEmpty,'Não existe nenhum locatário/avalista para excluir.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='F','Contrato já finalizado.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='C','Contrato cancelado.');

  if MessageDlg('Eliminar o locatário/avalista selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBContratosPartes.Delete;
end;

procedure TFormContratos.BitBtn5Click(Sender: TObject);
var ValorParcelas: Currency;
  Parcela, I: Integer;
  Vencimento: TDate;
  A,M,D: Word;
begin
  AbortIf(DM2.TBContratosCTI_STATUS.Value='F','Contrato já fechado.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='B','Contrato já baixado.');

  DM2.TBContratos.Edit;
  //CONTAS A RECEBER.
  DecodeDate(DM2.TBContratosCTI_VIGENCIAINICIO.Value,A,M,D);
  Vencimento:=EncodeDate(A,M+1,DM2.TBContratosCTI_DIAVENCIMENTO.Value);
  I:=0;
  DBMemo1.Lines.Clear;
  DBMemo1.Lines.Add('Parcela Vencimento          Valor               ');
  DBMemo1.Lines.Add('================================================');
  for Parcela:=1 to DM2.TBContratosCTI_VIGENCIATOTAL.Value do
  begin
    ValorParcelas:=DM2.TBContratosCTI_VALORALUGUEL.AsExtended;
    Inc(I);
    if I<=DM2.TBContratosCTI_DESCPARCELAQTDE.Value then
    ValorParcelas:=ValorParcelas-DM2.TBContratosCTI_DESCPARCELAVALOR.AsExtended;
    DBMemo1.Lines.Add(AlignText(IntToStr(Parcela),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight));
    Vencimento:=IncMonth(Vencimento);
  end;
  //CONTAS A PAGAR.
  DecodeDate(DM2.TBContratosCTI_VIGENCIAINICIO.Value,A,M,D);
  Vencimento:=EncodeDate(A,M+1,DM2.TBContratosCTI_DIAVENCIMENTO.Value);
  DBMemo2.Lines.Clear;
  DBMemo2.Lines.Add('Parcela Vencimento          Valor               ');
  DBMemo2.Lines.Add('================================================');
  for Parcela:=1 to DM2.TBContratosCTI_VIGENCIATOTAL.Value do
  begin
    ValorParcelas:=DM2.TBContratosCTI_VALORALUGUEL.AsExtended-((DM2.TBContratosCTI_VALORALUGUEL.AsExtended/100.0)*DM2.TBContratosIMO_COMISSAO.AsExtended);
    DBMemo2.Lines.Add(AlignText(IntToStr(Parcela),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight));
    Vencimento:=IncMonth(Vencimento);
  end;
end;

procedure TFormContratos.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBContratosPartes.IsEmpty,'Não existe nenhum locatário/avalista para excluir.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='F','Contrato já finalizado.');
  AbortIf(DM2.TBContratosCTI_STATUS.Value='C','Contrato cancelado.');

  if MessageDlg('Eliminar todos os locatários/avalistas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBContratosPartes.First;
    while not DM2.TBContratosPartes.Eof do
    begin
      DM2.TBContratosPartes.Delete;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormContratos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBContratos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormContratos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormContratos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContratos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormContratos);
end;

procedure TFormContratos.ImprimirContrato1Click(Sender: TObject);
var
  M: TMemo;
//  Dias: String;
//  WordStrings: array[1..40] of TWordSearchReplaceStrings;
begin
  AbortIf(DM2.TBContratos.IsEmpty,'Nenhum contrato selecionado.');
  AbortIf(not FileExists(DM.TBParametrosPAR_LOCALMODELOSDOC.Value+'\ContratoImovel.rtf'),'O arquivo modelo do contrato (ContratoImovel.rtf) não foi encontrado.');

  Screen.Cursor:=crHourGlass;
  M:=TMemo.CreateParented(Application.Handle);
  M.WordWrap:=False; //funcionou?!
  M.Lines.LoadFromFile(DM.TBParametrosPAR_LOCALMODELOSDOC.Value+'\ContratoImovel.rtf');
  //DADOS DO CONTRATO.
  M.Text:=StringReplace(M.Text,'|CTI_AVALISTA1|',DM2.TBContratosCTI_AVALISTA1.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_AVALISTA1CPF|',DM2.TBContratosCTI_AVALISTA1CPF.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_AVALISTA2|',DM2.TBContratosCTI_AVALISTA2.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_AVALISTA2CPF|',DM2.TBContratosCTI_AVALISTA2CPF.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_CODIGO|',IntToStr(DM2.TBContratosCTI_CODIGO.Value),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_DIAVENCIMENTO|',IntToStr(DM2.TBContratosCTI_DIAVENCIMENTO.Value),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_TESTEMUNHA1|',DM2.TBContratosCTI_TESTEMUNHA1.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_TESTEMUNHA1CPF|',DM2.TBContratosCTI_TESTEMUNHA1CPF.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_TESTEMUNHA2|',DM2.TBContratosCTI_TESTEMUNHA2.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_TESTEMUNHA2CPF|',DM2.TBContratosCTI_TESTEMUNHA2CPF.Value,[rfReplaceAll]);
  if DM2.TBContratosCTI_FINALIDADE.Value='C' then
  M.Text:=StringReplace(M.Text,'|CTI_FINALIDADE|','COMERCIAL',[rfReplaceAll]) else
  M.Text:=StringReplace(M.Text,'|CTI_FINALIDADE|','RESIDENCIAL',[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_VALORALUGUEL|',Format('%m',[DM2.TBContratosCTI_VALORALUGUEL.AsExtended]),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_VALORALUGUELEXTENSO|',Extenso(DM2.TBContratosCTI_VALORALUGUEL.AsExtended),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_VIGENCIAINICIO|',DateToStr(DM2.TBContratosCTI_VIGENCIAINICIO.Value),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_VIGENCIAFIM|',DateToStr(DM2.TBContratosCTI_VIGENCIAFIM.Value),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_VIGENCIATOTAL|',IntToStr(DM2.TBContratosCTI_VIGENCIATOTAL.Value),[rfReplaceAll]);

  //DADOS DO LOCADOR.
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORBAIRRO|',DM2.TBContratosCTI_LOCADORBAIRRO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORCEP|',DM2.TBContratosCTI_LOCADORCEP.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORCIDADE|',DM2.TBContratosCTI_LOCADORCIDADE.Value,[rfReplaceAll]);
  if DM2.TBContratosCTI_LOCADORTIPOPESSOA.Value='J' then
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORCPFCNPJ|',DM2.TBContratosCTI_LOCADORCNPJ.Value,[rfReplaceAll]) else
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORCPFCNPJ|',DM2.TBContratosCTI_LOCADORCPF.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORCOMPLEMENTO|',DM2.TBContratosCTI_LOCADORCOMPLEMENTO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORENDERECO|',DM2.TBContratosCTI_LOCADORENDERECO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORESTADO|',DM2.TBContratosCTI_LOCADORESTADO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORESTADOCIVIL|',DM2.TBContratosCTI_LOCADORESTADOCIVIL.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORNUMERO|',DM2.TBContratosCTI_LOCADORNUMERO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCADORNOME|',DM2.TBContratosCTI_LOCADORNOME.Value,[rfReplaceAll]);

  //DADOS DO LOCATARIO.
{ M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOBAIRRO|',DM2.TBContratosCTI_LOCATARIOBAIRRO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCEP|',DM2.TBContratosCTI_LOCATARIOCEP.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCIDADE|',DM2.TBContratosCTI_LOCATARIOCIDADE.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCONJUGE|',DM2.TBContratosCTI_LOCATARIOCONJUGE.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCONJUGECPF|',DM2.TBContratosCTI_LOCATARIOCONJUGECPF.Value,[rfReplaceAll]);
  if DM2.TBContratosCTI_LOCATARIOTIPOPESSOA.Value='J' then
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCPFCNPJ|',DM2.TBContratosCTI_LOCATARIOCNPJ.Value,[rfReplaceAll]) else
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCPFCNPJ|',DM2.TBContratosCTI_LOCATARIOCPF.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOCOMPLEMENTO|',DM2.TBContratosCTI_LOCATARIOCOMPLEMENTO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOENDERECO|',DM2.TBContratosCTI_LOCATARIOENDERECO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOESTADO|',DM2.TBContratosCTI_LOCATARIOESTADO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOESTADOCIVIL|',DM2.TBContratosCTI_LOCATARIOESTADOCIVIL.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIONUMERO|',IntToStr(DM2.TBContratosCTI_LOCATARIONUMERO.Value),[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIONOME|',DM2.TBContratosCTI_LOCATARIONOME.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|CTI_LOCATARIOPROFISSAO|',DM2.TBContratosCTI_LOCATARIOPROFISSAO.Value,[rfReplaceAll]); }

  //DADOS DO IMOVEL.
  M.Text:=StringReplace(M.Text,'|IMO_BAIRRO|',DM2.TBContratosIMO_BAIRRO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_CEP|',DM2.TBContratosIMO_CEP.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_CIDADE|',DM2.TBContratosIMO_CIDADE.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_COMPLEMENTO|',DM2.TBContratosIMO_COMPLEMENTO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_DESCRICAO|',DM2.TBContratosIMO_DESCRICAO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_ENDERECO|',DM2.TBContratosIMO_ENDERECO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_ESTADO|',DM2.TBContratosIMO_ESTADO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|IMO_NUMERO|',DM2.TBContratosIMO_NUMERO.Value,[rfReplaceAll]);

  //DADOS DA EMPRESA.
  M.Text:=StringReplace(M.Text,'|EMP_BAIRRO|',DM.TBEmpresaEMP_BAIRRO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_CEP|',DM.TBEmpresaEMP_CEP.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_CIDADE|',DM.TBEmpresaEMP_CIDADE.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_CNPJ|',DM.TBEmpresaEMP_CNPJ.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_EMAIL|',DM.TBEmpresaEMP_EMAIL.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_ENDERECO|',DM.TBEmpresaEMP_ENDERECO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_ESTADO|',DM.TBEmpresaEMP_ESTADO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_IE|',DM.TBEmpresaEMP_IE.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|EMP_NUMERO|',DM.TBEmpresaEMP_NUMERO.Value,[rfReplaceAll]);
  M.Text:=StringReplace(M.Text,'|DATAEXTENSO|',FormatDateTime('dddddd',Now),[rfReplaceAll]);

  //para memo: M.Text:=StringReplace(M.Text,'|VED_CONDICAOMEMO|',StringReplace(QYMatriculasVED_CONDICAOMEMO.Value,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);
  M.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\ContratoImovel.rtf');
  M.Destroy;
  Screen.Cursor:=crDefault;
  ShellExecute(GetDesktopWindow,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\ContratoImovel.rtf'),nil,nil,sw_ShowNormal);
end;

procedure TFormContratos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContratosLoc, FormContratosLoc);
  FormContratosLoc.ShowModal;
  if ContratosLoc.Procurar then
  begin
    DM2.TBContratos.Close;
    DM2.TBContratos.ParamByName('codigo').AsInteger:=FormContratosLoc.QYContratosCTI_CODIGO.Value;
    DM2.TBContratos.Open;
  end;
  FormContratosLoc.Free;
  FormContratosLoc:=nil;
end;

procedure TFormContratos.LocalizarContratoNoContasAPagar1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.LocalizarContratoNoContasAReceber1Click(
  Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormContratos.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisLoc, FormImoveisLoc);
  FormImoveisLoc.ShowModal;
  if ImoveisLoc.Procurar then
  begin
    DM2.TBContratos.Edit;
    DM2.TBContratosCTI_IMOVEL.Value:=FormImoveisLoc.QYImoveisIMO_CODIGO.Value;
    DM2.TBContratosCTI_DESCPARCELAPORC.Value:=0;
    DM2.TBContratosCTI_DESCPARCELAQTDE.Value:=FormImoveisLoc.QYImoveisIMO_DESCQTDE.Value;
    DM2.TBContratosCTI_DESCPARCELAVALOR.Value:=FormImoveisLoc.QYImoveisIMO_DESCVALOR.Value;
    DM2.TBContratosCTI_DESCPORCVECTO.Value:=0;
    DM2.TBContratosCTI_FINALIDADE.Value:=FormImoveisLoc.QYImoveisIMO_FINALIDADE.Value;
    DM2.TBContratosCTI_VALORALUGUEL.Value:=FormImoveisLoc.QYImoveisIMO_VALORALUGUEL.Value;

    DM2.TBContratosCTI_LOCADOR.Value:=FormImoveisLoc.QYImoveisIMO_CLIENTE.Value;
    DM2.TBContratosCTI_LOCADORBAIRRO.Value:=FormImoveisLoc.QYImoveisCLI_BAIRRO.Value;
    DM2.TBContratosCTI_LOCADORCEP.Value:=FormImoveisLoc.QYImoveisCLI_CEP.Value;
    DM2.TBContratosCTI_LOCADORCIDADE.Value:=FormImoveisLoc.QYImoveisCLI_CIDADE.Value;
    DM2.TBContratosCTI_LOCADORCIDADECODIGO.Value:=FormImoveisLoc.QYImoveisCLI_CIDADECODIGO.Value;
    DM2.TBContratosCTI_LOCADORCNPJ.Value:=FormImoveisLoc.QYImoveisCLI_CNPJ.Value;
    DM2.TBContratosCTI_LOCADORCOMPLEMENTO.Value:=FormImoveisLoc.QYImoveisCLI_COMPLEMENTO.Value;
    DM2.TBContratosCTI_LOCADORCPF.Value:=FormImoveisLoc.QYImoveisCLI_CPF.Value;
    DM2.TBContratosCTI_LOCADORENDERECO.Value:=FormImoveisLoc.QYImoveisCLI_ENDERECO.Value;
    DM2.TBContratosCTI_LOCADORESTADO.Value:=FormImoveisLoc.QYImoveisCLI_ESTADO.Value;
    DM2.TBContratosCTI_LOCADORESTADOCIVIL.Value:=FormImoveisLoc.QYImoveisCLI_ESTADOCIVIL.Value;
    DM2.TBContratosCTI_LOCADORNOME.Value:=FormImoveisLoc.QYImoveisCLI_NOME.Value;
    DM2.TBContratosCTI_LOCADORNUMERO.Value:=FormImoveisLoc.QYImoveisCLI_NUMERO.Value;
    DM2.TBContratosCTI_LOCADOR.Value:=FormImoveisLoc.QYImoveisIMO_CLIENTE.Value;

    DM2.TBContratosIMO_DESCRICAO.Value:=FormImoveisLoc.QYImoveisIMO_DESCRICAO.Value;
    DM2.TBContratosIMO_TIPOIMOVEL.Value:=FormImoveisLoc.QYImoveisIMO_TIPOIMOVEL.Value;
    DM2.TBContratosIMO_CEP.Value:=FormImoveisLoc.QYImoveisIMO_CEP.Value;
    DM2.TBContratosIMO_ENDERECO.Value:=FormImoveisLoc.QYImoveisIMO_ENDERECO.Value;
    DM2.TBContratosIMO_NUMERO.Value:=FormImoveisLoc.QYImoveisIMO_NUMERO.Value;
    DM2.TBContratosIMO_COMPLEMENTO.Value:=FormImoveisLoc.QYImoveisIMO_COMPLEMENTO.Value;
    DM2.TBContratosIMO_BAIRRO.Value:=FormImoveisLoc.QYImoveisIMO_BAIRRO.Value;
    DM2.TBContratosIMO_CIDADE.Value:=FormImoveisLoc.QYImoveisIMO_CIDADE.Value;
    DM2.TBContratosIMO_CIDADECODIGO.Value:=FormImoveisLoc.QYImoveisIMO_CIDADECODIGO.Value;
    DM2.TBContratosIMO_ESTADO.Value:=FormImoveisLoc.QYImoveisIMO_ESTADO.Value;
    DM2.TBContratosIMT_DESCRICAO.Value:=FormImoveisLoc.QYImoveisIMT_DESCRICAO.Value;
  end;
  FormImoveisLoc.Free;
  FormImoveisLoc:=nil;
end;

procedure TFormContratos.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormContratos);

finalization
  UnRegisterClass(TFormContratos);

end.

