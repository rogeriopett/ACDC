unit ClientesRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DB, System.UITypes, PngBitBtn,
  PngSpeedButton;

type
  TFormClientesRel = class(TForm)
    Label24: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TPngBitBtn;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Bevel1: TBevel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    SpeedButton1: TPngSpeedButton;
    BitBtn3: TPngBitBtn;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    SpeedButton3: TPngSpeedButton;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Edit11: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit12: TEdit;
    Edit13: TEdit;
    PngBitBtn1: TPngBitBtn;
    Label14: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Edit14: TEdit;
    Edit15: TEdit;
    Label15: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Edit16: TEdit;
    Edit17: TEdit;
    ComboBox5: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit14Enter(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure Edit16Enter(Sender: TObject);
    procedure Edit16Exit(Sender: TObject);
    procedure Edit16KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesRel: TFormClientesRel;

implementation
uses DataMod, Funcoes1, DataModSearch, ClientesFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormClientesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClientesRel.PngBitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Clientes por ramo de atividade.'}
          if Edit6.Text<>'' then Where:=Where+' and CLI_ATIVIDADE='+QuotedStr(Edit5.Text);
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit10.Text<>'' then Where:=Where+' and CLI_CIDADE='+QuotedStr(Edit10.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY01.Close;
          FormClientesFast.QY01.SQL.Clear;
          FormClientesFast.QY01.SQL.Add(
            'select CLI_ATIVIDADE, CLI_CIDADE, CLI_CODIGO, CLI_ESTADO, CLI_FONE1, CLI_FONE2, CLI_NOME, '+
            'CLI_VENDEDOR, ATI_DESCRICAO, VEN_NOME from CLIENTES '+
            'left join ATIVIDADES on CLI_ATIVIDADE=ATI_CODIGO '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' order by ATI_DESCRICAO, CLI_NOME');
          FormClientesFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY01.Open;
          FormClientesFast.frxReport1.Variables['TITULO']:=QuotedStr('Clientes por Ramo de Atividade');
          FormClientesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport1.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport1.Variables['ATI_CODIGO']:=QuotedStr(Edit5.Text);
          FormClientesFast.frxReport1.Variables['ATI_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormClientesFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport1.Variables['CID_CODIGO']:=QuotedStr(Edit9.Text);
          FormClientesFast.frxReport1.Variables['CID_NOME']:=QuotedStr(Edit10.Text);
          FormClientesFast.frxReport1.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport1.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Clientes por cidade'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit10.Text<>'' then Where:=Where+' and CLI_CIDADE='+QuotedStr(Edit10.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY02.Active:=False;
          FormClientesFast.QY02.SQL.Clear;
          FormClientesFast.QY02.SQL.Add(
            'select CLI_CODIGO, CLI_NOME, CLI_ENDERECO, CLI_NUMERO, CLI_BAIRRO, CLI_CIDADE, CLI_CIDADECODIGO, '+
            'CLI_CEP, CLI_FONE1, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' order by CLI_CIDADE, CLI_NOME');
          FormClientesFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY02.Open;
          FormClientesFast.frxReport2.Variables['TITULO']:=QuotedStr('Clientes por Cidade');
          FormClientesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport2.Variables['CLI_CIDADE']:=QuotedStr(Edit10.Text);
          FormClientesFast.frxReport2.Variables['CLI_CIDADECODIGO']:=QuotedStr(Edit9.Text);
          FormClientesFast.frxReport2.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport2.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Clientes que nunca compraram'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY03.Active:=False;
          FormClientesFast.QY03.SQL.Clear;
          FormClientesFast.QY03.SQL.Add(
            'select CLI_NOME, CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_VENDEDOR, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where not exists (select first(1) VED_CLIENTE from VENDAS where VED_CLIENTE=CLI_CODIGO) '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormClientesFast.QY03.Open;
          FormClientesFast.frxReport3.Variables['TITULO']:=QuotedStr('Clientes que nunca compraram');
          FormClientesFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport3.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport3.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Clientes sem compras em um período'}
          Where:='where 1=1';
          if Edit6.Text<>'' then Where:=Where+' and C.CLI_ATIVIDADE='+QuotedStr(Edit5.Text);
          if Edit4.Text<>'' then Where:=Where+' and C.CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and C.CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and C.CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and C.CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and C.CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY04.Active:=False;
          FormClientesFast.QY04.SQL.Clear;
          FormClientesFast.QY04.SQL.Add(
            'select A.VED_CLIENTE, C.CLI_FONE1, C.CLI_NOME, C.CLI_VENDEDOR, V.VEN_NOME, max(A.VED_DTEMISSAO) as ULTIMA, (current_date - max(A.VED_DTEMISSAO)) as DIAS, '+
            '(select first(1) B.VED_VALORTOTAL from VENDAS B where B.VED_CLIENTE=A.VED_CLIENTE order by B.VED_CODIGO desc) as VALOR '+
            'from VENDAS A '+
            'left join CLIENTES C on A.VED_CLIENTE=C.CLI_CODIGO '+
            'left join VENDEDORES V on C.CLI_VENDEDOR=V.VEN_CODIGO '+Where+' '+
            'group by A.VED_CLIENTE, C.CLI_FONE1, C.CLI_NOME, C.CLI_VENDEDOR, V.VEN_NOME '+
            'having max(A.VED_DTEMISSAO) < :datainicial '+
            'order by V.VEN_NOME, C.CLI_NOME');
          FormClientesFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY04.Open;
          FormClientesFast.frxReport4.Variables['TITULO']:=QuotedStr('Clientes sem compras no período');
          FormClientesFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport4.Variables['ATI_CODIGO']:=QuotedStr(Edit5.Text);
          FormClientesFast.frxReport4.Variables['ATI_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormClientesFast.frxReport4.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport4.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Clientes por mailing'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit15.Text<>'' then Where:=Where+' and CLI_TELEVENDA='+QuotedStr(Edit14.Text);
          if Edit8.Text<>'' then Where:=Where+' and CLI_MAILING='+QuotedStr(Edit7.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY05.Active:=False;
          FormClientesFast.QY05.SQL.Clear;
          FormClientesFast.QY05.SQL.Add(
            'select CLI_CODIGO, CLI_NOME, CLI_FONE1, CLI_FONE2, CLI_DTCADASTRO, CLI_MAILING, MAI_DESCRICAO, '+
            'A.VEN_NOME as VENDEDOR, B.VEN_NOME as TELEVENDA from CLIENTES '+
            'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
            'left join VENDEDORES A on CLI_VENDEDOR=A.VEN_CODIGO '+
            'left join VENDEDORES B on CLI_TELEVENDA=B.VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by MAI_DESCRICAO, CLI_NOME');
          FormClientesFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY05.Open;
          FormClientesFast.frxReport5.Variables['TITULO']:=QuotedStr('Clientes por mailing');
          FormClientesFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport5.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport5.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport5.Variables['MAI_CODIGO']:=QuotedStr(Edit7.Text);
          FormClientesFast.frxReport5.Variables['MAI_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormClientesFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport5.Variables['VEN_CODIGO2']:=QuotedStr(Edit14.Text); //televenda.
          FormClientesFast.frxReport5.Variables['VEN_NOME2']:=QuotedStr(Edit15.Text);
          FormClientesFast.frxReport5.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Clientes por local de trabalho'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit15.Text<>'' then Where:=Where+' and CLI_TELEVENDA='+QuotedStr(Edit14.Text);
          if Edit13.Text<>'' then Where:=Where+' and CLI_LOCALTRABALHO='+QuotedStr(Edit12.Text);
          if Edit17.Text<>'' then Where:=Where+' and CLI_ESTADOCODIGO='+QuotedStr(Edit16.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY06.Active:=False;
          FormClientesFast.QY06.SQL.Clear;
          FormClientesFast.QY06.SQL.Add(
            'select CLI_CIDADE, CLI_CODIGO, CLI_ESTADO, CLI_NOME, CLI_FONE1, CLI_FONE2, CLI_DTCADASTRO, CLI_LOCALTRABALHO, LCA_DESCRICAO, '+
            'A.VEN_NOME as VENDEDOR, B.VEN_NOME as TELEVENDA from CLIENTES '+
            'left join LOCAIS on CLI_LOCALTRABALHO=LCA_CODIGO '+
            'left join VENDEDORES A on CLI_VENDEDOR=A.VEN_CODIGO '+
            'left join VENDEDORES B on CLI_TELEVENDA=B.VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by LCA_DESCRICAO, CLI_NOME');
          FormClientesFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY06.Open;
          FormClientesFast.frxReport6.Variables['TITULO']:=QuotedStr('Clientes por local de trabalho');
          FormClientesFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport6.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport6.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport6.Variables['LCA_CODIGO']:=QuotedStr(Edit12.Text);
          FormClientesFast.frxReport6.Variables['LCA_DESCRICAO']:=QuotedStr(Edit13.Text);
          FormClientesFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport6.Variables['VEN_CODIGO2']:=QuotedStr(Edit14.Text); //televenda.
          FormClientesFast.frxReport6.Variables['VEN_NOME2']:=QuotedStr(Edit15.Text);
          FormClientesFast.frxReport6.Variables['ESD_SIGLA']:=QuotedStr(Edit16.Text);
          FormClientesFast.frxReport6.Variables['ESD_NOME']:=QuotedStr(Edit17.Text);
          FormClientesFast.frxReport6.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Clientes por local de estudo'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit15.Text<>'' then Where:=Where+' and CLI_TELEVENDA='+QuotedStr(Edit14.Text);
          if Edit13.Text<>'' then Where:=Where+' and CLI_LOCALESTUDA='+QuotedStr(Edit12.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY07.Active:=False;
          FormClientesFast.QY07.SQL.Clear;
          FormClientesFast.QY07.SQL.Add(
            'select CLI_CODIGO, CLI_NOME, CLI_FONE1, CLI_FONE2, CLI_DTCADASTRO, CLI_LOCALESTUDA, LCA_DESCRICAO, '+
            'A.VEN_NOME as VENDEDOR, B.VEN_NOME as TELEVENDA from CLIENTES '+
            'left join LOCAIS on CLI_LOCALESTUDA=LCA_CODIGO '+
            'left join VENDEDORES A on CLI_VENDEDOR=A.VEN_CODIGO '+
            'left join VENDEDORES B on CLI_TELEVENDA=B.VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by LCA_DESCRICAO, CLI_NOME');
          FormClientesFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY07.Open;
          FormClientesFast.frxReport7.Variables['TITULO']:=QuotedStr('Clientes por local de estudo');
          FormClientesFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport7.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport7.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport7.Variables['LCA_CODIGO']:=QuotedStr(Edit12.Text);
          FormClientesFast.frxReport7.Variables['LCA_DESCRICAO']:=QuotedStr(Edit13.Text);
          FormClientesFast.frxReport7.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport7.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport7.Variables['VEN_CODIGO2']:=QuotedStr(Edit14.Text); //televenda.
          FormClientesFast.frxReport7.Variables['VEN_NOME2']:=QuotedStr(Edit15.Text);
          FormClientesFast.frxReport7.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Clientes por estado'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit15.Text<>'' then Where:=Where+' and CLI_TELEVENDA='+QuotedStr(Edit14.Text);
          if Edit17.Text<>'' then Where:=Where+' and CLI_ESTADOCODIGO='+QuotedStr(Edit16.Text);
          if Edit6.Text<>'' then Where:=Where+' and CLI_ATIVIDADE='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY08.Active:=False;
          FormClientesFast.QY08.SQL.Clear;
          FormClientesFast.QY08.SQL.Add(
            'select CLI_CODIGO, CLI_NOME, CLI_FONE1, CLI_FONE2, CLI_DTCADASTRO, CLI_ESTADOCODIGO, ESD_NOME, '+
            'A.VEN_NOME as VENDEDOR, B.VEN_NOME as TELEVENDA from CLIENTES '+
            'left join ESTADOS on CLI_ESTADOCODIGO=ESD_CODIGO '+
            'left join VENDEDORES A on CLI_VENDEDOR=A.VEN_CODIGO '+
            'left join VENDEDORES B on CLI_TELEVENDA=B.VEN_CODIGO '+
            'where CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by ESD_NOME, CLI_NOME');
          FormClientesFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY08.Open;
          FormClientesFast.frxReport8.Variables['TITULO']:=QuotedStr('Clientes por estado');
          FormClientesFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport8.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport8.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport8.Variables['ESD_CODIGO']:=QuotedStr(Edit16.Text);
          FormClientesFast.frxReport8.Variables['ESD_NOME']:=QuotedStr(Edit17.Text);
          FormClientesFast.frxReport8.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport8.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport8.Variables['VEN_CODIGO2']:=QuotedStr(Edit14.Text); //televenda.
          FormClientesFast.frxReport8.Variables['VEN_NOME2']:=QuotedStr(Edit15.Text);
          FormClientesFast.frxReport8.Variables['ATI_CODIGO']:=QuotedStr(Edit5.Text);
          FormClientesFast.frxReport8.Variables['ATI_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormClientesFast.frxReport8.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Clientes devedores acima do limite de crédito'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY09.Active:=False;
          FormClientesFast.QY09.SQL.Clear;
          FormClientesFast.QY09.SQL.Add(
            'select REE_CLIENTE, CLI_FONE1, CLI_LIMITECREDITO, CLI_NOME, CLI_VENDEDOR, '+
            'VEN_NOME, sum(REE_VALOR+REE_VALORACESSORIAS) as TOTAL from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where REE_STATUS=''A'' '+Where+' '+
            'group by CLI_VENDEDOR, VEN_NOME, REE_CLIENTE, CLI_FONE1, CLI_NOME, CLI_LIMITECREDITO '+
            'having sum(REE_VALOR+REE_VALORACESSORIAS) > CLI_LIMITECREDITO '+
            'order by VEN_NOME, CLI_NOME');
          FormClientesFast.QY09.Open;
          FormClientesFast.frxReport9.Variables['TITULO']:=QuotedStr('Clientes devedores acima do limite de crédito');
          FormClientesFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport9.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport9.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport9.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Clientes devedores a mais de x dias'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY10.Active:=False;
          FormClientesFast.QY10.SQL.Clear;
          FormClientesFast.QY10.SQL.Add(
            'select A.REE_CLIENTE, C.CLI_BLOQUEARVENDA, C.CLI_DIACOBRANCA, C.CLI_LIMITECREDITO, '+
            'C.CLI_MENSALISTA, C.CLI_NOME, C.CLI_VENDEDOR, V.VEN_NOME, '+
            '(select first(1) B.REE_DTVENCIMENTO from RECEBER B where B.REE_CLIENTE=A.REE_CLIENTE and B.REE_STATUS=''A'' order by B.REE_DTVENCIMENTO) as VECTOMAISANTIGO, '+
            '(select sum(iif(D.REE_DTVENCIMENTO < :data, D.REE_VALOR, 0)) as VEN from RECEBER D where D.REE_CLIENTE=A.REE_CLIENTE and D.REE_STATUS=''A'') as VENCIDOS, '+
            '(select sum(iif(E.REE_DTVENCIMENTO >= current_date, E.REE_VALOR, 0)) as VEN from RECEBER E where E.REE_CLIENTE=A.REE_CLIENTE and E.REE_STATUS=''A'') as AVENCER '+
            'from RECEBER A '+
            'left join CLIENTES C on A.REE_CLIENTE=C.CLI_CODIGO '+
            'left join VENDEDORES V on C.CLI_VENDEDOR=V.VEN_CODIGO '+
            'where A.REE_DTVENCIMENTO < :data and A.REE_STATUS=''A'' '+Where+' '+
            'group by A.REE_CLIENTE, C.CLI_NOME, C.CLI_BLOQUEARVENDA, C.CLI_MENSALISTA, '+
            'C.CLI_DIACOBRANCA, C.CLI_LIMITECREDITO, C.CLI_VENDEDOR, V.VEN_NOME '+
            'order by V.VEN_NOME, C.CLI_NOME');
          FormClientesFast.QY10.ParamByName('data').AsDate:=Date-StrToInt(Edit11.Text);
          FormClientesFast.QY10.Open;
          FormClientesFast.frxReport10.Variables['TITULO']:=QuotedStr('Clientes devedores a mais de x dias');
          FormClientesFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport10.Variables['DIAS']:=QuotedStr(Edit11.Text+' ('+DateToStr(Date-StrToInt(Edit11.Text))+')');
          FormClientesFast.frxReport10.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport10.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport10.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport10.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport10.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Clientes aniversariantes por vendedor.'}
          if Edit6.Text<>'' then Where:=Where+' and CLI_ATIVIDADE='+QuotedStr(Edit5.Text);
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit10.Text<>'' then Where:=Where+' and CLI_CIDADE='+QuotedStr(Edit10.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY11.Close;
          FormClientesFast.QY11.SQL.Clear;
          FormClientesFast.QY11.SQL.Add(
            'select CLI_CIDADE, CLI_CODIGO, CLI_DTNASC, CLI_ESTADO, CLI_FONE1, CLI_FONE2, '+
            'CLI_FONE3, CLI_NOME, CLI_STATUS, CLI_VENDEDOR, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where extract(MONTH from CLI_DTNASC)=:mes '+
            'and CLI_DTCADASTRO between :datainicial and :datafinal '+Where+' order by VEN_NOME, CLI_NOME');
          FormClientesFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClientesFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClientesFast.QY11.ParamByName('mes').AsInteger:=ComboBox2.ItemIndex+1;
          FormClientesFast.QY11.Open;
          FormClientesFast.frxReport11.Variables['TITULO']:=QuotedStr('Clientes aniversariantes por vendedor.');
          FormClientesFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClientesFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClientesFast.frxReport11.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport11.Variables['ATI_CODIGO']:=QuotedStr(Edit5.Text);
          FormClientesFast.frxReport11.Variables['ATI_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormClientesFast.frxReport11.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport11.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport11.Variables['CID_CODIGO']:=QuotedStr(Edit9.Text);
          FormClientesFast.frxReport11.Variables['CID_NOME']:=QuotedStr(Edit10.Text);
          FormClientesFast.frxReport11.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport11.Variables['MES']:=QuotedStr(ComboBox2.Text);
          FormClientesFast.frxReport11.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Classificação dos clientes'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');
          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY12.Close;
          FormClientesFast.QY12.SQL.Clear;
          FormClientesFast.QY12.SQL.Add(
            'select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME, ULTIMAVENDA, datediff(day, x.ULTIMAVENDA, current_date) as DIAS, '+
            'case '+
            '  when datediff(day, x.ULTIMAVENDA, current_date) between 1   and 60  then ''01 - ATIVOS'' '+
            '  when datediff(day, x.ULTIMAVENDA, current_date) between 61  and 120 then ''02 - QUASE INATIVOS'' '+
            '  when datediff(day, x.ULTIMAVENDA, current_date) between 121 and 180 then ''03 - INATIVOS RECENTE'' '+
            '  when datediff(day, x.ULTIMAVENDA, current_date) between 181 and 360 then ''04 - INATIVOS'' '+
            '  when datediff(day, x.ULTIMAVENDA, current_date) > 360 then ''05 - EX-CLIENTES'' '+
            '  when x.ULTIMAVENDA is null then ''06 - NUNCA COMPRARAM'' '+
            'end as CLASSIFICACAO '+
            'from '+
            '  (select CLI_CODIGO, CLI_EMAIL, CLI_FONE1, CLI_FONE2, CLI_NOME, CLI_VENDEDOR, VEN_NOME, '+
            '    (select first(1) VED_DTEMISSAO from VENDAS where VED_CLIENTE=CLI_CODIGO and VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' '+
            '     order by VED_CODIGO desc) as ULTIMAVENDA '+
            '   from CLIENTES '+
            '   left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            '   where 1=1 '+Where+' ) x '+
            'order by 6,10,5');
          FormClientesFast.QY12.Open;
          FormClientesFast.frxReport12.Variables['TITULO']:=QuotedStr('Classificação dos clientes.');
          FormClientesFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport12.Variables['CLI_STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport12.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport12.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport12.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport12.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Clientes com reposições'}
          if Edit4.Text<>'' then Where:=Where+' and CLI_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('A');
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and CLI_STATUS='+QuotedStr('I');
          if ComboBox3.Text='FISICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('F');
          if ComboBox3.Text='JURIDICA' then Where:=Where+' and CLI_TIPOPESSOA='+QuotedStr('J');

          Application.CreateForm(TFormClientesFast, FormClientesFast);
          FormClientesFast.QY13.Active:=False;
          FormClientesFast.QY13.SQL.Clear;
          FormClientesFast.QY13.SQL.Add(
            'select CLI_CODIGO, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_NOME, CLI_REPOSICOES, CLI_VENDEDOR, VEN_NOME from CLIENTES '+
            'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO '+
            'where CLI_REPOSICOES>0 '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormClientesFast.QY13.Open;
          FormClientesFast.frxReport13.Variables['TITULO']:=QuotedStr('Clientes com reposições.');
          FormClientesFast.frxReport13.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClientesFast.frxReport13.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClientesFast.frxReport13.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClientesFast.frxReport13.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClientesFast.frxReport13.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormClientesFast.frxReport13.Variables['CLI_TIPOPESSOA']:=QuotedStr(ComboBox3.Text);
          FormClientesFast.frxReport13.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormClientesFast.frxReport13.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormClientesFast.frxReport13.ShowReport;
          FormClientesFast.Free;
          FormClientesFast:=nil;
          {$ENDREGION}
        end;

  end;
end;

procedure TFormClientesRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocCidadesBotao(Edit9,Edit10);
end;

procedure TFormClientesRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocLocaisBotao(Edit12,Edit13);
end;

procedure TFormClientesRel.PngSpeedButton3Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit14,Edit15,nil);
end;

procedure TFormClientesRel.PngSpeedButton4Click(Sender: TObject);
begin
  LocEstadosBotao(Edit16,Edit17);
end;

procedure TFormClientesRel.FormCreate(Sender: TObject);
var Ano, Mes, Dia : Word;
begin
  Edit1.Text:='0';
  Edit2.Text:='999999';
  Edit11.Text:='45';
  ComboBox1.ItemIndex:=0;
  DecodeDate(Date,Ano,Mes,Dia);
  ComboBox2.ItemIndex:=Mes-1; //mes atual.
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormClientesRel.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormClientesRel.Edit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit12Exit(Sender: TObject);
begin
  LocLocaisExit(Edit12,Edit13);
end;

procedure TFormClientesRel.Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormClientesRel.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.Edit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit14Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit14,Edit15,nil);
end;

procedure TFormClientesRel.Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormClientesRel.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.Edit16Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit16Exit(Sender: TObject);
begin
  LocEstadosExit(Edit16,Edit17);
end;

procedure TFormClientesRel.Edit16KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormClientesRel.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormClientesRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Clientes por ramo de atividade'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=True;   SpeedButton1.Enabled:=True;     //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True;  //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Clientes por cidade'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True;  //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Clientes que nunca compraram'}
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Clientes sem compras em um período'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=True;   SpeedButton1.Enabled:=True;     //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Clientes por mailing'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;     //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=True;  PngSpeedButton3.Enabled:=True;  //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Clientes por local de trabalho'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=True;  PngSpeedButton2.Enabled:=True;  //local.
          Edit14.Enabled:=True;  PngSpeedButton3.Enabled:=True;  //televenda.
          Edit16.Enabled:=True;  PngSpeedButton4.Enabled:=True; //estado.
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Clientes por local de estudo'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=True;  PngSpeedButton2.Enabled:=True;  //local.
          Edit14.Enabled:=True;  PngSpeedButton3.Enabled:=True;  //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Clientes por estado'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=True;   SpeedButton1.Enabled:=True;     //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=True;  PngSpeedButton3.Enabled:=True;  //televenda.
          Edit16.Enabled:=True;  PngSpeedButton4.Enabled:=True;  //estado.
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Clientes devedores acima do limite de crédito'}
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Clientes devedores a mais de x dias'}
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Clientes aniversariantes por vendedor'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=True;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=True;   SpeedButton1.Enabled:=True;     //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True;  //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Classificação dos clientes'}
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Clientes com reposições'}
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          Edit2.Enabled:=False;
          Edit11.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          Edit5.Enabled:=False;  SpeedButton1.Enabled:=False;    //atividade.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False;    //mailing.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //cidade.
          Edit12.Enabled:=False; PngSpeedButton2.Enabled:=False; //local.
          Edit14.Enabled:=False; PngSpeedButton3.Enabled:=False; //televenda.
          Edit16.Enabled:=False; PngSpeedButton4.Enabled:=False; //estado.
          {$ENDREGION}
        end;
  end;
end;

procedure TFormClientesRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormClientesRel.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormClientesRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormClientesRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit5Exit(Sender: TObject);
begin
  LocAtividadesExit(Edit5,Edit6);
end;

procedure TFormClientesRel.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormClientesRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.SpeedButton1Click(Sender: TObject);
begin
  LocAtividadesBotao(Edit5,Edit6);
end;

procedure TFormClientesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClientesRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit7Exit(Sender: TObject);
begin
  LocMailingsExit(Edit7,Edit8);
end;

procedure TFormClientesRel.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormClientesRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.Edit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClientesRel.Edit9Exit(Sender: TObject);
begin
  LocCidadesExit(Edit9,Edit10);
end;

procedure TFormClientesRel.Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormClientesRel.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClientesRel.SpeedButton3Click(Sender: TObject);
begin
  LocMailingsBotao(Edit7,Edit8);
end;

end.

