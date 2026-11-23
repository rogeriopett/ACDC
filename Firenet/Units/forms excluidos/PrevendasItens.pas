unit PrevendasItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, PngBitBtn,
  PngSpeedButton, Vcl.ExtCtrls;

type
  TFormPrevendasItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label22: TLabel;
    DBText6: TDBText;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit32: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrevendasItens: TFormPrevendasItens;

implementation
uses DataMod, DataModSearch, ProdutosLoc, DB;
{$R *.dfm}

procedure TFormPrevendasItens.BitBtn1Click(Sender: TObject);
begin
  if DM.TBPrevendasItensPRI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  if DM.TBProdutosQtde.IsEmpty then
  begin
    MessageDlg('Não existe almoxarifado cadastrado para este produto.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBPrevendasItens.Post;
  Close;
end;

procedure TFormPrevendasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPrevendasItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisPrevendaItens(False);
//  DM.TBPrevendasItensPRI_VALORTOTAL.Value:=DM.TBPrevendasItensPRI_QUANTIDADE.Value*DM.TBPrevendasItensPRI_VALORUNIT.Value;
end;

procedure TFormPrevendasItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisPrevendaItens(False);
end;

procedure TFormPrevendasItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit1Exit(Sender: TObject);
begin
  if (DM.TBPrevendasItens.State in [dsInsert, dsEdit]) then
  DM.TBPrevendasItensPRI_VALORACRESCIMO.Value:=(((DM.TBPrevendasItensPRI_QUANTIDADE.AsExtended * DM.TBPrevendasItensPRI_VALORUNIT.AsExtended)/100.00)
                                                * DM.TBPrevendasItensPRI_VALORACRESCIMOPORC.Value);
  DM.CalcularTotaisPrevendaItens(False);
end;

procedure TFormPrevendasItens.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit2Exit(Sender: TObject);
begin
  DM.CalcularTotaisPrevendaItens(False);
//  DM.TBPrevendasItensPRI_VALORTOTAL.Value:=DM.TBPrevendasItensPRI_QUANTIDADE.Value*DM.TBPrevendasItensPRI_VALORUNIT.Value;
end;

procedure TFormPrevendasItens.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit3Exit(Sender: TObject);
begin
  if (DM.TBPrevendasItens.State in [dsInsert, dsEdit]) then
  DM.TBPrevendasItensPRI_VALORDESCONTO.Value:=(((DM.TBPrevendasItensPRI_QUANTIDADE.AsExtended * DM.TBPrevendasItensPRI_VALORUNIT.AsExtended)/100.00)
                                               * DM.TBPrevendasItensPRI_VALORDESCONTOPORC.Value);
  DM.CalcularTotaisPrevendaItens(False);
end;

procedure TFormPrevendasItens.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit4Exit(Sender: TObject);
begin
  DM.CalcularTotaisPrevendaItens(False);
end;

procedure TFormPrevendasItens.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPrevendasItens.DBEdit5Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPrevendasItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBPrevendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBPrevendasItensPRI_NOME.Clear;
    DM.TBPrevendasItensPRI_PRODUTO.Clear;
    DM.TBPrevendasItensPRI_VALORUNIT.Clear;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBPrevendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
      //localiza o almoxarifado padrao ... o codigo do produto vem  do datasource desta tabela. (DSProdutos).
      DM.TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value,[]);

      DM.TBPrevendasItensPRI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBPrevendasItensPRI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBPrevendasItensPRI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
    end else
    begin
      DM.TBPrevendasItensPRI_NOME.Clear;
      DM.TBPrevendasItensPRI_PRODUTO.Clear;
      DM.TBPrevendasItensPRI_VALORUNIT.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormPrevendasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormPrevendasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormPrevendasItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPrevendasItens.FormShow(Sender: TObject);
begin
  if (DM.TBPrevendasItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
  begin
    Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
    FormProdutosLoc.ShowModal;
    if ProdutosLoc.Procurar then
    begin
      DM.TBProdutos.Close;
      if ProdutosLoc.CodigoNoFornecedor then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      DM.TBPrevendasItensPRI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBPrevendasItensPRI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBPrevendasItensPRI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
    end;
    FormProdutosLoc.Free;
    FormProdutosLoc:=nil;
  end;
end;

procedure TFormPrevendasItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormPrevendasItens.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBProdutos.Close;
    if ProdutosLoc.CodigoNoFornecedor then
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value else
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Open;

    DM.TBPrevendasItensPRI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBPrevendasItensPRI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBPrevendasItensPRI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

initialization
  RegisterClass(TFormPrevendasItens);

finalization
  UnRegisterClass(TFormPrevendasItens);

end.
