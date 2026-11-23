unit Processos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DBSBtn, ExtCtrls, StdCtrls, ImgList, PngImageList, Menus,
  Mask, Buttons, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormProcessos = class(TForm)
    Label2: TLabel;
    SpeedButton4: TPngSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label6: TLabel;
    SpeedButton9: TPngSpeedButton;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit14: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N8: TMenuItem;
    N3: TMenuItem;
    CadastroDeTiposDeAcoes1: TMenuItem;
    CadastroDeAdvogados1: TMenuItem;
    CadastroDeForos1: TMenuItem;
    N2: TMenuItem;
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
    N4: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label22: TLabel;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeForos1Button: TPngSpeedButton;
    CadastroDeTiposDeAcoes1Button: TPngSpeedButton;
    CadastroDeAdvogados1Button: TPngSpeedButton;
    PartesDoProcesso1Button: TPngSpeedButton;
    HistoricoDoProcesso1Button: TPngSpeedButton;
    CustasDoProcesso1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    PartesDoProcesso1: TMenuItem;
    HistoricoDoProcesso1: TMenuItem;
    CustasDoProcesso1: TMenuItem;
    Bevel7: TBevel;
    AnexosDoProcesso1Button: TPngSpeedButton;
    AnexosDoProcesso1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    ProcessosNoPeriodoPorAdvogado1: TMenuItem;
    ProcessosNoPeriodoPorTipoDeAcao1: TMenuItem;
    FichaDoProcesso1: TMenuItem;
    N1: TMenuItem;
    ReabrirProcesso1: TMenuItem;
    ArquivarProcesso1: TMenuItem;
    SuspenderProcesso1: TMenuItem;
    DBText3: TDBText;
    procedure CadastroDeTiposDeAcoes1Click(Sender: TObject);
    procedure CadastroDeAdvogados1Click(Sender: TObject);
    procedure CadastroDeForos1Click(Sender: TObject);
    procedure HistoricoDoProcesso1Click(Sender: TObject);
    procedure CustasDoProcesso1Click(Sender: TObject);
    procedure PartesDoProcesso1Click(Sender: TObject);
    procedure AnexosDoProcesso1Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure FichaDoProcesso1Click(Sender: TObject);
    procedure ProcessosNoPeriodoPorAdvogado1Click(Sender: TObject);
    procedure ProcessosNoPeriodoPorTipoDeAcao1Click(Sender: TObject);
    procedure ArquivarProcesso1Click(Sender: TObject);
    procedure ReabrirProcesso1Click(Sender: TObject);
    procedure SuspenderProcesso1Click(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessos: TFormProcessos;

implementation
uses DataMod, DataMod2, Funcoes1, DB, Main, Vendedores, Foros, Acoes, ProcessosCustas,
  ProcessosHistorico, DataModSearch, AcoesLoc, ForosLoc,
  ProcessosPartes, ProcessosAnexos, ProcessosLoc, ShellAPI, ProcessosRel, ProcessosFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormProcessos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessos.AnexosDoProcesso1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSPROCESSOS.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSPROCESSOS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM2.TBProcessosPCS_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormProcessosAnexos, FormProcessosAnexos);
  FormProcessosAnexos.Pasta:=Pasta;
  FormProcessosAnexos.FileListBox1.Directory:=Pasta;
  FormProcessosAnexos.FileListBox1.ItemIndex:=0;
  FormProcessosAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormProcessosAnexos.ShowModal;
  FormProcessosAnexos.Free;
  FormProcessosAnexos:=nil;
end;

procedure TFormProcessos.ArquivarProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');
  AbortIf(DM2.TBProcessosPCS_STATUS.Value='Q','Este processo já está arquivado.');

  if MessageDlg('Deseja arquivar o processo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProcessos.Edit;
    DM2.TBProcessosPCS_STATUS.Value:='Q';
    DM2.TBProcessos.Post;
    DM2.TBProcessosHistorico.Insert;
    DM2.TBProcessosHistoricoPSH_DESCRICAO.Value:='PROCESSO ARQUIVADO EM '+DateToStr(Date)+' POR '+DM.UsuarioLogin;
    DM2.TBProcessosHistoricoPSH_DATA.Value:=DM.ServerDate;
    DM2.TBProcessosHistorico.Post;
  end;
end;

procedure TFormProcessos.CadastroDeAdvogados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormProcessos.CadastroDeForos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormForos, FormForos);
  FormForos.ShowModal;
  FormForos.Free;
  FormForos:=nil;
end;

procedure TFormProcessos.CadastroDeTiposDeAcoes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoes, FormAcoes);
  FormAcoes.ShowModal;
  FormAcoes.Free;
  FormAcoes:=nil;
end;

procedure TFormProcessos.CustasDoProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');

  Application.CreateForm(TFormProcessosCustas, FormProcessosCustas);
  FormProcessosCustas.ShowModal;
  FormProcessosCustas.Free;
  FormProcessosCustas:=nil;
end;

procedure TFormProcessos.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProcessos.DBEdit17Exit(Sender: TObject);
begin
  if (DM2.TBProcessos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProcessosPCS_ACAO.Clear;
    DM2.TBProcessosACO_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProcessos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYAcoes.Close;
    DMS.QYAcoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYAcoes.Open;
    if not DMS.QYAcoes.IsEmpty then
    begin
      DM2.TBProcessosPCS_ACAO.Value:=DMS.QYAcoesACO_CODIGO.Value;
      DM2.TBProcessosACO_DESCRICAO.Value:=DMS.QYAcoesACO_DESCRICAO.Value;
    end else
    begin
      DM2.TBProcessosPCS_ACAO.Clear;
      DM2.TBProcessosACO_DESCRICAO.Clear;
      MessageDlg('Tipo de ação não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYAcoes.Close;
  end;
end;

procedure TFormProcessos.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormProcessos.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessos.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProcessos.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBProcessos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProcessosPCS_FORO.Clear;
    DM2.TBProcessosFRS_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProcessos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYForos.Close;
    DMS.QYForos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYForos.Open;
    if not DMS.QYForos.IsEmpty then
    begin
      DM2.TBProcessosPCS_FORO.Value:=DMS.QYForosFRS_CODIGO.Value;
      DM2.TBProcessosFRS_NOME.Value:=DMS.QYForosFRS_NOME.Value;
    end else
    begin
      DM2.TBProcessosPCS_FORO.Clear;
      DM2.TBProcessosFRS_NOME.Clear;
      MessageDlg('Foro não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYForos.Close;
  end;
end;

procedure TFormProcessos.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormProcessos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessos.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProcessos.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit6,nil,DM2.TBProcessos);
end;

procedure TFormProcessos.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProcessos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessos.FichaDoProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');

  Application.CreateForm(TFormProcessosFast, FormProcessosFast);
  FormProcessosFast.QY01.Close;
  FormProcessosFast.QY01b.Close;
  FormProcessosFast.QY01c.Close;
  FormProcessosFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
  FormProcessosFast.QY01b.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
  FormProcessosFast.QY01c.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
  FormProcessosFast.QY01.Open;
  FormProcessosFast.QY01b.Open;
  FormProcessosFast.QY01c.Open;
  FormProcessosFast.frxReport1.Variables['TITULO']:=QuotedStr('Ficha do Processo');
  FormProcessosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormProcessosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormProcessosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormProcessosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormProcessosFast.frxReport1.ShowReport;
  FormProcessosFast.Free;
  FormProcessosFast:=nil;
end;

procedure TFormProcessos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBProcessos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProcessos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProcessos);
end;

procedure TFormProcessos.HistoricoDoProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');

  Application.CreateForm(TFormProcessosHistorico, FormProcessosHistorico);
  FormProcessosHistorico.ShowModal;
  FormProcessosHistorico.Free;
  FormProcessosHistorico:=nil;
end;

procedure TFormProcessos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProcessosLoc, FormProcessosLoc);
  FormProcessosLoc.ShowModal;
  if ProcessosLoc.Procurar then
  begin
    DM2.TBProcessos.Close;
    DM2.TBProcessos.ParamByName('codigo').AsInteger:=FormProcessosLoc.QYProcessosPCS_CODIGO.Value;
    DM2.TBProcessos.Open;
  end;
  FormProcessosLoc.Free;
  FormProcessosLoc:=nil;
end;

procedure TFormProcessos.PartesDoProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');

  Application.CreateForm(TFormProcessosPartes, FormProcessosPartes);
  FormProcessosPartes.ShowModal;
  FormProcessosPartes.Free;
  FormProcessosPartes:=nil;
end;

procedure TFormProcessos.PngSpeedButton2Click(Sender: TObject);
var E: TEdit;
begin
  AbortIf(DM2.TBProcessosPCS_NUMEROUNIFICADO.IsNull,'Número não cadastrado.');

  E:=TEdit.Create(Self);
  E.Text:=DM2.TBProcessosPCS_NUMEROUNIFICADO.Value;
  E.ParentWindow:=Application.Handle;
  E.SelectAll;
  E.CopyToClipboard;
  E.Destroy;
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBParametrosPAR_JURIDICOSITE2.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormProcessos.PngSpeedButton3Click(Sender: TObject);
var E: TEdit;
begin
  AbortIf(DM2.TBProcessosPCS_NUMEROANTIGO.IsNull,'Número não cadastrado.');

  E:=TEdit.Create(Self);
  E.Text:=DM2.TBProcessosPCS_NUMEROANTIGO.Value;
  E.ParentWindow:=Application.Handle;
  E.SelectAll;
  E.CopyToClipboard;
  E.Destroy;
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBParametrosPAR_JURIDICOSITE1.Value),nil,nil,sw_ShowNormal);
  //ShellExecute(GetDesktopWindow,'open',PChar('http://esaj.tjsc.jus.br/cpopg/open.do'),nil,nil,sw_ShowNormal);
end;

procedure TFormProcessos.PngSpeedButton4Click(Sender: TObject);
var E: TEdit;
begin
  AbortIf(DM2.TBProcessosPCS_NUMEROUNIFICADOFED.IsNull,'Número não cadastrado.');

  E:=TEdit.Create(Self);
  E.Text:=DM2.TBProcessosPCS_NUMEROUNIFICADOFED.Value;
  E.ParentWindow:=Application.Handle;
  E.SelectAll;
  E.CopyToClipboard;
  E.Destroy;
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBParametrosPAR_JURIDICOSITE3.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormProcessos.ReabrirProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');
  AbortIf(DM2.TBProcessosPCS_STATUS.Value='A','Este processo já está aberto.');

  if MessageDlg('Deseja reabrir o processo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProcessos.Edit;
    DM2.TBProcessosPCS_STATUS.Value:='A';
    DM2.TBProcessos.Post;
    DM2.TBProcessosHistorico.Insert;
    DM2.TBProcessosHistoricoPSH_DESCRICAO.Value:='PROCESSO REABERTO EM '+DateToStr(Date)+' POR '+DM.UsuarioLogin;
    DM2.TBProcessosHistoricoPSH_DATA.Value:=DM.ServerDate;
    DM2.TBProcessosHistorico.Post;
  end;
end;

procedure TFormProcessos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProcessosRel, FormProcessosRel);
  FormProcessosRel.ShowModal;
  FormProcessosRel.Free;
  FormProcessosRel:=nil;
end;

procedure TFormProcessos.ProcessosNoPeriodoPorAdvogado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProcessosRel, FormProcessosRel);
  FormProcessosRel.ComboBox4.Enabled:=False;
  FormProcessosRel.ComboBox4.ItemIndex:=1;
  FormProcessosRel.ComboBox4Change(Self);
  FormProcessosRel.ShowModal;
  FormProcessosRel.Free;
  FormProcessosRel:=nil;
end;

procedure TFormProcessos.ProcessosNoPeriodoPorTipoDeAcao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProcessosRel, FormProcessosRel);
  FormProcessosRel.ComboBox4.Enabled:=False;
  FormProcessosRel.ComboBox4.ItemIndex:=2;
  FormProcessosRel.ComboBox4Change(Self);
  FormProcessosRel.ShowModal;
  FormProcessosRel.Free;
  FormProcessosRel:=nil;
end;

procedure TFormProcessos.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoesLoc, FormAcoesLoc);
  FormAcoesLoc.ShowModal;
  if AcoesLoc.Procurar then
  begin
    DM2.TBProcessos.Edit;
    DM2.TBProcessosPCS_ACAO.Value:=FormAcoesLoc.QYAcoesACO_CODIGO.Value;
    DM2.TBProcessosACO_DESCRICAO.Value:=FormAcoesLoc.QYAcoesACO_DESCRICAO.Value;
  end;
  FormAcoesLoc.Free;
  FormAcoesLoc:=nil;
end;

procedure TFormProcessos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormForosLoc, FormForosLoc);
  FormForosLoc.ShowModal;
  if ForosLoc.Procurar then
  begin
    DM2.TBProcessos.Edit;
    DM2.TBProcessosPCS_FORO.Value:=FormForosLoc.QYForosFRS_CODIGO.Value;
    DM2.TBProcessosFRS_NOME.Value:=FormForosLoc.QYForosFRS_NOME.Value;
  end;
  FormForosLoc.Free;
  FormForosLoc:=nil;
end;

procedure TFormProcessos.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit6,nil,DM2.TBProcessos);
end;

procedure TFormProcessos.SuspenderProcesso1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');
  AbortIf(DM2.TBProcessosPCS_STATUS.Value='S','Este processo já está suspenso.');

  if MessageDlg('Deseja arquivar o processo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProcessos.Edit;
    DM2.TBProcessosPCS_STATUS.Value:='S';
    DM2.TBProcessos.Post;
    DM2.TBProcessosHistorico.Insert;
    DM2.TBProcessosHistoricoPSH_DESCRICAO.Value:='PROCESSO SUSPENSO EM '+DateToStr(Date)+' POR '+DM.UsuarioLogin;
    DM2.TBProcessosHistoricoPSH_DATA.Value:=DM.ServerDate;
    DM2.TBProcessosHistorico.Post;
  end;
end;

initialization
  RegisterClass(TFormProcessos);

finalization
  UnRegisterClass(TFormProcessos);

end.
