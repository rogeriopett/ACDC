unit NfseProtocolo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormNfseProtocolo = class(TForm)
    Label86: TLabel;
    Label87: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    Label85: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label94: TLabel;
    Label91: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    DBEdit76: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit82: TDBEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseProtocolo: TFormNfseProtocolo;

implementation

{$R *.dfm}

uses DataMod;

procedure TFormNfseProtocolo.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma preenchimento dos campos de protocolo e data/hora do protocolo de autorização?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfse.Edit;
    DM.TBNfseNFS_NUMERONOTA.Value:=StrToInt(Edit1.Text);
    DM.TBNfseNFS_PROTOCOLO.Value:=MaskEdit1.Text;
    DM.TBNfseNFS_PROTOCOLODH.Value:=MaskEdit2.Text;
    DM.TBNfse.Post;
    Close;
  end;
end;

procedure TFormNfseProtocolo.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfseProtocolo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfseProtocolo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
