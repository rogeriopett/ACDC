unit Vendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, DB, Buttons, DBSBtn,
  ExtCtrls, Menus, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormVendedores = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    N1: TMenuItem;
    Relatorios2: TMenuItem;
    Localizar1Button: TPngSpeedButton;
    Relatorios2Button: TPngSpeedButton;
    Bevel1: TBevel;
    Localizar1: TMenuItem;
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
    Label23: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton2: TPngSpeedButton;
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
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit3: TDBEdit;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    N2: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    Label5: TLabel;
    DBText4: TDBText;
    DBEdit6: TDBEdit;
    PngImageList1: TPngImageList;
    Label45: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    CadastroDeContasDeEmails1: TMenuItem;
    CadastroDeContasDeEmails1Button: TPngSpeedButton;
    BancoDeHoras1Button: TPngSpeedButton;
    BancoDeHoras1: TMenuItem;
    N3: TMenuItem;
    Label6: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    ColorDialog1: TColorDialog;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label30: TLabel;
    DBComboBox3: TDBComboBox;
    Label31: TLabel;
    DBComboBox5: TDBComboBox;
    Label32: TLabel;
    DBEdit26: TDBEdit;
    Historicos1: TMenuItem;
    Historicos1Button: TPngSpeedButton;
    AnexosDoVendedor1: TMenuItem;
    AnexosDoVendedor1Button: TPngSpeedButton;
    Label33: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit60Enter(Sender: TObject);
    procedure DBEdit60Exit(Sender: TObject);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeContasDeEmails1Click(Sender: TObject);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure BancoDeHoras1Click(Sender: TObject);
    procedure DBEdit16Click(Sender: TObject);
    procedure Historicos1Click(Sender: TObject);
    procedure AnexosDoVendedor1Click(Sender: TObject);
    procedure DBEdit27Enter(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendedores: TFormVendedores;

implementation
uses ShellApi, DataMod, Main, EnderecosRuasLoc, EnderecosBairrosLoc,
  EnderecosCidadesLoc, EnderecosEstadosLoc, Funcoes1, VendedoresLoc,
  VendedoresFast, Enderecos, DataModSearch, EmailsContasLoc, EmailsContas, Horas, VendedoresHist,
  VendedoresAnexos, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBVendedores.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormVendedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendedores.SpeedButton2Click(Sender: TObject);
begin
  DBEdit25.SetFocus;
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM.TBVendedores.Edit;
    DM.TBVendedoresVEN_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM.TBVendedoresVEN_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM.TBVendedoresVEN_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM.TBVendedoresVEN_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM.TBVendedoresVEN_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBVendedoresVEN_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormVendedores.SpeedButton3Click(Sender: TObject);
begin //Chama Programa de Email Padrão.
  if DM.TBVendedoresVEN_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBVendedoresVEN_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Nenhum endereço de email cadastrado!');
end;

procedure TFormVendedores.SpeedButton4Click(Sender: TObject);
begin //Chama o Navegador Padrão.
  if DM.TBVendedoresVEN_SITE.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBVendedoresVEN_SITE.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Nenhum endereço de site cadastrado!');
end;

procedure TFormVendedores.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendedores.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVendedores);
end;

procedure TFormVendedores.Historicos1Click(Sender: TObject);
begin
  AbortIf(DM.TBVendedores.IsEmpty,'Nenhum vendedor selecionado.');

  Application.CreateForm(TFormVendedoresHist, FormVendedoresHist);
  FormVendedoresHist.ShowModal;
  FormVendedoresHist.Free;
  FormVendedoresHist:=nil;
end;

procedure TFormVendedores.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBVendedores.Edit;
    DM.TBVendedoresVEN_CNPJ.Clear;
  end;
end;

procedure TFormVendedores.DBEdit60Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendedores.DBEdit60Exit(Sender: TObject);
begin
  if (DM.TBVendedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendedoresVEN_EMAILCONTA.Clear;
    DM.TBVendedoresEMC_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYEmailsContas.Close;
    DMS.QYEmailsContas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYEmailsContas.Open;
    if not DMS.QYEmailsContas.IsEmpty then
    begin
      DM.TBVendedoresVEN_EMAILCONTA.Value:=DMS.QYEmailsContasEMC_CODIGO.Value;
      DM.TBVendedoresEMC_NOME.Value:=DMS.QYEmailsContasEMC_NOME.Value;
    end else
    begin
      DM.TBVendedoresVEN_EMAILCONTA.Clear;
      DM.TBVendedoresEMC_NOME.Clear;
      MessageDlg('Conta de email não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYEmailsContas.Close;
  end;
end;

procedure TFormVendedores.DBEdit60KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormVendedores.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendedores.DBEdit4Exit(Sender: TObject);
begin
  if (Length(DM.TBVendedoresVEN_CNPJ.Value)=18) and (DM.TBVendedores.State in [dsInsert,dsEdit]) then
  begin
    if not CNPJAlfa(DM.TBVendedoresVEN_CNPJ.Value) then
    begin
      MessageDlg('CNPJ inválido!',mtError,[mbOk],0);
      DBEdit11.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormVendedores.DBEdit10Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormVendedores.DBEdit10Enter(Sender: TObject);
begin
  if DM.TBVendedores.State in [dsInsert] then
  DBEdit10.SelStart:=6;
end;

procedure TFormVendedores.DBEdit11Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormVendedores.DBEdit11Enter(Sender: TObject);
begin
  if DM.TBVendedores.State in [dsInsert] then
  DBEdit11.SelStart:=6;
end;

procedure TFormVendedores.DBEdit15Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormVendedores.DBEdit15Enter(Sender: TObject);
begin
  if DM.TBVendedores.State in [dsInsert] then
  DBEdit15.SelStart:=6;
end;

procedure TFormVendedores.DBEdit16Click(Sender: TObject);
begin
  if DBEdit16.Enabled and ColorDialog1.Execute then
  DM.TBVendedoresVEN_COR.Value:=IntToStr(ColorToRGB(ColorDialog1.Color));
end;

procedure TFormVendedores.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendedores.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendedores.DBEdit21Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM.TBVendedoresVEN_CEP.Clear;
    DM.TBVendedoresVEN_ENDERECO.Clear;
    DM.TBVendedoresVEN_BAIRRO.Clear;
    DM.TBVendedoresVEN_ESTADO.Clear;
    DM.TBVendedoresVEN_CIDADE.Clear;
    DM.TBVendedoresVEN_CIDADECODIGO.Clear;
    Exit;
  end;
  if (DM.TBVendedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM.TBVendedoresVEN_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM.TBVendedoresVEN_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM.TBVendedoresVEN_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM.TBVendedoresVEN_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM.TBVendedoresVEN_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
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
          DM.TBVendedoresVEN_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM.TBVendedoresVEN_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM.TBVendedoresVEN_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          //DM.TBVendedoresVEN_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM.TBVendedoresVEN_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM.TBVendedoresVEN_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM.TBVendedoresVEN_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM.TBVendedoresVEN_CEP.Clear;
      DM.TBVendedoresVEN_ENDERECO.Clear;
      DM.TBVendedoresVEN_BAIRRO.Clear;
      DM.TBVendedoresVEN_ESTADO.Clear;
      DM.TBVendedoresVEN_CIDADE.Clear;
      DM.TBVendedoresVEN_CIDADECODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormVendedores.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormVendedores.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendedores.DBEdit27Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendedores.DBEdit27Exit(Sender: TObject);
begin
  LocZapInstanciasExit(DBEdit27,DBEdit28,DM.TBVendedores);
end;

procedure TFormVendedores.DBEdit27KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormVendedores.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendedores.AnexosDoVendedor1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM.TBVendedores.IsEmpty,'Nenhum vendedor selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSVENDEDORES.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSVENDEDORES.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM.TBVendedoresVEN_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormVendedoresAnexos, FormVendedoresAnexos);
  FormVendedoresAnexos.Pasta:=Pasta;
  FormVendedoresAnexos.FileListBox1.Directory:=Pasta;
  FormVendedoresAnexos.FileListBox1.ItemIndex:=0;
  FormVendedoresAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormVendedoresAnexos.ShowModal;
  FormVendedoresAnexos.Free;
  FormVendedoresAnexos:=nil;
end;

procedure TFormVendedores.BancoDeHoras1Click(Sender: TObject);
begin
  Application.CreateForm(TFormHoras, FormHoras);
  FormHoras.ShowModal;
  FormHoras.Free;
  FormHoras:=nil;
end;

procedure TFormVendedores.CadastroDeContasDeEmails1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContas, FormEmailsContas);
  FormEmailsContas.ShowModal;
  FormEmailsContas.Free;
  FormEmailsContas:=nil;
end;

procedure TFormVendedores.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormVendedores.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresFast, FormVendedoresFast);
  FormVendedoresFast.QY01.Close;
  FormVendedoresFast.QY01.Open;
  FormVendedoresFast.frxReport1.Variables['TITULO']:=QuotedStr('Vendedores');
  FormVendedoresFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormVendedoresFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormVendedoresFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormVendedoresFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormVendedoresFast.frxReport1.ShowReport;
  FormVendedoresFast.Free;
  FormVendedoresFast:=nil;
end;

procedure TFormVendedores.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM.TBVendedores.Open;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormVendedores.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContasLoc, FormEmailsContasLoc);
  FormEmailsContasLoc.ShowModal;
  if EmailsContasLoc.Procurar then
  begin
    DM.TBVendedores.Edit;
    DM.TBVendedoresVEN_EMAILCONTA.Value:=FormEmailsContasLoc.QYEmailsContasEMC_CODIGO.Value;
    DM.TBVendedoresEMC_NOME.Value:=FormEmailsContasLoc.QYEmailsContasEMC_NOME.Value;
  end;
  FormEmailsContasLoc.Free;
  FormEmailsContasLoc:=nil;
end;

procedure TFormVendedores.PngSpeedButton2Click(Sender: TObject);
begin
  LocZapInstanciasBotao(DBEdit27,DBEdit28,DM.TBVendedores);
end;

initialization
  RegisterClass(TFormVendedores);

finalization
  UnRegisterClass(TFormVendedores);

end.
