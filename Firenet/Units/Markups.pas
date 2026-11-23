unit Markups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Vcl.Menus, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.StdCtrls, Vcl.Mask, PngBitBtn, Vcl.Grids,
  Vcl.DBGrids, System.UITypes;

type
  TFormMarkups = class(TForm)
    DBGrid1: TDBGrid;
    IncluirItem1Button: TPngBitBtn;
    EliminarItem1Button: TPngBitBtn;
    AlterarItem1Button: TPngBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    AtualizarOMarkupNosProdutos1Button: TPngSpeedButton;
    N2: TMenuItem;
    AtualizarOMarkupNosProdutos1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure IncluirItem1ButtonClick(Sender: TObject);
    procedure EliminarItem1ButtonClick(Sender: TObject);
    procedure AlterarItem1ButtonClick(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure AtualizarOMarkupNosProdutos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMarkups: TFormMarkups;

implementation
uses DataMod, DataMod2, Funcoes1, MarkupsItens, MarkupsLoc, MarkupsFast, Main;
{$R *.dfm}

procedure TFormMarkups.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMarkups.AtualizarOMarkupNosProdutos1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMarkups.IsEmpty,'Nenhum markup selecionado.');
  AbortIf(DM.TBParametrosPAR_USARMARKUP.Value='N','O sistema não está configurado para a utilização de markup para o preço de venda.'+#13#10#13#10+'Você pode alterar essa configuração em Parâmetros.');

  if MessageDlg('Atualizar o markup nos produtos?'+#13#10+'Este procedimento irá recalcular os preços de venda.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_MARKUP=:markup where PRO_MARKUPCODIGO=:markupcodigo');
    DM.QYAux.ParamByName('markup').AsFMTBCD:=DM2.TBMarkupsMKP_MARKUP.Value;
    DM.QYAux.ParamByName('markupcodigo').AsInteger:=DM2.TBMarkupsMKP_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_PRECOVENDA=(PRO_PRECOCUSTO / PRO_MARKUP), PRO_MARGEM=(((PRO_PRECOCUSTO / PRO_MARKUP)*100)/PRO_PRECOCUSTO)-100 where PRO_MARKUPCODIGO=:markupcodigo');
    DM.QYAux.ParamByName('markupcodigo').AsInteger:=DM2.TBMarkupsMKP_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBProdutos.Open;
    MessageDlg('Recálculo OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMarkups.IncluirItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM2.TBMarkups.IsEmpty,'Nenhum markup selecionado.');

  DM2.TBMarkupsItens.Insert;
  Application.CreateForm(TFormMarkupsItens, FormMarkupsItens);
  FormMarkupsItens.ShowModal;
  FormMarkupsItens.Free;
  FormMarkupsItens:=nil;
end;

procedure TFormMarkups.EliminarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM2.TBMarkupsItens.IsEmpty,'Não existe nenhum item para excluir.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBMarkupsItens.Delete;
end;

procedure TFormMarkups.AlterarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM2.TBMarkupsItens.IsEmpty,'Não existe nenhum item para editar.');

  DM2.TBMarkupsItens.Edit;
  Application.CreateForm(TFormMarkupsItens, FormMarkupsItens);
  FormMarkupsItens.ShowModal;
  FormMarkupsItens.Free;
  FormMarkupsItens:=nil;
end;

procedure TFormMarkups.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMarkups.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBMarkups.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMarkups.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMarkups.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMarkups);
end;

procedure TFormMarkups.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarkupsLoc, FormMarkupsLoc);
  FormMarkupsLoc.ShowModal;
  if MarkupsLoc.Procurar then
  begin
    DM2.TBMarkups.Close;
    DM2.TBMarkups.ParamByName('codigo').AsInteger:=FormMarkupsLoc.QYMarkupsMKP_CODIGO.Value;
    DM2.TBMarkups.Open;
  end;
  FormMarkupsLoc.Free;
  FormMarkupsLoc:=nil;
end;

procedure TFormMarkups.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarkupsFast, FormMarkupsFast);
  FormMarkupsFast.QY01.Close;
  FormMarkupsFast.QY01.Open;
  FormMarkupsFast.frxReport1.Variables['TITULO']:=QuotedStr('Markups');
  FormMarkupsFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormMarkupsFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMarkupsFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMarkupsFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMarkupsFast.frxReport1.ShowReport;
  FormMarkupsFast.Free;
  FormMarkupsFast:=nil;
end;

initialization
  RegisterClass(TFormMarkups);

finalization
  UnRegisterClass(TFormMarkups);

end.
