unit CteRecebido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.Mask, System.UITypes;

type
  TFormCteRecebido = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCteRecebido: TFormCteRecebido;

implementation
uses DataMod, DataMod2;
{$R *.dfm}

procedure TFormCteRecebido.BitBtn1Click(Sender: TObject);
var C: Integer;
begin
  if MessageDlg('Alterar os dados de recebimento do CTe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    C:=DM2.TBCteCTE_CODIGO.Value;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update CTE set CTE_RECEBIDODATA=:data, CTE_RECEBIDOPOR=:recebidopor where CTE_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
    DM.QYAux.ParamByName('recebidopor').AsString:=Edit1.Text;
    DM.QYAux.ParamByName('data').AsDate:=StrToDate(MaskEdit1.Text);
    DM.QYAux.ExecSQL;

    DM2.TBCte.Close;
    DM2.TBCte.ParamByName('codigo').AsInteger:=C;
    DM2.TBCte.Open;
    Close;
  end;
end;

procedure TFormCteRecebido.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCteRecebido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
