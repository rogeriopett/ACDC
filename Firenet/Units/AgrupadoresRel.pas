unit AgrupadoresRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PngBitBtn;

type
  TFormAgrupadoresRel = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgrupadoresRel: TFormAgrupadoresRel;

implementation
uses AgrupadoresFast, Funcoes1, DataMod;

{$R *.dfm}

procedure TFormAgrupadoresRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAgrupadoresRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormAgrupadoresFast, FormAgrupadoresFast);
          FormAgrupadoresFast.QY01.Close;
          FormAgrupadoresFast.QY01.Open;
          FormAgrupadoresFast.frxReport1.Variables['TITULO']:=QuotedStr('Agrupadores');
          FormAgrupadoresFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAgrupadoresFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAgrupadoresFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAgrupadoresFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAgrupadoresFast.frxReport1.ShowReport;
          FormAgrupadoresFast.Free;
          FormAgrupadoresFast:=nil;
        end;
    01: begin
          Application.CreateForm(TFormAgrupadoresFast, FormAgrupadoresFast);
          FormAgrupadoresFast.QY02.Close;
          FormAgrupadoresFast.QY02.Open;
          FormAgrupadoresFast.frxReport2.Variables['TITULO']:=QuotedStr('Receitas e Agrupadores');
          FormAgrupadoresFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAgrupadoresFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAgrupadoresFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAgrupadoresFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAgrupadoresFast.frxReport2.ShowReport;
          FormAgrupadoresFast.Free;
          FormAgrupadoresFast:=nil;
        end;
    02: begin
          Application.CreateForm(TFormAgrupadoresFast, FormAgrupadoresFast);
          FormAgrupadoresFast.QY03.Close;
          FormAgrupadoresFast.QY03.Open;
          FormAgrupadoresFast.frxReport3.Variables['TITULO']:=QuotedStr('Despesas e Agrupadores');
          FormAgrupadoresFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAgrupadoresFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAgrupadoresFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAgrupadoresFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAgrupadoresFast.frxReport3.ShowReport;
          FormAgrupadoresFast.Free;
          FormAgrupadoresFast:=nil;
        end;
  end;
end;

procedure TFormAgrupadoresRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

procedure TFormAgrupadoresRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormAgrupadoresRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
