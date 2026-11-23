unit ConsultasAnexos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.FileCtrl, Vcl.DBCtrls;

type
  TFormConsultasAnexos = class(TForm)
    Label1: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
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
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    EliminarAnexo1Button: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    AdicionarAnexo1Button: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    EnviarAnexoPorEmail1Button: TPngSpeedButton;
    N3: TMenuItem;
    EnviarAnexoPorEmail1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    procedure AdicionarAnexo1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure EliminarAnexo1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EnviarAnexoPorEmail1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormConsultasAnexos: TFormConsultasAnexos;

implementation
uses DataMod2, Funcoes1, DataMod, AnexosSelecionar;
{$R *.dfm}

procedure TFormConsultasAnexos.AdicionarAnexo1Click(Sender: TObject);
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

procedure TFormConsultasAnexos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultasAnexos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Directory:='';
  FileListBox1.Directory:=Pasta;
  FileListBox1.Update;
  FileListBox1.Refresh;
  FileListBox1.ItemIndex:=0;
  Label4.Caption:=FileListBox1.Directory;
  Label4.Hint:=Pasta;
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
end;

procedure TFormConsultasAnexos.EliminarAnexo1Click(Sender: TObject);
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

procedure TFormConsultasAnexos.EnviarAnexoPorEmail1Click(Sender: TObject);
begin
  AbortIf(FileListBox1.FileName='','Nenhum arquivo selecionado.');

  Application.CreateForm(TFormAnexosSelecionar, FormAnexosSelecionar);
  FormAnexosSelecionar.Assunto:=DM.TBParametrosPAR_CONSULTASANEXOSEMAIL.Value;
  FormAnexosSelecionar.FileListBox1.Directory:=Pasta;
  FormAnexosSelecionar.FileListBox1.ItemIndex:=FileListBox1.ItemIndex;
  FormAnexosSelecionar.ShowModal;
  FormAnexosSelecionar.Free;
  FormAnexosSelecionar:=nil;
end;

procedure TFormConsultasAnexos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasAnexos.FileListBox1DblClick(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhum arquivo selecionado!');

  Arquivo:=FileListBox1.FileName;
  ExecutarArquivo(Arquivo,'');
end;

procedure TFormConsultasAnexos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasAnexos.FormShow(Sender: TObject);
begin
  FileListBox1.Update;
end;

initialization
  RegisterClass(TFormConsultasAnexos);

finalization
  UnRegisterClass(TFormConsultasAnexos);

end.
