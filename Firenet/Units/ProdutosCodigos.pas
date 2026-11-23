unit ProdutosCodigos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, ImgList, PngImageList, Buttons, PngSpeedButton, DBSBtn,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProdutosCodigos = class(TForm)
    Label2: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
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
    DBText2: TDBText;
    DBText4: TDBText;
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
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
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    Localizar1Button: TPngSpeedButton;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Relatorios2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    QYFornecedores: TFDQuery;
    TRFornecedores: TFDTransaction;
    QYFornecedoresFOR_CODIGO: TIntegerField;
    QYFornecedoresFOR_NOME: TStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosCodigos: TFormProdutosCodigos;

implementation
uses DataMod, Funcoes1, ProdutosLoc, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosCodigos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosCodigos.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutosCodigos.DBEdit5Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit5,DBEdit32,nil,DM.TBProdutosCodigos);
end;

procedure TFormProdutosCodigos.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProdutosCodigos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosCodigos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosCodigos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBProdutosCodigos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProdutosCodigos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosCodigos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProdutosCodigos);
end;

procedure TFormProdutosCodigos.Localizar1Click(Sender: TObject);
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
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProdutosCodigos.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormProdutosCodigos.SpeedButton9Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit5,DBEdit32,nil,DM.TBProdutosCodigos);
end;

initialization
  RegisterClass(TFormProdutosCodigos);

finalization
  UnRegisterClass(TFormProdutosCodigos);

end.

