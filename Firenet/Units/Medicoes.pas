unit Medicoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormMedicoes = class(TForm)
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    Relatorios1: TMenuItem;
    Label2: TLabel;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label20: TLabel;
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMedicoes: TFormMedicoes;

implementation
uses Clientes, Funcoes1, DataMod2, DataModSearch, ClientesLoc, DataMod, DB,
  MedicoesLoc, Main;
{$R *.dfm}

procedure TFormMedicoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMedicoes.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormMedicoes.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMedicoes.DBEdit31Exit(Sender: TObject);
begin
  if (DM2.TBMedicoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBMedicoesMED_CLIENTE.Clear;
    DM2.TBMedicoesCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBMedicoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBMedicoesMED_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBMedicoesCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBMedicoesMED_CLIENTE.Clear;
      DM2.TBMedicoesCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormMedicoes.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormMedicoes.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMedicoes.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormMedicoes.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormMedicoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMedicoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBMedicoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMedicoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMedicoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMedicoes);
end;

procedure TFormMedicoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicoesLoc, FormMedicoesLoc);
  FormMedicoesLoc.ShowModal;
  if MedicoesLoc.Procurar then
  begin
    DM2.TBMedicoes.Close;
    DM2.TBMedicoes.ParamByName('codigo').AsInteger:=FormMedicoesLoc.QYMedicoesMED_CODIGO.Value;
    DM2.TBMedicoes.Open;
  end;
  FormMedicoesLoc.Free;
  FormMedicoesLoc:=nil;
end;

procedure TFormMedicoes.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não.',mtInformation,[mbOk],0);
end;

procedure TFormMedicoes.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBMedicoes.Edit;
    DM2.TBMedicoesMED_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBMedicoesCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormMedicoes);

finalization
  UnRegisterClass(TFormMedicoes);

end.
