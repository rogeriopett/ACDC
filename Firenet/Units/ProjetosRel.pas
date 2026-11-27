//Atualizacoes:
//2026.11.24 - Relatorios no FastReport (FormProjetosFast, PRJ01 a PRJ09); os QuickReports (FormProjetosQ01 a Q09) ficaram comentados.
unit ProjetosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormProjetosRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
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
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label8: TLabel;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosRel: TFormProjetosRel;

implementation
uses Funcoes1, FuncoesFirenet, DataMod, DataMod2, FasesLoc, DataModSearch, ProjetosFast;

{$R *.dfm}

procedure TFormProjetosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormProjetosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProjetosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetosRel.BitBtn1Click(Sender: TObject);
var Where, Where2: AnsiString;
begin
  case ComboBox1.ItemIndex of
    00: begin
          //QuickReport antigo (FormProjetosQ01), trocado pelo FastReport (FormProjetosFast, PRJ01) em 2026.11.24:
          //AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
          //Application.CreateForm(TFormProjetosQ01, FormProjetosQ01);
          //FormProjetosQ01.QRLabel1.Caption:='Ficha de Projeto - '+IntToStr(DM2.TBProjetosPRJ_CODIGO.Value);
          //FormProjetosQ01.FDQuery1.ParamByName('codigo').AsInteger:=DM2.TBProjetosPRJ_CODIGO.Value;
          //FormProjetosQ01.FDQuery2.ParamByName('codigo').AsInteger:=DM2.TBProjetosPRJ_CODIGO.Value;
          //FormProjetosQ01.FDQuery1.Open;
          //FormProjetosQ01.FDQuery2.Open;
          //FormProjetosQ01.QuickRep1.PreviewModal;
          //FormProjetosQ01.Free;
          //FormProjetosQ01:=nil;
          AbortIf(DM2.TBProjetos.IsEmpty,'Nenhum projeto selecionado.');
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBProjetosPRJ_CODIGO.Value;
          FormProjetosFast.QY01A.ParamByName('codigo').AsInteger:=DM2.TBProjetosPRJ_CODIGO.Value;
          FormProjetosFast.QY01.Open;
          FormProjetosFast.QY01A.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport1,'Ficha de Projeto - '+IntToStr(DM2.TBProjetosPRJ_CODIGO.Value));
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    01: begin
          //QuickReport antigo (FormProjetosQ02), trocado pelo FastReport (FormProjetosFast, PRJ02) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ02, FormProjetosQ02);
          //FormProjetosQ02.QRLabel1.Caption:='Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text;
          //FormProjetosQ02.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit3.Text<>'' then Where:='and PRJ_CLIENTE='+QuotedStr(Edit3.Text);
          //if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          //FormProjetosQ02.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
          //                                 'order by CLI_NOME, VEN_NOME');
          //FormProjetosQ02.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ02.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ02.FDQuery1.Open;
          //FormProjetosQ02.QuickRep1.PreviewModal;
          //FormProjetosQ02.Free;
          //FormProjetosQ02:=nil;
          Where:='';
          if Edit3.Text<>'' then Where:='and PRJ_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY02.SQL.Clear;
          FormProjetosFast.QY02.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, VEN_NOME ');
          FormProjetosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY02.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport2,'Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    02: begin
          //QuickReport antigo (FormProjetosQ03), trocado pelo FastReport (FormProjetosFast, PRJ03) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ03, FormProjetosQ03);
          //FormProjetosQ03.QRLabel1.Caption:='Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text;
          //FormProjetosQ03.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          //FormProjetosQ03.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ03.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ03.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ03.FDQuery1.Open;
          //FormProjetosQ03.QuickRep1.PreviewModal;
          //FormProjetosQ03.Free;
          //FormProjetosQ03:=nil;
          Where:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY03.SQL.Clear;
          FormProjetosFast.QY03.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY03.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport3,'Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    03: begin
          //QuickReport antigo (FormProjetosQ04), trocado pelo FastReport (FormProjetosFast, PRJ04) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ04, FormProjetosQ04);
          //FormProjetosQ04.QRLabel1.Caption:='Projetos com visita em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormProjetosQ04.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //FormProjetosQ04.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'CLI_NOME, VEN_NOME, PRJ_DTVISITAPREVISTA, PRJ_DTPRIMEIROCONTATO, PRJ_TIPO, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTVISITAPREVISTA between :datainicial and :datafinal and PRJ_STATUSVISITA=''ABERTO'' '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ04.FDQuery1.Open;
          //FormProjetosQ04.QuickRep1.PreviewModal;
          //FormProjetosQ04.Free;
          //FormProjetosQ04:=nil;
          Where:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY04.SQL.Clear;
          FormProjetosFast.QY04.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'CLI_NOME, VEN_NOME, PRJ_DTVISITAPREVISTA, PRJ_DTPRIMEIROCONTATO, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTVISITAPREVISTA between :datainicial and :datafinal and PRJ_STATUSVISITA=''ABERTO'' '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY04.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport4,'Projetos com visita em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    04: begin
          //QuickReport antigo (FormProjetosQ07), trocado pelo FastReport (FormProjetosFast, PRJ07) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ07, FormProjetosQ07);
          //FormProjetosQ07.QRLabel1.Caption:='Projetos com projeto CAD em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormProjetosQ07.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //FormProjetosQ07.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PRJ_TIPO, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTPROJETOCADPREVISTO between :datainicial and :datafinal and PRJ_STATUSPROJETOCAD=''ABERTO'' '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ07.FDQuery1.Open;
          //FormProjetosQ07.QuickRep1.PreviewModal;
          //FormProjetosQ07.Free;
          //FormProjetosQ07:=nil;
          Where:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY07.SQL.Clear;
          FormProjetosFast.QY07.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTPROJETOCADPREVISTO between :datainicial and :datafinal and PRJ_STATUSPROJETOCAD=''ABERTO'' '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY07.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport7,'Projetos com projeto CAD em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    05: begin
          //QuickReport antigo (FormProjetosQ05), trocado pelo FastReport (FormProjetosFast, PRJ05) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ05, FormProjetosQ05);
          //FormProjetosQ05.QRLabel1.Caption:='Projetos com orçamento em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormProjetosQ05.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //FormProjetosQ05.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PRJ_TIPO, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTORCAMENTOPREVISTO between :datainicial and :datafinal and PRJ_STATUSORCAMENTO=''ABERTO'' '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ05.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ05.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ05.FDQuery1.Open;
          //FormProjetosQ05.QuickRep1.PreviewModal;
          //FormProjetosQ05.Free;
          //FormProjetosQ05:=nil;
          Where:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY05.SQL.Clear;
          FormProjetosFast.QY05.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'CLI_NOME, VEN_NOME, PRJ_DTORCAMENTOPREVISTO, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTORCAMENTOPREVISTO between :datainicial and :datafinal and PRJ_STATUSORCAMENTO=''ABERTO'' '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY05.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport5,'Projetos com orçamento em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    06: begin
          //QuickReport antigo (FormProjetosQ06), trocado pelo FastReport (FormProjetosFast, PRJ06) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ06, FormProjetosQ06);
          //FormProjetosQ06.QRLabel1.Caption:='Projetos com apresentação em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormProjetosQ06.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //FormProjetosQ06.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'CLI_NOME, VEN_NOME, PRJ_DTAPRESENTACAOPREVISTA, PRJ_TIPO, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTAPRESENTACAOPREVISTA between :datainicial and :datafinal and PRJ_STATUSAPRESENTACAO=''ABERTO'' '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ06.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ06.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ06.FDQuery1.Open;
          //FormProjetosQ06.QuickRep1.PreviewModal;
          //FormProjetosQ06.Free;
          //FormProjetosQ06:=nil;
          Where:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY06.SQL.Clear;
          FormProjetosFast.QY06.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'CLI_NOME, VEN_NOME, PRJ_DTAPRESENTACAOPREVISTA, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTAPRESENTACAOPREVISTA between :datainicial and :datafinal and PRJ_STATUSAPRESENTACAO=''ABERTO'' '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY06.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport6,'Projetos com apresentação em aberto de: '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    07: begin
          //QuickReport antigo (FormProjetosQ08), trocado pelo FastReport (FormProjetosFast, PRJ08) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ08, FormProjetosQ08);
          //FormProjetosQ08.QRLabel1.Caption:='Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text;
          //FormProjetosQ08.FDQuery1.SQL.Clear;
          //Where:=''; Where2:='';
          //if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          //if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          //FormProjetosQ08.FDQuery1.SQL.Add('select PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_CODIGO, PRJ_STATUSPROJETO, '+
          //                                 'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO from PROJETOS '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
          //                                 'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
          //                                 'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
          //                                 'order by VEN_NOME, CLI_NOME');
          //FormProjetosQ08.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ08.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ08.FDQuery1.Open;
          //FormProjetosQ08.FDQuery2.SQL.Clear;
          //if ComboBox3.Text<>'TODAS' then Where2:=Where2+' and PJF_STATUS='+QuotedStr(ComboBox3.Text);
          //FormProjetosQ08.FDQuery2.SQL.Add('select * from PROJETOSFASES '+
          //                                 'left join FASES on PJF_FASE=FAS_CODIGO '+
          //                                 'where PJF_PROJETO=:PRJ_CODIGO '+Where2+' order by PJF_CODIGO desc');
          //FormProjetosQ08.FDQuery2.Open;
          //FormProjetosQ08.QuickRep1.PreviewModal;
          //FormProjetosQ08.Free;
          //FormProjetosQ08:=nil;
          Where:=''; Where2:='';
          if Edit1.Text<>'' then Where:='and PRJ_ARQUITETO='+QuotedStr(Edit1.Text);
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          if ComboBox3.Text<>'TODAS' then Where2:=Where2+' and PJF_STATUS='+QuotedStr(ComboBox3.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY08.SQL.Clear;
          FormProjetosFast.QY08.SQL.Add(
            'select PRJ_CODIGO, PRJ_NOME, PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_TIPO, PRJ_VALORTOTAL, PRJ_STATUSPROJETO, '+
            'PRJ_DTCADASTRO, CLI_NOME, VEN_NOME, PJT_DESCRICAO '+
            'from PROJETOS '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO '+
            'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO '+
            'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, CLI_NOME ');
          FormProjetosFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY08A.SQL.Clear;
          FormProjetosFast.QY08A.SQL.Add(
            'select PJF_FASE, FAS_DESCRICAO, PJF_DTPREVISAO, PJF_DTINICIO, PJF_DTFIM, PJF_STATUS '+
            'from PROJETOSFASES '+
            'left join FASES on PJF_FASE=FAS_CODIGO '+
            'where PJF_PROJETO=:PRJ_CODIGO '+Where2+' '+
            'order by PJF_CODIGO desc ');
          FormProjetosFast.QY08.Open;
          FormProjetosFast.QY08A.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport8,'Projetos de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
    08: begin
          //QuickReport antigo (FormProjetosQ09), trocado pelo FastReport (FormProjetosFast, PRJ09) em 2026.11.24:
          //Application.CreateForm(TFormProjetosQ09, FormProjetosQ09);
          //FormProjetosQ09.QRLabel1.Caption:='Projetos por fase de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text;
          //FormProjetosQ09.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit6.Text<>'' then Where:='and PJF_FASE='+QuotedStr(Edit5.Text);
          //if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          //if ComboBox3.Text<>'TODAS' then Where:=Where+' and PJF_STATUS='+QuotedStr(ComboBox3.Text);
          //FormProjetosQ09.FDQuery1.SQL.Add('select PJF_DTINICIO, PJF_DTFIM, PJF_DTPREVISAO, PJF_FASE, PJF_PROJETO, PJF_STATUS, '+
          //                                 'PRJ_CODIGO, PRJ_NOME, PRJ_CLIENTE, PRJ_STATUSPROJETO, CLI_NOME, FAS_DESCRICAO from PROJETOSFASES '+
          //                                 'left join PROJETOS on PJF_PROJETO=PRJ_CODIGO '+
          //                                 'left join FASES on PJF_FASE=FAS_CODIGO '+
          //                                 'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
          //                                 'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
          //                                 'order by FAS_DESCRICAO, CLI_NOME');
          //FormProjetosQ09.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormProjetosQ09.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormProjetosQ09.FDQuery1.Open;
          //FormProjetosQ09.QuickRep1.PreviewModal;
          //FormProjetosQ09.Free;
          //FormProjetosQ09:=nil;
          Where:='';
          if Edit6.Text<>'' then Where:='and PJF_FASE='+QuotedStr(Edit5.Text);
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRJ_STATUSPROJETO='+QuotedStr(ComboBox2.Text);
          if ComboBox3.Text<>'TODAS' then Where:=Where+' and PJF_STATUS='+QuotedStr(ComboBox3.Text);
          Application.CreateForm(TFormProjetosFast, FormProjetosFast);
          FormProjetosFast.QY09.SQL.Clear;
          FormProjetosFast.QY09.SQL.Add(
            'select PJF_DTINICIO, PJF_DTFIM, PJF_DTPREVISAO, PJF_FASE, PJF_PROJETO, PJF_STATUS, '+
            'PRJ_CODIGO, PRJ_NOME, PRJ_CLIENTE, PRJ_STATUSPROJETO, CLI_NOME, FAS_DESCRICAO '+
            'from PROJETOSFASES '+
            'left join PROJETOS on PJF_PROJETO=PRJ_CODIGO '+
            'left join FASES on PJF_FASE=FAS_CODIGO '+
            'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO '+
            'where PRJ_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FAS_DESCRICAO, CLI_NOME ');
          FormProjetosFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProjetosFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProjetosFast.QY09.Open;
          FormProjetosFast.Mostrar(FormProjetosFast.frxReport9,'Projetos por fase de: '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox2.Text);
          FormProjetosFast.Free;
          FormProjetosFast:=nil;
        end;
  end; //case.
end;

procedure TFormProjetosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProjetosRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormProjetosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProjetosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetosRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProjetosRel.Edit5Exit(Sender: TObject);
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
    DMS.QYFases.Close;
    DMS.QYFases.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYFases.Open;
    if not DMS.QYFases.IsEmpty then
    begin
      Edit5.Text:=IntToStr(DMS.QYFasesFAS_CODIGO.Value);
      Edit6.Text:=DMS.QYFasesFAS_DESCRICAO.Value;
    end else
    begin
      Edit5.Clear;
      Edit6.Clear;
      MessageDlg('Fase não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYFases.Close;
  end;
end;

procedure TFormProjetosRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProjetosRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetosRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

procedure TFormProjetosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProjetosRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormProjetosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormProjetosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetosRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormProjetosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          ComboBox2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    06: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    07: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=True;
        end;
    08: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit5.Enabled:=True;
          PngSpeedButton1.Enabled:=True;
          ComboBox3.Enabled:=True;
        end;
  end;
end;

procedure TFormProjetosRel.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormProjetosRel.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormProjetosRel.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFasesLoc, FormFasesLoc);
  FormFasesLoc.ShowModal;
  if FasesLoc.Procurar then
  begin
    Edit5.Text:=IntToStr(FormFasesLoc.QYFasesFAS_CODIGO.Value);
    Edit6.Text:=FormFasesLoc.QYFasesFAS_DESCRICAO.Value;
  end;
  FormFasesLoc.Free;
  FormFasesLoc:=nil;
end;

end.
