unit NfceProtocolo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  PngBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormNfceProtocolo = class(TForm)
    Label86: TLabel;
    Label87: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    Label85: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label94: TLabel;
    Label92: TLabel;
    Label91: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    DBEdit76: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit82: TDBEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceProtocolo: TFormNfceProtocolo;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfceProtocolo.BitBtn1Click(Sender: TObject);
var Aux, ProtocoloDH: String;
begin
  Aux:=SoNumeros(Edit1.Text);
  AbortIf(Length(Aux)<>18,'Data e Hora do protocolo inválida.'+#13#10+'Informe-a nesse formato: Dia, Mes, Ano, Hora, Minuto, Segundo, Fuso Horario -> DD/MM/AAAA as HH:MM:SS-FF:FF');

  ProtocoloDH:=Copy(Aux,5,4)+'-'; //Ano.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,3,2)+'-';  //Mes.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,1,2)+'T';  //Dia.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,9,2)+':';  //Hora.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,11,2)+':'; //Minuto.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,13,2)+'-'; //Segundo.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,15,2)+':'; //Fuso Hora.
  ProtocoloDH:=ProtocoloDH+Copy(Aux,17,2);     //Fuso Minuto.

  if MessageDlg('Confirma preenchimento dos campos de protocolo e data/hora do protocolo de autorização?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfce.Edit;
    DM.TBNfceNFC_PROTOCOLO.Value:=MaskEdit1.Text;
    DM.TBNfceNFC_PROTOCOLODH.Value:=ProtocoloDH;
    DM.TBNfce.Post;
    Close;
  end;
end;

procedure TFormNfceProtocolo.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceProtocolo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
