unit EnderecosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, PngBitBtn, PngSpeedButton;

type
  TFormEnderecosRel = class(TForm)
    Label1: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  FormEnderecosRel: TFormEnderecosRel;

implementation
uses DataMod, EnderecosCidadesLoc, EnderecosEstadosLoc, EnderecosFast, DataModSearch,
  Funcoes1;
{$R *.dfm}

procedure TFormEnderecosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEnderecosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormEnderecosFast, FormEnderecosFast);
          FormEnderecosFast.QY01.Close;
          FormEnderecosFast.QY01.Open;
          FormEnderecosFast.frxReport1.Variables['TITULO']:=QuotedStr('Países');
          FormEnderecosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEnderecosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEnderecosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEnderecosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEnderecosFast.frxReport1.ShowReport;
          FormEnderecosFast.Free;
          FormEnderecosFast:=nil;
        end;
    01: begin
          Application.CreateForm(TFormEnderecosFast, FormEnderecosFast);
          FormEnderecosFast.QY02.Close;
          FormEnderecosFast.QY02.Open;
          FormEnderecosFast.frxReport2.Variables['TITULO']:=QuotedStr('Estados');
          FormEnderecosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEnderecosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEnderecosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEnderecosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEnderecosFast.frxReport2.ShowReport;
          FormEnderecosFast.Free;
          FormEnderecosFast:=nil;
        end;
    02: begin
          Application.CreateForm(TFormEnderecosFast, FormEnderecosFast);
          FormEnderecosFast.QY03.Close;
          FormEnderecosFast.QY03.Open;
          FormEnderecosFast.frxReport3.Variables['TITULO']:=QuotedStr('Cidades');
          FormEnderecosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEnderecosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEnderecosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEnderecosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEnderecosFast.frxReport3.ShowReport;
          FormEnderecosFast.Free;
          FormEnderecosFast:=nil;
        end;
    03: begin
          AbortIf(Edit2.Text='','Informe a cidade.');

          Application.CreateForm(TFormEnderecosFast, FormEnderecosFast);
          FormEnderecosFast.QY04.Close;
          FormEnderecosFast.QY04.ParamByName('cidade').AsInteger:=StrToInt(Edit1.Text);
          FormEnderecosFast.QY04.Open;
          FormEnderecosFast.frxReport4.Variables['TITULO']:=QuotedStr('Bairros');
          FormEnderecosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEnderecosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEnderecosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEnderecosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEnderecosFast.frxReport4.ShowReport;
          FormEnderecosFast.Free;
          FormEnderecosFast:=nil;
        end;
    04: begin
          AbortIf(Edit2.Text='','Informe a cidade.');

          Application.CreateForm(TFormEnderecosFast, FormEnderecosFast);
          FormEnderecosFast.QY05.Close;
          FormEnderecosFast.QY05.ParamByName('cidade').AsInteger:=StrToInt(Edit1.Text);
          FormEnderecosFast.QY05.Open;
          FormEnderecosFast.frxReport5.Variables['TITULO']:=QuotedStr('Ruas da cidade de '+Edit2.Text);
          FormEnderecosFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEnderecosFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEnderecosFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEnderecosFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEnderecosFast.frxReport5.ShowReport;
          FormEnderecosFast.Free;
          FormEnderecosFast:=nil;
        end;
  end; //case.
end;

procedure TFormEnderecosRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
    Edit2.Text:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
  end else
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormEnderecosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosRel.ComboBox1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
    01: begin
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
    02: begin
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
    03: begin
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
  end; //case.
end;

procedure TFormEnderecosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEnderecosRel.Edit1Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit1.Clear;
    Edit2.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYCidades.Open;
    if not DMS.QYCidades.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYCidadesCID_CODIGO.Value);
      Edit2.Text:=DMS.QYCidadesCID_NOME.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Cidade não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYCidades.Close;
  end;
end;

procedure TFormEnderecosRel.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormEnderecosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEnderecosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

end.
