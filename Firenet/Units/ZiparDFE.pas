unit ZiparDFE;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Mask, ComCtrls, System.UITypes;

type
  TFormZiparDFE = class(TForm)
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    SaveDialog1: TSaveDialog;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZiparDFE: TFormZiparDFE;

implementation
uses DataMod, FuncoesFirenet, Funcoes1, System.Zip, System.IOUtils, System.Types;
{$R *.dfm}

procedure TFormZiparDFE.BitBtn1Click(Sender: TObject);
var
  Zip: TZipFile;
  BaseDir, SearchMask: String;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(
    (not CheckBox1.Checked) and
    (not CheckBox2.Checked) and
    (not CheckBox3.Checked) and
    (not CheckBox4.Checked) and
    (not CheckBox5.Checked),
    'Selecione pelo menos um tipo de arquivo a ser incluído.'
  );

  if SaveDialog1.Execute then
  begin
    {$REGION 'Checagem das pastas'}
    //NFE
    if CheckBox1.Checked then
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)),'O local para as NFe para o mês e ano informados não foi localizado.');

    //NFCE
    if CheckBox2.Checked then
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)),'O local para as NFCe para o mês e ano informados não foi localizado.');

    //NFSE
    if CheckBox3.Checked then
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)),'O local para as NFSe para o mês e ano informados não foi localizado.');

    //CTE
    if CheckBox4.Checked then
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)),'O local para as CTe para o mês e ano informados não foi localizado.');

    //MDFE
    if CheckBox5.Checked then
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+MaskEdit1.Text+'\'+IntToStr(ComboBox1.ItemIndex+1)),'O local para as MDFe para o mês e ano informados não foi localizado.');
    {$ENDREGION}

    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      Zip.Open(SaveDialog1.FileName, zmWrite);

      {$REGION 'Arquivos NFE'}
      if CheckBox1.Checked then
      begin
        BaseDir:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFE.Value + '\' + MaskEdit1.Text + '\' + IntToStr(ComboBox1.ItemIndex + 1));

        // Adiciona os arquivos "procNFe.*"
        SearchMask := TPath.Combine(BaseDir, '*procNFe.*');
        Files := TDirectory.GetFiles(BaseDir, '*procNFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCCe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCCe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCancNFe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCancNFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procInutNFe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procInutNFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));
      end;
      {$ENDREGION}

      {$REGION 'Arquivos NFCE'}
      if CheckBox2.Checked then
      begin
        BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFCE.Value + '\' + MaskEdit1.Text + '\' + IntToStr(ComboBox1.ItemIndex + 1));

        // Adiciona os arquivos "procNFCe.*"
        SearchMask := TPath.Combine(BaseDir, '*procNFCe.*');
        Files := TDirectory.GetFiles(BaseDir, '*procNFCe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCCe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCCe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCancNFCe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCancNFCe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procInutNFCe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procInutNFCe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));
      end;
      {$ENDREGION}

      {$REGION 'Arquivos NFSE'}
      if CheckBox3.Checked then
      begin
        BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFSE.Value + '\' + MaskEdit1.Text + '\' + IntToStr(ComboBox1.ItemIndex + 1));

        // Adiciona os arquivos "rps-lot.*"
        SearchMask := TPath.Combine(BaseDir, '*rps-lot.*');
        Files := TDirectory.GetFiles(BaseDir, '*rps-lot.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "NFSe.*"
        Files := TDirectory.GetFiles(BaseDir, '*NFSe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));
      end;
      {$ENDREGION}

      {$REGION 'Arquivos CTE'}
      if CheckBox4.Checked then
      begin
        BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIOCTE.Value + '\' + MaskEdit1.Text + '\' + IntToStr(ComboBox1.ItemIndex + 1));

        // Adiciona os arquivos "procCTe.*"
        SearchMask := TPath.Combine(BaseDir, '*procCTe.*');
        Files := TDirectory.GetFiles(BaseDir, '*procCTe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCancCTe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCancCTe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procInutCTe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procInutCTe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));
      end;
      {$ENDREGION}

      {$REGION 'Arquivos MDFE'}
      if CheckBox5.Checked then
      begin
        BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIOMDFE.Value + '\' + MaskEdit1.Text + '\' + IntToStr(ComboBox1.ItemIndex + 1));

        // Adiciona os arquivos "procMDFe.*"
        SearchMask := TPath.Combine(BaseDir, '*procMDFe.*');
        Files := TDirectory.GetFiles(BaseDir, '*procMDFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procCancMDFe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procCancMDFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));

        // Adiciona os arquivos "procEncMDFe.*"
        Files := TDirectory.GetFiles(BaseDir, '*procEncMDFe.*');
        for I := 0 to High(Files) do
        Zip.Add(Files[I], TPath.GetFileName(Files[I]));
      end;
      {$ENDREGION}

      Zip.Close;
    finally
      Zip.Free;
    end;

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormZiparDFE.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormZiparDFE.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormZiparDFE.FormCreate(Sender: TObject);
var A,M,D: Word;
begin
  DecodeDate(Date,A,M,D);
  ComboBox1.ItemIndex:=M-1;
  MaskEdit1.Text:=IntToStr(A);
end;

procedure TFormZiparDFE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
