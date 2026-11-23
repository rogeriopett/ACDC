unit ConsultasImagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.ExtDlgs,
  Vcl.Menus, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.DBCtrls;

type
  TFormConsultasImagens = class(TForm)
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
    AdicionarImagem1: TMenuItem;
    EliminarImagem1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    Ajuda2Button: TPngSpeedButton;
    Bevel7: TBevel;
    EliminarImagem1Button: TPngSpeedButton;
    Atualizar1Button: TPngSpeedButton;
    AdicionarImagem1Button: TPngSpeedButton;
    Fechar1Button: TPngSpeedButton;
    DBText1: TDBText;
    Label3: TLabel;
    EnviarImagensPorEmail1Button: TPngSpeedButton;
    N3: TMenuItem;
    EnviarImagensPorEmail1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure AdicionarImagem1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure EliminarImagem1Click(Sender: TObject);
    procedure EnviarImagensPorEmail1Click(Sender: TObject);
  private
    { Private declarations }
    function RetornarProximoNumero: String;
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormConsultasImagens: TFormConsultasImagens;

implementation
uses DataMod2, Funcoes1, Main, DataMod, AnexosSelecionar;
{$R *.dfm}

procedure TFormConsultasImagens.AdicionarImagem1Click(Sender: TObject);
var Arquivo: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    if not System.SysUtils.DirectoryExists(Pasta) then
    System.SysUtils.ForceDirectories(Pasta);
    Arquivo:=AlignText(IntToStr(DM2.TBConsultasCOS_CODIGO.Value),'0',8,taRight)+RetornarProximoNumero+'.jpg';
    CopyFile(PChar(OpenPictureDialog1.FileName),PChar(Pasta+Arquivo),True);
    FileListBox1.Update;
    FileListBox1.ItemIndex:=0;
    FileListBox1Change(nil);
  end;
end;

procedure TFormConsultasImagens.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultasImagens.Atualizar1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
  FileListBox1Change(nil);
end;

procedure TFormConsultasImagens.EliminarImagem1Click(Sender: TObject);
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

procedure TFormConsultasImagens.EnviarImagensPorEmail1Click(Sender: TObject);
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

procedure TFormConsultasImagens.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasImagens.FileListBox1Change(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(FileListBox1.FileName);
end;

procedure TFormConsultasImagens.FileListBox1DblClick(Sender: TObject);
var Foto: String;
begin
  AbortIf(FileListBox1.ItemIndex<0,'Nenhuma foto selecionada!');

  Foto:=FileListBox1.FileName;
  WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
end;

procedure TFormConsultasImagens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasImagens.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormConsultasImagens);
end;

function TFormConsultasImagens.RetornarProximoNumero: String;
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

initialization
  RegisterClass(TFormConsultasImagens);

finalization
  UnRegisterClass(TFormConsultasImagens);

end.
