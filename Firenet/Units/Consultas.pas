unit Consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, PngBitBtn;

type
  TFormConsultas = class(TForm)
    DBGrid1: TDBGrid;
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
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label5: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    DBText12: TDBText;
    N1: TMenuItem;
    BaixarConsulta1: TMenuItem;
    ReabrirConsulta1: TMenuItem;
    ReabrirConsulta1Button: TPngSpeedButton;
    BaixarConsulta1Button: TPngSpeedButton;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeMedicos1Button: TPngSpeedButton;
    CadastroDeConvenios1Button: TPngSpeedButton;
    Cadastros1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeMedicos1: TMenuItem;
    CadastroDeConvenios1: TMenuItem;
    CadastroDeTiposDeExames1Button: TPngSpeedButton;
    CadastroDeTiposDeExames1: TMenuItem;
    Anexos1Button: TPngSpeedButton;
    Anexos1: TMenuItem;
    CancelarConsulta1: TMenuItem;
    CancelarConsulta1Button: TPngSpeedButton;
    PngBitBtn3: TPngBitBtn;
    IncluirExame1: TMenuItem;
    Imagens1: TMenuItem;
    N3: TMenuItem;
    Imagens1Button: TPngSpeedButton;
    N4: TMenuItem;
    ConsultasPorMedico1: TMenuItem;
    ConsultasPorSolicitante1: TMenuItem;
    ConsultasPorConvenio1: TMenuItem;
    ConsultasPorCliente1: TMenuItem;
    ImprimirImagens2Colunas1: TMenuItem;
    ImprimirImagens1Coluna1: TMenuItem;
    Label11: TLabel;
    DBEdit14: TDBEdit;
    Label12: TLabel;
    PngSpeedButton5: TPngSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    Agenda1Button: TPngSpeedButton;
    Agenda1: TMenuItem;
    MultiplicarConsulta1: TMenuItem;
    MultiplicarConsulta1Button: TPngSpeedButton;
    ReagendarConsulta1: TMenuItem;
    ReagendarConsulta1Button: TPngSpeedButton;
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1Click(Sender: TObject);
    procedure BaixarConsulta1Click(Sender: TObject);
    procedure ReabrirConsulta1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeMedicos1Click(Sender: TObject);
    procedure CadastroDeConvenios1Click(Sender: TObject);
    procedure CadastroDeTiposDeExames1Click(Sender: TObject);
    procedure Anexos1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure CancelarConsulta1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure IncluirExame1Click(Sender: TObject);
    procedure Imagens1Click(Sender: TObject);
    procedure ConsultasPorCliente1Click(Sender: TObject);
    procedure ConsultasPorMedico1Click(Sender: TObject);
    procedure ConsultasPorSolicitante1Click(Sender: TObject);
    procedure ConsultasPorConvenio1Click(Sender: TObject);
    procedure ImprimirImagens2Colunas1Click(Sender: TObject);
    procedure ImprimirImagens1Coluna1Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Agenda1Click(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure MultiplicarConsulta1Click(Sender: TObject);
    procedure ReagendarConsulta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultas: TFormConsultas;

implementation
uses DataMod, DataMod2, DataModSearch, ConveniosLoc,
  Funcoes1, Main, Clientes, Vendedores, Convenios, ExamesTipos, ConsultasItens,
  ConsultasAnexos, ConsultasImagens, ConsultasLoc, ConsultasRel,
  ConsultasSelecionarHorario, ConsultasLocPlanner, ConsultasFast, FuncoesFirenet, ConsultasMultiplicar,
  ConsultasReagendar;
{$R *.dfm}

procedure TFormConsultas.Agenda1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasLocPlanner, FormConsultasLocPlanner);
  FormConsultasLocPlanner.ShowModal;
  if ConsultasLocPlanner.Procurar then
  begin
    DM2.TBConsultas.Close;
    DM2.TBConsultas.ParamByName('codigo').AsInteger:=FormConsultasLocPlanner.TBConsultasCOS_CODIGO.Value;
    DM2.TBConsultas.Open;
  end;
  FormConsultasLocPlanner.Free;
  FormConsultasLocPlanner:=nil;
end;

procedure TFormConsultas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultas.Anexos1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSCONSULTAS.Value='','O local dos anexos das consultas não está definido em Parâmetros.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSCONSULTAS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM2.TBConsultasCOS_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormConsultasAnexos, FormConsultasAnexos);
  FormConsultasAnexos.Pasta:=Pasta;
  FormConsultasAnexos.FileListBox1.Directory:=Pasta;
  FormConsultasAnexos.FileListBox1.Update;
  FormConsultasAnexos.FileListBox1.ItemIndex:=0;
  FormConsultasAnexos.Label4.Caption:=FormConsultasAnexos.FileListBox1.Directory;
  FormConsultasAnexos.Label4.Hint:=Pasta;
  FormConsultasAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormConsultasAnexos.ShowModal;
  FormConsultasAnexos.Free;
  FormConsultasAnexos:=nil;
end;

procedure TFormConsultas.BaixarConsulta1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='B','Esta consulta já está baixada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='C','Esta consulta já está cancelada.');

  if MessageDlg('Deseja baixar a consulta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_STATUS.Value:='B';
    DM2.TBConsultas.Post;
  end;
end;

procedure TFormConsultas.CadastroDeClientes1Click(Sender: TObject);
begin
  if not DM2.TBConsultas.IsEmpty then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CLIENTE.Value;
    DM.TBClientes.Open;
  end;
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormConsultas.CadastroDeConvenios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConvenios, FormConvenios);
  FormConvenios.ShowModal;
  FormConvenios.Free;
  FormConvenios:=nil;
end;

procedure TFormConsultas.CadastroDeMedicos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormConsultas.CadastroDeTiposDeExames1Click(Sender: TObject);
begin
  Application.CreateForm(TFormExamesTipos, FormExamesTipos);
  FormExamesTipos.ShowModal;
  FormExamesTipos.Free;
  FormExamesTipos:=nil;
end;

procedure TFormConsultas.CancelarConsulta1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='B','Esta consulta já está baixada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='C','Esta consulta já está cancelada.');

  if MessageDlg('Deseja cancelar a consulta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_STATUS.Value:='C';
    DM2.TBConsultas.Post;
    if MessageDlg('Deseja contabilizar uma reposição para o cliente?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CLIENTE.Value;
      DM.TBClientes.Open;

      DM.TBClientes.Edit;
      DM.TBClientesCLI_REPOSICOES.Value:=DM.TBClientesCLI_REPOSICOES.Value+1;
      DM.TBClientes.Post;
    end;
  end;
end;

procedure TFormConsultas.ConsultasPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasRel, FormConsultasRel);
  FormConsultasRel.ComboBox1.Enabled:=False;
  FormConsultasRel.ComboBox1.ItemIndex:=0;
  FormConsultasRel.ShowModal;
  FormConsultasRel.Free;
  FormConsultasRel:=nil;
end;

procedure TFormConsultas.ConsultasPorMedico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasRel, FormConsultasRel);
  FormConsultasRel.ComboBox1.Enabled:=False;
  FormConsultasRel.ComboBox1.ItemIndex:=1;
  FormConsultasRel.ShowModal;
  FormConsultasRel.Free;
  FormConsultasRel:=nil;
end;

procedure TFormConsultas.ConsultasPorSolicitante1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasRel, FormConsultasRel);
  FormConsultasRel.ComboBox1.Enabled:=False;
  FormConsultasRel.ComboBox1.ItemIndex:=2;
  FormConsultasRel.ShowModal;
  FormConsultasRel.Free;
  FormConsultasRel:=nil;
end;

procedure TFormConsultas.ConsultasPorConvenio1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasRel, FormConsultasRel);
  FormConsultasRel.ComboBox1.Enabled:=False;
  FormConsultasRel.ComboBox1.ItemIndex:=3;
  FormConsultasRel.ShowModal;
  FormConsultasRel.Free;
  FormConsultasRel:=nil;
end;

procedure TFormConsultas.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton5.Click;
end;

procedure TFormConsultas.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#08 then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_HORAINICIO.Clear;
  end;
end;

procedure TFormConsultas.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#08 then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_DATAFIM.Clear;
  end;
end;

procedure TFormConsultas.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#08 then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_HORAFIM.Clear;
  end;
end;

procedure TFormConsultas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#08 then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_DATAINICIO.Clear;
  end;
end;

procedure TFormConsultas.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConsultas.DBEdit3Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit3,DBEdit4,DM2.TBConsultas);
end;

procedure TFormConsultas.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormConsultas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultas.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConsultas.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit6,nil,DM2.TBConsultas);
end;

procedure TFormConsultas.DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormConsultas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultas.DBEdit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConsultas.DBEdit7Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit7,DBEdit8,DM2.TBConsultas);
end;

procedure TFormConsultas.DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormConsultas.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultas.DBEdit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConsultas.DBEdit9Exit(Sender: TObject);
begin
  if (DM2.TBConsultas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBConsultasCOS_CONVENIO.Clear;
    DM2.TBConsultasCOV_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBConsultas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYConvenios.Close;
    DMS.QYConvenios.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYConvenios.Open;
    if not DMS.QYConvenios.IsEmpty then
    begin
      DM2.TBConsultasCOS_CONVENIO.Value:=DMS.QYConveniosCOV_CODIGO.Value;
      DM2.TBConsultasCOV_DESCRICAO.Value:=DMS.QYConveniosCOV_DESCRICAO.Value;
    end else
    begin
      DM2.TBConsultasCOS_CONVENIO.Clear;
      DM2.TBConsultasCOV_DESCRICAO.Clear;
      MessageDlg('Convênio não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYConvenios.Close;
  end;
end;

procedure TFormConsultas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormConsultas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultas.DBGrid1DblClick(Sender: TObject);
begin
  if not DM2.TBConsultasItens.IsEmpty then
  PngBitBtn3.Click;
end;

procedure TFormConsultas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  PngBitBtn3.Click;
end;

procedure TFormConsultas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBConsultas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormConsultas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormConsultas);
end;

procedure TFormConsultas.Imagens1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value='','O local das imagens das consultas não está definido em Parâmetros.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM2.TBConsultasCOS_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormConsultasImagens, FormConsultasImagens);
  FormConsultasImagens.Pasta:=Pasta;
  FormConsultasImagens.FileListBox1.Directory:=Pasta;
  FormConsultasImagens.FileListBox1.ItemIndex:=0;
  FormConsultasImagens.FileListBox1Change(nil);
  FormConsultasImagens.OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormConsultasImagens.ShowModal;
  FormConsultasImagens.Free;
  FormConsultasImagens:=nil;
end;

procedure TFormConsultas.ImprimirImagens2Colunas1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');

  Application.CreateForm(TFormConsultasFast, FormConsultasFast);
  FormConsultasFast.QY05.Close;
  FormConsultasFast.QY05.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CODIGO.Value;
  FormConsultasFast.QY05.Open;
  FormConsultasFast.frxReport5.Variables['TITULO']:=QuotedStr('Imagens');
  FormConsultasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormConsultasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormConsultasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormConsultasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormConsultasFast.frxReport5.ShowReport;
  FormConsultasFast.Free;
  FormConsultasFast:=nil;
end;

procedure TFormConsultas.ImprimirImagens1Coluna1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');

  Application.CreateForm(TFormConsultasFast, FormConsultasFast);
  FormConsultasFast.QY05.Close;
  FormConsultasFast.QY05.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CODIGO.Value;
  FormConsultasFast.QY05.Open;
  FormConsultasFast.frxReport6.Variables['TITULO']:=QuotedStr('Imagens');
  FormConsultasFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormConsultasFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormConsultasFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormConsultasFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormConsultasFast.frxReport6.ShowReport;
  FormConsultasFast.Free;
  FormConsultasFast:=nil;
end;

procedure TFormConsultas.IncluirExame1Click(Sender: TObject);
begin
  PngBitBtn1.Click;
end;

procedure TFormConsultas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasLoc, FormConsultasLoc);
  FormConsultasLoc.ShowModal;
  if ConsultasLoc.Procurar then
  begin
    DM2.TBConsultas.Close;
    DM2.TBConsultas.ParamByName('codigo').AsInteger:=FormConsultasLoc.QYConsultasCOS_CODIGO.Value;
    DM2.TBConsultas.Open;

    DM2.TBConsultasItens.Close;
    DM2.TBConsultasItens.Open;
  end;
  FormConsultasLoc.Free;
  FormConsultasLoc:=nil;
end;

procedure TFormConsultas.MultiplicarConsulta1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');

  Application.CreateForm(TFormConsultasMultiplicar, FormConsultasMultiplicar);
  FormConsultasMultiplicar.ShowModal;
  FormConsultasMultiplicar.Free;
  FormConsultasMultiplicar:=nil;
end;

procedure TFormConsultas.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='F','Esta consulta já está finalizada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='C','Esta consulta está cancelada.');

  DM2.TBConsultasItens.Insert;
  Application.CreateForm(TFormConsultasItens, FormConsultasItens);
  FormConsultasItens.ShowModal;
  FormConsultasItens.Free;
  FormConsultasItens:=nil;
end;

procedure TFormConsultas.PngBitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultasItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='F','Esta consulta está finalizada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='C','Esta consulta está cancelada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultasItens.Delete;
    DM2.CalcularTotaisConsulta(True);
  end;
end;

procedure TFormConsultas.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultasItens.IsEmpty,'Não existe nenhum item para alterar.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value<>'A','Esta consulta não está em aberto.');

  DM2.TBConsultasItens.Edit;
  Application.CreateForm(TFormConsultasItens, FormConsultasItens);
  FormConsultasItens.ShowModal;
  FormConsultasItens.Free;
  FormConsultasItens:=nil;
end;

procedure TFormConsultas.PngSpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit3,DBEdit4,DM2.TBConsultas);
end;

procedure TFormConsultas.PngSpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit6,nil,DM2.TBConsultas);
end;

procedure TFormConsultas.PngSpeedButton3Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit7,DBEdit8,DM2.TBConsultas);
end;

procedure TFormConsultas.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormConveniosLoc, FormConveniosLoc);
  FormConveniosLoc.ShowModal;
  if ConveniosLoc.Procurar then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_CONVENIO.Value:=FormConveniosLoc.QYConveniosCOV_CODIGO.Value;
    DM2.TBConsultasCOV_DESCRICAO.Value:=FormConveniosLoc.QYConveniosCOV_DESCRICAO.Value;
  end;
  FormConveniosLoc.Free;
  FormConveniosLoc:=nil;
end;

procedure TFormConsultas.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasSelecionarHorario, FormConsultasSelecionarHorario);
  if not DM2.TBConsultasCOS_DATAINICIO.IsNull then
  FormConsultasSelecionarHorario.MonthCalendar1.Date:=DM2.TBConsultasCOS_DATAINICIO.Value else
  FormConsultasSelecionarHorario.MonthCalendar1.Date:=Date;
  FormConsultasSelecionarHorario.MonthCalendar1DblClick(Self);
  FormConsultasSelecionarHorario.ShowModal;
  FormConsultasSelecionarHorario.Free;
  FormConsultasSelecionarHorario:=nil;
end;

procedure TFormConsultas.ReabrirConsulta1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  //if DM2.TBConsultasCOS_STATUS.Value='C' then
  //begin
  //  MessageDlg('Esta consulta está cancelada e não pode ser reaberta.',mtError,[mbOk],0);
  //  Exit;
  //end;
  AbortIf(DM2.TBConsultasCOS_STATUS.Value='A','Esta consulta já está aberta.');

  if MessageDlg('Deseja reabrir a consulta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_STATUS.Value:='A';
    DM2.TBConsultas.Post;
  end;
end;

procedure TFormConsultas.ReagendarConsulta1Click(Sender: TObject);
begin
  AbortIf(DM2.TBConsultas.IsEmpty,'Nenhuma consulta selecionada.');
  AbortIf(DM2.TBConsultasCOS_STATUS.Value<>'A','Somente consultas em aberto podem ser reagendadas.');

  Application.CreateForm(TFormConsultasReagendar, FormConsultasReagendar);
  FormConsultasReagendar.MaskEdit3.Text:=TimeToStr(DM2.TBConsultasCOS_HORAINICIO.Value);
  FormConsultasReagendar.MaskEdit4.Text:=TimeToStr(DM2.TBConsultasCOS_HORAFIM.Value);
  FormConsultasReagendar.ShowModal;
  FormConsultasReagendar.Free;
  FormConsultasReagendar:=nil;
end;

procedure TFormConsultas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasRel, FormConsultasRel);
  FormConsultasRel.ShowModal;
  FormConsultasRel.Free;
  FormConsultasRel:=nil;
end;

initialization
  RegisterClass(TFormConsultas);

finalization
  UnRegisterClass(TFormConsultas);

end.
