unit NfceItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.ComCtrls,
  PngBitBtn, PngSpeedButton;

type
  TFormNfceItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label26: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label115: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label74: TLabel;
    Label24: TLabel;
    Label75: TLabel;
    Label25: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label49: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label30: TLabel;
    Label48: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBEdit22: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit49: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit112: TDBEdit;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label15: TLabel;
    Label68: TLabel;
    SpeedButton24: TPngSpeedButton;
    Label41: TLabel;
    DBEdit7: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit39: TDBEdit;
    TabSheet3: TTabSheet;
    Label69: TLabel;
    SpeedButton23: TPngSpeedButton;
    Label71: TLabel;
    Label27: TLabel;
    Label40: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit64: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    TabSheet4: TTabSheet;
    Label72: TLabel;
    Label70: TLabel;
    SpeedButton25: TPngSpeedButton;
    Label28: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    MainMenu1: TMainMenu;
    Atalhos1: TMenuItem;
    OK1: TMenuItem;
    ValorUnitario1: TMenuItem;
    DescPorc1: TMenuItem;
    DescValor1: TMenuItem;
    PngImageList1: TPngImageList;
    Label8: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesabilitarCampos;
  end;

var
  FormNfceItens: TFormNfceItens;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormNfceItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM.TBNfceNFC_STATUS.Value='F') or (DM.TBNfceNFC_STATUS.Value='C') or (DM.TBNfceNFC_STATUS.Value='I') or (DM.TBNfceNFC_PROTOCOLO.Value<>'') then
  begin
    DM.TBNfeItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormNfceItens.ComponentCount-1 do
    begin
      if (FormNfceItens.Components[I] is TDBEdit) then
      (FormNfceItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormNfceItens.Components[I] is TDBComboBox) then
      (FormNfceItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormNfceItens.Components[I] is TDBMemo) then
      (FormNfceItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormNfceItens.Components[I] is TDBGrid) then
      (FormNfceItens.Components[I] as TDBGrid).Enabled:=False else
      if (FormNfceItens.Components[I] is TSpeedButton) then
      (FormNfceItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormNfceItens.Components[I] is TPngSpeedButton) then
      (FormNfceItens.Components[I] as TPngSpeedButton).Enabled:=False;
    end;
  end;
end;

initialization
  RegisterClass(TFormNfceItens);

finalization
  UnRegisterClass(TFormNfceItens);

end.
