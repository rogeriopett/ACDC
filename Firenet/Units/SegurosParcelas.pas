unit SegurosParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormSegurosParcelas = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBComboBox5: TDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosParcelas: TFormSegurosParcelas;

implementation
uses DataMod2, Funcoes1, DB;
{$R *.dfm}

procedure TFormSegurosParcelas.BitBtn1Click(Sender: TObject);
begin
  DM2.TBSegurosParcelasSGP_COMISSAO.Value:=Decimais((DM2.TBSegurosParcelasSGP_VALOR.AsExtended / 100.0) * DM2.TBSegurosSEG_COMISSAO.AsExtended,2);
  DM2.TBSegurosParcelasSGP_COMISSAOVENDEDOR.Value:=Decimais((DM2.TBSegurosParcelasSGP_COMISSAO.AsExtended / 100.0) * DM2.TBSegurosSEG_COMISSAOVENDEDOR.AsExtended,2);
  DM2.TBSegurosParcelas.Post;
  Close;
end;

procedure TFormSegurosParcelas.BitBtn2Click(Sender: TObject);
begin
  DM2.TBSegurosParcelas.Cancel;
  Close;
end;

procedure TFormSegurosParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBSegurosParcelas.State in [dsInsert, dsEdit] then
  DM2.TBSegurosParcelas.Cancel;
end;

procedure TFormSegurosParcelas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
