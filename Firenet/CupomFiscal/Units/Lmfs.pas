unit Lmfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, PngBitBtn, pngimage, EAD_Class;

type
  TFormLMFS = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLMFS: TFormLMFS;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormLMFS.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFS.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
end;

procedure TFormLMFS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLMFS.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFS.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFS.PngBitBtn1Click(Sender: TObject);
var Linhas: TStringList;
begin
  case RadioGroup1.ItemIndex of
    00: begin //impressao do documento no ECF.
          if MessageDlg('Deseja imprimir a LMFS - Leitura Memória Fiscal Simplificada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            case RadioGroup2.ItemIndex of
              00: DM.ACBrECF.LeituraMemoriaFiscal(StrToDateTime(MaskEdit1.Text),StrToDateTime(MaskEdit2.Text),True); //por data
              01: DM.ACBrECF.LeituraMemoriaFiscal(StrToInt(Edit1.Text),StrToInt(Edit2.Text),True); //por reducao
            end;
          end;
        end;
    01: begin //Gravação de arquivo eletrônico no formato de espelho.
          if MessageDlg('Deseja gerar o arquivo da LMFS - Leitura Memória Fiscal Simplificada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            Linhas:=TStringList.Create;
            case RadioGroup2.ItemIndex of
              00: DM.ACBrECF.LeituraMemoriaFiscalSerial(StrToDateTime(MaskEdit1.Text),StrToDateTime(MaskEdit2.Text),Linhas,True); //por data { TODO : Devemos configurar o caminho para salvar os arquivos ou salvamos na propria pasta da aplicação? }
              01: DM.ACBrECF.LeituraMemoriaFiscalSerial(StrToInt(Edit1.Text),StrToInt(Edit2.Text),Linhas,True); //por reducao. { TODO : Devemos configurar o caminho para salvar os arquivos ou salvamos na propria pasta da aplicação? }
            end;
            Linhas.SaveToFile(ExtractFilePath(Application.ExeName)+'LMFSimplificada.txt');
            TEAD_Class.SignEAD(ExtractFilePath(Application.ExeName)+'LMFSimplificada.txt');
            Linhas.Free;
          end;
        end;
    end;
end;

procedure TFormLMFS.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLMFS.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    00: begin;
          Panel1.Enabled:=True;
          Panel1.BevelOuter:=bvRaised;
          Panel2.Enabled:=False;
          Panel2.BevelOuter:=bvLowered;
        end;
    01: begin
          Panel1.Enabled:=False;
          Panel1.BevelOuter:=bvLowered;
          Panel2.Enabled:=True;
          Panel2.BevelOuter:=bvRaised;
        end;
  end;
end;

end.
