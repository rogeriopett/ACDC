unit MensalidadesRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.Mask, PngSpeedButton;

type
  TFormMensalidadesRel = class(TForm)
    PngSpeedButton1: TPngSpeedButton;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    ComboBox3: TComboBox;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    PngSpeedButton2: TPngSpeedButton;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    ComboBox2: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensalidadesRel: TFormMensalidadesRel;

implementation

{$R *.dfm}

uses DataMod, Funcoes1, FuncoesFirenet, MensalidadesFast;

procedure TFormMensalidadesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMensalidadesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMensalidadesRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          ComboBox3.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  PngSpeedButton2.Enabled:=True; //conta.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
        end;
    01: begin
          ComboBox3.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  PngSpeedButton2.Enabled:=True; //conta.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
        end;
  end;
end;

procedure TFormMensalidadesRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMensalidadesRel.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormMensalidadesRel.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormMensalidadesRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidadesRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMensalidadesRel.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormMensalidadesRel.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormMensalidadesRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidadesRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMensalidadesRel.Edit5Exit(Sender: TObject);
begin
  LocReceitasExit(Edit5,Edit6);
end;

procedure TFormMensalidadesRel.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormMensalidadesRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidadesRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1.OnChange(self); //dispara o evento onchange.
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormMensalidadesRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMensalidadesRel.PngBitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Mensalidades por receita.'}
          if ComboBox3.Text='ATIVAS' then Where:=Where+' and MNS_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='INATIVAS' then Where:=Where+' and MNS_STATUS='+QuotedStr('I');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and MNS_PERIODO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and MNS_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and MNS_CONTA='+Edit3.Text;
          if Edit6.Text<>'' then Where:=Where+' and MNS_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormMensalidadesFast, FormMensalidadesFast);
          FormMensalidadesFast.QY01.Close;
          FormMensalidadesFast.QY01.SQL.Clear;
          FormMensalidadesFast.QY01.SQL.Add(
            'select MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS_DTATUALIZACAO, MNS_PERIODO, MNS_RECEITA, MNS_STATUS, MNS_TIPODOCTO, '+
            'MNS_VALOR, MNS_VENCIMENTO, CLI_NOME, CON_NOME, REC_DESCRICAO from MENSALIDADES '+
            'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
            'left join CONTAS on MNS_CONTA=CON_CODIGO '+
            'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
            'where (MNS_DTCADASTRO between :datainicial and :datafinal) '+Where+' order by REC_DESCRICAO, CLI_NOME');
          FormMensalidadesFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMensalidadesFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMensalidadesFast.QY01.Open;
          FormMensalidadesFast.frxReport1.Variables['TITULO']:=QuotedStr('Mensalidades por receita.');
          FormMensalidadesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormMensalidadesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormMensalidadesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormMensalidadesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormMensalidadesFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormMensalidadesFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormMensalidadesFast.frxReport1.Variables['MNS_PERIODO']:=QuotedStr(ComboBox2.Text);
          FormMensalidadesFast.frxReport1.Variables['MNS_STATUS']:=QuotedStr(ComboBox3.Text);
          FormMensalidadesFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormMensalidadesFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormMensalidadesFast.frxReport1.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormMensalidadesFast.frxReport1.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormMensalidadesFast.frxReport1.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormMensalidadesFast.frxReport1.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormMensalidadesFast.frxReport1.ShowReport;
          FormMensalidadesFast.Free;
          FormMensalidadesFast:=nil;
          {$ENDREGION}

        end;
    01: begin
          {$REGION 'Mensalidades por periodo.'}
          if ComboBox3.Text='ATIVAS' then Where:=Where+' and MNS_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='INATIVAS' then Where:=Where+' and MNS_STATUS='+QuotedStr('I');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and MNS_PERIODO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and MNS_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and MNS_CONTA='+Edit3.Text;
          if Edit6.Text<>'' then Where:=Where+' and MNS_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormMensalidadesFast, FormMensalidadesFast);
          FormMensalidadesFast.QY02.Close;
          FormMensalidadesFast.QY02.SQL.Clear;
          FormMensalidadesFast.QY02.SQL.Add(
            'select MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS_DTATUALIZACAO, MNS_PERIODO, MNS_RECEITA, MNS_STATUS, MNS_TIPODOCTO, '+
            'MNS_VALOR, MNS_VENCIMENTO, CLI_NOME, CON_NOME, REC_DESCRICAO, '+
            'case MNS_PERIODO '+
            '  when ''MENSAL''    then 0 '+
            '  when ''JANEIRO''   then 1 '+
            '  when ''FEVEREIRO'' then 2 '+
            '  when ''MARCO''     then 3 '+
            '  when ''ABRIL''     then 4 '+
            '  when ''MAIO''      then 5 '+
            '  when ''JUNHO''     then 6 '+
            '  when ''JULHO''     then 7 '+
            '  when ''AGOSTO''    then 8 '+
            '  when ''SETEMBRO''  then 9 '+
            '  when ''OUTUBRO''   then 10 '+
            '  when ''NOVEMBRO''  then 11 '+
            '  when ''DEZEMBRO''  then 12 '+
            'end as PERIODO from MENSALIDADES '+
            'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
            'left join CONTAS on MNS_CONTA=CON_CODIGO '+
            'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
            'where (MNS_DTCADASTRO between :datainicial and :datafinal) '+Where+' order by PERIODO, CLI_NOME');
          FormMensalidadesFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMensalidadesFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMensalidadesFast.QY02.Open;
          FormMensalidadesFast.frxReport2.Variables['TITULO']:=QuotedStr('Mensalidades por receita.');
          FormMensalidadesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormMensalidadesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormMensalidadesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormMensalidadesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormMensalidadesFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormMensalidadesFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormMensalidadesFast.frxReport2.Variables['MNS_PERIODO']:=QuotedStr(ComboBox2.Text);
          FormMensalidadesFast.frxReport2.Variables['MNS_STATUS']:=QuotedStr(ComboBox3.Text);
          FormMensalidadesFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormMensalidadesFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormMensalidadesFast.frxReport2.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormMensalidadesFast.frxReport2.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormMensalidadesFast.frxReport2.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormMensalidadesFast.frxReport2.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormMensalidadesFast.frxReport2.ShowReport;
          FormMensalidadesFast.Free;
          FormMensalidadesFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormMensalidadesRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocReceitasBotao(Edit5,Edit6);
end;

procedure TFormMensalidadesRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

procedure TFormMensalidadesRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

end.
