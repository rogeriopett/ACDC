unit CondicoesRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormCondicoesRel = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondicoesRel: TFormCondicoesRel;

implementation
uses DataMod, CondicoesFast, Funcoes1;
{$R *.dfm}

procedure TFormCondicoesRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormCondicoesFast, FormCondicoesFast);
          FormCondicoesFast.QY01.Close;
          FormCondicoesFast.QY01.Open;
          FormCondicoesFast.frxReport1.Variables['TITULO']:=QuotedStr('Condições de Pagamentos analítico');
          FormCondicoesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCondicoesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCondicoesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCondicoesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCondicoesFast.frxReport1.ShowReport;
          FormCondicoesFast.Free;
          FormCondicoesFast:=nil;

        end;
    01: begin
          Application.CreateForm(TFormCondicoesFast, FormCondicoesFast);
          FormCondicoesFast.QY02.Close;
          FormCondicoesFast.QY02.Open;
          FormCondicoesFast.frxReport2.Variables['TITULO']:=QuotedStr('Condições de Pagamentos sintético');
          FormCondicoesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCondicoesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCondicoesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCondicoesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCondicoesFast.frxReport2.ShowReport;
          FormCondicoesFast.Free;
          FormCondicoesFast:=nil;
        end;
  end;
end;

procedure TFormCondicoesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCondicoesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCondicoesRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

procedure TFormCondicoesRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
