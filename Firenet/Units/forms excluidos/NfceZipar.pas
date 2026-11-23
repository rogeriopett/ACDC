unit NfceZipar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormNfceZipar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceZipar: TFormNfceZipar;

implementation
uses DataMod, FuncoesFirenet, Funcoes1, System.Zip, System.IOUtils, System.Types;
{$R *.dfm}

procedure TFormNfceZipar.BitBtn1Click(Sender: TObject);
var
  Zip: TZipFile;
  BaseDir, SearchMask: string;
  Files: TStringDynArray;
  I: Integer;
begin
  if SaveDialog1.Execute then
  begin
    if not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)) then
    begin
      MessageDlg('O local para as NFCe para o mês e ano informados não foi localizado.',mtError,[mbOk],0);
      Exit;
    end;
    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(
        DM.TBParametrosPAR_REPOSITORIONFCE.Value + '\' +
        MaskEdit1.Text + '\' +
        IntToStr(ComboBox1.ItemIndex + 1)
      );

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      SearchMask := TPath.Combine(BaseDir, '*procNFCe.*');
      Files := TDirectory.GetFiles(BaseDir, '*procNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCCe.*"
      Files := TDirectory.GetFiles(BaseDir, '*procCCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCancNFe.*"
      Files := TDirectory.GetFiles(BaseDir, '*procCancNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procInutNFe.*"
      Files := TDirectory.GetFiles(BaseDir, '*procInutNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormNfceZipar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceZipar.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfceZipar.FormCreate(Sender: TObject);
var A,M,D: Word;
begin
  DecodeDate(Date,A,M,D);
  ComboBox1.ItemIndex:=M-1;
  MaskEdit1.Text:=IntToStr(A);
end;

procedure TFormNfceZipar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
