unit ProdutosAtualizarGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormProdutosAtualizarGrid = class(TForm)
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label20: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosAtualizarGrid: TFormProdutosAtualizarGrid;

implementation

{$R *.dfm}

procedure TFormProdutosAtualizarGrid.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma a atualização dos campos informados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ModalResult:=mrYes;
  end;
end;

procedure TFormProdutosAtualizarGrid.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosAtualizarGrid.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
