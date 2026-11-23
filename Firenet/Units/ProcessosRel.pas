unit ProcessosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, PngSpeedButton, Mask,
  System.UITypes, Data.DB;

type
  TFormProcessosRel = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox4: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label24: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosRel: TFormProcessosRel;

implementation
uses DataMod, DataMod2, DataModSearch, AcoesLoc, Funcoes1, ProcessosFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormProcessosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Ficha do processo.'}
          AbortIf(DM2.TBProcessos.IsEmpty,'Nenhum processo selecionado.');

          Application.CreateForm(TFormProcessosFast, FormProcessosFast);
          FormProcessosFast.QY01.Close;
          FormProcessosFast.QY01b.Close;
          FormProcessosFast.QY01c.Close;
          FormProcessosFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
          FormProcessosFast.QY01b.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
          FormProcessosFast.QY01c.ParamByName('codigo').AsInteger:=DM2.TBProcessosPCS_CODIGO.Value;
          FormProcessosFast.QY01.Open;
          FormProcessosFast.QY01b.Open;
          FormProcessosFast.QY01c.Open;
          FormProcessosFast.frxReport1.Variables['TITULO']:=QuotedStr('Ficha do Processo');
          FormProcessosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProcessosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProcessosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProcessosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProcessosFast.frxReport1.ShowReport;
          FormProcessosFast.Free;
          FormProcessosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Processos por advogado'}
          if Edit4.Text<>'' then Where:=' and PCS_ADVOGADO='+Edit3.Text;
          if Edit2.Text<>'' then Where:=' and PCS_ACAO='+Edit1.Text;
          if ComboBox1.Text='ABERTOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('A');
          if ComboBox1.Text='ARQUIVADOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('Q');
          if ComboBox1.Text='SUSPENSOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('S');
          Application.CreateForm(TFormProcessosFast, FormProcessosFast);
          FormProcessosFast.QY02.Close;
          FormProcessosFast.QY02.SQL.Clear;
          FormProcessosFast.QY02.SQL.Add(
            'select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, '+
            'PCS_STATUS, PCS_TOTALLANCAMENTOS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
            'left join ACOES on PCS_ACAO=ACO_CODIGO '+
            'left join FOROS on PCS_FORO=FRS_CODIGO '+
            'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
            'where PCS_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, PCS_DTCADASTRO desc');
          FormProcessosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProcessosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProcessosFast.QY02.Open;
          FormProcessosFast.frxReport2.Variables['TITULO']:=QuotedStr('Processos por advogado');
          FormProcessosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProcessosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProcessosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProcessosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProcessosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProcessosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProcessosFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProcessosFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormProcessosFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormProcessosFast.frxReport2.Variables['ACO_CODIGO']:=QuotedStr(Edit1.Text);
          FormProcessosFast.frxReport2.Variables['ACO_DESCRICAO']:=QuotedStr(Edit2.Text);
          FormProcessosFast.frxReport2.ShowReport;
          FormProcessosFast.Free;
          FormProcessosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Processos por tipo de ação'}
          if Edit4.Text<>'' then Where:=' and PCS_ADVOGADO='+Edit3.Text;
          if Edit2.Text<>'' then Where:=' and PCS_ACAO='+Edit1.Text;
          if ComboBox1.Text='ABERTOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('A');
          if ComboBox1.Text='ARQUIVADOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('Q');
          if ComboBox1.Text='SUSPENSOS' then Where:=Where+' and PCS_STATUS='+QuotedStr('S');
          Application.CreateForm(TFormProcessosFast, FormProcessosFast);
          FormProcessosFast.QY03.Close;
          FormProcessosFast.QY03.SQL.Clear;
          FormProcessosFast.QY03.SQL.Add(
            'select PCS_CODIGO, PCS_ACAO, PCS_ADVOGADO, PCS_DESCRICAO, PCS_DTCADASTRO, PCS_FORO, '+
            'PCS_STATUS, PCS_TOTALLANCAMENTOS, ACO_DESCRICAO, FRS_NOME, VEN_NOME from PROCESSOS '+
            'left join ACOES on PCS_ACAO=ACO_CODIGO '+
            'left join FOROS on PCS_FORO=FRS_CODIGO '+
            'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO '+
            'where PCS_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by ACO_DESCRICAO, PCS_DTCADASTRO desc');
          FormProcessosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProcessosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProcessosFast.QY03.Open;
          FormProcessosFast.frxReport3.Variables['TITULO']:=QuotedStr('Processos por advogado');
          FormProcessosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProcessosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProcessosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProcessosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProcessosFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProcessosFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProcessosFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProcessosFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormProcessosFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormProcessosFast.frxReport3.Variables['ACO_CODIGO']:=QuotedStr(Edit1.Text);
          FormProcessosFast.frxReport3.Variables['ACO_DESCRICAO']:=QuotedStr(Edit2.Text);
          FormProcessosFast.frxReport3.ShowReport;
          FormProcessosFast.Free;
          FormProcessosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormProcessosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessosRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit1.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit1.Enabled:=True;
          PngSpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit1.Enabled:=True;
          PngSpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
        end;
  end;
end;

procedure TFormProcessosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProcessosRel.Edit1Exit(Sender: TObject);
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
    DMS.QYAcoes.Close;
    DMS.QYAcoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYAcoes.Open;
    if not DMS.QYAcoes.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYAcoesACO_CODIGO.Value);
      Edit2.Text:=DMS.QYAcoesACO_DESCRICAO.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Tipo de Ação não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYAcoes.Close;
  end;
end;

procedure TFormProcessosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProcessosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProcessosRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormProcessosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProcessosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProcessosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormProcessosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosRel.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoesLoc, FormAcoesLoc);
  FormAcoesLoc.ShowModal;
  if AcoesLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormAcoesLoc.QYAcoesACO_CODIGO.Value);
    Edit2.Text:=FormAcoesLoc.QYAcoesACO_DESCRICAO.Value;
  end;
  FormAcoesLoc.Free;
  FormAcoesLoc:=nil;
end;

procedure TFormProcessosRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

end.

