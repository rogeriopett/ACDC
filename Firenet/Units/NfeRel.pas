unit NfeRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, StdCtrls, Mask, ExtCtrls, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormNfeRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
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
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton17Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeRel: TFormNfeRel;

implementation
uses DataMod, DataModSearch, Funcoes1, NaturezasLoc, NfeFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormNfeRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormNfeRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormNfeRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfeRel.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    Edit5.Text:=IntToStr(FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value);
    Edit6.Text:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNfeRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormNfeRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormNfeRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormNfeRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeRel.Edit5Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit5.Clear;
    Edit6.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      Edit5.Text:=IntToStr(DMS.QYNaturezasNAT_CODIGO.Value);
      Edit6.Text:=DMS.QYNaturezasNAT_DESCRICAO.Value;
    end else
    begin
      Edit5.Clear;
      Edit6.Clear;
      MessageDlg('CFOP não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNfeRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfeRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

procedure TFormNfeRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    01: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    02: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    03: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    04: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    05: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    06: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; SpeedButton17.Enabled:=False;
        end;
    07: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; SpeedButton17.Enabled:=False;
        end;
  end;
end;

procedure TFormNfeRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'NFe por status'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFE_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY02.Active:=False;
          FormNfeFast.QY02.SQL.Clear;
          FormNfeFast.QY02.SQL.Add(
            'select NFE_CODIGO, NFE_CLIENTE, NFE_DTEMISSAO, NFE_VALORTOTAL, NFE_CHAVEACESSO, CLI_NOME, '+
            'case NFE_STATUS '+
            '  when ''A'' then ''ABERTA'''+
            '  when ''F'' then ''FINALIZADA'''+
            '  when ''C'' then ''CANCELADA'''+
            '  when ''I'' then ''INUTILIZADA'''+
            'end as NFE_STATUS from NFE '+
            'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFE_STATUS, NFE_DTEMISSAO, NFE_CODIGO desc');
          FormNfeFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY02.Open;
          FormNfeFast.frxReport2.Variables['TITULO']:=QuotedStr('NFe por status');
          FormNfeFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport2.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport2.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport2.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'NFe ordenado por código'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFE_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY03.Active:=False;
          FormNfeFast.QY03.SQL.Clear;
          FormNfeFast.QY03.SQL.Add(
            'select NFE_CODIGO, NFE_CLIENTE, NFE_DTEMISSAO, NFE_VALORTOTAL, '+
            'NFE_CHAVEACESSO, CLI_NOME, NFE_STATUS from NFE '+
            'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFE_CODIGO desc');
          FormNfeFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY03.Open;
          FormNfeFast.frxReport3.Variables['TITULO']:=QuotedStr('NFe ordenado por código');
          FormNfeFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport3.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport3.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport3.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'NFe com itens'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFE_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY04.Active:=False;
          FormNfeFast.QY04.SQL.Clear;
          FormNfeFast.QY04.SQL.Add(
            'select NFE_CODIGO, NFE_CLIENTE, NFE_DTEMISSAO, NFE_NOME, NFE_TOTALCOFINS, NFE_TOTALICMS, '+
            'NFE_TOTALICMSST, NFE_TOTALIPI, NFE_TOTALPIS, NFE_VALORTOTAL from NFE '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFE_STATUS, NFE_DTEMISSAO, NFE_CODIGO desc');
          FormNfeFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY04.Open;
          FormNfeFast.QY04a.Open;
          FormNfeFast.frxReport4.Variables['TITULO']:=QuotedStr('NFe com itens');
          FormNfeFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport4.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport4.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport4.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'NFe por CFOP'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFE_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY05.Active:=False;
          FormNfeFast.QY05.SQL.Clear;
          FormNfeFast.QY05.SQL.Add(
            'select NFE_CODIGO, NFE_CLIENTE, NFE_DESCVALOR, NFE_DTEMISSAO, NFE_VALORTOTAL, NFE_CHAVEACESSO, '+
            'NFE_STATUS, NFE_CFOP, NFE_CFOPDESC, NFE_NOME, NFE_CONDICAO, NFE_TOTALITENS, CLI_NOME, CPG_DESCRICAO from NFE '+
            'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
            'left join CONDICOES on NFE_CONDICAO=CPG_CODIGO '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFE_CFOP, CLI_NOME, NFE_DTEMISSAO desc');
          FormNfeFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY05.Open;
          FormNfeFast.frxReport5.Variables['TITULO']:=QuotedStr('NFe por CFOP');
          FormNfeFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport5.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport5.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport5.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport5.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport5.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'NFe por CFOP dos Itens'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFI_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY09.Active:=False;
          FormNfeFast.QY09.SQL.Clear;
          FormNfeFast.QY09.SQL.Add(
            'select NFI_CFOP, NFI_DESCRICAO, NFI_DESCVALOR, NFI_QUANTIDADE, NFI_PRODUTO, NFI_VALORTOTAL, CLI_NOME, '+
            'NAT_DESCRICAO, NFE_CODIGO, NFE_CLIENTE, NFE_DTEMISSAO, NFE_STATUS, NFE_NOME from NFEITENS '+
            'left join NATUREZAS on NFI_CFOP=NAT_CODIGO '+
            'left join NFE on NFI_NOTA=NFE_CODIGO '+
            'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFI_CFOP, CLI_NOME, NFI_PRODUTO, NFE_DTEMISSAO desc');
          FormNfeFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY09.Open;
          FormNfeFast.frxReport9.Variables['TITULO']:=QuotedStr('NFe por CFOP dos Itens');
          FormNfeFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport9.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport9.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport9.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport9.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport9.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Recibos de NFe'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFE_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFE_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFE_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFE_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFE_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFE_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFE_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY06.Active:=False;
          FormNfeFast.QY06.SQL.Clear;
          FormNfeFast.QY06.SQL.Add(
            'select NFE_CODIGO, NFE_CLIENTE, NFE_NOME, NFE_DTEMISSAO, NFE_VALORTOTAL, NFE_VENDEDOR, VEN_NOME from NFE '+
            'left join VENDEDORES on NFE_VENDEDOR=VEN_CODIGO '+
            'where NFE_DTEMISSAO between :datainicial and :datafinal '+Where+' order by VEN_NOME, NFE_NOME, NFE_CODIGO desc');
          FormNfeFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY06.Open;
          FormNfeFast.frxReport6.Variables['TITULO']:=QuotedStr('Entrega de tickets de recibo da NFe');
          FormNfeFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfeFast.frxReport6.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfeFast.frxReport6.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfeFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfeFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfeFast.frxReport6.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfeFast.frxReport6.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfeFast.frxReport6.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;


          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Verificação de numeração'}
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY07.Active:=False;
          FormNfeFast.QY07.Open;
          FormNfeFast.CriarTabela;
          FormNfeFast.frxReport7.Variables['TITULO']:=QuotedStr('Verificação de numeração de NFe que faltam.');
          FormNfeFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport7.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Inutilizações no período'}
          Application.CreateForm(TFormNfeFast, FormNfeFast);
          FormNfeFast.QY08.Close;
          FormNfeFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeFast.QY08.Open;
          FormNfeFast.frxReport8.Variables['TITULO']:=QuotedStr('Inutilizações no período.');
          FormNfeFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfeFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfeFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfeFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfeFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfeFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfeFast.frxReport8.ShowReport;
          FormNfeFast.Free;
          FormNfeFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

end.
