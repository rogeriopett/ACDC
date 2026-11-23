unit ProntuariosArquivos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.FileCtrl, System.UITypes;

type
  TFormProntuariosArquivos = class(TForm)
    Label1: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    FileListBox1: TFileListBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AdicionarArquivo1: TMenuItem;
    EliminarArquivo1: TMenuItem;
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
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdicionarArquivo1Click(Sender: TObject);
    procedure EliminarArquivo1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormProntuariosArquivos: TFormProntuariosArquivos;

implementation
uses DataMod, DataMod2, Main, Funcoes1;
{$R *.dfm}

procedure TFormProntuariosArquivos.AdicionarArquivo1Click(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(DM2.TBProntuariosPEP_STATUS.Value='F','Este prontuário já está finalizado. Não é possível incluir novos arquivos.');

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

procedure TFormProntuariosArquivos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProntuariosArquivos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
end;

procedure TFormProntuariosArquivos.EliminarArquivo1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProntuariosPEP_STATUS.Value='F','Este prontuário já está finalizado. Não é possível eliminar arquivos.');
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

procedure TFormProntuariosArquivos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProntuariosArquivos.FileListBox1DblClick(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhum arquivo selecionado!');

  Arquivo:=FileListBox1.FileName;
  ExecutarArquivo(Arquivo,'');
end;

procedure TFormProntuariosArquivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProntuariosArquivos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProntuariosArquivos);
end;

initialization
  RegisterClass(TFormProntuariosArquivos);

finalization
  UnRegisterClass(TFormProntuariosArquivos);

end.
