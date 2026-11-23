unit VendedoresAnexos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.FileCtrl, Vcl.DBCtrls;

type
  TFormVendedoresAnexos = class(TForm)
    Label1: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    FileListBox1: TFileListBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AdicionarAnexo1: TMenuItem;
    EliminarAnexo1: TMenuItem;
    N3: TMenuItem;
    EnviarAnexoPorEmail1: TMenuItem;
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
    Atualizar1Button: TPngSpeedButton;
    AdicionarAnexo1Button: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    EnviarAnexoPorEmail1Button: TPngSpeedButton;
    procedure AdicionarAnexo1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure EliminarAnexo1Click(Sender: TObject);
    procedure EnviarAnexoPorEmail1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormVendedoresAnexos: TFormVendedoresAnexos;

implementation
uses DataMod, Funcoes1, AnexosSelecionar;
{$R *.dfm}

procedure TFormVendedoresAnexos.AdicionarAnexo1Click(Sender: TObject);
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

procedure TFormVendedoresAnexos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendedoresAnexos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
end;

procedure TFormVendedoresAnexos.EliminarAnexo1Click(Sender: TObject);
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

procedure TFormVendedoresAnexos.EnviarAnexoPorEmail1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtWarning,[mbOk],0);
  Exit;
//  AbortIf(FileListBox1.FileName='','Nenhum arquivo selecionado.');

//  Application.CreateForm(TFormAnexosSelecionar, FormAnexosSelecionar);
//  FormAnexosSelecionar.Assunto:=DM.TBParametrosPAR_VENDEDORESANEXOSEMAIL.Value;
//  FormAnexosSelecionar.FileListBox1.Directory:=Pasta;
//  FormAnexosSelecionar.FileListBox1.ItemIndex:=FileListBox1.ItemIndex;
//  FormAnexosSelecionar.ShowModal;
//  FormAnexosSelecionar.Free;
//  FormAnexosSelecionar:=nil;
end;

procedure TFormVendedoresAnexos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendedoresAnexos.FileListBox1DblClick(Sender: TObject);
var Arquivo: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhum arquivo selecionado!');

  Arquivo:=FileListBox1.FileName;
  ExecutarArquivo(Arquivo,'');
end;

procedure TFormVendedoresAnexos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormVendedoresAnexos);

finalization
  UnRegisterClass(TFormVendedoresAnexos);

end.
