unit Tecnicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, DB, Buttons, DBSBtn,
  ExtCtrls, Menus, IBDatabase, IBCustomDataSet, IBQuery;

type
  TFormTecnicos = class(TForm)
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
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TSpeedButton;
    Bevel7: TBevel;
    N1: TMenuItem;
    Relatorios1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
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
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton2: TSpeedButton;
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
    SpeedButton7: TSpeedButton;
    Relatrios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    dbSBtnEdit: TDBSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTecnicos: TFormTecnicos;

implementation
uses ShellApi, DataMod, Main, EnderecosRuasLoc, DataModEnderecos, EnderecosBairrosLoc,
  EnderecosCidadesLoc, EnderecosEstadosLoc, Funcoes1, TecnicosLoc,
  TecnicosQ01;
{$R *.dfm}

procedure TFormTecnicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBTecnicos.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormTecnicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTecnicos.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTecnicosLoc, FormTecnicosLoc);
  FormTecnicosLoc.ShowModal;
  if TecnicosLoc.Procurar then
  begin
    DM.TBTecnicos.Close;
    DM.TBTecnicos.ParamByName('codigo').AsInteger:=FormTecnicosLoc.QYTecnicosTEC_CODIGO.Value;
    DM.TBTecnicos.Open;
  end;
  FormTecnicosLoc.Free;
  FormTecnicosLoc:=nil;
end;

procedure TFormTecnicos.SpeedButton2Click(Sender: TObject);
begin //procura ruas e jah coloca cep e o bairro referente a rua procurada.
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  Application.CreateForm(TFormEnderecosBairrosLoc, FormEnderecosBairrosLoc);
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    FormEnderecosCidadesLoc.Label3.Caption:=IntToStr(FormEnderecosEstadosLoc.QYEstadosEST_CODIGO.Value);
    FormEnderecosCidadesLoc.Label5.Caption:=FormEnderecosEstadosLoc.QYEstadosEST_NOME.Value;
    FormEnderecosCidadesLoc.ShowModal;
  end;
  if EnderecosCidadesLoc.Procurar then
  begin
    FormEnderecosBairrosLoc.Label3.Caption:=IntToStr(FormEnderecosEstadosLoc.QYEstadosEST_CODIGO.Value);
    FormEnderecosBairrosLoc.Label5.Caption:=FormEnderecosEstadosLoc.QYEstadosEST_NOME.Value;
    FormEnderecosBairrosLoc.Label6.Caption:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
    FormEnderecosBairrosLoc.Label8.Caption:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    FormEnderecosBairrosLoc.ShowModal;
  end;
  if EnderecosBairrosLoc.Procurar then
  begin
    FormEnderecosRuasLoc.Label4.Caption:=IntToStr(FormEnderecosEstadosLoc.QYEstadosEST_CODIGO.Value);
    FormEnderecosRuasLoc.Label6.Caption:=FormEnderecosEstadosLoc.QYEstadosEST_NOME.Value;
    FormEnderecosRuasLoc.Label7.Caption:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
    FormEnderecosRuasLoc.Label9.Caption:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    FormEnderecosRuasLoc.Label11.Caption:=IntToStr(FormEnderecosBairrosLoc.QYBairrosBAI_CODIGO.Value);
    FormEnderecosRuasLoc.Label12.Caption:=FormEnderecosBairrosLoc.QYBairrosBAI_NOME.Value;
    FormEnderecosRuasLoc.ShowModal;
  end;
  if EnderecosRuasLoc.Procurar then
  begin //soh entra aki se todos os if's acima forem TRUE.
    DM.TBTecnicos.Edit;
    DM.TBTecnicosTEC_ESTADO.Value:=FormEnderecosEstadosLoc.QYEstadosEST_SIGLA.Value;
    DM.TBTecnicosTEC_CIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    if FormEnderecosRuasLoc.QYRuasRUA_BAIRRO.Value<>FormEnderecosBairrosLoc.QYBairrosBAI_CODIGO.Value then
    begin //procura o bairro novamente se o usuario escolheu todos os bairros.
      FormEnderecosBairrosLoc.QYBairros.Close;
      FormEnderecosBairrosLoc.QYBairros.SQL.Clear;
      FormEnderecosBairrosLoc.QYBairros.SQL.Add('select * from BAIRROS where BAI_CODIGO='+IntToStr(FormEnderecosRuasLoc.QYRuasRUA_BAIRRO.Value));
      FormEnderecosBairrosLoc.QYBairros.Open;
    end;
    DM.TBTecnicosTEC_BAIRRO.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_NOME.Value;
    DM.TBTecnicosTEC_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBTecnicosTEC_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
  FormEnderecosBairrosLoc.Free;
  FormEnderecosBairrosLoc:=nil;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormTecnicos.SpeedButton3Click(Sender: TObject);
begin //Chama Programa de Email Padrão.
  if DM.TBTecnicosTEC_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',pchar('mailto:'+DM.TBTecnicosTEC_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Nenhum endereço de email cadastrado!');
end;

procedure TFormTecnicos.SpeedButton4Click(Sender: TObject);
begin //Chama o Navegador Padrão.
  if DM.TBTecnicosTEC_SITE.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',pchar(DM.TBTecnicosTEC_SITE.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Nenhum endereço de site cadastrado!');
end;

procedure TFormTecnicos.SpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormTecnicosQ01, FormTecnicosQ01);
  FormTecnicosQ01.IBQuery1.Open;
  FormTecnicosQ01.QuickRep1.PreviewModal;
  FormTecnicosQ01.Free;
  FormTecnicosQ01:=nil;
end;

procedure TFormTecnicos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTecnicos.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormTecnicos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormTecnicos);
end;

procedure TFormTecnicos.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBTecnicos.Edit;
    DM.TBTecnicosTEC_CNPJ.Clear;
  end;
end;

procedure TFormTecnicos.DBEdit4Exit(Sender: TObject);
begin
  if (Length(DM.TBTecnicosTEC_CNPJ.Value)=18) and (DM.TBTecnicos.State in [dsInsert,dsEdit]) then
  begin
    if not Cnpj(DM.TBTecnicosTEC_CNPJ.Value) then
    begin
      MessageDlg('CNPJ inválido!',mtError,[mbOk],0);
      DBEdit11.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFormTecnicos.DBEdit10Enter(Sender: TObject);
begin
  if DM.TBTecnicos.State in [dsInsert] then
  DBEdit10.SelStart:=6;
end;

procedure TFormTecnicos.DBEdit11Enter(Sender: TObject);
begin
  if DM.TBTecnicos.State in [dsInsert] then
  DBEdit11.SelStart:=6;
end;

procedure TFormTecnicos.DBEdit15Enter(Sender: TObject);
begin
  if DM.TBTecnicos.State in [dsInsert] then
  DBEdit15.SelStart:=6;
end;

procedure TFormTecnicos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('Modulo_de_Ordens_de_Servico');
end;

end.
