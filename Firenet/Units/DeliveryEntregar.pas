unit DeliveryEntregar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, PngBitBtn, Vcl.ExtCtrls;

type
  TFormDeliveryEntregar = class(TForm)
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryEntregar: TFormDeliveryEntregar;

implementation
uses VendedoresLoc, DataMod, DataMod2, DB, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryEntregar.BitBtn1Click(Sender: TObject);
begin
  if DM2.TBDeliverysDLV_STATUS.Value='A' then
  MovimentarItensDelivery('S'); //baixa do estoque.

  DM2.TBDeliverysDLV_STATUS.Value:='E';
  DM2.TBDeliverys.Post;
  Close;
end;

procedure TFormDeliveryEntregar.BitBtn2Click(Sender: TObject);
begin
  DM2.TBDeliverys.Cancel;
  Close;
end;

procedure TFormDeliveryEntregar.DBEdit12Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryEntregar.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryEntregar.DBEdit16Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryEntregar.DBEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryEntregar.DBEdit17Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryEntregar.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryEntregar.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryEntregar.DBEdit6Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit6,DBEdit8,nil,DM2.TBDeliverys);
end;

procedure TFormDeliveryEntregar.DBEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormDeliveryEntregar.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryEntregar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBDeliverys.State in [dsInsert, dsEdit] then
  DM2.TBDeliverys.Cancel;
end;

procedure TFormDeliveryEntregar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryEntregar.FormShow(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit6,DBEdit8,nil,DM2.TBDeliverys);
  DBEdit12.SetFocus;
end;

procedure TFormDeliveryEntregar.PngSpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit6,DBEdit8,nil,DM2.TBDeliverys);
end;

initialization
  RegisterClass(TFormDeliveryEntregar);

finalization
  UnRegisterClass(TFormDeliveryEntregar);

end.
