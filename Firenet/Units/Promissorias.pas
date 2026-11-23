unit Promissorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, Grids, DBGrids, StdCtrls,
  DBCtrls, Mask, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes;

type
  TFormPromissorias = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Imprimir1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Imprimir1: TMenuItem;
    N2: TMenuItem;
    MultiplicarNota1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    MultiplicarNota1Button: TPngSpeedButton;
    DBText1: TDBText;
    BaixarNota1Button: TPngSpeedButton;
    Bevel2: TBevel;
    BaixarNota1: TMenuItem;
    SpeedButton4: TPngSpeedButton;
    SpeedButton7: TPngSpeedButton;
    SpeedButton8: TPngSpeedButton;
    SpeedButton9: TPngSpeedButton;
    Label23: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    N3: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Label24: TLabel;
    DBText5: TDBText;
    Label25: TLabel;
    DBText6: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure MultiplicarNota1Click(Sender: TObject);
    procedure BaixarNota1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit20Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromissorias: TFormPromissorias;

implementation
uses DataMod, DataMod2, Main, DB, ClientesLoc, PromissoriasLoc, Funcoes1,
  PromissoriasBaixar, PromissoriasMultiplicar, Clientes;
{$R *.dfm}

procedure TFormPromissorias.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPromissorias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPromissorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBPromissorias.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormPromissorias.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormPromissorias);
end;

procedure TFormPromissorias.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPromissoriasLoc, FormPromissoriasLoc);
  FormPromissoriasLoc.Height:=354; //o mesmo form é utilizado pra imprimir.
  FormPromissoriasLoc.BitBtn1.Enabled:=False; //pra nao funcionar com o TAB.
  FormPromissoriasLoc.BitBtn2.Enabled:=False;
  FormPromissoriasLoc.ShowModal;
  if PromissoriasLoc.Procurar then
  begin
    DM2.TBPromissorias.Close;
    DM2.TBPromissorias.ParamByName('codigo').AsInteger:=FormPromissoriasLoc.QYPromissoriasPRM_CODIGO.Value;
    DM2.TBPromissorias.Open;
  end;
  FormPromissoriasLoc.Free;
  FormPromissoriasLoc:=nil;
end;

procedure TFormPromissorias.Imprimir1Click(Sender: TObject);
begin
  //é utilizado o mesmo form pra selecionar as promissorias para imprimir.
  //porém, é mostrado os botões imprimir e cancelar.
  Application.CreateForm(TFormPromissoriasLoc, FormPromissoriasLoc);
  FormPromissoriasLoc.Caption:='Impressão de Notas Promissórias';
  FormPromissoriasLoc.ShowModal;
  FormPromissoriasLoc.Free;
  FormPromissoriasLoc:=nil;
end;

procedure TFormPromissorias.MultiplicarNota1Click(Sender: TObject);
begin
  AbortIf(DM2.TBPromissorias.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM2.TBPromissoriasPRM_STATUS.Value='B','Promissórias baixadas não podem ser multiplicadas.');
  AbortIf(DM2.TBPromissoriasPRM_MATRIZ.Value='N','Somente a promissória inicial pode ser multiplicada.');
  AbortIf(DM2.TBPromissoriasPRM_MULTIPLICADO.Value='S','Esta promissória já foi multiplicada.');

  Application.CreateForm(TFormPromissoriasMultiplicar, FormPromissoriasMultiplicar);
  FormPromissoriasMultiplicar.ShowModal;
  FormPromissoriasMultiplicar.Free;
  FormPromissoriasMultiplicar:=nil;
end;

procedure TFormPromissorias.BaixarNota1Click(Sender: TObject);
begin
  AbortIf(DM2.TBPromissorias.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM2.TBPromissoriasPRM_STATUS.Value='N','Nota promissória já baixada.');

  Application.CreateForm(TFormPromissoriasBaixar, FormPromissoriasBaixar);
  FormPromissoriasBaixar.Edit1.Text:=DM2.TBPromissoriasPRM_VALOR.AsString;
  FormPromissoriasBaixar.ShowModal;
  FormPromissoriasBaixar.Free;
  FormPromissoriasBaixar:=nil;
end;

procedure TFormPromissorias.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_SACADO.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBPromissoriasPRM_SACADOENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBPromissoriasPRM_SACADONUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBPromissoriasPRM_SACADOBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBPromissoriasPRM_SACADOCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBPromissoriasPRM_SACADOFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBPromissoriasPRM_SACADOCNPJ.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormPromissorias.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormPromissorias.DBEdit13Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormPromissorias.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormPromissorias.DBEdit20Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormPromissorias.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_CEDENTE.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBPromissoriasPRM_CEDENTEENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBPromissoriasPRM_CEDENTENUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBPromissoriasPRM_CEDENTEBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBPromissoriasPRM_CEDENTECEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBPromissoriasPRM_CEDENTEFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBPromissoriasPRM_CEDENTECNPJ.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormPromissorias.SpeedButton8Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_AVALISTA1.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBPromissoriasPRM_AVALISTA1CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormPromissorias.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_AVALISTA2.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBPromissoriasPRM_AVALISTA2CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormPromissorias.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton8.Click;
end;

procedure TFormPromissorias.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormPromissorias.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormPromissorias.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormPromissorias);

finalization
  UnRegisterClass(TFormPromissorias);

end.
