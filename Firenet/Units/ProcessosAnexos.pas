unit ProcessosAnexos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ExtCtrls, ImgList, PngImageList, Menus,
  StdCtrls, FileCtrl, DBCtrls, System.ImageList, System.UITypes;

type
  TFormProcessosAnexos = class(TForm)
    Label1: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    FileListBox1: TFileListBox;
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
    PngImageList1: TPngImageList;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Bevel4: TBevel;
    Ajuda2Button: TPngSpeedButton;
    Bevel7: TBevel;
    EliminarAnexo1Button: TPngSpeedButton;
    Atualizar1Button: TPngSpeedButton;
    AdicionarAnexo1Button: TPngSpeedButton;
    Fechar1Button: TPngSpeedButton;
    procedure AdicionarAnexo1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure EliminarAnexo1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormProcessosAnexos: TFormProcessosAnexos;

implementation
uses DataMod, DataMod2, Funcoes1, Main;
{$R *.dfm}

procedure TFormProcessosAnexos.AdicionarAnexo1Click(Sender: TObject);
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

procedure TFormProcessosAnexos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessosAnexos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
end;

procedure TFormProcessosAnexos.EliminarAnexo1Click(Sender: TObject);
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

procedure TFormProcessosAnexos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessosAnexos.FileListBox1DblClick(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhum arquivo selecionado!');

  Arquivo:=FileListBox1.FileName;
  ExecutarArquivo(Arquivo,'');
end;

procedure TFormProcessosAnexos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosAnexos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProcessosAnexos);
end;

initialization
  RegisterClass(TFormProcessosAnexos);

finalization
  UnRegisterClass(TFormProcessosAnexos);

end.
