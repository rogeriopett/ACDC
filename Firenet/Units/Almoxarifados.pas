unit Almoxarifados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask,
  DB, ComCtrls, ImgList, System.UITypes, PngImageList, PngSpeedButton,
  System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAlmoxarifados = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    N1: TMenuItem;
    AtualizarAlmoxarifadosXProdutos1: TMenuItem;
    AtualizarAlmoxarifadosXProdutos1Button: TPngSpeedButton;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Ajuda2Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    StatusBar1: TStatusBar;
    TRProdutosQtde: TFDTransaction;
    QYProdutosQtde: TFDQuery;
    TRProdutos: TFDTransaction;
    QYProdutos: TFDQuery;
    QYProdutosPRO_CODIGO: TIntegerField;
    TRAlmoxarifados: TFDTransaction;
    QYAlmoxarifados: TFDQuery;
    QYAlmoxarifadosALM_CODIGO: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AtualizarAlmoxarifadosXProdutos1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlmoxarifados: TFormAlmoxarifados;

implementation
uses DataMod, Main, AlmoxarifadosLoc, Funcoes1, AlmoxarifadosFast;
{$R *.dfm}

procedure TFormAlmoxarifados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAlmoxarifados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBAlmoxarifados.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAlmoxarifados.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAlmoxarifadosLoc, FormAlmoxarifadosLoc);
  FormAlmoxarifadosLoc.ShowModal;
  if AlmoxarifadosLoc.Procurar then
  begin
    DM.TBAlmoxarifados.Close;
    DM.TBAlmoxarifados.ParamByName('codigo').AsInteger:=FormAlmoxarifadosLoc.QYAlmoxarifadosALM_CODIGO.Value;
    DM.TBAlmoxarifados.Open;
  end;
  FormAlmoxarifadosLoc.Free;
  FormAlmoxarifadosLoc:=nil;
end;

procedure TFormAlmoxarifados.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAlmoxarifadosFast, FormAlmoxarifadosFast);
  FormAlmoxarifadosFast.QY01.Close;
  FormAlmoxarifadosFast.QY01.Open;
  FormAlmoxarifadosFast.frxReport1.Variables['TITULO']:=QuotedStr('Almoxarifados');
  FormAlmoxarifadosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormAlmoxarifadosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormAlmoxarifadosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormAlmoxarifadosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormAlmoxarifadosFast.frxReport1.ShowReport;
  FormAlmoxarifadosFast.Free;
  FormAlmoxarifadosFast:=nil;
end;

procedure TFormAlmoxarifados.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAlmoxarifados.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAlmoxarifados);
end;

procedure TFormAlmoxarifados.AtualizarAlmoxarifadosXProdutos1Click(Sender: TObject);
var I, Max: Integer;
begin
  if MessageDlg('Atualizar Almoxarifados X Produtos?'+#13#13+'Isto pode demorar alguns minutos.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYAlmoxarifados.Open;
    QYProdutos.Open;
    QYProdutos.FetchAll;
    Max:=QYProdutos.RecordCount;
    I:=0;
    QYProdutos.First;
    while not QYProdutos.Eof do
    begin
      Inc(I);
      QYAlmoxarifados.First;
      while not QYAlmoxarifados.Eof do
      begin
        QYProdutosQtde.Close;
        QYProdutosQtde.ParamByName('almoxarifado').AsInteger:=QYAlmoxarifadosALM_CODIGO.Value;
        QYProdutosQtde.ParamByName('produto').AsInteger:=QYProdutosPRO_CODIGO.Value;
        QYProdutosQtde.Open;
        StatusBar1.Panels[0].Text:=IntToStr(I)+' de '+IntToStr(Max);
        StatusBar1.Panels[1].Text:='Verificando produto '+IntToStr(QYProdutosPRO_CODIGO.Value);
        StatusBar1.Repaint;
        if QYProdutosQtde.IsEmpty then
        begin
          StatusBar1.Panels[0].Text:=IntToStr(I)+' de '+IntToStr(Max);
          StatusBar1.Panels[1].Text:='Atualizando produto '+IntToStr(QYProdutosPRO_CODIGO.Value);
          StatusBar1.Repaint;
          DM.TBProdutosQtde.Insert;
          DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value:=QYAlmoxarifadosALM_CODIGO.Value;
          DM.TBProdutosQtdePRQ_PRODUTO.Value:=QYProdutosPRO_CODIGO.Value;
          DM.TBProdutosQtdePRQ_QUANTIDADE.Value:=0;
          DM.TBProdutosQtde.Post;
        end;
        QYAlmoxarifados.Next;
      end;
      QYProdutos.Next;
      Application.ProcessMessages;
    end;
    MessageDlg('Atualização completa.',mtInformation,[mbOk],0);
    StatusBar1.Panels[0].Text:='';
    StatusBar1.Panels[1].Text:='';
  end;
end;

procedure TFormAlmoxarifados.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormAlmoxarifados);

finalization
  UnRegisterClass(TFormAlmoxarifados);

end.
