unit EstoqueRecalcular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, PngBitBtn, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEstoqueRecalcular = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    DSRecalculo: TDataSource;
    TBRecalculo: TClientDataSet;
    TBRecalculoEST_CODIGO: TIntegerField;
    TBRecalculoEST_NUMDOCTO: TStringField;
    TBRecalculoEST_DATA: TDateField;
    TBRecalculoEST_TRANSACAO: TStringField;
    TBRecalculoEST_QUANTIDADE: TFMTBCDField;
    TBRecalculoEST_ESTOQUEANTERIOR: TFMTBCDField;
    TBRecalculoEST_ESTOQUEPOSTERIOR: TFMTBCDField;
    TBRecalculoEST_ESTOQUEANTERIORNOVO: TFMTBCDField;
    TBRecalculoEST_ESTOQUEPOSTERIORNOVO: TFMTBCDField;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    QYEstoque: TFDQuery;
    TREstoque: TFDTransaction;
    QYEstoqueEST_CLIENTE: TIntegerField;
    QYEstoqueEST_CODIGO: TIntegerField;
    QYEstoqueEST_DATA: TDateField;
    QYEstoqueEST_DESCRICAO: TStringField;
    QYEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField;
    QYEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField;
    QYEstoqueEST_NUMDOCTO: TStringField;
    QYEstoqueEST_PRODUTO: TIntegerField;
    QYEstoqueEST_QUANTIDADE: TFMTBCDField;
    QYEstoqueEST_TRANSACAO: TStringField;
    QYEstoqueEST_VALORUNIT: TFMTBCDField;
    QYEstoquePRO_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueRecalcular: TFormEstoqueRecalcular;

implementation
uses Funcoes1, DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEstoqueRecalcular.BitBtn1Click(Sender: TObject);
begin
  AbortIf(TBRecalculo.IsEmpty,'Nenhum registro listado.');

  if MessageDlg('Deseja aplicar o recálculo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    TBRecalculo.Last;
    while not TBRecalculo.Bof do
    begin
      if TBRecalculoEST_ESTOQUEANTERIOR.Value <> TBRecalculoEST_ESTOQUEANTERIORNOVO.Value then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update ESTOQUE set EST_ESTOQUEANTERIOR=:anterior, EST_ESTOQUEPOSTERIOR=:posterior where EST_CODIGO=:codigo');
        DM.QYAux.ParamByName('anterior').AsFMTBCD:=TBRecalculoEST_ESTOQUEANTERIORNOVO.Value;
        DM.QYAux.ParamByName('posterior').AsFMTBCD:=TBRecalculoEST_ESTOQUEPOSTERIORNOVO.Value;
        DM.QYAux.ParamByName('codigo').AsInteger:=TBRecalculoEST_CODIGO.Value;
        DM.QYAux.ExecSQL;
      end;
      TBRecalculo.Prior;
    end;
    if CheckBox1.Checked then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=:qtde where PRO_CODIGO=:codigo');
      DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(Label6.Caption);
      DM.QYAux.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
      DM.QYAux.ExecSQL;
    end;
    MessageDlg('Recalculo aplicado com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormEstoqueRecalcular.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEstoqueRecalcular.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEstoqueRecalcular.Edit1Exit(Sender: TObject);
begin
  LocProdutosExit(Edit1,Edit2);
  PngBitBtn1.Click;
end;

procedure TFormEstoqueRecalcular.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormEstoqueRecalcular.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoqueRecalcular.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if not DM.TBProdutos.IsEmpty then
  begin
    Edit1.Text:=DM.TBProdutosPRO_CODIGO.Value.ToString;
    Edit2.Text:=DM.TBProdutosPRO_NOME.Value;
    Label7.Caption:=DM.TBProdutosPRO_ESTOQUEATUAL.AsString;
  end;
end;

procedure TFormEstoqueRecalcular.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEstoqueRecalcular.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormEstoqueRecalcular.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormEstoqueRecalcular.PngBitBtn1Click(Sender: TObject);
var Where: String;
  Primeiro: Boolean;
  SaldoAnt, SaldoPost: Extended;
begin
  AbortIf(Edit2.Text='','Informe o produto.');

  try
    StrToDate(MaskEdit1.Text,FS);
    StrToDate(MaskEdit2.Text,FS);
    except on exception do
    begin
      MessageDlg('Data inválida.',mtError,[mbOk],0);
      MaskEdit1.Clear;
      MaskEdit2.Clear;
      MaskEdit1.SetFocus;
      Exit;
    end;
  end; //try.
  QYEstoque.Active:=False;
  QYEstoque.SQL.Clear;
  Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
  QYEstoque.SQL.Add(
    'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
    'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
    'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where (EST_DATA between '+Where+') '+
    'and EST_PRODUTO='+Edit1.Text+' order by EST_CODIGO');
  QYEstoque.Active:=True;

  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
  DM.TBProdutos.Open;
  Label7.Caption:=DM.TBProdutosPRO_ESTOQUEATUAL.AsString;

  TBRecalculo.EmptyDataSet;
  QYEstoque.First;
  Primeiro:=True;
  while not QYEstoque.Eof do
  begin
    TBRecalculo.Insert;
    TBRecalculoEST_CODIGO.Value:=QYEstoqueEST_CODIGO.Value;
    TBRecalculoEST_NUMDOCTO.Value:=QYEstoqueEST_NUMDOCTO.Value;
    TBRecalculoEST_DATA.Value:=QYEstoqueEST_DATA.Value;
    TBRecalculoEST_TRANSACAO.Value:=QYEstoqueEST_TRANSACAO.Value;
    TBRecalculoEST_QUANTIDADE.Value:=QYEstoqueEST_QUANTIDADE.Value;
    TBRecalculoEST_ESTOQUEANTERIOR.Value:=QYEstoqueEST_ESTOQUEANTERIOR.Value;
    TBRecalculoEST_ESTOQUEPOSTERIOR.Value:=QYEstoqueEST_ESTOQUEPOSTERIOR.Value;
    if Primeiro then
    begin
      Primeiro:=False;
      TBRecalculoEST_ESTOQUEANTERIORNOVO.Value:=QYEstoqueEST_ESTOQUEANTERIOR.Value;
      if QYEstoqueEST_TRANSACAO.Value='E' then
      SaldoPost:=QYEstoqueEST_ESTOQUEANTERIOR.AsExtended + QYEstoqueEST_QUANTIDADE.AsExtended else
      SaldoPost:=QYEstoqueEST_ESTOQUEANTERIOR.AsExtended - QYEstoqueEST_QUANTIDADE.AsExtended;
    end else
    begin
      TBRecalculoEST_ESTOQUEANTERIORNOVO.Value:=SaldoPost;
      if QYEstoqueEST_TRANSACAO.Value='E' then
      SaldoPost:=SaldoPost + QYEstoqueEST_QUANTIDADE.AsExtended else
      SaldoPost:=SaldoPost - QYEstoqueEST_QUANTIDADE.AsExtended;
    end;
    TBRecalculoEST_ESTOQUEPOSTERIORNOVO.Value:=SaldoPost;
    TBRecalculo.Post;

    QYEstoque.Next;
  end;
  QYEstoque.Close;
  Label6.Caption:=SaldoPost.ToString;
  DBGrid1.SetFocus;
end;

procedure TFormEstoqueRecalcular.SpeedButton1Click(Sender: TObject);
begin
  LocProdutosBotao(Edit1,Edit2);
  PngBitBtn1.Click;
end;

end.
