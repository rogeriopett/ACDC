unit ProdutosFotos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, Menus, Buttons, ExtCtrls, DBCtrls, FileCtrl,
  PngSpeedButton, ImgList, PngImageList, System.ImageList, System.UITypes,
  Data.DB, Vcl.Grids, Vcl.DBGrids, DBSBtn, Vcl.Mask, ClipBrd;

type
  TFormProdutosFotos = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Label2: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    PngImageList1: TPngImageList;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    EnviarImagensPorEmail1: TMenuItem;
    Panel1: TPanel;
    Bevel1: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel2: TBevel;
    DBText2: TDBText;
    DBText4: TDBText;
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Bevel3: TBevel;
    EnviarImagensPorEmail1Button: TPngSpeedButton;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Bevel4: TBevel;
    DBEdit1: TDBEdit;
    InserirRegistro1Button: TPngSpeedButton;
    EliminarRegistro1Button: TPngSpeedButton;
    DefinirComoFotoPrincipal1Button: TPngSpeedButton;
    DefinirComoFotoPrincipal1: TMenuItem;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    PrximoRegistro1: TMenuItem;
    ltimoRegistro1: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    N3: TMenuItem;
    CopiarFotoParaAAreaDeTransferencia1: TMenuItem;
    CopiarFotoParaAAreaDeTransferencia1Button: TPngSpeedButton;
    procedure Fechar1Click(Sender: TObject);
    procedure InserirRegistro1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EnviarImagensPorEmail1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Image1DblClick(Sender: TObject);
    procedure DefinirComoFotoPrincipal1Click(Sender: TObject);
    procedure CopiarFotoParaAAreaDeTransferencia1Click(Sender: TObject);
  private
    { Private declarations }
//    procedure LogaFoto(Arq: String; Acao: Char);
    //function RetornarProximoNumero: String;
  public
    { Public declarations }
    PastaH: String;
    PastaL: String;
  end;

var
  FormProdutosFotos: TFormProdutosFotos;

implementation
uses DataMod, Main, Funcoes1, IBStoredProc, AnexosSelecionar, ImageUtils;
{$R *.dfm}

procedure TFormProdutosFotos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosFotos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProdutosFotos);
  DM.DSProdutosFotosDataChange(nil,nil);
end;

procedure TFormProdutosFotos.Image1DblClick(Sender: TObject);
begin
  //WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
  DBGrid1DblClick(nil);
end;

procedure TFormProdutosFotos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosFotos.InserirRegistro1Click(Sender: TObject);
var Arquivo: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    DM.TBProdutosFotos.Insert;
    DM.TBProdutosFotosPRF_DESCRICAO.Value:='FOTO';
    DM.TBProdutosFotos.Post; //cria registro antes para pegar o código do generator.

    if not System.SysUtils.DirectoryExists(PastaH) then
    System.SysUtils.ForceDirectories(PastaH);

    if not System.SysUtils.DirectoryExists(PastaL) then
    System.SysUtils.ForceDirectories(PastaL);

    Arquivo:=AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),'0',8,taRight)+
             AlignText(IntToStr(DM.TBProdutosFotosPRF_CODIGO.Value),'0',6,taRight)+
             ExtractFileExt(OpenPictureDialog1.FileName);

    //copia a imagem original para as pastas high e low.
    CopyFile(PChar(OpenPictureDialog1.FileName),PChar(PastaH+Arquivo),True);
    CopyFile(PChar(OpenPictureDialog1.FileName),PChar(PastaL+Arquivo),True);

    //redimensiona as imagens.
    if FileExists(PastaH+Arquivo) then
    ResizeImage(PastaH+Arquivo,DM.TBParametrosPAR_HIGHWIDTH.Value);

    if FileExists(PastaL+Arquivo) then
    ResizeImage(PastaL+Arquivo,DM.TBParametrosPAR_LOWWIDTH.Value);
    //...

    DM.TBProdutosFotos.Edit;
    DM.TBProdutosFotosPRF_ARQUIVO.Value:=Arquivo;
    DM.TBProdutosFotosPRF_DESCRICAO.Value:=Arquivo;
    DM.TBProdutosFotos.Post;
  end;
end;

procedure TFormProdutosFotos.CopiarFotoParaAAreaDeTransferencia1Click(Sender: TObject);
var
  MyFormat : Word;
  AData : THandle;
  APalette : HPALETTE;
begin
  AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhuma foto selecionada.');

  Image1.Picture.SaveToClipboardFormat(MyFormat,AData,APalette);
  ClipBoard.SetAsHandle(MyFormat,AData);
end;

procedure TFormProdutosFotos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosFotos.DBGrid1DblClick(Sender: TObject);
var Foto: String;
begin
  AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhuma foto disponível!');

//  Foto:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+
//        AlignText(DM.TBProdutosFotosPRF_PRODUTO.Value.ToString,'0',8,taRight)+'\'+
//        DM.TBProdutosFotosPRF_ARQUIVO.Value;
  Foto:=PastaH+DM.TBProdutosFotosPRF_ARQUIVO.Value;

  AbortIf(not FileExists(Foto),'Arquivo da foto não foi localizada.');

  //Image1.Picture.LoadFromFile(Foto);
  WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
end;

procedure TFormProdutosFotos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var Foto: String;
begin
  if Key=#13 then
  begin
    Key:=#0;

    AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhuma foto disponível!');

//    Foto:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+
//          AlignText(DM.TBProdutosFotosPRF_PRODUTO.Value.ToString,'0',8,taRight)+'\'+
//          DM.TBProdutosFotosPRF_ARQUIVO.Value;
    Foto:=PastaH+DM.TBProdutosFotosPRF_ARQUIVO.Value;

    AbortIf(not FileExists(Foto),'Arquivo da foto não foi localizada.');

    //Image1.Picture.LoadFromFile(Foto);
    WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
  end;
end;

procedure TFormProdutosFotos.DefinirComoFotoPrincipal1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhuma foto selecionada.');

  if MessageDlg('Definir a foto abaixo como principal?'+#13#10+DM.TBProdutosFotosPRF_DESCRICAO.Value,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //tira de todas as fotos do produto.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOSFOTOS set PRF_PRINCIPAL=''N'' where PRF_PRODUTO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
    DM.QYAux.ExecSQL;

    //coloca apenas na foto selecionada.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOSFOTOS set PRF_PRINCIPAL=''S'' where PRF_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosFotosPRF_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.TBProdutosFotos.Close;
    DM.TBProdutosFotos.Open;
    DM.DSProdutosFotosDataChange(nil,nil);
  end;
end;

procedure TFormProdutosFotos.EliminarRegistro1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhum arquivo selecionado.');

  //if FileExists(Pasta+DM.TBProdutosFotosPRF_ARQUIVO.Value) then
  if MessageDlg('Eliminar o arquivo abaixo?'+#13#13+DM.TBProdutosFotosPRF_ARQUIVO.Value,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin

    if FileExists(PastaH+DM.TBProdutosFotosPRF_ARQUIVO.Value) then
    DeleteFile(PastaH+DM.TBProdutosFotosPRF_ARQUIVO.Value);

    if FileExists(PastaL+DM.TBProdutosFotosPRF_ARQUIVO.Value) then
    DeleteFile(PastaL+DM.TBProdutosFotosPRF_ARQUIVO.Value);

    if (not FileExists(PastaH+DM.TBProdutosFotosPRF_ARQUIVO.Value)) and (not FileExists(PastaL+DM.TBProdutosFotosPRF_ARQUIVO.Value)) then
    DM.TBProdutosFotos.Delete else
    MessageDlg('Não foi possível eliminar a foto.',mtError,[mbOk],0);
  end;
end;

procedure TFormProdutosFotos.EnviarImagensPorEmail1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutosFotos.IsEmpty,'Nenhum arquivo disponível.');

  Application.CreateForm(TFormAnexosSelecionar, FormAnexosSelecionar);
  FormAnexosSelecionar.Assunto:=DM.TBParametrosPAR_PRODUTOSANEXOSEMAIL.Value;
  FormAnexosSelecionar.FileListBox1.Directory:=PastaH;
//  FormAnexosSelecionar.FileListBox1.ItemIndex:=FileListBox1.ItemIndex;
  FormAnexosSelecionar.ShowModal;
  FormAnexosSelecionar.Free;
  FormAnexosSelecionar:=nil;
end;

initialization
  RegisterClass(TFormProdutosFotos);

finalization
  UnRegisterClass(TFormProdutosFotos);

end.
