unit Projetos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Mask, DBCtrls, Buttons, DBSBtn, ExtCtrls, Grids,
  DBGrids, ComCtrls, ImgList, PngImageList, PngSpeedButton, PngBitBtn,
  System.ImageList, System.UITypes;

type
  TFormProjetos = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Historico1Button: TPngSpeedButton;
    Relatorios2Button: TPngSpeedButton;
    Bevel1: TBevel;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeFuncionarios1Button: TPngSpeedButton;
    BaixarVisita1Button: TPngSpeedButton;
    BaixarOrcamento1Button: TPngSpeedButton;
    CadastroDeProdutos1Button: TPngSpeedButton;
    BaixarApresentacao1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeFuncionarios1: TMenuItem;
    CadastroDeTiposDeProjetos1: TMenuItem;
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
    N2: TMenuItem;
    BaixarVisita1: TMenuItem;
    BaixarOrcamento1: TMenuItem;
    BaixarApresentacao1: TMenuItem;
    N4: TMenuItem;
    Historico1: TMenuItem;
    Bevel5: TBevel;
    Alterarstatusdoprojetopara1: TMenuItem;
    Aprovado1: TMenuItem;
    Naoaprovado1: TMenuItem;
    Aguardando1: TMenuItem;
    Aberto1: TMenuItem;
    Concluido1: TMenuItem;
    AlterarStatusDoProjetoPara1Button: TPngSpeedButton;
    PopupMenu1: TPopupMenu;
    Aberto2: TMenuItem;
    Aprovado2: TMenuItem;
    NaoAprovado2: TMenuItem;
    Aguardando2: TMenuItem;
    Concluido2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SpeedButton3: TPngSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    SpeedButton4: TPngSpeedButton;
    SpeedButton17: TPngSpeedButton;
    Label7: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    DBText4: TDBText;
    Label14: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBEdit17: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit18: TDBEdit;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label30: TLabel;
    DBText8: TDBText;
    Label31: TLabel;
    DBText9: TDBText;
    Label33: TLabel;
    DBText11: TDBText;
    Label39: TLabel;
    DBComboBox3: TDBComboBox;
    InseritItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    Atualizar1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeTiposDeProjetos1Button: TPngSpeedButton;
    FichaDoProjeto1: TMenuItem;
    ProjetosPorClienteEStatus1: TMenuItem;
    ProjetosPorArquitetoEStatus1: TMenuItem;
    ProjetosComVisitaEmAberto1: TMenuItem;
    ProjetosComOrcamentoEmAberto1: TMenuItem;
    ProjetosComApresentacaoEmAberto1: TMenuItem;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    TabSheet3: TTabSheet;
    BitBtn5: TPngBitBtn;
    BitBtn6: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    DBGrid2: TDBGrid;
    Label21: TLabel;
    DBText10: TDBText;
    Label22: TLabel;
    DBText12: TDBText;
    CadastroDeFases1: TMenuItem;
    CadastroDeFases1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBText13: TDBText;
    BaixarProjetoCAD1: TMenuItem;
    BaixarProjetoCAD1Button: TPngSpeedButton;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    ProjetosComProjetoCADEmAberto1: TMenuItem;
    ProjetosPorArquitetoEStatusComFases1: TMenuItem;
    ProjetosPorFase1: TMenuItem;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeFuncionarios1Click(Sender: TObject);
    procedure CadastroDeTiposDeProjetos1Click(Sender: TObject);
    procedure Historico1Click(Sender: TObject);
    procedure BaixarVisita1Click(Sender: TObject);
    procedure BaixarOrcamento1Click(Sender: TObject);
    procedure BaixarApresentacao1Click(Sender: TObject);
    procedure Aprovado1Click(Sender: TObject);
    procedure Naoaprovado1Click(Sender: TObject);
    procedure Aguardando1Click(Sender: TObject);
    procedure Aberto1Click(Sender: TObject);
    procedure Concluido1Click(Sender: TObject);
    procedure AlterarStatusDoProjetoPara1ButtonClick(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure InseritItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure FichaDoProjeto1Click(Sender: TObject);
    procedure ProjetosPorClienteEStatus1Click(Sender: TObject);
    procedure ProjetosPorArquitetoEStatus1Click(Sender: TObject);
    procedure ProjetosComVisitaEmAberto1Click(Sender: TObject);
    procedure ProjetosComOrcamentoEmAberto1Click(Sender: TObject);
    procedure ProjetosComApresentacaoEmAberto1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure CadastroDeFases1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BaixarProjetoCAD1Click(Sender: TObject);
    procedure ProjetosComProjetoCADEmAberto1Click(Sender: TObject);
    procedure ProjetosPorArquitetoEStatusComFases1Click(
      Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure ProjetosPorFase1Click(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetos: TFormProjetos;

implementation
uses DataMod, Main, Funcoes1, ProjetosTiposLoc,
  Clientes, Vendedores, ProjetosTipos, ProjetosHistorico, ProjetosLoc,
  ProjetosItens, Produtos, InputDate, ProjetosRel, ProjetosFases, DataMod2,
  Fases, DataModSearch, FuncoesFirenet;

{$R *.dfm}

procedure TFormProjetos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProjetos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProjetos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProjetos);
end;

procedure TFormProjetos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosLoc, FormProjetosLoc);
  FormProjetosLoc.ShowModal;
  if ProjetosLoc.Procurar then
  begin
    DM2.TBProjetos.Close;
    DM2.TBProjetos.ParamByName('codigo').AsInteger:=FormProjetosLoc.QYProjetosPRJ_CODIGO.Value;
    DM2.TBProjetos.Open;

    DM2.TBProjetosItens.Close;
    DM2.TBProjetosItens.Open;

    DM2.TBProjetosFases.Close;
    DM2.TBProjetosFases.Open;
  end;
  FormProjetosLoc.Free;
  FormProjetosLoc:=nil;
end;

procedure TFormProjetos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProjetos.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProjetos.DBEdit17Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit17,DBEdit18,DM2.TBProjetos);
end;

procedure TFormProjetos.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProjetos.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetos.SpeedButton3Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit17,DBEdit18,DM2.TBProjetos);
end;

procedure TFormProjetos.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProjetos.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit11,nil,DM2.TBProjetos);
end;

procedure TFormProjetos.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormProjetos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetos.SpeedButton4Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit11,nil,DM2.TBProjetos);
end;

procedure TFormProjetos.DBEdit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProjetos.DBEdit12Exit(Sender: TObject);
begin
  if (DM2.TBProjetos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProjetosPRJ_TIPO.Clear;
    DM2.TBProjetosPJT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProjetos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProjetosTipos.Close;
    DMS.QYProjetosTipos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProjetosTipos.Open;
    if not DMS.QYProjetosTipos.IsEmpty then
    begin
      DM2.TBProjetosPRJ_TIPO.Value:=DMS.QYProjetosTiposPJT_CODIGO.Value;
      DM2.TBProjetosPJT_DESCRICAO.Value:=DMS.QYProjetosTiposPJT_DESCRICAO.Value;
    end else
    begin
      DM2.TBProjetosPRJ_TIPO.Clear;
      DM2.TBProjetosPJT_DESCRICAO.Clear;
      MessageDlg('Tipo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProjetosTipos.Close;
  end;
end;

procedure TFormProjetos.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormProjetos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetos.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosTiposLoc, FormProjetosTiposLoc);
  FormProjetosTiposLoc.ShowModal;
  if ProjetosTiposLoc.Procurar then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_TIPO.Value:=FormProjetosTiposLoc.QYProjetosTiposPJT_CODIGO.Value;
    DM2.TBProjetosPJT_DESCRICAO.Value:=FormProjetosTiposLoc.QYProjetosTiposPJT_DESCRICAO.Value;
  end;
  FormProjetosTiposLoc.Free;
  FormProjetosTiposLoc:=nil;
end;

procedure TFormProjetos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormProjetos.CadastroDeFuncionarios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormProjetos.CadastroDeTiposDeProjetos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosTipos, FormProjetosTipos);
  FormProjetosTipos.ShowModal;
  FormProjetosTipos.Free;
  FormProjetosTipos:=nil;
end;

procedure TFormProjetos.Historico1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');

  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  Application.CreateForm(TFormProjetosHistorico, FormProjetosHistorico);
  FormProjetosHistorico.ShowModal;
  FormProjetosHistorico.Free;
  FormProjetosHistorico:=nil;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.BaixarVisita1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSVISITA.Value<>'ABERTO','A visita já foi baixada.');

  if MessageDlg('Dar baixa na visita?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormInputDate, FormInputDate);
    FormInputDate.ShowModal;
    if InputDate.Retorno then
    begin
      DM2.TBProjetos.Edit;
      DM2.TBProjetosPRJ_STATUSVISITA.Value:='OK';
      DM2.TBProjetosPRJ_DTVISITA.Value:=StrToDate(FormInputDate.MaskEdit1.Text,FS);
      DM2.TBProjetos.Post;
      //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
      DM2.TBProjetosHistorico.Insert;
      DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='BAIXA DATA VISITA POR '+DM.UsuarioLogin;
      DM2.TBProjetosHistorico.Post;
      //DM2.TBProjetosHistorico.DataSource:=nil;
    end;
    FormInputDate.Free;
    FormInputDate:=nil;
  end;
end;

procedure TFormProjetos.BaixarOrcamento1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSORCAMENTO.Value<>'ABERTO','O orçamento já foi baixado.');

  if MessageDlg('Dar baixa no orçamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormInputDate, FormInputDate);
    FormInputDate.ShowModal;
    if InputDate.Retorno then
    begin
      DM2.TBProjetos.Edit;
      DM2.TBProjetosPRJ_STATUSORCAMENTO.Value:='OK';
      DM2.TBProjetosPRJ_DTORCAMENTO.Value:=StrToDate(FormInputDate.MaskEdit1.Text,FS);
      DM2.TBProjetos.Post;
      //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
      DM2.TBProjetosHistorico.Insert;
      DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='BAIXA DATA ORCAMENTO POR '+DM.UsuarioLogin;
      DM2.TBProjetosHistorico.Post;
      //DM2.TBProjetosHistorico.DataSource:=nil;
    end;
    FormInputDate.Free;
    FormInputDate:=nil;
  end;
end;

procedure TFormProjetos.BaixarProjetoCAD1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETOCAD.Value<>'ABERTO','O projeto CAD já foi baixado.');

  if MessageDlg('Dar baixa no projeto CAD?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormInputDate, FormInputDate);
    FormInputDate.ShowModal;
    if InputDate.Retorno then
    begin
      DM2.TBProjetos.Edit;
      DM2.TBProjetosPRJ_STATUSPROJETOCAD.Value:='OK';
      DM2.TBProjetosPRJ_DTPROJETOCAD.Value:=StrToDate(FormInputDate.MaskEdit1.Text,FS);
      DM2.TBProjetos.Post;
      //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
      DM2.TBProjetosHistorico.Insert;
      DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='BAIXA DATA PROJETO CAD POR '+DM.UsuarioLogin;
      DM2.TBProjetosHistorico.Post;
      //DM2.TBProjetosHistorico.DataSource:=nil;
    end;
    FormInputDate.Free;
    FormInputDate:=nil;
  end;
end;

procedure TFormProjetos.BaixarApresentacao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSAPRESENTACAO.Value<>'ABERTO','A apresentação já foi baixada.');

  if MessageDlg('Dar baixa na apresentação?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormInputDate, FormInputDate);
    FormInputDate.ShowModal;
    if InputDate.Retorno then
    begin
      DM2.TBProjetos.Edit;
      DM2.TBProjetosPRJ_STATUSAPRESENTACAO.Value:='OK';
      DM2.TBProjetosPRJ_DTAPRESENTACAO.Value:=StrToDate(FormInputDate.MaskEdit1.Text,FS);
      DM2.TBProjetos.Post;
      //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
      DM2.TBProjetosHistorico.Insert;
      DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='BAIXA DATA APRESENTACAO POR '+DM.UsuarioLogin;
      DM2.TBProjetosHistorico.Post;
      //DM2.TBProjetosHistorico.DataSource:=nil;
    end;
    FormInputDate.Free;
    FormInputDate:=nil;
  end;
end;

procedure TFormProjetos.Aberto1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='ABERTO','Este projeto já está com o status ABERTO.');

  DM2.TBProjetos.Edit;
  DM2.TBProjetosPRJ_STATUSPROJETO.Value:='ABERTO';
  DM2.TBProjetosPRJ_STATUSPRODUCAO.Value:='PROJETO';
  DM2.TBProjetos.Post;
  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  DM2.TBProjetosHistorico.Insert;
  DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='ALTERADO O STATUS DO PROJETO PARA ABERTO';
  DM2.TBProjetosHistorico.Post;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.Aprovado1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='APROVADO','Este projeto já está com o status APROVADO.');

  DM2.TBProjetos.Edit;
  DM2.TBProjetosPRJ_STATUSPROJETO.Value:='APROVADO';
  DM2.TBProjetosPRJ_STATUSPRODUCAO.Value:='ABERTO';
  DM2.TBProjetos.Post;
  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  DM2.TBProjetosHistorico.Insert;
  DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='ALTERADO O STATUS DO PROJETO PARA APROVADO';
  DM2.TBProjetosHistorico.Post;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.Naoaprovado1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='NAO APROVADO','Este projeto já está com o status NAO APROVADO.');

  DM2.TBProjetos.Edit;
  DM2.TBProjetosPRJ_STATUSPROJETO.Value:='NAO APROVADO';
  DM2.TBProjetosPRJ_STATUSPRODUCAO.Value:='PROJETO';
  DM2.TBProjetos.Post;
  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  DM2.TBProjetosHistorico.Insert;
  DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='ALTERADO O STATUS DO PROJETO PARA NAO APROVADO';
  DM2.TBProjetosHistorico.Post;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.Aguardando1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='AGUARDANDO','Este projeto já está com o status AGUARDANDO.');

  DM2.TBProjetos.Edit;
  DM2.TBProjetosPRJ_STATUSPROJETO.Value:='AGUARDANDO';
  DM2.TBProjetosPRJ_STATUSPRODUCAO.Value:='PROJETO';
  DM2.TBProjetos.Post;
  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  DM2.TBProjetosHistorico.Insert;
  DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='ALTERADO O STATUS DO PROJETO PARA AGUARDANDO';
  DM2.TBProjetosHistorico.Post;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.Concluido1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Este projeto já está com o status CONCLUIDO.');

  DM2.TBProjetos.Edit;
  DM2.TBProjetosPRJ_STATUSPROJETO.Value:='CONCLUIDO';
  DM2.TBProjetosPRJ_STATUSPRODUCAO.Value:='FINALIZADO';
  DM2.TBProjetos.Post;
  //DM2.TBProjetosHistorico.DataSource:=DM2.DSProjetos;
  DM2.TBProjetosHistorico.Insert;
  DM2.TBProjetosHistoricoPJH_DESCRICAO.Value:='ALTERADO O STATUS DO PROJETO PARA CONCLUIDO';
  DM2.TBProjetosHistorico.Post;
  //DM2.TBProjetosHistorico.DataSource:=nil;
end;

procedure TFormProjetos.AlterarStatusDoProjetoPara1ButtonClick(Sender: TObject);
var MousePos: TPoint;
begin
  GetCursorPos(MousePos);
  PopupMenu1.Popup(MousePos.X,MousePos.Y);
end;

procedure TFormProjetos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTVISITAPREVISTA.Clear;
  end;
end;

procedure TFormProjetos.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTORCAMENTOPREVISTO.Clear;
  end;
end;

procedure TFormProjetos.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTAPRESENTACAOPREVISTA.Clear;
  end;
end;

procedure TFormProjetos.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTPROJETOCADPREVISTO.Clear;
  end;
end;

procedure TFormProjetos.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTPROJETOCAD.Clear;
  end;
end;

procedure TFormProjetos.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTENTREGAPREVISTA.Clear;
  end;
end;

procedure TFormProjetos.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTENTREGA.Clear;
  end;
end;

procedure TFormProjetos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTVISITA.Clear;
  end;
end;

procedure TFormProjetos.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTORCAMENTO.Clear;
  end;
end;

procedure TFormProjetos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBProjetos.Edit;
    DM2.TBProjetosPRJ_DTAPRESENTACAO.Clear;
  end;
end;

procedure TFormProjetos.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluído.');

  DM2.TBProjetosItens.Insert;
  Application.CreateForm(TFormProjetosItens, FormProjetosItens);
  FormProjetosItens.ShowModal;
  FormProjetosItens.Free;
  FormProjetosItens:=nil;
end;

procedure TFormProjetos.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetosItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluido.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProjetosItens.Delete;
    DM2.CalcularTotaisProjeto(True); //era true.
  end;
end;

procedure TFormProjetos.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetosItens.IsEmpty,'Não existe nenhum item para editar.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluído.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBProjetosItensPJI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM2.TBProjetosItens.Edit;
  Application.CreateForm(TFormProjetosItens, FormProjetosItens);
  FormProjetosItens.ShowModal;
  FormProjetosItens.Free;
  FormProjetosItens:=nil;
end;

procedure TFormProjetos.BitBtn3Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluído.');

  if MessageDlg('Deseja atualizar os preços conforme a tabela '+DM2.TBProjetosPRJ_TABELAPRECO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM2.TBProjetos.State in [dsInsert, dsEdit] then
    DM2.TBProjetos.Post;
    DM2.TBProjetos.DisableControls;
    DM2.TBProjetosItens.DisableControls;
    DM2.TBProjetosItens.First;
    while not DM2.TBProjetosItens.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBProjetosItensPJI_PRODUTO.Value;
      DM.TBProdutos.Open;
      DM2.TBProjetosItens.Edit;
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='V' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='1' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='2' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='3' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='4' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='5' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='6' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
      DM2.TBProjetosItens.Post;
      DM2.TBProjetosItens.Next;
    end;
    DM2.TBProjetosItens.EnableControls;
    DM2.TBProjetos.EnableControls;
  end;
end;

procedure TFormProjetos.InseritItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormProjetos.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormProjetos.Atualizar1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn3.Click;
end;

procedure TFormProjetos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01,02: begin
          if DM2.TBProjetos.State in [dsInsert, dsEdit] then
          try
            DM2.TBProjetos.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormProjetos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormProjetos.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormProjetos.FichaDoProjeto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=0;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosPorClienteEStatus1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=1;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosPorArquitetoEStatus1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=2;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosComVisitaEmAberto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=3;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosComProjetoCADEmAberto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=4;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosComOrcamentoEmAberto1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=5;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosComApresentacaoEmAberto1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=6;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosPorArquitetoEStatusComFases1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=7;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.ProjetosPorFase1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosRel, FormProjetosRel);
  FormProjetosRel.ComboBox1.Enabled:=False;
  FormProjetosRel.ComboBox1.ItemIndex:=8;
  FormProjetosRel.ComboBox1Change(Self);
  FormProjetosRel.ShowModal;
  FormProjetosRel.Free;
  FormProjetosRel:=nil;
end;

procedure TFormProjetos.BitBtn5Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluído.');

  DM2.TBProjetosFases.Insert;
  Application.CreateForm(TFormProjetosFases, FormProjetosFases);
  FormProjetosFases.ShowModal;
  FormProjetosFases.Free;
  FormProjetosFases:=nil;
end;

procedure TFormProjetos.BitBtn6Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetosFases.IsEmpty,'Não existe nenhuma para excluir.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluido.');

  if MessageDlg('Eliminar a fase selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBProjetosFases.Delete;
end;

procedure TFormProjetos.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBProjetosFases.IsEmpty,'Não existe nenhuma fase para editar.');
  AbortIf(DM2.TBProjetosPRJ_STATUSPROJETO.Value='CONCLUIDO','Projeto já concluído.');

  DM2.TBProjetosFases.Edit;
  Application.CreateForm(TFormProjetosFases, FormProjetosFases);
  FormProjetosFases.ShowModal;
  FormProjetosFases.Free;
  FormProjetosFases:=nil;
end;

procedure TFormProjetos.CadastroDeFases1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFases, FormFases);
  FormFases.ShowModal;
  FormFases.Free;
  FormFases:=nil;
end;

procedure TFormProjetos.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn7.Click;
end;

procedure TFormProjetos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

initialization
  RegisterClass(TFormProjetos);

finalization
  UnRegisterClass(TFormProjetos);

end.
