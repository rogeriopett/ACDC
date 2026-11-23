unit Pontos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Menus, Buttons, DBSBtn, ExtCtrls,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormPontos = class(TForm)
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
    DBText2: TDBText;
    DBText1: TDBText;
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
    N1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    PontuacaoNoPeriodoPorClienteAnalitico1: TMenuItem;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    PontuacaoNoPeriodoPorClienteSintetico1: TMenuItem;
    PngImageList1: TPngImageList;
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure PontuacaoNoPeriodoPorClienteAnalitico1Click(Sender: TObject);
    procedure PontuacaoNoPeriodoPorClienteSintetico1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPontos: TFormPontos;

implementation
uses DataMod, DataMod2, ClientesLoc, Funcoes1, PontosRel, PontosLoc,
  DataModSearch, Main;
{$R *.dfm}

procedure TFormPontos.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPontos.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBPontos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBPontosPTS_CLIENTE.Clear;
    DM2.TBPontosCLI_NOME.Clear;
    DM2.TBPontosPTS_SALDOANTERIOR.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBPontos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBPontosPTS_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBPontosCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DMS.QYClientesCLI_PONTOS.Value;
    end else
    begin
      DM2.TBPontosPTS_CLIENTE.Clear;
      DM2.TBPontosCLI_NOME.Clear;
      DM2.TBPontosPTS_SALDOANTERIOR.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormPontos.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormPontos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPontos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBPontos.Edit;
    DM2.TBPontosPTS_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBPontosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBPontosPTS_SALDOANTERIOR.Value:=FormClientesLoc.QYClientesCLI_PONTOS.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormPontos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBPontos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormPontos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPontos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormPontos);
end;

procedure TFormPontos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPontos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPontosLoc, FormPontosLoc);
  FormPontosLoc.ShowModal;
  if PontosLoc.Procurar then
  begin
    DM2.TBPontos.Close;
    DM2.TBPontos.ParamByName('codigo').AsInteger:=FormPontosLoc.QYPontosPTS_CODIGO.Value;
    DM2.TBPontos.Open;
  end;
  FormPontosLoc.Free;
  FormPontosLoc:=nil;
end;

procedure TFormPontos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormPontosRel, FormPontosRel);
  FormPontosRel.ShowModal;
  FormPontosRel.Free;
  FormPontosRel:=nil;
end;

procedure TFormPontos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormPontos.PontuacaoNoPeriodoPorClienteAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPontosRel, FormPontosRel);
  FormPontosRel.ComboBox1.Enabled:=False;
  FormPontosRel.ComboBox1.ItemIndex:=0;
  FormPontosRel.ComboBox1Change(Self);
  FormPontosRel.ShowModal;
  FormPontosRel.Free;
  FormPontosRel:=nil;
end;

procedure TFormPontos.PontuacaoNoPeriodoPorClienteSintetico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormPontosRel, FormPontosRel);
  FormPontosRel.ComboBox1.Enabled:=False;
  FormPontosRel.ComboBox1.ItemIndex:=1;
  FormPontosRel.ComboBox1Change(Self);
  FormPontosRel.ShowModal;
  FormPontosRel.Free;
  FormPontosRel:=nil;
end;

initialization
  RegisterClass(TFormPontos);

finalization
  UnRegisterClass(TFormPontos);

end.
