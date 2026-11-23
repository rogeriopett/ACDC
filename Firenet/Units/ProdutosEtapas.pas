unit ProdutosEtapas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls;

type
  TFormProdutosEtapas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    EditarRegistro1Button: TDBSpeedButton;
    Bevel5: TBevel;
    EnviarCCe1Button: TPngSpeedButton;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Imprimir1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N2: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBText10: TDBText;
    Label53: TLabel;
    Label59: TLabel;
    DBEdit7: TDBEdit;
    DBText3: TDBText;
    Label34: TLabel;
    SpeedButton7: TPngSpeedButton;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    CadastrodeEtapas1: TMenuItem;
    N3: TMenuItem;
    procedure Imprimir1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CadastrodeEtapas1Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosEtapas: TFormProdutosEtapas;

implementation
uses DataMod, Funcoes1, Etapas, DataModSearch, EtapasLoc, Main;
{$R *.dfm}

procedure TFormProdutosEtapas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosEtapas.CadastrodeEtapas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtapas, FormEtapas);
  FormEtapas.ShowModal;
  FormEtapas.Free;
  FormEtapas:=nil;
end;

procedure TFormProdutosEtapas.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutosEtapas.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBClientes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBProdutosEtapasPET_ETAPA.Clear;
    DM.TBProdutosEtapasETP_DESCRICAO.Clear;
    DM.TBProdutosEtapasETP_TEMPO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBProdutosEtapas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYEtapas.Close;
    DMS.QYEtapas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYEtapas.Open;
    if not DMS.QYEtapas.IsEmpty then
    begin
      DM.TBProdutosEtapasPET_ETAPA.Value:=DMS.QYEtapasETP_CODIGO.Value;
      DM.TBProdutosEtapasETP_DESCRICAO.Value:=DMS.QYEtapasETP_DESCRICAO.Value;
      DM.TBProdutosEtapasETP_SIGLA.Value:=DMS.QYEtapasETP_SIGLA.Value;
      DM.TBProdutosEtapasETP_TEMPO.Value:=DMS.QYEtapasETP_TEMPO.Value;
    end else
    begin
      DM.TBProdutosEtapasPET_ETAPA.Clear;
      DM.TBProdutosEtapasETP_DESCRICAO.Clear;
      DM.TBProdutosEtapasETP_SIGLA.Clear;
      DM.TBProdutosEtapasETP_TEMPO.Clear;
      MessageDlg('Etapa não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYEtapas.Close;
  end;
end;

procedure TFormProdutosEtapas.DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormProdutosEtapas.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosEtapas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosEtapas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBProdutosEtapas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProdutosEtapas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosEtapas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProdutosEtapas);
end;

procedure TFormProdutosEtapas.Imprimir1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormProdutosEtapas.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtapasLoc, FormEtapasLoc);
  FormEtapasLoc.ShowModal;
  if EtapasLoc.Procurar then
  begin
    DM.TBProdutosEtapas.Edit;
    DM.TBProdutosEtapasPET_ETAPA.Value:=FormEtapasLoc.QYEtapasETP_CODIGO.Value;
    DM.TBProdutosEtapasETP_DESCRICAO.Value:=FormEtapasLoc.QYEtapasETP_DESCRICAO.Value;
    DM.TBProdutosEtapasETP_SIGLA.Value:=FormEtapasLoc.QYEtapasETP_SIGLA.Value;
    DM.TBProdutosEtapasETP_TEMPO.Value:=FormEtapasLoc.QYEtapasETP_TEMPO.Value;
  end;
  FormEtapasLoc.Free;
  FormEtapasLoc:=nil;
end;

initialization
  RegisterClass(TFormProdutosEtapas);

finalization
  UnRegisterClass(TFormProdutosEtapas);

end.
