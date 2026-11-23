unit UsuariosAcessosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormUsuariosAcessosRel = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    SpeedButton7: TPngSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosAcessosRel: TFormUsuariosAcessosRel;

implementation

uses UsuariosLoc, TelasFast, UsuariosFast, DataMod, Funcoes1;

{$R *.dfm}

procedure TFormUsuariosAcessosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuariosAcessosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormTelasFast, FormTelasFast);
          FormTelasFast.QY02.Close;
          FormTelasFast.QY02.Open;
          FormTelasFast.frxReport2.Variables['TITULO']:=QuotedStr('Telas do Sistema');
          FormTelasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTelasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTelasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTelasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTelasFast.frxReport2.ShowReport;
          FormTelasFast.Free;
          FormTelasFast:=nil;
        end;
    01: begin
          AbortIf(Trim(Edit1.Text)='','Informe o usuário.');

          Application.CreateForm(TFormUsuariosFast, FormUsuariosFast);
          FormUsuariosFast.QY02.Close;
          FormUsuariosFast.QY02.ParamByName('usuario').AsInteger:=StrToInt(Edit1.Text);
          FormUsuariosFast.QY02.Open;
          FormUsuariosFast.frxReport2.Variables['TITULO']:=QuotedStr('Relação de acessos do usuário: '+Edit1.Text);
          FormUsuariosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormUsuariosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormUsuariosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormUsuariosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormUsuariosFast.frxReport2.ShowReport;
          FormUsuariosFast.Free;
          FormUsuariosFast:=nil;
        end;
  end;
end;

procedure TFormUsuariosAcessosRel.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosLoc, FormUsuariosLoc);
  FormUsuariosLoc.ShowModal;
  if UsuariosLoc.Procurar then
  Edit1.Text:=FormUsuariosLoc.QYUsuariosUSU_CODIGO.Value.ToString;
  FormUsuariosLoc.Free;
  FormUsuariosLoc:=nil;
end;

procedure TFormUsuariosAcessosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormUsuariosAcessosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

procedure TFormUsuariosAcessosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=False;
          SpeedButton7.Enabled:=False;
        end;
    01: begin
          Edit1.Enabled:=True;
          SpeedButton7.Enabled:=True;
       end;
  end;
end;

end.
