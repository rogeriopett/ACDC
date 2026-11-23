unit ProducaoLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, PngBitBtn, ExtCtrls, Data.DB;

type
  TFormProducaoLotes = class(TForm)
    DBGrid2: TDBGrid;
    Label9: TLabel;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoLotes: TFormProducaoLotes;

implementation
uses DataMod, LotesLoc;
{$R *.dfm}

procedure TFormProducaoLotes.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProducaoLotes.DBGrid2DblClick(Sender: TObject);
begin
  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=DM.TBProducaoItensCompPDC_PRODUTO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    if FormLotesLoc.QYLotesLOT_PRODUTO.Value<>DM.TBProducaoItensCompPDC_PRODUTO.Value then
    MessageDlg('O lote selecionado não é do produto selecionado.',mtError,[mbOk],0) else
    begin
      DM.TBProducaoItensComp.Edit;
      DM.TBProducaoItensCompPDC_LOTE.Value:=FormLotesLoc.QYLotesLOT_LOTE.Value;
      DM.TBProducaoItensComp.Post;
    end;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormProducaoLotes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
