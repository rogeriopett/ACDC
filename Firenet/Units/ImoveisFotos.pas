unit ImoveisFotos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ExtCtrls, ExtDlgs, ImgList, PngImageList,
  Menus, StdCtrls, FileCtrl, DBCtrls, System.UITypes, System.ImageList;

type
  TFormImoveisFotos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    FileListBox1: TFileListBox;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AdicionarFoto1: TMenuItem;
    EliminarFoto1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure AdicionarFoto1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure EliminarFoto1Click(Sender: TObject);
  private
    { Private declarations }
    function RetornarProximoNumero: String;
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormImoveisFotos: TFormImoveisFotos;

implementation
uses DataMod2, Funcoes1, DataMod;
{$R *.dfm}

function TFormImoveisFotos.RetornarProximoNumero: String;
var S: String;
  L: TStringList;
  I: Integer;
begin
  if FileListBox1.Count<=0 then
  begin
    Result:='001';
    Exit;
  end;
  L:=TStringList.Create;
  for I:=0 to FileListBox1.Count-1 do
  begin
    S:=FileListBox1.Items[I];
    Delete(S,1,8); //retira o codigo do produto.
    Delete(S,4,Length(S)); //retira a extensão do arquivo. (*.jpg)
    L.Add(S);
  end;
  L.Sort;
  I:=StrToInt(L.Strings[L.Count-1])+1; //o ultimo mais um.
  Result:=AlignText(IntToStr(I),'0',3,taRight);
  L.Destroy;
end;

procedure TFormImoveisFotos.AdicionarFoto1Click(Sender: TObject);
var Arquivo: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    if not System.SysUtils.DirectoryExists(Pasta) then
    System.SysUtils.ForceDirectories(Pasta);
    Arquivo:=AlignText(IntToStr(DM2.TBImoveisIMO_CODIGO.Value),'0',8,taRight)+RetornarProximoNumero+'.jpg';
    if Copy(Pasta,Length(Pasta)-1,1)<>'\' then Pasta:=Pasta+'\';
    CopyFile(PChar(OpenPictureDialog1.FileName),PChar(Pasta+Arquivo),True);
    FileListBox1.Update;
    FileListBox1.ItemIndex:=0;
    FileListBox1Change(nil);
  end;
end;

procedure TFormImoveisFotos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormImoveisFotos.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
  FileListBox1Change(nil);
end;

procedure TFormImoveisFotos.EliminarFoto1Click(Sender: TObject);
begin
  AbortIf(FileListBox1.FileName='','Nenhum arquivo selecionado.');

  if FileExists(FileListBox1.FileName) then
  begin
    if MessageDlg('Eliminar o arquivo abaixo?'+#13#13+FileListBox1.FileName,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DeleteFile(FileListBox1.FileName);
      FileListBox1.Update;
      FileListBox1.ItemIndex:=0;
      FileListBox1Change(nil);
    end;
  end;
end;

procedure TFormImoveisFotos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormImoveisFotos.FileListBox1Change(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(FileListBox1.FileName);
end;

procedure TFormImoveisFotos.FileListBox1DblClick(Sender: TObject);
var Foto: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhuma foto selecionada!');

  Foto:=FileListBox1.FileName;
  WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
end;

procedure TFormImoveisFotos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormImoveisFotos);

finalization
  UnRegisterClass(TFormImoveisFotos);

end.
