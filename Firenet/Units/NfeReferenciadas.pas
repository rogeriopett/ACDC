unit NfeReferenciadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, Buttons, PngBitBtn, ExtCtrls,
  PngSpeedButton, System.UITypes;

type
  TFormNfeReferenciadas = class(TForm)
    Bevel1: TBevel;
    Label12: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit20: TDBEdit;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    TabSheet3: TTabSheet;
    DBComboBox1: TDBComboBox;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit27: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    SpeedButton17: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeReferenciadas: TFormNfeReferenciadas;
  Cancelar: Boolean = False;
implementation
uses DataMod, DB, EnderecosEstadosLoc, NfeLoc, ConhecimentosLoc, ComprasLoc;
{$R *.dfm}

procedure TFormNfeReferenciadas.BitBtn1Click(Sender: TObject);
begin
//  DM.TBNfeRef.Post;
  Close;
end;

procedure TFormNfeReferenciadas.BitBtn2Click(Sender: TObject);
begin
  Cancelar:=True;
  Close;
end;

procedure TFormNfeReferenciadas.DBComboBox1Change(Sender: TObject);
begin
  case DBComboBox1.ItemIndex of
    00: begin //CF.
          PageControl1.ActivePageIndex:=DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=True;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=False;
          PageControl1.Pages[3].TabVisible:=False;
          PageControl1.Pages[4].TabVisible:=False;
        end;
    01: begin //CTE.
          PageControl1.ActivePageIndex:=DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=True;
          PageControl1.Pages[2].TabVisible:=False;
          PageControl1.Pages[3].TabVisible:=False;
          PageControl1.Pages[4].TabVisible:=False;
        end;
    02: begin //NF.
          PageControl1.ActivePageIndex:=DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=True;
          PageControl1.Pages[3].TabVisible:=False;
          PageControl1.Pages[4].TabVisible:=False;
        end;
    03: begin //NFE.
          PageControl1.ActivePageIndex:=DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=False;
          PageControl1.Pages[3].TabVisible:=True;
          PageControl1.Pages[4].TabVisible:=False;
        end;
    04: begin //NFP.
          PageControl1.ActivePageIndex:=DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=False;
          PageControl1.Pages[3].TabVisible:=False;
          PageControl1.Pages[4].TabVisible:=True;
        end;
  end;
end;

procedure TFormNfeReferenciadas.DBComboBox1Click(Sender: TObject);
begin
  DM.TBNfeRefNFR_CHAVEACESSO.Clear;
  DM.TBNfeRefNFR_SERIE.Clear;
  DM.TBNfeRefNFR_NUMERO.Clear;
  DM.TBNfeRefNFR_ESTADOCODIGO.Clear;
  DM.TBNfeRefNFR_ANOMES.Clear;
  DM.TBNfeRefNFR_COO.Clear;
  DM.TBNfeRefNFR_CNPJEMITENTE.Clear;
  DM.TBNfeRefNFR_CPFEMITENTE.Clear;
  DM.TBNfeRefNFR_IEEMITENTE.Clear;
  DM.TBNfeRefNFR_MODELO.Clear;
end;

procedure TFormNfeReferenciadas.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormNfeReferenciadas.DBEdit11KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeRefNFR_CHAVEACESSO.Clear;
end;

procedure TFormNfeReferenciadas.DBEdit27KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormNfeReferenciadas.DBEdit27KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeRefNFR_CHAVEACESSO.Clear;
end;

procedure TFormNfeReferenciadas.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormNfeReferenciadas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNfeReferenciadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBNfeRef.State in [dsInsert, dsEdit] then
  DM.TBNfeRef.Cancel;
end;

procedure TFormNfeReferenciadas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Cancelar then
  begin
    CanClose:=True;
    Exit;
  end;

  if (DM.TBNfeRefNFR_TIPO .Value='CF') and
     ((DM.TBNfeRefNFR_NUMERO.IsNull) or
      (DM.TBNfeRefNFR_MODELO.IsNull) or
      (DM.TBNfeRefNFR_COO.IsNull)) then
  begin
    MessageDlg('Preencha todos os campos.',mtWarning,[mbOk],0);
    CanClose:=False;
    Exit;
  end else
  if ((DM.TBNfeRefNFR_TIPO.Value='NFE') or (DM.TBNfeRefNFR_TIPO.Value='CTE')) and (DM.TBNfeRefNFR_CHAVEACESSO.IsNull) then
  begin
    MessageDlg('Informe a chave de acesso.',mtWarning,[mbOk],0);
    CanClose:=False;
    Exit;
  end else
  if (DM.TBNfeRefNFR_TIPO.Value='NF') and
     ((DM.TBNfeRefNFR_NUMERO.IsNull) or
      (DM.TBNfeRefNFR_MODELO.IsNull) or
      (DM.TBNfeRefNFR_SERIE.IsNull) or
      (DM.TBNfeRefNFR_ANOMES.IsNull) or
      (DM.TBNfeRefNFR_ESTADOCODIGO.IsNull) or
      (DM.TBNfeRefNFR_CNPJEMITENTE.IsNull)) then
  begin
    MessageDlg('Preencha todos os campos.',mtWarning,[mbOk],0);
    CanClose:=False;
    Exit;
  end else
  if (DM.TBNfeRefNFR_TIPO.Value='NFP') and
     ((DM.TBNfeRefNFR_NUMERO.IsNull) or
      (DM.TBNfeRefNFR_MODELO.IsNull) or
      (DM.TBNfeRefNFR_SERIE.IsNull) or
      (DM.TBNfeRefNFR_ANOMES.IsNull) or
      (DM.TBNfeRefNFR_ESTADOCODIGO.IsNull)) then
  begin
    MessageDlg('Preencha todos os campos.',mtWarning,[mbOk],0);
    CanClose:=False;
    Exit;
  end else
  if (DM.TBNfeRefNFR_CHAVEACESSO.Value<>'') and (DM.TBNfeRefNFR_CHAVEACESSO.Value=DM.TBNfeNFE_CHAVEACESSO.Value) then
  begin
    MessageDlg('A chave de acesso da NFe referenciada não pode ser igual a chave de acesso da NFe.',mtError,[mbOk],0);
    CanClose:=False;
    Exit;
  end else
  DM.TBNfeRef.Post;
end;

procedure TFormNfeReferenciadas.FormCreate(Sender: TObject);
begin
  DBComboBox1Change(Self);
  Cancelar:=False;
end;

procedure TFormNfeReferenciadas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeReferenciadas.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeLoc, FormNfeLoc);
  FormNfeLoc.ShowModal;
  if NfeLoc.Procurar then
  begin
    DM.TBNfeRefNFR_CHAVEACESSO.Value:=FormNfeLoc.QYNfeNFE_CHAVEACESSO.Value;
  end;
  FormNfeLoc.Free;
  FormNfeLoc:=nil;
end;

procedure TFormNfeReferenciadas.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosLoc, FormConhecimentosLoc);
  FormConhecimentosLoc.ShowModal;
  if ConhecimentosLoc.Procurar then
  begin
    DM.TBNfeRefNFR_CHAVEACESSO.Value:=FormConhecimentosLoc.QYCteCTE_CHAVEACESSO.Value;
  end;
  FormConhecimentosLoc.Free;
  FormConhecimentosLoc:=nil;
end;

procedure TFormNfeReferenciadas.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasLoc, FormComprasLoc);
  FormComprasLoc.ShowModal;
  if ComprasLoc.Procurar then
  begin
    DM.TBNfeRefNFR_CHAVEACESSO.Value:=FormComprasLoc.QYComprasCOM_CHAVEACESSO.Value;
  end;
  FormComprasLoc.Free;
  FormComprasLoc:=nil;
end;

procedure TFormNfeReferenciadas.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM.TBNfeRefNFR_ESTADOCODIGO.Value:=FormEnderecosEstadosLoc.QYEstadosESD_CODIGO.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

end.
