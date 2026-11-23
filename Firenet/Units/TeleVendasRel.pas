unit TeleVendasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, DB, PngBitBtn, PngSpeedButton;

type
  TFormTeleVendasRel = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    BitBtn3: TPngBitBtn;
    ComboBox2: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox4: TComboBox;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
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
  FormTeleVendasRel: TFormTeleVendasRel;

implementation
uses Funcoes1, DataMod, DataModSearch, ViasLoc, TeleVendasFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormTeleVendasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1Change(Self);
end;

procedure TFormTeleVendasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTeleVendasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTeleVendasRel.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormViasLoc, FormViasLoc);
  FormViasLoc.ShowModal;
  if ViasLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormViasLoc.QYViasVIA_CODIGO.Value);
    Edit2.Text:=FormViasLoc.QYViasVIA_DESCRICAO.Value;
  end;
  FormViasLoc.Free;
  FormViasLoc:=nil;
end;

procedure TFormTeleVendasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin //clientes sem agendamento no período.
          {$REGION 'Clientes sem agendamento no período.'}
          if Edit4.Text<>'' then Where:=' and CLI_TELEVENDA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY01.Close;
          FormTeleVendasFast.QY01.SQL.Clear;
          FormTeleVendasFast.QY01.SQL.Add(
            'select CLI_NOME, CLI_CODIGO, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_TELEVENDA, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_TELEVENDA=VEN_CODIGO '+
            'where CLI_CODIGO not in '+
            '(select distinct(TEV_CLIENTE) from TELEVENDAS where '+
            'TEV_DATAPROX between :datainicial and :datafinal and TEV_STATUS=''A'') '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormTeleVendasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTeleVendasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY01.Open;
          FormTeleVendasFast.frxReport1.Variables['TITULO']:=QuotedStr('Clientes sem agendamento');
          FormTeleVendasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTeleVendasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTeleVendasFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormTeleVendasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport1.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Clientes nunca agendados.'}
          if Edit4.Text<>'' then Where:=' and CLI_TELEVENDA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY02.Close;
          FormTeleVendasFast.QY02.SQL.Clear;
          FormTeleVendasFast.QY02.SQL.Add(
            'select CLI_NOME, CLI_CODIGO, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_TELEVENDA, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_TELEVENDA=VEN_CODIGO '+
            'where not exists '+
            '(select TEV_CLIENTE from TELEVENDAS where TEV_CLIENTE=CLI_CODIGO) '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          //FormTeleVendasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTeleVendasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY02.Open;
          FormTeleVendasFast.frxReport2.Variables['TITULO']:=QuotedStr('Clientes nunca Agendados');
          FormTeleVendasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport2.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Atendimentos por vendedor'}
          if ComboBox4.Text='ATENDIMENTO' then Where:='where TEV_DATA between :datainicial and :datafinal' else
          if ComboBox4.Text='BAIXA' then Where:='where TEV_DATABAIXA between :datainicial and :datafinal' else
          if ComboBox4.Text='CADASTRO' then Where:='where TEV_DTCADASTRO between :datainicial and :datafinal' else
          if ComboBox4.Text='DEMONSTRACAO' then Where:='where TEV_DEMODATA between :datainicial and :datafinal' else
          if ComboBox4.Text='PROXIMO CONTATO' then Where:='where TEV_DATAPROX between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTOS' then Where:=Where+' and TEV_STATUS=''A''' else
          if ComboBox3.Text='BAIXADOS' then Where:=Where+' and TEV_STATUS=''B''';
          if Edit4.Text<>'' then Where:=Where+' and TEV_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and TEV_VIA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY03.Close;
          FormTeleVendasFast.QY03.SQL.Clear;
          FormTeleVendasFast.QY03.SQL.Add(
            'select TEV_CODIGO, TEV_CLIENTE, TEV_DATA, TEV_DATABAIXA, TEV_DATAPROX, TEV_DESCRICAO, '+
            'TEV_STATUS, TEV_VENDEDOR, TEV_VIA, CLI_FONE1, CLI_NOME, VEN_NOME from TELEVENDAS '+
            'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormTeleVendasFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTeleVendasFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY03.Open;
          FormTeleVendasFast.frxReport3.Variables['TITULO']:=QuotedStr('Atendimentos por vendedor.');
          FormTeleVendasFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTeleVendasFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTeleVendasFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormTeleVendasFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormTeleVendasFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport3.Variables['VIA_CODIGO']:=QuotedStr(Edit1.Text);
          FormTeleVendasFast.frxReport3.Variables['VIA_DESCRICAO']:=QuotedStr(Edit2.Text);
          FormTeleVendasFast.frxReport3.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Atendimentos por temperatura'}
          if ComboBox4.Text='ATENDIMENTO' then Where:='where (TEV_DATA between :datainicial and :datafinal)' else
          if ComboBox4.Text='BAIXA' then Where:='where (TEV_DATABAIXA between :datainicial and :datafinal)' else
          if ComboBox4.Text='CADASTRO' then Where:='where (TEV_DTCADASTRO between :datainicial and :datafinal)' else
          if ComboBox4.Text='DEMONSTRACAO' then Where:='where (TEV_DEMODATA between :datainicial and :datafinal)' else
          if ComboBox4.Text='PROXIMO CONTATO' then Where:='where (TEV_DATAPROX between :datainicial and :datafinal)';
          if ComboBox3.Text='ABERTOS' then Where:=Where+' and TEV_STATUS=''A''' else
          if ComboBox3.Text='BAIXADOS' then Where:=Where+' and TEV_STATUS=''B''';
          if Edit4.Text<>'' then Where:=Where+' and TEV_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and TEV_VIA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY04.Close;
          FormTeleVendasFast.QY04.SQL.Clear;
          FormTeleVendasFast.QY04.SQL.Add(
            'select TEV_CODIGO, TEV_CLIENTE, TEV_DATA, TEV_DATAPROX, TEV_STATUS, TEV_TEMPERATURA, '+
            'TEV_TEMPERATURADATA, TEV_VENDA, TEV_VENDEDOR, CLI_NOME, VEN_NOME from TELEVENDAS '+
            'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO '+Where+' '+
            'order by VEN_NOME, TEV_TEMPERATURA, TEV_CLIENTE');
          FormTeleVendasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTeleVendasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY04.Open;
          FormTeleVendasFast.frxReport4.Variables['TITULO']:=QuotedStr('Atendimentos por temperatura.');
          FormTeleVendasFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTeleVendasFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTeleVendasFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormTeleVendasFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormTeleVendasFast.frxReport4.Variables['TEMPERATURA']:=QuotedStr(ComboBox2.Text);
          FormTeleVendasFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport4.Variables['VIA_CODIGO']:=QuotedStr(Edit1.Text);
          FormTeleVendasFast.frxReport4.Variables['VIA_DESCRICAO']:=QuotedStr(Edit2.Text);
          FormTeleVendasFast.frxReport4.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Atendimentos por via de contato'}
          if ComboBox4.Text='ATENDIMENTO' then Where:='where TEV_DATA between :datainicial and :datafinal' else
          if ComboBox4.Text='BAIXA' then Where:='where TEV_DATABAIXA between :datainicial and :datafinal' else
          if ComboBox4.Text='CADASTRO' then Where:='where TEV_DTCADASTRO between :datainicial and :datafinal' else
          if ComboBox4.Text='DEMONSTRACAO' then Where:='where TEV_DEMODATA between :datainicial and :datafinal' else
          if ComboBox4.Text='PROXIMO CONTATO' then Where:='where TEV_DATAPROX between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTOS' then Where:=Where+' and TEV_STATUS=''A''' else
          if ComboBox3.Text='BAIXADOS' then Where:=Where+' and TEV_STATUS=''B''';
          if Edit4.Text<>'' then Where:=Where+' and TEV_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and TEV_VIA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY05.Close;
          FormTeleVendasFast.QY05.SQL.Clear;
          FormTeleVendasFast.QY05.SQL.Add(
            'select TEV_CODIGO, TEV_CLIENTE, TEV_DATA, TEV_DATABAIXA, TEV_DATAPROX, TEV_DESCRICAO, '+
            'TEV_STATUS, TEV_VENDEDOR, TEV_VIA, CLI_FONE1, CLI_NOME, VEN_NOME, VIA_DESCRICAO from TELEVENDAS '+
            'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO '+
            'left join VIAS on TEV_VIA=VIA_CODIGO '+Where+' '+
            'order by VIA_DESCRICAO, CLI_NOME');
          FormTeleVendasFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTeleVendasFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY05.Open;
          FormTeleVendasFast.frxReport5.Variables['TITULO']:=QuotedStr('Atendimentos por via de contato.');
          FormTeleVendasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTeleVendasFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTeleVendasFast.frxReport5.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormTeleVendasFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormTeleVendasFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport5.Variables['VIA_CODIGO']:=QuotedStr(Edit1.Text);
          FormTeleVendasFast.frxReport5.Variables['VIA_DESCRICAO']:=QuotedStr(Edit2.Text);
          FormTeleVendasFast.frxReport5.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Estatísticas'}
          Application.CreateForm(TFormTeleVendasFast, FormTeleVendasFast);
          FormTeleVendasFast.QY06.Close;
          FormTeleVendasFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTeleVendasFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTeleVendasFast.QY06.Open;
          FormTeleVendasFast.frxReport6.Variables['TITULO']:=QuotedStr('Estatísticas.');
          FormTeleVendasFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTeleVendasFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTeleVendasFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTeleVendasFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTeleVendasFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTeleVendasFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTeleVendasFast.frxReport6.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormTeleVendasFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormTeleVendasFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTeleVendasFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTeleVendasFast.frxReport6.ShowReport;
          FormTeleVendasFast.Free;
          FormTeleVendasFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormTeleVendasRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=False; ComboBox4.ItemIndex:=4;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    01: begin
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=False;
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    02: begin
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          ComboBox4.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    03: begin
          ComboBox2.Enabled:=True;
          ComboBox3.Enabled:=True;
          ComboBox4.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    04: begin
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          ComboBox4.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    05: begin
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=False;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;  PngSpeedButton1.Enabled:=False;
        end;
  end; //case.
end;

procedure TFormTeleVendasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTeleVendasRel.Edit1Exit(Sender: TObject);
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
    DMS.QYVias.Close;
    DMS.QYVias.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYVias.Open;
    if not DMS.QYVias.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYViasVIA_CODIGO.Value);
      Edit2.Text:=DMS.QYViasVIA_DESCRICAO.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
    end;
    DMS.QYVias.Close;
  end;
end;

procedure TFormTeleVendasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormTeleVendasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTeleVendasRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormTeleVendasRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormTeleVendasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendasRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormTeleVendasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
