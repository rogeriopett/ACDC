unit ConsultarCPF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, ACBrBase,
  ACBrSocket, ACBrConsultaCPF, Vcl.ExtCtrls, Vcl.Buttons, PngBitBtn, System.UITypes;

type
  TFormConsultarCPF = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Timer1: TTimer;
    Bevel2: TBevel;
    Label9: TLabel;
    PngBitBtn1: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CadastroAtual: String;
  end;

var
  FormConsultarCPF: TFormConsultarCPF;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormConsultarCPF.BitBtn1Click(Sender: TObject);
begin
  if Edit6.Text='' then
  begin
    MessageDlg('É necessário digitar o código da imagem.',mtWarning,[mbOk],0);
    Edit6.SetFocus;
    Exit;
  end;
  if MaskEdit2.Text='  /  /    ' then
  begin
    MessageDlg('Digite a data de nascimento.',mtWarning,[mbOk],0);
    MaskEdit2.SetFocus;
    Exit;
  end;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrConsultaCPF1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrConsultaCPF1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrConsultaCPF1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrConsultaCPF1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;

  if ACBrConsultaCPF1.Consulta(LimparFormatacao(MaskEdit1.Text),MaskEdit2.Text,Edit6.Text) then
  begin
    Edit1.Text:=ACBrConsultaCPF1.Nome;
    Edit2.Text:=ACBrConsultaCPF1.Situacao;
    Edit3.Text:=ACBrConsultaCPF1.Emissao;
    Edit4.Text:=ACBrConsultaCPF1.CodCtrlControle;
    Edit5.Text:=ACBrConsultaCPF1.DigitoVerificador;
  end;
end;

procedure TFormConsultarCPF.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultarCPF.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultarCPF.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    BitBtn1.Click;
  end;
end;

procedure TFormConsultarCPF.FormCreate(Sender: TObject);
begin
  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrConsultaCPF1.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrConsultaCPF1.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrConsultaCPF1.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrConsultaCPF1.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;
end;

procedure TFormConsultarCPF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultarCPF.FormShow(Sender: TObject);
begin
//  Timer1.Enabled:=True;
  Edit6.SetFocus;
end;

procedure TFormConsultarCPF.Image1Click(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream:=TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq:=ExtractFilePath(Application.ExeName)+'Print\Captcha.png';
    Stream.SaveToFile(ImgArq);
    Image1.Picture.LoadFromFile(ImgArq);

    Edit6.Clear;
    Edit6.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TFormConsultarCPF.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit1.Text='','Sem dados para copiar.');

  if MessageDlg('Copiar dados para o cadastro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin

    if CadastroAtual='Clientes' then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_DTNASC.Value:=StrToDate(MaskEdit2.Text);
      DM.TBClientesCLI_NOME.Value:=Copy(Edit1.Text,1,50);
      DM.TBClientesCLI_TIPOPESSOA.Value:='F';
      Close;
    end;
    if CadastroAtual='Fornecedores' then
    begin
      DM.TBFornecedores.Edit;
      DM.TBFornecedoresFOR_NOME.Value:=Copy(Edit1.Text,1,50);
      DM.TBFornecedoresFOR_TIPOPESSOA.Value:='F';
      Close;
    end;
  end;
end;

procedure TFormConsultarCPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Image1Click(Image1);
  Edit6.SetFocus;
end;

end.
