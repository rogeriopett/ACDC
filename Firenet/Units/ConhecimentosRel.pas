unit ConhecimentosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, Mask, PngSpeedButton, ExtCtrls;

type
  TFormConhecimentosRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TPngBitBtn;
    ComboBox2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosRel: TFormConhecimentosRel;

implementation
uses DataMod, ClientesLoc, Funcoes1, DataModSearch, ConhecimentosFast;

{$R *.dfm}

procedure TFormConhecimentosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Conhecimentos por destinatário'}
          if ComboBox2.Text='TODOS' then Where:='';
          if ComboBox2.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
          if ComboBox2.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
          if ComboBox2.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
          if Edit4.Text<>'' then Where:=Where+' and CTE_REMETENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and CTE_DESTINATARIO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY03.Close;
          FormConhecimentosFast.QY03.SQL.Clear;
          FormConhecimentosFast.QY03.SQL.Add(
            'select CTE_CODIGO, CTE_REMETENTE, CTE_DTEMISSAO, CTE_VALORTOTAL, '+
            'CTE_STATUS, CTE_CHAVEACESSO, CTE_REMNOME, CTE_DESTINATARIO, CTE_DESNOME, CTE_PAGOPOR from CTE '+
            'where CTE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CTE_DESNOME, CTE_DTEMISSAO, CTE_CODIGO desc');
          FormConhecimentosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConhecimentosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConhecimentosFast.QY03.Open;
          FormConhecimentosFast.frxReport3.Variables['TITULO']:=QuotedStr('Conhecimentos por destinatário.');
          FormConhecimentosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormConhecimentosFast.frxReport3.Variables['CTE_REMETENTE']:=QuotedStr(Edit3.Text);
          FormConhecimentosFast.frxReport3.Variables['CTE_REMNOME']:=QuotedStr(Edit4.Text);
          FormConhecimentosFast.frxReport3.Variables['CTE_DESTINATARIO']:=QuotedStr(Edit1.Text);
          FormConhecimentosFast.frxReport3.Variables['CTE_DESNOME']:=QuotedStr(Edit2.Text);
          FormConhecimentosFast.frxReport3.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Conhecimentos por remetente'}
          if ComboBox2.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';
          if Edit4.Text<>'' then Where:=Where+' and CTE_REMETENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and CTE_DESTINATARIO='+QuotedStr(Edit1.Text);

          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY02.Close;
          FormConhecimentosFast.QY02.SQL.Clear;
          FormConhecimentosFast.QY02.SQL.Add(
            'select CTE_CODIGO, CTE_REMETENTE, CTE_DTEMISSAO, CTE_VALORTOTAL, '+
            'CTE_STATUS, CTE_CHAVEACESSO, CTE_REMNOME, CTE_DESTINATARIO, CTE_DESNOME, CTE_PAGOPOR from CTE '+
            'where CTE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CTE_REMNOME, CTE_DTEMISSAO, CTE_CODIGO desc');
          FormConhecimentosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConhecimentosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConhecimentosFast.QY02.Open;
          FormConhecimentosFast.frxReport2.Variables['TITULO']:=QuotedStr('Conhecimentos por remetente.');
          FormConhecimentosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormConhecimentosFast.frxReport2.Variables['CTE_REMETENTE']:=QuotedStr(Edit3.Text);
          FormConhecimentosFast.frxReport2.Variables['CTE_REMNOME']:=QuotedStr(Edit4.Text);
          FormConhecimentosFast.frxReport2.Variables['CTE_DESTINATARIO']:=QuotedStr(Edit1.Text);
          FormConhecimentosFast.frxReport2.Variables['CTE_DESNOME']:=QuotedStr(Edit2.Text);
          FormConhecimentosFast.frxReport2.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Conhecimentos por status'}
          if ComboBox2.Text='TODOS' then Where:='';
          if ComboBox2.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
          if ComboBox2.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
          if ComboBox2.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';

          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY01.Close;
          FormConhecimentosFast.QY01.SQL.Clear;
          FormConhecimentosFast.QY01.SQL.Add(
            'select CTE_CODIGO, CTE_REMETENTE, CTE_DTEMISSAO, CTE_VALORTOTAL, CTE_STATUS, CTE_CHAVEACESSO, CTE_REMNOME, '+
            'case CTE_STATUS '+
            ' when ''A'' then ''ABERTO'''+
            ' when ''F'' then ''FINALIZADO'''+
            ' when ''C'' then ''CANCELADO'''+
            ' when ''I'' then ''INUTILIZADO'''+
            ' end as STATUS from CTE '+
            'where CTE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc');
          FormConhecimentosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConhecimentosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConhecimentosFast.QY01.Open;
          FormConhecimentosFast.frxReport1.Variables['TITULO']:=QuotedStr('Conhecimentos por status.');
          FormConhecimentosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormConhecimentosFast.frxReport1.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Conhecimentos por status com ICMS'}
          if ComboBox2.Text='TODOS' then Where:='';
          if ComboBox2.Text='ABERTOS' then Where:=' and CTE_STATUS=''A''';
          if ComboBox2.Text='FINALIZADOS' then Where:=' and CTE_STATUS=''F''';
          if ComboBox2.Text='CANCELADOS' then Where:=' and CTE_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADOS' then Where:=' and CTE_STATUS=''I''';

          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY04.Close;
          FormConhecimentosFast.QY04.SQL.Clear;
          FormConhecimentosFast.QY04.SQL.Add(
            'select CTE_ALIQICMS, CTE_ALIQICMSST, CTE_CODIGO, CTE_DESNOME, CTE_DTEMISSAO, CTE_REMNOME, CTE_STATUS, '+
            'CTE_TOTALICMS, CTE_TOTALICMSST, CTE_VALORTOTAL, CTE_CHAVEACESSO, '+
            'case CTE_STATUS '+
            ' when ''A'' then ''ABERTO'''+
            ' when ''F'' then ''FINALIZADO'''+
            ' when ''C'' then ''CANCELADO'''+
            ' when ''I'' then ''INUTILIZADO'''+
            ' end as STATUS from CTE '+
            'where CTE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc');
          FormConhecimentosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConhecimentosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConhecimentosFast.QY04.Open;
          FormConhecimentosFast.frxReport4.Variables['TITULO']:=QuotedStr('Conhecimentos por status com ICMS.');
          FormConhecimentosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormConhecimentosFast.frxReport4.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Inutilizações no período'}
          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY06.Active:=False;
          FormConhecimentosFast.QY06.Open;
          FormConhecimentosFast.frxReport6.Variables['TITULO']:=QuotedStr('Inutilizações de CTe no período.');
          FormConhecimentosFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport6.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Verificação de numeração'}
          Application.CreateForm(TFormConhecimentosFast, FormConhecimentosFast);
          FormConhecimentosFast.QY05.Active:=False;
          FormConhecimentosFast.QY05.Open;
          FormConhecimentosFast.CriarTabela;
          FormConhecimentosFast.frxReport5.Variables['TITULO']:=QuotedStr('Verificação de numeração de CTe que faltam.');
          FormConhecimentosFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormConhecimentosFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormConhecimentosFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormConhecimentosFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormConhecimentosFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormConhecimentosFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormConhecimentosFast.frxReport5.ShowReport;
          FormConhecimentosFast.Free;
          FormConhecimentosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormConhecimentosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConhecimentosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True; //destinatario.
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True; //remetente.
        end;
    01: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;  //destinatario.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;  //remetente.
        end;
    02: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;  //destinatario.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;  //remetente.
        end;
    03: begin
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True; //destinatario.
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True; //remetente.
        end;
    04: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False; //destinatario.
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False; //remetente.
        end;
    05: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False; //destinatario.
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False; //remetente.
        end;
  end;
end;

procedure TFormConhecimentosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConhecimentosRel.Edit1Exit(Sender: TObject);
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
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Edit2.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormConhecimentosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormConhecimentosRel.Edit3Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit3.Clear;
    Edit4.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Edit3.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Edit4.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Edit3.Clear;
      Edit4.Clear;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormConhecimentosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormConhecimentosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Edit2.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentosRel.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Edit3.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Edit4.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

end.
