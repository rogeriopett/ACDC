unit ServicosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, DB, PngBitBtn,
  PngSpeedButton, System.UITypes;

type
  TFormServicosRel = class(TForm)
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Edit4: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox2: TComboBox;
    BitBtn3: TPngBitBtn;
    ComboBox3: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit8: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosRel: TFormServicosRel;

implementation
uses DataMod, Funcoes1, DataModSearch, ProdutosLoc, ServicosFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosRel.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
end;

procedure TFormServicosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicosRel.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    Edit5.Text:=IntToStr(FormProdutosLoc.QYProdutosPRO_CODIGO.Value);
    Edit6.Text:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormServicosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  AbortIf(((MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ')),'Digite as datas!');

  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Ordens de serviço por cliente.'}
          if ComboBox3.Text='ENTRADA' then Where:=' SER_DTENTRADA between :datainicial and :datafinal' else
          if ComboBox3.Text='PREVISAO' then Where:=' SER_DTPREVISAO between :datainicial and :datafinal' else
          if ComboBox3.Text='SAIDA' then Where:=' SER_DTSAIDA between :datainicial and :datafinal' else
          if ComboBox3.Text='TECNICO' then Where:=' SER_DTTECNICO between :datainicial and :datafinal';

          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B') else
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');
          if Edit1.Text<>'' then Where:=Where+' and SER_CLIENTE='+Edit3.Text;
          if Edit2.Text<>'' then Where:=Where+' and SER_TECNICO='+Edit4.Text;
          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY07.Close;
          FormServicosFast.QY07.SQL.Clear;
          FormServicosFast.QY07.SQL.Add(
            'select SER_CLIENTE, SER_CODIGO, SER_DTENTRADA, SER_DTPREVISAO, SER_DTTECNICO, SER_DTSAIDA, SER_EQUIPAMENTO, SER_LOCALIZACAO, '+
            'SER_STATUS, SER_TECNICO, CLI_NOME, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, VEN_NOME from SERVICOS '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
            'left join VENDEDORES on SER_TECNICO=VEN_CODIGO '+
            'where '+Where+' '+
            'order by VEN_NOME, CLI_NOME, SER_CODIGO');
          FormServicosFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY07.Open;
          FormServicosFast.frxReport7.Variables['TITULO']:=QuotedStr('Ordens de serviço por técnico');
          FormServicosFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport7.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormServicosFast.frxReport7.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport7.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormServicosFast.frxReport7.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormServicosFast.frxReport7.Variables['VEN_CODIGO']:=QuotedStr(Edit4.Text);
          FormServicosFast.frxReport7.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormServicosFast.frxReport7.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Ordens de serviço por cliente com valor analítico'}
          if ComboBox3.Text='ENTRADA' then Where:=' SER_DTENTRADA between :datainicial and :datafinal' else
          if ComboBox3.Text='PREVISAO' then Where:=' SER_DTPREVISAO between :datainicial and :datafinal' else
          if ComboBox3.Text='SAIDA' then Where:=' SER_DTSAIDA between :datainicial and :datafinal' else
          if ComboBox3.Text='TECNICO' then Where:=' SER_DTTECNICO between :datainicial and :datafinal';

          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B') else
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');
          if Edit1.Text<>'' then Where:=Where+' and SER_CLIENTE='+Edit3.Text;
          if Edit2.Text<>'' then Where:=Where+' and SER_TECNICO='+Edit4.Text;
          if (Edit7.Text<>'') and (Edit8.Text<>'') then Where:=Where+' and (SER_VALORTOTAL between '+Edit7.Text+' and '+Edit8.Text+') ';
          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY08.Close;
          FormServicosFast.QY08.SQL.Clear;
          FormServicosFast.QY08.SQL.Add(
            'select SER_CLIENTE, SER_CODIGO, SER_DTENTRADA, SER_DTPREVISAO, SER_DTSAIDA, SER_EQUIPAMENTO, SER_STATUS, SER_VALORTOTAL, '+
            'CLI_NOME, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, EQP_SERIE from SERVICOS '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO where '+Where+' '+
            'order by CLI_NOME, SER_CLIENTE, SER_CODIGO');
          FormServicosFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY08.Open;
          FormServicosFast.QY08b.Open;
          FormServicosFast.frxReport8.Variables['TITULO']:=QuotedStr('Ordens de serviço por cliente com valor analítico');
          FormServicosFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport8.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormServicosFast.frxReport8.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport8.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormServicosFast.frxReport8.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormServicosFast.frxReport8.Variables['VEN_CODIGO']:=QuotedStr(Edit4.Text);
          FormServicosFast.frxReport8.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormServicosFast.frxReport8.Variables['VALORINICIAL']:=QuotedStr(Edit7.Text);
          FormServicosFast.frxReport8.Variables['VALORFINAL']:=QuotedStr(Edit8.Text);
          FormServicosFast.frxReport8.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Ordens de serviço por cliente com valor sintético.'}
          if ComboBox3.Text='ENTRADA' then Where:=' SER_DTENTRADA between :datainicial and :datafinal' else
          if ComboBox3.Text='PREVISAO' then Where:=' SER_DTPREVISAO between :datainicial and :datafinal' else
          if ComboBox3.Text='SAIDA' then Where:=' SER_DTSAIDA between :datainicial and :datafinal' else
          if ComboBox3.Text='TECNICO' then Where:=' SER_DTTECNICO between :datainicial and :datafinal';

          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B') else
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');
          if Edit1.Text<>'' then Where:=Where+' and SER_CLIENTE='+Edit3.Text;
          if Edit2.Text<>'' then Where:=Where+' and SER_TECNICO='+Edit4.Text;
          if (Edit7.Text<>'') and (Edit8.Text<>'') then Where:=Where+' and (SER_VALORTOTAL between '+Edit7.Text+' and '+Edit8.Text+') ';
          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY09.Close;
          FormServicosFast.QY09.SQL.Clear;
          FormServicosFast.QY09.SQL.Add(
            'select SER_CODIGO, SER_CLIENTE, SER_DTENTRADA, SER_DTPREVISAO, SER_DTSAIDA, SER_EQUIPAMENTO, SER_STATUS, SER_VALORTOTAL, '+
            'CLI_NOME, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, EQP_SERIE from SERVICOS '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO where '+Where+' '+
            'order by CLI_NOME, SER_CLIENTE, SER_CODIGO');
          FormServicosFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY09.Open;
          FormServicosFast.frxReport9.Variables['TITULO']:=QuotedStr('Ordens de serviço por cliente com valor sintético.');
          FormServicosFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport9.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormServicosFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport9.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormServicosFast.frxReport9.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormServicosFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit4.Text);
          FormServicosFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormServicosFast.frxReport9.Variables['VALORINICIAL']:=QuotedStr(Edit7.Text);
          FormServicosFast.frxReport9.Variables['VALORFINAL']:=QuotedStr(Edit8.Text);
          FormServicosFast.frxReport9.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Ordens de serviço por técnico'}
          if ComboBox3.Text='ENTRADA' then Where:=' SER_DTENTRADA between :datainicial and :datafinal' else
          if ComboBox3.Text='PREVISAO' then Where:=' SER_DTPREVISAO between :datainicial and :datafinal' else
          if ComboBox3.Text='SAIDA' then Where:=' SER_DTSAIDA between :datainicial and :datafinal' else
          if ComboBox3.Text='TECNICO' then Where:=' SER_DTTECNICO between :datainicial and :datafinal';

          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B') else
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');
          if Edit1.Text<>'' then Where:=Where+' and SER_CLIENTE='+Edit3.Text;
          if Edit2.Text<>'' then Where:=Where+' and SER_TECNICO='+Edit4.Text;
          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY10.Close;
          FormServicosFast.QY10.SQL.Clear;
          FormServicosFast.QY10.SQL.Add(
            'select SER_CLIENTE, SER_CODIGO, SER_DTENTRADA, SER_DTPREVISAO, SER_DTTECNICO, SER_DTSAIDA, SER_EQUIPAMENTO, SER_LOCALIZACAO, '+
            'SER_STATUS, SER_TECNICO, CLI_NOME, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, VEN_NOME from SERVICOS '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
            'left join VENDEDORES on SER_TECNICO=VEN_CODIGO '+
            'where '+Where+' '+
            'order by VEN_NOME, CLI_NOME, SER_CODIGO');
          FormServicosFast.QY10.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY10.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY10.Open;
          FormServicosFast.frxReport10.Variables['TITULO']:=QuotedStr('Ordens de serviço por técnico');
          FormServicosFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport10.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport10.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport10.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormServicosFast.frxReport10.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport10.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormServicosFast.frxReport10.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormServicosFast.frxReport10.Variables['VEN_CODIGO']:=QuotedStr(Edit4.Text);
          FormServicosFast.frxReport10.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormServicosFast.frxReport10.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Serviços por produto'}
          if Edit6.Text<>'' then Where:=Where+' and SEI_PRODUTO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B');
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');
          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY12.Close;
          FormServicosFast.QY12.SQL.Clear;
          FormServicosFast.QY12.SQL.Add(
            'select SER_CLIENTE, SER_CODIGO, SER_VALORTOTAL, SER_DTENTRADA, SEI_PRODUTO, SEI_VALORUNIT, '+
            'SEI_QUANTIDADE, SEI_VALORTOTAL, CLI_NOME, PRO_NOME from SERVICOSITENS '+
            'left join SERVICOS on SEI_SERVICO=SER_CODIGO '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join PRODUTOS on SEI_PRODUTO=PRO_CODIGO '+
            'where SER_DTENTRADA between :datainicial and :datafinal '+Where+' '+
            'order by PRO_NOME, SER_DTENTRADA');
          FormServicosFast.QY12.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY12.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY12.Open;
          FormServicosFast.frxReport12.Variables['TITULO']:=QuotedStr('Ordens de serviço por produto');
          FormServicosFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport12.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport12.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport12.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport12.Variables['PRO_CODIGO']:=QuotedStr(Edit5.Text);
          FormServicosFast.frxReport12.Variables['PRO_NOME']:=QuotedStr(Edit6.Text);
          FormServicosFast.frxReport12.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Serviços por tecnico com valor'}
          if ComboBox3.Text='ENTRADA' then Where:=' SER_DTENTRADA between :datainicial and :datafinal';
          if ComboBox3.Text='PREVISAO' then Where:=' SER_DTPREVISAO between :datainicial and :datafinal';
          if ComboBox3.Text='SAIDA' then Where:=' SER_DTSAIDA between :datainicial and :datafinal';
          if ComboBox3.Text='TECNICO' then Where:=' SER_DTTECNICO between :datainicial and :datafinal';

          if Edit2.Text<>'' then Where:=Where+' and SER_TECNICO='+Edit4.Text;
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and SER_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('B');
          if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and SER_STATUS='+QuotedStr('F');

          Application.CreateForm(TFormServicosFast, FormServicosFast);
          FormServicosFast.QY11.Close;
          FormServicosFast.QY11.SQL.Clear;
          FormServicosFast.QY11.SQL.Add(
            'select SER_CLIENTE, SER_CODIGO, SER_DTENTRADA, SER_DTSAIDA, SER_EQUIPAMENTO, SER_STATUS, SER_TECNICO, '+
            'SER_TOTALPRODUTOS, SER_TOTALSERVICOS, SER_VALORTOTAL, CLI_NOME, EQP_DESCRICAO, VEN_NOME from SERVICOS '+
            'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
            'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
            'left join VENDEDORES on SER_TECNICO=VEN_CODIGO where '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormServicosFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormServicosFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormServicosFast.QY11.Open;
          FormServicosFast.frxReport11.Variables['TITULO']:=QuotedStr('Ordens de Serviço por técnico com valor');
          FormServicosFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormServicosFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormServicosFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormServicosFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormServicosFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormServicosFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormServicosFast.frxReport11.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormServicosFast.frxReport11.Variables['SER_TECNICO']:=QuotedStr(Edit4.Text);
          FormServicosFast.frxReport11.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormServicosFast.frxReport11.ShowReport;
          FormServicosFast.Free;
          FormServicosFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormServicosRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit1);
end;

procedure TFormServicosRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit4,Edit2,nil);
end;

procedure TFormServicosRel.Edit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormServicosRel.Edit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormServicosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormServicosRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit1);
end;

procedure TFormServicosRel.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosRel.Edit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormServicosRel.Edit4Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit4,Edit2,nil);
end;

procedure TFormServicosRel.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormServicosRel.Edit5Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if ((Sender as TEdit).Text='') then
  begin
    Edit5.Clear;
    Edit6.Clear;
  end;
  if ((Sender as TEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      Edit5.Text:=IntToStr(DMS.QYProdutosPRO_CODIGO.Value);
      Edit6.Text:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      Edit5.Clear;
      Edit6.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormServicosRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormServicosRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormServicosRel.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormServicosRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit4.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;
        end;
    01: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit4.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;
        end;
    02: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit4.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit7.Enabled:=True;
          Edit8.Enabled:=True;
        end;
    03: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit4.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;
        end;
    04: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit4.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;
        end;
    05: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit4.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;
        end;
  end; //case.
end;

procedure TFormServicosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
