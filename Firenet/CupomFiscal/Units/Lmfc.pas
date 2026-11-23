unit Lmfc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, pngimage, Buttons, PngBitBtn, EAD_Class;

type
  TFormLMFC = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Image1: TImage;
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
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
  FormLMFC: TFormLMFC;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormLMFC.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFC.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFC.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
end;

procedure TFormLMFC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLMFC.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFC.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormLMFC.PngBitBtn1Click(Sender: TObject);
var Linhas: TStringList;
begin
  case RadioGroup1.ItemIndex of
    00: begin //impressao do documento no ECF.
          if MessageDlg('Deseja imprimir a LMFC - Leitura Memória Fiscal Completa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            case RadioGroup2.ItemIndex of
              00: DM.ACBrECF.LeituraMemoriaFiscal(StrToDateTime(MaskEdit1.Text),StrToDateTime(MaskEdit2.Text)); //por data
              01: DM.ACBrECF.LeituraMemoriaFiscal(StrToInt(Edit1.Text),StrToInt(Edit2.Text)); //por reducao
            end;
          end;
        end;
    01: begin //Gravação de arquivo eletrônico no formato de espelho.
          if MessageDlg('Deseja gerar o arquivo da LMFC - Leitura Memória Fiscal Completa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            Linhas:=TStringList.Create;
            case RadioGroup2.ItemIndex of
              00: DM.ACBrECF.LeituraMemoriaFiscalSerial(StrToDateTime(MaskEdit1.Text),StrToDateTime(MaskEdit2.Text),Linhas); //por data { TODO : Devemos configurar o caminho para salvar os arquivos ou salvamos na propria pasta da aplicação? }
              01: DM.ACBrECF.LeituraMemoriaFiscalSerial(StrToInt(Edit1.Text),StrToInt(Edit2.Text),Linhas); //por reducao. { TODO : Devemos configurar o caminho para salvar os arquivos ou salvamos na propria pasta da aplicação? }
            end;
            Linhas.SaveToFile(ExtractFilePath(Application.ExeName)+'LMFCompleta.txt');
            TEAD_Class.SignEAD(ExtractFilePath(Application.ExeName)+'LMFCompleta.txt');
            Linhas.Free;
          end;
        end;
    end;
end;

procedure TFormLMFC.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLMFC.RadioGroup2Click(Sender: TObject);
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
