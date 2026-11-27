unit Demos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, PngImageList, Menus, DBSBtn, ExtCtrls, DBCtrls, StdCtrls,
  Mask, Buttons, PngSpeedButton, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TFormDemos = class(TForm)
    Label15: TLabel;
    SpeedButton7: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBText15: TDBText;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    DBText12: TDBText;
    DBText13: TDBText;
    SpeedButton4: TPngSpeedButton;
    SpeedButton10: TPngSpeedButton;
    SpeedButton9: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    SpeedButton12: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N6: TMenuItem;
    Baixar1: TMenuItem;
    Reabrir1: TMenuItem;
    N7: TMenuItem;
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
    Relatrios1: TMenuItem;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    QYClientes: TIBQuery;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_NOME: TIBStringField;
    TRClientes: TIBTransaction;
    DemonstracoesAgendadasNoPeriodo1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    QYVendedores: TIBQuery;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TIBStringField;
    TRVendedores: TIBTransaction;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure Baixar1Click(Sender: TObject);
    procedure Reabrir1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure DemonstracoesAgendadasNoPeriodo1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDemos: TFormDemos;

implementation
uses DataMod2, Clientes, Funcoes1, ClientesLoc, DemosLoc, DataMod, DemosRel,
  Vendedores, VendedoresLoc;
{$R *.dfm}

procedure TFormDemos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormDemos.Baixar1Click(Sender: TObject);
begin
  if DM2.TBDemos.IsEmpty then
  begin
    MessageDlg('Nenhum demonstração selecionada.',mtInformation,[mbOk],0);
    Exit;
  end;
  if DM2.TBDemosDEM_STATUS.Value='B' then
  begin
    MessageDlg('Esta demonstração já está baixada.',mtInformation,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Baixar demonstração e teste?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBDemos.Edit;
    DM2.TBDemosDEM_STATUS.Value:='B';
    DM2.TBDemos.Post;
  end;
end;

procedure TFormDemos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormDemos.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormDemos.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBDemos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBDemosDEM_CLIENTE.Clear;
    DM2.TBDemosCLI_NOME.Clear;
    Exit;
  end;
  if (DM2.TBDemos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYClientes.Close;
    QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYClientes.Open;
    if not QYClientes.IsEmpty then
    begin
      DM2.TBDemosDEM_CLIENTE.Value:=QYClientesCLI_CODIGO.Value;
      DM2.TBDemosCLI_NOME.Value:=QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBDemosDEM_CLIENTE.Clear;
      DM2.TBDemosCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYClientes.Close;
  end;
end;

procedure TFormDemos.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormDemos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBDemosDEM_AULADATA.Clear;
end;

procedure TFormDemos.DBEdit7Exit(Sender: TObject);
begin
  if (DM2.TBDemos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBDemosDEM_VENDEDOR.Clear;
    DM2.TBDemosVEN_NOME.Clear;
    Exit;
  end;
  if (DM2.TBDemos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYVendedores.Close;
    QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYVendedores.Open;
    if not QYVendedores.IsEmpty then
    begin
      DM2.TBDemosDEM_VENDEDOR.Value:=QYVendedoresVEN_CODIGO.Value;
      DM2.TBDemosVEN_NOME.Value:=QYVendedoresVEN_NOME.Value;
    end else
    begin
      DM2.TBDemosDEM_VENDEDOR.Clear;
      DM2.TBDemosVEN_NOME.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYVendedores.Close;
  end;
end;

procedure TFormDemos.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormDemos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDemos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBDemos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormDemos.FormCreate(Sender: TObject);
begin
  Label3.Caption:='';
  DM2.DSDemosDataChange(Self,nil);
end;

procedure TFormDemos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDemos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDemosLoc, FormDemosLoc);
  FormDemosLoc.ShowModal;
  if DemosLoc.Procurar then
  begin
    DM2.TBDemos.Close;
    DM2.TBDemos.ParamByName('codigo').AsInteger:=FormDemosLoc.QYDemosDEM_CODIGO.Value;
    DM2.TBDemos.Open;
  end;
  FormDemosLoc.Free;
  FormDemosLoc:=nil;
end;

procedure TFormDemos.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM2.TBDemos.Edit;
    DM2.TBDemosDEM_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM2.TBDemosVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormDemos.Reabrir1Click(Sender: TObject);
begin
  if DM2.TBDemos.IsEmpty then
  begin
    MessageDlg('Nenhum demonstração selecionada.',mtInformation,[mbOk],0);
    Exit;
  end;
  if DM2.TBDemosDEM_STATUS.Value='A' then
  begin
    MessageDlg('Esta demonstração já está em aberto.',mtInformation,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Baixar demonstração e teste?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBDemos.Edit;
    DM2.TBDemosDEM_STATUS.Value:='A';
    DM2.TBDemos.Post;
  end;
end;

procedure TFormDemos.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDemosRel, FormDemosRel);
  FormDemosRel.ShowModal;
  FormDemosRel.Free;
  FormDemosRel:=nil;
end;

procedure TFormDemos.DemonstracoesAgendadasNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDemosRel, FormDemosRel);
  FormDemosRel.ComboBox4.Enabled:=False;
  FormDemosRel.ComboBox4.ItemIndex:=0;
  FormDemosRel.ComboBox4Change(Self);
  FormDemosRel.ShowModal;
  FormDemosRel.Free;
  FormDemosRel:=nil;
end;

procedure TFormDemos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBDemos.Edit;
    DM2.TBDemosDEM_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBDemosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormDemos);

finalization
  UnRegisterClass(TFormDemos);

end.
