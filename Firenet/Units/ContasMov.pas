unit ContasMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Menus, Buttons, DBSBtn, ExtCtrls,
  DB, ImgList, PngImageList,
  PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormContasMov = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    DBEdit29: TDBEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBText3: TDBText;
    DBComboBox2: TDBComboBox;
    N2: TMenuItem;
    CadastroDeContas1: TMenuItem;
    Bevel2: TBevel;
    CadastroDeContas1Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    MovimentacoesPorConta1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Label15: TLabel;
    DBText4: TDBText;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CadastroDeContas1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
    procedure MovimentacoesPorConta1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasMov: TFormContasMov;

implementation
uses DataMod, Main, ContasMovLoc, Contas, ContasMovRel, Funcoes1, DataModSearch, FuncoesFirenet;

{$R *.dfm}

procedure TFormContasMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBContasMov.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormContasMov.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormContasMov.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormContasMov);
end;

procedure TFormContasMov.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasMovLoc, FormContasMovLoc);
  FormContasMovLoc.ShowModal;
  if ContasMovLoc.Procurar then
  begin
    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=FormContasMovLoc.QYContasMovCMO_CONTA.Value;
    DM.TBContas.Open;
    DM.TBContasMov.Close;
    DM.TBContasMov.ParamByName('codigo').AsInteger:=FormContasMovLoc.QYContasMovCMO_CODIGO.Value;
    DM.TBContasMov.Open;
  end;
  FormContasMovLoc.Free;
  FormContasMovLoc:=nil;
end;

procedure TFormContasMov.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasMovRel, FormContasMovRel);
  FormContasMovRel.ShowModal;
  FormContasMovRel.Free;
  FormContasMovRel:=nil;
end;

procedure TFormContasMov.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormContasMov.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormContasMov.DBEdit2Exit(Sender: TObject);
begin
  LocContasExit(DBEdit2,DBEdit29,DM.TBContasMov);
end;

procedure TFormContasMov.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormContasMov.SpeedButton4Click(Sender: TObject);
begin
  LocContasBotao(DBEdit2,DBEdit29,DM.TBContasMov);
end;

procedure TFormContasMov.CadastroDeContas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormContasMov.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormContasMov.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormContasMov.MovimentacoesPorConta1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormContasMovRel, FormContasMovRel);
  FormContasMovRel.ComboBox1.Enabled:=False;
  FormContasMovRel.ComboBox1.ItemIndex:=0;
  //FormContasMovRel.ComboBox1Change(Self);
  FormContasMovRel.ShowModal;
  FormContasMovRel.Free;
  FormContasMovRel:=nil;
end;

initialization
  RegisterClass(TFormContasMov);

finalization
  UnRegisterClass(TFormContasMov);

end.
