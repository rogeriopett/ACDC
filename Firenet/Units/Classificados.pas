unit Classificados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ComCtrls, Buttons,
  Menus, DBSBtn, ExtCtrls, DB, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, System.UITypes;

type
  TFormClassificados = class(TForm)
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
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    N2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeVeculos1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeVeiculos1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVeculos1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassificados: TFormClassificados;

implementation
uses Main, DataMod, ClientesLoc, VeiculosLoc, ClassificadosLoc, ClassificadosRel,
  Clientes, Veiculos, Funcoes1, DataMod2, DataModSearch;

{$R *.dfm}

procedure TFormClassificados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBClassificados.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormClassificados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassificados.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=UpCase(Key);
end;

procedure TFormClassificados.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormClassificados.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBClassificados.Edit;
    DM2.TBClassificadosCLA_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBClassificadosCLA_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBClassificadosCLA_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBClassificadosCLA_FONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormClassificados.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosLoc, FormVeiculosLoc);
  FormVeiculosLoc.ShowModal;
  if VeiculosLoc.Procurar then
  begin
    DM2.TBClassificados.Edit;
    DM2.TBClassificadosCLA_VEICULO.Value:=FormVeiculosLoc.QYVeiculosVEL_CODIGO.Value;
    DM2.TBClassificadosVEL_DESCRICAO.Value:=FormVeiculosLoc.QYVeiculosVEL_DESCRICAO.Value;
  end;
  FormVeiculosLoc.Free;
  FormVeiculosLoc:=nil;
end;

procedure TFormClassificados.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClassificados.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassificadosLoc, FormClassificadosLoc);
  FormClassificadosLoc.ShowModal;
  if ClassificadosLoc.Procurar then
  begin
    DM2.TBClassificados.Close;
    DM2.TBClassificados.ParamByName('codigo').AsInteger:=FormClassificadosLoc.QYClassificadosCLA_CODIGO.Value;
    DM2.TBClassificados.Open;
  end;
  FormClassificadosLoc.Free;
  FormClassificadosLoc:=nil;
end;

procedure TFormClassificados.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassificadosRel, FormClassificadosRel);
  FormClassificadosRel.ShowModal;
  FormClassificadosRel.Free;
  FormClassificadosRel:=nil;
end;

procedure TFormClassificados.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClassificados.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBClassificados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBClassificadosCLA_CLIENTE.Clear;
    DM2.TBClassificadosCLA_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBClassificados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBClassificadosCLA_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBClassificadosCLA_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBClassificadosCLA_CLIENTE.Clear;
      DM2.TBClassificadosCLA_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormClassificados.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormClassificados.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBClassificados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBClassificadosCLA_VEICULO.Clear;
    DM2.TBClassificadosVEL_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBClassificados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVeiculos.Close;
    DMS.QYVeiculos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVeiculos.Open;
    if not DMS.QYVeiculos.IsEmpty then
    begin
      DM2.TBClassificadosCLA_VEICULO.Value:=DMS.QYVeiculosVEL_CODIGO.Value;
      DM2.TBClassificadosVEL_DESCRICAO.Value:=DMS.QYVeiculosVEL_DESCRICAO.Value;
    end else
    begin
      DM2.TBClassificadosCLA_VEICULO.Clear;
      DM2.TBClassificadosVEL_DESCRICAO.Clear;
      MessageDlg('Veículo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVeiculos.Close;
  end;
end;

procedure TFormClassificados.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormClassificados.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClassificados);
end;

procedure TFormClassificados.DBEdit10Enter(Sender: TObject);
begin
  if (DM2.TBClassificados.State in [dsInsert, dsEdit]) and ((DM2.TBClassificadosCLA_ANOMOD.Value='    ') or DM2.TBClassificadosCLA_ANOMOD.IsNull) then
  DM2.TBClassificadosCLA_ANOMOD.Value:=DM2.TBClassificadosCLA_ANOFAB.Value;
end;

procedure TFormClassificados.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormClassificados.CadastroDeVeculos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculos, FormVeiculos);
  FormVeiculos.ShowModal;
  FormVeiculos.Free;
  FormVeiculos:=nil;
end;

procedure TFormClassificados.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClassificados.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormClassificados.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClassificados.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormClassificados.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

initialization
  RegisterClass(TFormClassificados);

finalization
  UnRegisterClass(TFormClassificados);

end.
