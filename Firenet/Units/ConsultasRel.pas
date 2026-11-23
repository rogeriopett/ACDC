unit ConsultasRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, PngSpeedButton, Vcl.Mask;

type
  TFormConsultasRel = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label24: TLabel;
    ComboBox2: TComboBox;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Label3: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasRel: TFormConsultasRel;

implementation
uses DataMod, DataModSearch, Funcoes1, ConveniosLoc, ConsultasFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormConsultasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Consultas por Cliente'}
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and COS_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and COS_MEDICO='+QuotedStr(Edit1.Text);
          if Edit6.Text<>'' then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(Edit5.Text);
          if Edit8.Text<>'' then Where:=Where+' and COS_CONVENIO='+QuotedStr(Edit7.Text);

          Application.CreateForm(TFormConsultasFast, FormConsultasFast);
          FormConsultasFast.QY01.Close;
          FormConsultasFast.QY01.SQL.Clear;
          FormConsultasFast.QY01.SQL.Add(
            'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
            'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
            'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
            'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
            'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
            'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
            'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, COS_DATAINICIO, COS_HORAINICIO');
          FormConsultasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConsultasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConsultasFast.QY01.Open;
          FormConsultasFast.frxReport1.Variables['TITULO']:=QuotedStr('Consultas por Cliente');
          FormConsultasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConsultasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConsultasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConsultasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConsultasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConsultasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConsultasFast.frxReport1.Variables['COS_STATUS']:=QuotedStr(ComboBox2.Text);
          FormConsultasFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormConsultasFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormConsultasFast.frxReport1.Variables['CLI_CODIGO2']:=QuotedStr(Edit5.Text);
          FormConsultasFast.frxReport1.Variables['CLI_NOME2']:=QuotedStr(Edit6.Text);
          FormConsultasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormConsultasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormConsultasFast.frxReport1.Variables['COV_CODIGO']:=QuotedStr(Edit7.Text);
          FormConsultasFast.frxReport1.Variables['COV_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormConsultasFast.frxReport1.ShowReport;
          FormConsultasFast.Free;
          FormConsultasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Consultas por Médico'}
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and COS_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and COS_MEDICO='+QuotedStr(Edit1.Text);
          if Edit6.Text<>'' then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(Edit5.Text);
          if Edit8.Text<>'' then Where:=Where+' and COS_CONVENIO='+QuotedStr(Edit7.Text);

          Application.CreateForm(TFormConsultasFast, FormConsultasFast);
          FormConsultasFast.QY02.Close;
          FormConsultasFast.QY02.SQL.Clear;
          FormConsultasFast.QY02.SQL.Add(
            'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
            'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
            'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
            'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
            'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
            'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
            'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, COS_DATAINICIO, COS_HORAINICIO');
          FormConsultasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConsultasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConsultasFast.QY02.Open;
          FormConsultasFast.frxReport2.Variables['TITULO']:=QuotedStr('Consultas por Médico');
          FormConsultasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConsultasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConsultasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConsultasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConsultasFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConsultasFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConsultasFast.frxReport2.Variables['COS_STATUS']:=QuotedStr(ComboBox2.Text);
          FormConsultasFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormConsultasFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormConsultasFast.frxReport2.Variables['CLI_CODIGO2']:=QuotedStr(Edit5.Text);
          FormConsultasFast.frxReport2.Variables['CLI_NOME2']:=QuotedStr(Edit6.Text);
          FormConsultasFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormConsultasFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormConsultasFast.frxReport2.Variables['COV_CODIGO']:=QuotedStr(Edit7.Text);
          FormConsultasFast.frxReport2.Variables['COV_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormConsultasFast.frxReport2.ShowReport;
          FormConsultasFast.Free;
          FormConsultasFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Consultas por Solicitante'}
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and COS_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and COS_MEDICO='+QuotedStr(Edit1.Text);
          if Edit6.Text<>'' then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(Edit5.Text);
          if Edit8.Text<>'' then Where:=Where+' and COS_CONVENIO='+QuotedStr(Edit7.Text);

          Application.CreateForm(TFormConsultasFast, FormConsultasFast);
          FormConsultasFast.QY03.Close;
          FormConsultasFast.QY03.SQL.Clear;
          FormConsultasFast.QY03.SQL.Add(
            'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
            'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
            'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
            'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
            'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
            'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
            'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOMESOLICITANTE, COS_DATAINICIO, COS_HORAINICIO');
          FormConsultasFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConsultasFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConsultasFast.QY03.Open;
          FormConsultasFast.frxReport3.Variables['TITULO']:=QuotedStr('Consultas por Solicitante');
          FormConsultasFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConsultasFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConsultasFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConsultasFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConsultasFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConsultasFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConsultasFast.frxReport3.Variables['COS_STATUS']:=QuotedStr(ComboBox2.Text);
          FormConsultasFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormConsultasFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormConsultasFast.frxReport3.Variables['CLI_CODIGO2']:=QuotedStr(Edit5.Text);
          FormConsultasFast.frxReport3.Variables['CLI_NOME2']:=QuotedStr(Edit6.Text);
          FormConsultasFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormConsultasFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormConsultasFast.frxReport3.Variables['COV_CODIGO']:=QuotedStr(Edit7.Text);
          FormConsultasFast.frxReport3.Variables['COV_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormConsultasFast.frxReport3.ShowReport;
          FormConsultasFast.Free;
          FormConsultasFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Consultas por Convênio'}
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and COS_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and COS_MEDICO='+QuotedStr(Edit1.Text);
          if Edit6.Text<>'' then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(Edit5.Text);
          if Edit8.Text<>'' then Where:=Where+' and COS_CONVENIO='+QuotedStr(Edit7.Text);

          Application.CreateForm(TFormConsultasFast, FormConsultasFast);
          FormConsultasFast.QY04.Close;
          FormConsultasFast.QY04.SQL.Clear;
          FormConsultasFast.QY04.SQL.Add(
            'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
            'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
            'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
            'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
            'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
            'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
            'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
            'order by COV_DESCRICAO, COS_DATAINICIO, COS_HORAINICIO');
          FormConsultasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConsultasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConsultasFast.QY04.Open;
          FormConsultasFast.frxReport4.Variables['TITULO']:=QuotedStr('Consultas por Convênio');
          FormConsultasFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConsultasFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConsultasFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConsultasFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConsultasFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConsultasFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConsultasFast.frxReport4.Variables['COS_STATUS']:=QuotedStr(ComboBox2.Text);
          FormConsultasFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormConsultasFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormConsultasFast.frxReport4.Variables['CLI_CODIGO2']:=QuotedStr(Edit5.Text);
          FormConsultasFast.frxReport4.Variables['CLI_NOME2']:=QuotedStr(Edit6.Text);
          FormConsultasFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormConsultasFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormConsultasFast.frxReport4.Variables['COV_CODIGO']:=QuotedStr(Edit7.Text);
          FormConsultasFast.frxReport4.Variables['COV_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormConsultasFast.frxReport4.ShowReport;
          FormConsultasFast.Free;
          FormConsultasFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormConsultasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConsultasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConsultasRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormConsultasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormConsultasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConsultasRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormConsultasRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormConsultasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultasRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConsultasRel.Edit5Exit(Sender: TObject);
begin
  LocClientesExit(Edit5,Edit6);
end;

procedure TFormConsultasRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormConsultasRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultasRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConsultasRel.Edit7Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit7.Clear;
    Edit8.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYConvenios.Close;
    DMS.QYConvenios.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYConvenios.Open;
    if not DMS.QYConvenios.IsEmpty then
    begin
      Edit7.Text:=IntToStr(DMS.QYConveniosCOV_CODIGO.Value);
      Edit8.Text:=DMS.QYConveniosCOV_DESCRICAO.Value;
    end else
    begin
      Edit7.Clear;
      Edit8.Clear;
      MessageDlg('Convênio não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYConvenios.Close;
  end;
end;

procedure TFormConsultasRel.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormConsultasRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormConsultasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormConsultasRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit5,Edit6);
end;

procedure TFormConsultasRel.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConveniosLoc, FormConveniosLoc);
  FormConveniosLoc.ShowModal;
  if ConveniosLoc.Procurar then
  begin
    Edit7.Text:=IntToStr(FormConveniosLoc.QYConveniosCOV_CODIGO.Value);
    Edit8.Text:=FormConveniosLoc.QYConveniosCOV_DESCRICAO.Value;
  end;
  FormConveniosLoc.Free;
  FormConveniosLoc:=nil;
end;

procedure TFormConsultasRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

end.
