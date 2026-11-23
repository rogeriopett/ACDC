unit ProcessosPartes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ImgList, PngImageList, Menus, Grids, DBGrids, Data.DB, System.ImageList,
  System.UITypes;

type
  TFormProcessosPartes = class(TForm)
    DBText5: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label6: TLabel;
    SpeedButton9: TPngSpeedButton;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosPartes: TFormProcessosPartes;

implementation
uses DataMod, DataMod2, Funcoes1, DataModSearch, ClientesLoc, Main;
{$R *.dfm}

procedure TFormProcessosPartes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessosPartes.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProcessosPartes.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBProcessosPartes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProcessosPartesPSP_CLIENTE.Clear;
    DM2.TBProcessosPartesPARTE.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProcessosPartes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBProcessosPartesPSP_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBProcessosPartesPARTE.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBProcessosPartesPSP_CLIENTE.Clear;
      DM2.TBProcessosPartesPARTE.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormProcessosPartes.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProcessosPartes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessosPartes.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProcessosPartes.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBProcessosPartes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProcessosPartesPSP_ADVOGADO.Clear;
    DM2.TBProcessosPartesADVOGADO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProcessosPartes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBProcessosPartesPSP_ADVOGADO.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBProcessosPartesADVOGADO.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBProcessosPartesPSP_ADVOGADO.Clear;
      DM2.TBProcessosPartesADVOGADO.Clear;
      MessageDlg('Advogado não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormProcessosPartes.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProcessosPartes.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessosPartes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessosPartes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProcessosPartes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProcessosPartes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosPartes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProcessosPartes);
end;

procedure TFormProcessosPartes.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBProcessosPartes.Edit;
    DM2.TBProcessosPartesPSP_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBProcessosPartesPARTE.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormProcessosPartes.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBProcessosPartes.Edit;
    DM2.TBProcessosPartesPSP_ADVOGADO.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBProcessosPartesADVOGADO.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormProcessosPartes);

finalization
  UnRegisterClass(TFormProcessosPartes);

end.
