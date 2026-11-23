unit Contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, StdCtrls, DBCtrls, Mask,
  ComCtrls, ImgList, PngImageList, PngSpeedButton, DB,
  System.ImageList, System.UITypes;

type
  TFormContas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
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
    DBText2: TDBText;
    DBText1: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SpeedButton1: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Label1: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    SpeedButton4: TPngSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit21: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit22: TDBEdit;
    Label20: TLabel;
    DBEdit25: TDBEdit;
    Bevel2: TBevel;
    CadastroDeBancos1Button: TPngSpeedButton;
    N2: TMenuItem;
    CadastroDeBancos1: TMenuItem;
    DBComboBox2: TDBComboBox;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    DBComboBox3: TDBComboBox;
    Label26: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBComboBox4: TDBComboBox;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    DBComboBox5: TDBComboBox;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    DBEdit40: TDBEdit;
    Label42: TLabel;
    DBEdit41: TDBEdit;
    Label43: TLabel;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    Label44: TLabel;
    DBComboBox8: TDBComboBox;
    Label45: TLabel;
    Label46: TLabel;
    DBComboBox9: TDBComboBox;
    Label47: TLabel;
    DBComboBox10: TDBComboBox;
    Label48: TLabel;
    DBEdit42: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CadastroDeBancos1Click(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20Change(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContas: TFormContas;

implementation
uses DataMod, ContasLoc, ShellApi, ContasFast, Funcoes1, Bancos, DataModSearch, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormContas);
end;

procedure TFormContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBContas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormContas.CadastroDeBancos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBancos, FormBancos);
  FormBancos.ShowModal;
  FormBancos.Free;
  FormBancos:=nil;
end;

procedure TFormContas.DBEdit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormContas.DBEdit15Exit(Sender: TObject);
begin
  if (DM.TBContas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBContasCON_BANCO.Clear;
    DM.TBContasBAN_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBContas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYBancos.Close;
    DMS.QYBancos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYBancos.Open;
    if not DMS.QYBancos.IsEmpty then
    begin
      DM.TBContasCON_BANCO.Value:=DMS.QYBancosBAN_CODIGO.Value;
      DM.TBContasBAN_NOME.Value:=DMS.QYBancosBAN_NOME.Value;
    end else
    begin
      DM.TBContasCON_BANCO.Clear;
      DM.TBContasBAN_NOME.Clear;
      MessageDlg('Banco não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYBancos.Close;
  end;
end;

procedure TFormContas.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormContas.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormContas.DBEdit20Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormContas.DBEdit24Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormContas.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.TBContasCON_DIASPROTESTO.Clear;
end;

procedure TFormContas.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.TBContasCON_DIASBAIXA.Clear;
end;

procedure TFormContas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormContas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar then
  begin
    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=FormContasLoc.QYContasCON_CODIGO.Value;
    DM.TBContas.Open;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure TFormContas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasFast, FormContasFast);
  FormContasFast.QY01.Close;
  FormContasFast.QY01.Open;
  FormContasFast.frxReport1.Variables['TITULO']:=QuotedStr('Contas Bancárias');
  FormContasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormContasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormContasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormContasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormContasFast.frxReport1.ShowReport;
  FormContasFast.Free;
  FormContasFast:=nil;
end;

procedure TFormContas.SpeedButton4Click(Sender: TObject);
begin
  LocBancosBotao(DBEdit15,DBEdit21,DM.TBContas);
end;

procedure TFormContas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormContas);

finalization
  UnRegisterClass(TFormContas);

end.

