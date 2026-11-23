unit ProdutosAnexos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ExtCtrls, ExtDlgs, Menus, ImgList,
  PngImageList, StdCtrls, FileCtrl, DBCtrls, System.UITypes, System.ImageList;

type
  TFormProdutosAnexos = class(TForm)
    Label1: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    FileListBox1: TFileListBox;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AdicionarAnexo1: TMenuItem;
    EliminarAnexo1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    OpenDialog1: TOpenDialog;
    EnviarAnexoPorEmail1Button: TPngSpeedButton;
    N3: TMenuItem;
    EnviarAnexoPorEmail1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure AdicionarAnexo1Click(Sender: TObject);
    procedure EliminarAnexo1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EnviarAnexoPorEmail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormProdutosAnexos: TFormProdutosAnexos;

implementation
uses DataMod, Funcoes1, AnexosSelecionar;
{$R *.dfm}

procedure TFormProdutosAnexos.AdicionarAnexo1Click(Sender: TObject);
var Arquivo: String;
begin
  if OpenDialog1.Execute then
  begin
    if not System.SysUtils.DirectoryExists(Pasta) then
    System.SysUtils.ForceDirectories(Pasta);
    Arquivo:=ExtractFileName(OpenDialog1.FileName);
    CopyFile(PChar(OpenDialog1.FileName),PChar(Pasta+Arquivo),True);
    FileListBox1.Update;
    FileListBox1.ItemIndex:=0;
  end;
end;

procedure TFormProdutosAnexos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosAnexos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
end;

procedure TFormProdutosAnexos.EliminarAnexo1Click(Sender: TObject);
begin
  AbortIf(FileListBox1.FileName='','Nenhum arquivo selecionado.');

  if FileExists(FileListBox1.FileName) then
  begin
    if MessageDlg('Eliminar o arquivo abaixo?'+#13#13+FileListBox1.FileName,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DeleteFile(FileListBox1.FileName);
      FileListBox1.Update;
      FileListBox1.ItemIndex:=0;
    end;
  end;
end;

procedure TFormProdutosAnexos.EnviarAnexoPorEmail1Click(Sender: TObject);
begin
  AbortIf(FileListBox1.FileName='','Nenhum arquivo selecionado.');

  Application.CreateForm(TFormAnexosSelecionar, FormAnexosSelecionar);
  FormAnexosSelecionar.Assunto:=DM.TBParametrosPAR_PRODUTOSANEXOSEMAIL.Value;
  FormAnexosSelecionar.FileListBox1.Directory:=Pasta;
  FormAnexosSelecionar.FileListBox1.ItemIndex:=FileListBox1.ItemIndex;
  FormAnexosSelecionar.ShowModal;
  FormAnexosSelecionar.Free;
  FormAnexosSelecionar:=nil;
end;

procedure TFormProdutosAnexos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosAnexos.FileListBox1DblClick(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhuma foto selecionada!');

  Arquivo:=FileListBox1.FileName;
  ExecutarArquivo(Arquivo,'');
end;

procedure TFormProdutosAnexos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
