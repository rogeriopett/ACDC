unit ProducaoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormProducaoRel = class(TForm)
    Label22: TLabel;
    Label24: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox2: TComboBox;
    BitBtn3: TPngBitBtn;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit2: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoRel: TFormProducaoRel;

implementation
uses DataMod, ClientesLoc, Funcoes1, FuncoesFirenet, DataModSearch,
  ProdutosLoc, ProducaoFast;
//  ProducaoQ01, ProducaoQ02, ProducaoQ03, ProducaoQ04, ProducaoQ05, ProducaoQ06, ProducaoQ07,
//  ProducaoQ08, ProducaoQ09,

{$R *.dfm}

procedure TFormProducaoRel.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox2Change(Self); //dispara evento onChange.
end;

procedure TFormProducaoRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProducaoRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocProdutosBotao(Edit2,Edit4);
end;

procedure TFormProducaoRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProducaoRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  AbortIf(((MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ')),'Digite as datas!');

  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Ordem de Produção.'}
          AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY01a.Close;
          FormProducaoFast.QY01.Close;
          FormProducaoFast.QY01.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
          FormProducaoFast.QY01.Open;
          FormProducaoFast.QY01a.Open;
          FormProducaoFast.frxReport1.Variables['TITULO']:=QuotedStr('Ordem de Produção');
          FormProducaoFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport1.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Ordens de produção por cliente.'}
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
          if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('I');
          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY02.Close;
          FormProducaoFast.QY02.SQL.Clear;
          FormProducaoFast.QY02.SQL.Add(
            'select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_DTPREVISAO, CLI_NOME from PRODUCAO '+
            'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
            'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by PRD_CLIENTE, PRD_DTCADASTRO desc'
          );
          FormProducaoFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY02.Open;
          FormProducaoFast.frxReport2.Variables['TITULO']:=QuotedStr('Ordens de Produção por Cliente');
          FormProducaoFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProducaoFast.frxReport2.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ01, FormProducaoQ01);
//          FormProducaoQ01.QRLabel1.Caption:='Ordens de Produção de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - '+ComboBox1.Text;
//          FormProducaoQ01.FDQuery1.Active:=False;
//          FormProducaoQ01.FDQuery1.SQL.Clear;
//          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
//          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
//          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
//          FormProducaoQ01.FDQuery1.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_DTPREVISAO, CLI_NOME from PRODUCAO '+
//                                           'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
//                                           'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
//                                           'order by PRD_CLIENTE, PRD_DTCADASTRO desc');
//          FormProducaoQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoQ01.FDQuery1.Active:=True;
//          FormProducaoQ01.QuickRep1.PreviewModal;
//          FormProducaoQ01.Free;
//          FormProducaoQ01:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Ordens de produção por cliente com itens.'}
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
          if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('I');
          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY03a.Close;
          FormProducaoFast.QY03.Close;
          FormProducaoFast.QY03.SQL.Clear;
          FormProducaoFast.QY03.SQL.Add(
            'select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_DTPREVISAO, CLI_NOME from PRODUCAO '+
            'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
            'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by PRD_CLIENTE, PRD_DTCADASTRO desc'
          );
          FormProducaoFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY03.Open;
          FormProducaoFast.QY03a.Open;
          FormProducaoFast.frxReport3.Variables['TITULO']:=QuotedStr('Ordens de Produção por Cliente com Itens');
          FormProducaoFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProducaoFast.frxReport3.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ02, FormProducaoQ02);
//          FormProducaoQ02.QRLabel1.Caption:='Ordens de Produção de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - '+ComboBox1.Text;
//          FormProducaoQ02.FDQuery1.Active:=False;
//          FormProducaoQ02.FDQuery1.SQL.Clear;
//          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
//          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
//          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
//          FormProducaoQ02.FDQuery1.SQL.Add('select PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_STATUS, PRD_DATABAIXA, PRD_DTPREVISAO, CLI_NOME from PRODUCAO '+
//                                           'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
//                                           'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
//                                           'order by PRD_CLIENTE, PRD_DTCADASTRO desc');
//          FormProducaoQ02.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoQ02.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoQ02.FDQuery1.Active:=True;
//          FormProducaoQ02.FDQuery2.Active:=True;
//          FormProducaoQ02.QuickRep1.PreviewModal;
//          FormProducaoQ02.Free;
//          FormProducaoQ02:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Disponibilidade de estoque analítico.'}
          if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY07a.Close;
          FormProducaoFast.QY07b.Close;
          FormProducaoFast.QY07c.Close;
          FormProducaoFast.QY07.Close;
          FormProducaoFast.QY06.SQL.Clear;
          FormProducaoFast.QY06.SQL.Add(
            'select PDI_PRODUTO, PRO_NOME, sum(PDI_QUANTIDADE) as TOTAL '+
            'from PRODUCAOITENS '+
            'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
            'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
            'where PRD_STATUS=''A'' and PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'group by PDI_PRODUTO, PRO_NOME'
          );
          FormProducaoFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY07.Open;
          FormProducaoFast.QY07a.Open;
          FormProducaoFast.QY07b.Open;
          FormProducaoFast.QY07c.Open;
          FormProducaoFast.frxReport7.Variables['TITULO']:=QuotedStr('Disponibilidade em estoque analítico.');
          FormProducaoFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport7.Variables['STATUS']:=QuotedStr('ABERTAS');
          FormProducaoFast.frxReport7.Variables['PRO_CODIGO']:=QuotedStr(Edit2.Text);
          FormProducaoFast.frxReport7.Variables['PRO_NOME']:=QuotedStr(Edit4.Text);
          FormProducaoFast.frxReport7.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ04, FormProducaoQ04);
//          FormProducaoQ04.QRLabel1.Caption:='Disponibilidade em estoque analítico. De '+MaskEdit1.Text+' até '+MaskEdit2.Text;
//          FormProducaoQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoQ04.FDQuery1.Open;
//          FormProducaoQ04.FDQuery2.Open;
//          FormProducaoQ04.FDQuery3.Open;
//          FormProducaoQ04.FDQuery4.Open;
//          FormProducaoQ04.QuickRep1.PreviewModal;
//          FormProducaoQ04.Free;
//          FormProducaoQ04:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Disponibilidade de estoque sintético.'}
          //o filtro teria que ser no qy06a... if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY06a.Close;
          FormProducaoFast.QY06b.Close;
          FormProducaoFast.QY06.Close;
          FormProducaoFast.QY06.SQL.Clear;
          FormProducaoFast.QY06.SQL.Add(
            'select PDI_PRODUTO, PRO_NOME, sum(PDI_QUANTIDADE) as TOTAL from PRODUCAOITENS '+
            'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
            'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
            'where PRD_STATUS=''A'' and PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'group by PDI_PRODUTO, PRO_NOME'
          );
          FormProducaoFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY06.Open;
          FormProducaoFast.QY06a.Open;
          FormProducaoFast.QY06b.Open;
          FormProducaoFast.CriarTabelaProdutosEstoque(StrToDate(MaskEdit1.Text,FS), StrToDate(MaskEdit2.Text,FS));
          FormProducaoFast.frxReport6.Variables['TITULO']:=QuotedStr('Disponibilidade em estoque sintético.');
          FormProducaoFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport6.Variables['STATUS']:=QuotedStr('ABERTAS');
          FormProducaoFast.frxReport6.Variables['PRO_CODIGO']:=QuotedStr(Edit2.Text);
          FormProducaoFast.frxReport6.Variables['PRO_NOME']:=QuotedStr(Edit4.Text);
          FormProducaoFast.frxReport6.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ05, FormProducaoQ05);
//          FormProducaoQ05.QRLabel1.Caption:='Disponibilidade em estoque sintético. De '+MaskEdit1.Text+' até '+MaskEdit2.Text;
//          FormProducaoQ05.QuickRep1.PreviewModal;
//          FormProducaoQ05.Free;
//          FormProducaoQ05:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Plano de Produção modelo 01.'}
          AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY08a.Close;
          FormProducaoFast.QY08.Close;
          FormProducaoFast.QY08.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
          FormProducaoFast.QY08.Open;
          FormProducaoFast.QY08a.Open;
          FormProducaoFast.frxReport8.Variables['TITULO']:=QuotedStr('Plano de Produção');
          FormProducaoFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport8.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;
          {$ENDREGION}
        end;
//    06: begin
          {$REGION 'Plano de Produção modelo 02.'}
//          if DM.TBProducao.IsEmpty then
//          begin
//            MessageDlg('Nenhuma ordem de produção selecionada.',mtError,[mbOk],0);
//            Exit;
//          end;
//          Application.CreateForm(TFormProducaoQ07, FormProducaoQ07);
//          FormProducaoQ07.FDQuery1.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
//          FormProducaoQ07.FDQuery1.Active:=True;
//          FormProducaoQ07.FDQuery2.Active:=True;
//          FormProducaoQ07.QuickRep1.PreviewModal;
//          FormProducaoQ07.Free;
//          FormProducaoQ07:=nil;
          {$ENDREGION}
//        end;
    06: begin
          {$REGION 'Produtos Produzidos Analítico.'}
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
          if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('I');
          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY04.Close;
          FormProducaoFast.QY04.SQL.Clear;
          FormProducaoFast.QY04.SQL.Add(
            'select PDI_PRODUTO, PDI_QUANTIDADE, PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_DATABAIXA, '+
            'PRD_DTPREVISAO, PRD_STATUS, CLI_NOME, PRO_NOME from PRODUCAOITENS '+
            'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
            'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
            'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
            'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by PRO_NOME, CLI_NOME, PRD_CODIGO'
          );
          FormProducaoFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY04.Open;
          FormProducaoFast.frxReport4.Variables['TITULO']:=QuotedStr('Produtos Produzidos Analítico');
          FormProducaoFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProducaoFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormProducaoFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormProducaoFast.frxReport4.Variables['PRO_CODIGO']:=QuotedStr(Edit2.Text);
          FormProducaoFast.frxReport4.Variables['PRO_NOME']:=QuotedStr(Edit4.Text);
          FormProducaoFast.frxReport4.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ08, FormProducaoQ08);
//          FormProducaoQ08.QRLabel1.Caption:='Produtos produzidos analítico';
//          FormProducaoQ08.QRLabel18.Caption:=MaskEdit1.Text+' até '+MaskEdit2.Text;
//          FormProducaoQ08.QRLabel13.Caption:=Edit2.Text+' - '+Edit4.Text;
//          FormProducaoQ08.QRLabel16.Caption:=Edit1.Text+' - '+Edit3.Text;
//          FormProducaoQ08.QRLabel22.Caption:=ComboBox1.Text;
//          FormProducaoQ08.FDQuery1.Active:=False;
//          FormProducaoQ08.FDQuery1.SQL.Clear;
//          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
//          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
//          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
//          if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
//          FormProducaoQ08.FDQuery1.SQL.Add('select PDI_PRODUTO, PDI_QUANTIDADE, PRD_CODIGO, PRD_CLIENTE, PRD_DTCADASTRO, PRD_DATABAIXA, '+
//                                           'PRD_DTPREVISAO, PRD_STATUS, CLI_NOME, PRO_NOME from PRODUCAOITENS '+
//                                           'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
//                                           'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
//                                           'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO '+
//                                           'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
//                                           'order by PRO_NOME, CLI_NOME, PRD_CODIGO');
//          FormProducaoQ08.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoQ08.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoQ08.FDQuery1.Active:=True;
//          FormProducaoQ08.QuickRep1.PreviewModal;
//          FormProducaoQ08.Free;
//          FormProducaoQ08:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Produtos Produzidos Sintético.'}
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
          if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('I');
          if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY05.Close;
          FormProducaoFast.QY05.SQL.Clear;
          FormProducaoFast.QY05.SQL.Add(
            'select PDI_PRODUTO, sum(PDI_QUANTIDADE) as QTDE, PRO_NOME from PRODUCAOITENS '+
            'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
            'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
            'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'group by PDI_PRODUTO, PRO_NOME '+
            'order by PRO_NOME'
          );
          FormProducaoFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProducaoFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProducaoFast.QY05.Open;
          FormProducaoFast.frxReport5.Variables['TITULO']:=QuotedStr('Produtos Produzidos Sintético');
          FormProducaoFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProducaoFast.frxReport5.Variables['PRO_CODIGO']:=QuotedStr(Edit2.Text);
          FormProducaoFast.frxReport5.Variables['PRO_NOME']:=QuotedStr(Edit4.Text);
          FormProducaoFast.frxReport5.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;

//          Application.CreateForm(TFormProducaoQ09, FormProducaoQ09);
//          FormProducaoQ09.QRLabel1.Caption:='Produtos produzidos sintético';
//          FormProducaoQ09.QRLabel18.Caption:=MaskEdit1.Text+' até '+MaskEdit2.Text;
//          FormProducaoQ09.QRLabel13.Caption:=Edit2.Text+' - '+Edit4.Text;
//          FormProducaoQ09.QRLabel22.Caption:=ComboBox1.Text;
//          FormProducaoQ09.FDQuery1.Active:=False;
//          FormProducaoQ09.FDQuery1.SQL.Clear;
//          if ComboBox1.Text='ABERTAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('A');
//          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PRD_STATUS='+QuotedStr('B');
//          if Edit1.Text<>'' then Where:=Where+' and PRD_CLIENTE='+QuotedStr(Edit3.Text);
//          if Edit4.Text<>'' then Where:=Where+' and PDI_PRODUTO='+QuotedStr(Edit2.Text);
//          FormProducaoQ09.FDQuery1.SQL.Add('select PDI_PRODUTO, sum(PDI_QUANTIDADE) as QTDE, PRO_NOME from PRODUCAOITENS '+
//                                           'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
//                                           'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
//                                           'where PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
//                                           'group by PDI_PRODUTO, PRO_NOME '+
//                                           'order by PRO_NOME');
//          FormProducaoQ09.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoQ09.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoQ09.FDQuery1.Active:=True;
//          FormProducaoQ09.QuickRep1.PreviewModal;
//          FormProducaoQ09.Free;
//          FormProducaoQ09:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Disponibilidade em estoque sintético com histórico de consumo.'}
          Application.CreateForm(TFormProducaoFast, FormProducaoFast);
          FormProducaoFast.QY09a.Close;
//          FormProducaoFast.QY09.Close;
//          FormProducaoFast.QY09.SQL.Clear;
//          FormProducaoFast.QY09.SQL.Add(
//            'select PDI_PRODUTO, PRO_NOME, sum(PDI_QUANTIDADE) as TOTAL from PRODUCAOITENS '+
//            'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO '+
//            'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO '+
//            //'where PRD_STATUS=''A'' and PRD_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
//            'where PRD_STATUS=''A'' '+Where+' '+
//            'group by PDI_PRODUTO, PRO_NOME'
//          );
//          FormProducaoFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormProducaoFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormProducaoFast.QY09.Open;
//          FormProducaoFast.QY09a.Open;
          FormProducaoFast.CriarTabelaProdutosEstoqueConsumo(StrToDate(MaskEdit1.Text,FS), StrToDate(MaskEdit2.Text,FS));
          FormProducaoFast.frxReport9.Variables['TITULO']:=QuotedStr('Disponibilidade em estoque sintético com histórico de consumo.');
          FormProducaoFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProducaoFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProducaoFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProducaoFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProducaoFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProducaoFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProducaoFast.frxReport9.Variables['STATUS']:=QuotedStr('ABERTAS');
          FormProducaoFast.frxReport9.Variables['PRO_CODIGO']:=QuotedStr(Edit2.Text);
          FormProducaoFast.frxReport9.Variables['PRO_NOME']:=QuotedStr(Edit4.Text);
          FormProducaoFast.frxReport9.Variables['MES0']:=QuotedStr(GetNomeMesFuturo(Date,1,2));
          FormProducaoFast.frxReport9.Variables['MES1']:=QuotedStr(GetNomeMesFuturo(Date,2,2));
          FormProducaoFast.frxReport9.Variables['MES2']:=QuotedStr(GetNomeMesFuturo(Date,3,2));
          FormProducaoFast.frxReport9.Variables['MES3']:=QuotedStr(GetNomeMesFuturo(Date,4,2));
          FormProducaoFast.frxReport9.Variables['MES4']:=QuotedStr(GetNomeMesFuturo(Date,5,2));
          FormProducaoFast.frxReport9.Variables['MES5']:=QuotedStr(GetNomeMesFuturo(Date,6,2));
          FormProducaoFast.frxReport9.ShowReport;
          FormProducaoFast.Free;
          FormProducaoFast:=nil;
          {$ENDREGION}
        end;

  end; //case.
end;

procedure TFormProducaoRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit1);
end;

procedure TFormProducaoRel.Edit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProducaoRel.Edit2Exit(Sender: TObject);
begin
  LocProdutosExit(Edit2,Edit4);
end;

procedure TFormProducaoRel.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProducaoRel.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProducaoRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProducaoRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit1);
end;

procedure TFormProducaoRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormProducaoRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProducaoRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          ComboBox1.Enabled:=False;
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    01: begin
          ComboBox1.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit2.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    02: begin
          ComboBox1.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit2.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    03: begin
          ComboBox1.Enabled:=False;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    04: begin
          ComboBox1.Enabled:=False;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    05: begin
          ComboBox1.Enabled:=False;
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
//    06: begin
//          ComboBox1.Enabled:=False;
//          MaskEdit1.Enabled:=False;
//          MaskEdit2.Enabled:=False;
//          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
//          Edit2.Enabled:=False; PngSpeedButton1.Enabled:=False;
//        end;
    06: begin
          ComboBox1.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit2.Enabled:=True; PngSpeedButton1.Enabled:=True;
        end;
    07: begin
          ComboBox1.Enabled:=True;
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    08: begin
          ComboBox1.Enabled:=False;
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
  end; //case.
end;

procedure TFormProducaoRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
