unit Fornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, DB, Buttons, DBSBtn,
  ExtCtrls, Menus, ComCtrls, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, System.UITypes;

type
  TFormFornecedores = class(TForm)
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
    DBText2: TDBText;
    DBText1: TDBText;
    N2: TMenuItem;
    CadastroDeRamosDeAtividades1: TMenuItem;
    CadastroDeRamosDeAtividades1Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    Fornecedores1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    SpeedButton2: TPngSpeedButton;
    Label3: TLabel;
    Label34: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton8: TPngSpeedButton;
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
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    Label46: TLabel;
    DBEdit42: TDBEdit;
    Label47: TLabel;
    DBEdit43: TDBEdit;
    Label48: TLabel;
    DBEdit44: TDBEdit;
    Label49: TLabel;
    DBEdit45: TDBEdit;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    CadastroDeEnderecos1: TMenuItem;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    SpeedButton12: TPngSpeedButton;
    DBEdit26: TDBEdit;
    Label7: TLabel;
    DBEdit27: TDBEdit;
    Label24: TLabel;
    PngImageList1: TPngImageList;
    HistoricosDoFornecedor1Button: TPngSpeedButton;
    N4: TMenuItem;
    HistoricosDoFornecedor1: TMenuItem;
    FornecedoresPorAtividade1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    DBEdit28: TDBEdit;
    DBEdit31: TDBEdit;
    Label30: TLabel;
    AnexosDoFornecedor1Button: TPngSpeedButton;
    AnexosDoFornecedor1: TMenuItem;
    BuscarDoCadastroDeClientes1: TMenuItem;
    BuscarDoCadastroDeClientes1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1ButtonClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Relatorios2ButtonClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure CadastroDeRamosDeAtividades1Click(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure HistoricosDoFornecedor1Click(Sender: TObject);
    procedure FornecedoresPorAtividade1Click(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure AnexosDoFornecedor1Click(Sender: TObject);
    procedure BuscarDoCadastroDeClientes1Click(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFornecedores: TFormFornecedores;

implementation
uses ShellApi, DataMod, Main, EnderecosRuasLoc, EnderecosBairrosLoc,
  FornecedoresLoc, EnderecosCidadesLoc, EnderecosEstadosLoc, Funcoes1,
  FornecedoresRel, Atividades, Enderecos, FornecedoresHistoricos,
  DataModSearch, ConsultarCNPJ, ConsultarCPF, FornecedoresAnexos, ClientesLoc, FuncoesFirenet;
{$R *.dfm}

procedure TFormFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBFornecedores.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFornecedores.Localizar1ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM.TBFornecedores.Close;
    DM.TBFornecedores.ParamByName('codigo').AsInteger:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
    DM.TBFornecedores.Open;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormFornecedores.SpeedButton2Click(Sender: TObject);
begin
  DBEdit25.SetFocus;
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM.TBFornecedores.Edit;
    DM.TBFornecedoresFOR_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM.TBFornecedoresFOR_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM.TBFornecedoresFOR_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM.TBFornecedoresFOR_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM.TBFornecedoresFOR_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBFornecedoresFOR_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormFornecedores.SpeedButton3Click(Sender: TObject);
begin //Chama Programa de Email Padrão.
  if DM.TBFornecedoresFOR_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBFornecedoresFOR_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Primeiro endereço de email não cadastrado!');
end;

procedure TFormFornecedores.SpeedButton4Click(Sender: TObject);
begin //Chama o Navegador Padrão.
  if DM.TBFornecedoresFOR_SITE.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBFornecedoresFOR_SITE.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Nenhum endereço de site cadastrado!');
end;

procedure TFormFornecedores.Relatorios2ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresRel, FormFornecedoresRel);
  FormFornecedoresRel.ShowModal;
  FormFornecedoresRel.Free;
  FormFornecedoresRel:=nil;
end;

procedure TFormFornecedores.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFornecedores.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormFornecedores.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFornecedores);
end;

procedure TFormFornecedores.HistoricosDoFornecedor1Click(Sender: TObject);
begin
  AbortIf(DM.TBFornecedores.IsEmpty,'Nenhum Fornecedor selecionado.');

  Application.CreateForm(TFormFornecedoresHistoricos, FormFornecedoresHistoricos);
  FormFornecedoresHistoricos.ShowModal;
  FormFornecedoresHistoricos.Free;
  FormFornecedoresHistoricos:=nil;
end;

procedure TFormFornecedores.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarCNPJ, FormConsultarCNPJ);
  ConsultarCNPJ.CadastroAtual:='Fornecedores';
  FormConsultarCNPJ.MaskEdit1.Text:=DBEdit4.Text; //DM.TBClientesCLI_CNPJ.Value;
  FormConsultarCNPJ.ShowModal;
  FormConsultarCNPJ.Free;
  FormConsultarCNPJ:=nil;
end;

procedure TFormFornecedores.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarCPF, FormConsultarCPF);
  FormConsultarCPF.CadastroAtual:='Fornecedores';
  FormConsultarCPF.MaskEdit1.Text:=DM.TBFornecedoresFOR_CPF.Value;
  FormConsultarCPF.MaskEdit2.Text:=DateToStr(DM.TBFornecedoresFOR_DTNASC.Value);
  FormConsultarCPF.ShowModal;
  FormConsultarCPF.Free;
  FormConsultarCPF:=nil;
end;

procedure TFormFornecedores.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormFornecedores.DBEdit30Exit(Sender: TObject);
begin
  LocAtividadesExit(DBEdit30,DBEdit29,DM.TBFornecedores);
end;

procedure TFormFornecedores.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormFornecedores.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormFornecedores.SpeedButton7Click(Sender: TObject);
begin
  LocAtividadesBotao(DBEdit30,DBEdit29,DM.TBFornecedores);
end;

procedure TFormFornecedores.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBFornecedores.Edit;
    DM.TBFornecedoresFOR_CNPJ.Clear;
  end;
end;

procedure TFormFornecedores.DBEdit4Exit(Sender: TObject);
begin
  if (Length(DM.TBFornecedoresFOR_CNPJ.Value)=18) and (DM.TBFornecedores.State in [dsInsert,dsEdit]) then
  begin
    if not CNPJAlfa(DM.TBFornecedoresFOR_CNPJ.Value) then
    begin
      MessageDlg('CNPJ inválido!',mtError,[mbOk],0);
      DBEdit4.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormFornecedores.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBFornecedoresFOR_DTNASC.Clear;
end;

procedure TFormFornecedores.SpeedButton8Click(Sender: TObject);
begin
  if DM.TBFornecedoresFOR_EMAIL2.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBFornecedoresFOR_EMAIL2.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Segundo endereço de email não cadastrado!');
end;

procedure TFormFornecedores.CadastroDeRamosDeAtividades1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormAtividades, FormAtividades);
  FormAtividades.ShowModal;
  FormAtividades.Free;
  FormAtividades:=nil;
end;

procedure TFormFornecedores.DBEdit10Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormFornecedores.DBEdit10Enter(Sender: TObject);
begin
  if DM.TBFornecedores.State in [dsInsert] then
  DBEdit10.SelStart:=6;
end;

procedure TFormFornecedores.DBEdit11Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormFornecedores.DBEdit11Enter(Sender: TObject);
begin
  if DM.TBFornecedores.State in [dsInsert] then
  DBEdit11.SelStart:=6;
end;

procedure TFormFornecedores.DBEdit12Exit(Sender: TObject);
begin
  if (Length(DM.TBFornecedoresFOR_CPF.Value)=14) and (DM.TBFornecedores.State in [dsInsert,dsEdit]) then
  begin
    if not Cpf(DM.TBFornecedoresFOR_CPF.Value) then
    begin
      MessageDlg('CPF inválido!',mtError,[mbOk],0);
      DBEdit12.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormFornecedores.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBFornecedores.Edit;
    DM.TBFornecedoresFOR_CPF.Clear;
  end;
end;

procedure TFormFornecedores.DBEdit15Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormFornecedores.DBEdit15Enter(Sender: TObject);
begin
  if DM.TBFornecedores.State in [dsInsert] then
  DBEdit15.SelStart:=6;
end;

procedure TFormFornecedores.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormFornecedores.Fornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresRel, FormFornecedoresRel);
  FormFornecedoresRel.ComboBox2.Enabled:=False;
  FormFornecedoresRel.ComboBox2.ItemIndex:=0;
  FormFornecedoresRel.ComboBox2Change(Self);
  FormFornecedoresRel.ShowModal;
  FormFornecedoresRel.Free;
  FormFornecedoresRel:=nil;
end;

procedure TFormFornecedores.FornecedoresPorAtividade1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresRel, FormFornecedoresRel);
  FormFornecedoresRel.ComboBox2.Enabled:=False;
  FormFornecedoresRel.ComboBox2.ItemIndex:=1;
  FormFornecedoresRel.ComboBox2Change(Self);
  FormFornecedoresRel.ShowModal;
  FormFornecedoresRel.Free;
  FormFornecedoresRel:=nil;
end;

procedure TFormFornecedores.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormFornecedores.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormFornecedores.DBEdit21Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBFornecedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM.TBFornecedoresFOR_CEP.Clear;
    DM.TBFornecedoresFOR_ENDERECO.Clear;
    DM.TBFornecedoresFOR_BAIRRO.Clear;
    DM.TBFornecedoresFOR_ESTADO.Clear;
    DM.TBFornecedoresFOR_CIDADE.Clear;
    DM.TBFornecedoresFOR_CIDADECODIGO.Clear;
    DM.TBFornecedoresFOR_PAIS.Clear;
    DM.TBFornecedoresFOR_PAISCODIGO.Clear;
    Exit;
  end;
  if (DM.TBFornecedores.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM.TBFornecedoresFOR_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM.TBFornecedoresFOR_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM.TBFornecedoresFOR_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM.TBFornecedoresFOR_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM.TBFornecedoresFOR_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
      DM.TBFornecedoresFOR_PAIS.Value:=DMS.QYRuasPAI_NOME.Value;
      DM.TBFornecedoresFOR_PAISCODIGO.Value:=DMS.QYRuasRUA_PAIS.Value;
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
          DM.TBFornecedoresFOR_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM.TBFornecedoresFOR_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM.TBFornecedoresFOR_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM.TBFornecedoresFOR_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM.TBFornecedoresFOR_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM.TBFornecedoresFOR_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
          DM.TBFornecedoresFOR_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
          DM.TBFornecedoresFOR_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_PAIS.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM.TBFornecedoresFOR_CEP.Clear;
      DM.TBFornecedoresFOR_ENDERECO.Clear;
      DM.TBFornecedoresFOR_BAIRRO.Clear;
      DM.TBFornecedoresFOR_ESTADO.Clear;
      DM.TBFornecedoresFOR_CIDADE.Clear;
      DM.TBFornecedoresFOR_CIDADECODIGO.Clear;
      DM.TBFornecedoresFOR_PAIS.Clear;
      DM.TBFornecedoresFOR_PAISCODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormFornecedores.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormFornecedores.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormFornecedores.AnexosDoFornecedor1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM.TBFornecedores.IsEmpty,'Nenhum fornecedor selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSFORNECEDORES.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSFORNECEDORES.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM.TBFornecedoresFOR_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormFornecedoresAnexos, FormFornecedoresAnexos);
  FormFornecedoresAnexos.Pasta:=Pasta;
  FormFornecedoresAnexos.FileListBox1.Directory:=Pasta;
  FormFornecedoresAnexos.FileListBox1.ItemIndex:=0;
  FormFornecedoresAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormFornecedoresAnexos.ShowModal;
  FormFornecedoresAnexos.Free;
  FormFornecedoresAnexos:=nil;
end;

procedure TFormFornecedores.BuscarDoCadastroDeClientes1Click(Sender: TObject);
begin
  AbortIf(DM.TBFornecedores.State in [dsInsert, dsEdit],'Salve ou cancele a edição antes de buscar os dados do cadastro de clientes.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    //verificar se já existe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from FORNECEDORES where (FOR_CNPJ<>'''' and FOR_CNPJ=:cnpj) or (FOR_CPF<>'''' and FOR_CPF=:cpf) or FOR_NOME=:nome');
    DM.QYAux.ParamByName('cnpj').AsString:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.QYAux.ParamByName('cpf').AsString:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.QYAux.ParamByName('nome').AsString:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
    begin
      MessageDlg('Já existe um fornecedor cadastrado com esses dados. (NOME ou CNPJ ou CPF)',mtError,[mbOk],0);
      FormClientesLoc.Free;
      FormClientesLoc:=nil;
      DM.QYAux.Close;
      Exit;
    end;

    DM.QYAux.Close;
    DM.TBFornecedores.Insert;
    DM.TBFornecedoresFOR_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM.TBFornecedoresFOR_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM.TBFornecedoresFOR_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM.TBFornecedoresFOR_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM.TBFornecedoresFOR_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.TBFornecedoresFOR_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM.TBFornecedoresFOR_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBFornecedoresFOR_EMAIL.Value:=FormClientesLoc.QYClientesCLI_EMAIL.Value;
    DM.TBFornecedoresFOR_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM.TBFornecedoresFOR_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM.TBFornecedoresFOR_FANTASIA.Value:=FormClientesLoc.QYClientesCLI_FANTASIA.Value;
    DM.TBFornecedoresFOR_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM.TBFornecedoresFOR_FONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
    DM.TBFornecedoresFOR_FONE3.Value:=FormClientesLoc.QYClientesCLI_FONE3.Value;
    DM.TBFornecedoresFOR_IE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM.TBFornecedoresFOR_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBFornecedoresFOR_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM.TBFornecedoresFOR_PAIS.Value:=FormClientesLoc.QYClientesCLI_PAIS.Value;
    DM.TBFornecedoresFOR_PAISCODIGO.Value:=FormClientesLoc.QYClientesCLI_PAISCODIGO.Value;
    DM.TBFornecedoresFOR_RG.Value:=FormClientesLoc.QYClientesCLI_RG.Value;
    DM.TBFornecedoresFOR_TIPOPESSOA.Value:=FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value;
    DM.TBFornecedores.Post;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormFornecedores.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormFornecedores.SpeedButton12Click(Sender: TObject);
begin
  if DM.TBFornecedoresFOR_MSN.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBFornecedoresFOR_MSN.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Segundo endereço de email não cadastrado!');
end;

initialization
  RegisterClass(TFormFornecedores);

finalization
  UnRegisterClass(TFormFornecedores);

end.
