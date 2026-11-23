unit NfseRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, PngSpeedButton, Vcl.Mask, System.UITypes, Data.DB;

type
  TFormNfseRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label15: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Edit4: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseRel: TFormNfseRel;

implementation
uses DataMod, DataModSearch, Funcoes1, FuncoesFirenet, NfseFast;
{$R *.dfm}

procedure TFormNfseRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and NFS_STATUS='+QuotedStr('A') else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and NFS_STATUS='+QuotedStr('C') else
          if ComboBox2.Text='FINALIZADAS' then Where:=Where+' and NFS_STATUS='+QuotedStr('F');
          if Edit4.Text<>'' then Where:=Where+' and NFS_CLIENTE='+Edit3.Text;
          if Edit2.Text<>'' then Where:=Where+' and NFS_VENDEDOR='+Edit1.Text;
          Application.CreateForm(TFormNfseFast, FormNfseFast);
          FormNfseFast.QY02.Close;
          FormNfseFast.QY02.SQL.Clear;
          FormNfseFast.QY02.SQL.Add(
            'select NFS_CLIENTE, NFS_CODIGO, NFS_DTEMISSAO, NFS_NUMERONOTA, NFS_STATUS, '+
            'NFS_TOMNOME, NFS_TOTALISS, NFS_VALORISSRETIDO, NFS_VALORLIQUIDO, NFS_VENDEDOR from NFSE '+
            'where NFS_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFS_DTEMISSAO, NFS_TOMNOME');
          FormNfseFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfseFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfseFast.QY02.Open;
          FormNfseFast.frxReport2.Variables['TITULO']:=QuotedStr('NFSe no período.');
          FormNfseFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfseFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfseFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfseFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfseFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfseFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfseFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfseFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfseFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfseFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfseFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfseFast.frxReport2.ShowReport;
          FormNfseFast.Free;
          FormNfseFast:=nil;
        end;
  end;
end;

procedure TFormNfseRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfseRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfseRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True; //status.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True; //cliente.
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True; //vendedor.
        end;
  end;
end;

procedure TFormNfseRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfseRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormNfseRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfseRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfseRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormNfseRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormNfseRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox1Change(Self);
end;

procedure TFormNfseRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfseRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormNfseRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

end.
