unit CondicoesItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, PngBitBtn, System.UITypes;

type
  TFormCondicoesItens = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondicoesItens: TFormCondicoesItens;

implementation
uses DataMod, DB;
{$R *.dfm}

procedure TFormCondicoesItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCondicoesItens.BitBtn1Click(Sender: TObject);
begin
  if DM.TBCondicoesItensCPI_DIAS.Value<0 then
  begin
    MessageDlg('A quantidade de dias não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit5.SelectAll;
    DBEdit5.SetFocus;
    Exit;
  end;
  DM.TBCondicoesItens.Post;
  Close;
end;

procedure TFormCondicoesItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBCondicoesItens.State in [dsInsert, dsEdit] then
  DM.TBCondicoesItens.Cancel;
end;

procedure TFormCondicoesItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCondicoesItens.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

end.
