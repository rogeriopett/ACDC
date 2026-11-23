unit FornecedoresRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PngBitBtn, Mask, DB, PngSpeedButton,
  System.UITypes;

type
  TFormFornecedoresRel = class(TForm)
    Label24: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    ComboBox2: TComboBox;
    BitBtn3: TPngBitBtn;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFornecedoresRel: TFormFornecedoresRel;

implementation
uses DataMod, Funcoes1, DataModSearch, FornecedoresFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormFornecedoresRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox2Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormFornecedoresRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFornecedoresRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFornecedoresRel.SpeedButton1Click(Sender: TObject);
begin
  LocAtividadesBotao(Edit5,Edit6);
end;

procedure TFormFornecedoresRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          if ComboBox1.Text='ATIVOS' then Where:=' and FOR_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='INATIVOS' then Where:=' and FOR_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormFornecedoresFast, FormFornecedoresFast);
          FormFornecedoresFast.QY01.Close;
          FormFornecedoresFast.QY01.SQL.Clear;
          FormFornecedoresFast.QY01.SQL.Add(
            'select FOR_CNPJ, FOR_CODIGO, FOR_NOME, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_EMAIL, FOR_STATUS, FOR_DTCADASTRO '+
            'from FORNECEDORES where FOR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FOR_NOME');
          FormFornecedoresFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
          FormFornecedoresFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
          FormFornecedoresFast.QY01.Open;
          FormFornecedoresFast.frxReport1.Variables['TITULO']:=QuotedStr('Fornecedores');
          FormFornecedoresFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormFornecedoresFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormFornecedoresFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormFornecedoresFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormFornecedoresFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormFornecedoresFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormFornecedoresFast.frxReport1.Variables['FOR_STATUS']:=QuotedStr(ComboBox1.Text);
          FormFornecedoresFast.frxReport1.ShowReport;
          FormFornecedoresFast.Free;
          FormFornecedoresFast:=nil;
        end;
    01: begin
          if ComboBox1.Text='ATIVOS' then Where:=' and FOR_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='INATIVOS' then Where:=' and FOR_STATUS='+QuotedStr('I');
          if Edit6.Text<>'' then Where:=Where+' and FOR_ATIVIDADE='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormFornecedoresFast, FormFornecedoresFast);
          FormFornecedoresFast.QY02.Close;
          FormFornecedoresFast.QY02.SQL.Clear;
          FormFornecedoresFast.QY02.SQL.Add(
            'select FOR_ATIVIDADE, FOR_CODIGO, FOR_DTATUALIZACAO, FOR_DTCADASTRO, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_NOME, '+
            'FOR_STATUS, ATI_DESCRICAO from FORNECEDORES left join ATIVIDADES on FOR_ATIVIDADE=ATI_CODIGO '+
            'where FOR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by ATI_DESCRICAO, FOR_NOME');
          FormFornecedoresFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
          FormFornecedoresFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
          FormFornecedoresFast.QY02.Open;
          FormFornecedoresFast.frxReport2.Variables['TITULO']:=QuotedStr('Fornecedores por Atividade');
          FormFornecedoresFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormFornecedoresFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormFornecedoresFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormFornecedoresFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormFornecedoresFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormFornecedoresFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormFornecedoresFast.frxReport2.Variables['FOR_STATUS']:=QuotedStr(ComboBox1.Text);
          FormFornecedoresFast.frxReport2.Variables['ATI_CODIGO']:=QuotedStr(Edit5.Text);
          FormFornecedoresFast.frxReport2.Variables['ATI_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormFornecedoresFast.frxReport2.ShowReport;
          FormFornecedoresFast.Free;
          FormFornecedoresFast:=nil;
        end;
  end; //case.
end;

procedure TFormFornecedoresRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
  end; //case.
end;

procedure TFormFornecedoresRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormFornecedoresRel.Edit5Exit(Sender: TObject);
begin
  LocAtividadesExit(Edit5,Edit6);
end;

procedure TFormFornecedoresRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormFornecedoresRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

end.
