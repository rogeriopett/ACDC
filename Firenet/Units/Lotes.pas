unit Lotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons, DBSBtn,
  ExtCtrls, Menus, DB, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormLotes = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    Label2: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DSComprasItens: TDataSource;
    N1: TMenuItem;
    GerarLotes1: TMenuItem;
    Label9: TLabel;
    Bevel2: TBevel;
    GerarLotes1Button: TPngSpeedButton;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    QYComprasItens: TFDQuery;
    TRComprasItens: TFDTransaction;
    QYComprasItensCOM_NOTANUMERO: TIntegerField;
    QYComprasItensCOM_NOTADATA: TDateField;
    QYComprasItensQUANTIDADE: TFMTBCDField;
    BaixarLote1: TMenuItem;
    ReabrirLote1: TMenuItem;
    ReabrirLote1Button: TPngSpeedButton;
    BaixarLote1Button: TPngSpeedButton;
    DBText7: TDBText;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure GerarLotes1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure BaixarLote1Click(Sender: TObject);
    procedure ReabrirLote1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLotes: TFormLotes;

implementation
uses DataMod, Main, Funcoes1, LotesLoc, ComprasLoc, LotesGerar;
{$R *.dfm}

procedure TFormLotes.BaixarLote1Click(Sender: TObject);
begin
  AbortIf(DM.TBLotes.IsEmpty,'Nenhum lote selecionado.');
  AbortIf(DM.TBLotesLOT_STATUS.Value='B','Lote já baixado.');

  if MessageDlg('Deseja baixar o lote?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBLotes.Edit;
    DM.TBLotesLOT_STATUS.Value:='B';
    DM.TBLotes.Post;
  end;
end;

procedure TFormLotes.DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  if PngSpeedButton1.Enabled then PngSpeedButton1.Click;
end;

procedure TFormLotes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    if DM.TBLotes.State in [dsInsert, dsEdit] then
    DM.TBLotesLOT_COMPRA.Clear;
  end;
end;

procedure TFormLotes.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBLotesLOT_VALIDADE.Clear;
end;

procedure TFormLotes.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBLotesLOT_FABRICACAO.Clear;
end;

procedure TFormLotes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBLotes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormLotes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLotes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormLotes);
end;

procedure TFormLotes.GerarLotes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLotesGerar, FormLotesGerar);
  FormLotesGerar.ShowModal;
  FormLotesGerar.Free;
  FormLotesGerar:=nil;
end;

procedure TFormLotes.Localizar1Click(Sender: TObject);
begin
  MessageDlg('remover essa opcao dessa tela.',mtInformation,[mbOk],0);
//  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
//  FormLotesLoc.Edit3.Text:=DM.TBProdutosPRO_CODIGO.Value.ToString;
//  FormLotesLoc.ShowModal;
//  if LotesLoc.Procurar then
//  begin
//    DM.TBLotes.Locate('LOT_CODIGO',FormLotesLoc.QYLotesLOT_CODIGO.Value,[]);
//  end;
//  FormLotesLoc.Free;
//  FormLotesLoc:=nil;
end;

procedure TFormLotes.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasLoc, FormComprasLoc);
  FormComprasLoc.ShowModal;
  if ComprasLoc.Procurar then
  begin
    if FormComprasLoc.QYComprasCOM_STATUS.Value<>'F' then
    begin
      MessageDlg('A compra selecionada precisa estar finalizada.',mtError,[mbOk],0);
      FormComprasLoc.Free;
      FormComprasLoc:=nil;
      Exit;
    end;
    QYComprasItens.Close;
    QYComprasItens.ParamByName('compra').AsInteger:=FormComprasLoc.QYComprasCOM_CODIGO.Value;
    QYComprasItens.ParamByName('produto').AsInteger:=DM.TBLotesLOT_PRODUTO.Value;
    QYComprasItens.Open;
    if QYComprasItens.IsEmpty then
    begin
      MessageDlg('O produto não existe no pedido de compra selecionado.',mtError,[mbOk],0);
      FormComprasLoc.Free;
      FormComprasLoc:=nil;
      Exit;
    end;
    //O SQL acima soma todas as quantidades do produto selecionado com o codigo de compra informado.
    //pode haver mais de um registro com o mesmo produto nos itens da compra.
    DM.TBLotes.Edit;
    DM.TBLotesLOT_COMPRA.Value:=FormComprasLoc.QYComprasCOM_CODIGO.Value;
    DM.TBLotesLOT_QUANTIDADE.Value:=QYComprasItensQUANTIDADE.Value;
    QYComprasItens.Close;
  end;
  FormComprasLoc.Free;
  FormComprasLoc:=nil;
end;

procedure TFormLotes.ReabrirLote1Click(Sender: TObject);
begin
  AbortIf(DM.TBLotes.IsEmpty,'Nenhum lote selecionado.');
  AbortIf(DM.TBLotesLOT_STATUS.Value='A','Lote já aberto.');

  if MessageDlg('Deseja reabrir o lote?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBLotes.Edit;
    DM.TBLotesLOT_STATUS.Value:='A';
    DM.TBLotes.Post;
  end;
end;

procedure TFormLotes.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormLotes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormLotes);

finalization
  UnRegisterClass(TFormLotes);

end.
