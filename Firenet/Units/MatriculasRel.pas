unit MatriculasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormMatriculasRel = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TPngSpeedButton;
    ComboBox4: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Edit5: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label9: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    SpeedButton3: TPngSpeedButton;
    Label10: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    SpeedButton4: TPngSpeedButton;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    SpeedButton5: TPngSpeedButton;
    Edit12: TEdit;
    Label13: TLabel;
    Edit13: TEdit;
    SpeedButton6: TPngSpeedButton;
    MaskEdit3: TMaskEdit;
    Memo1: TMemo;
    ComboBox5: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label16: TLabel;
    ComboBox6: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit14Enter(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasRel: TFormMatriculasRel;

implementation
uses DataMod, Funcoes1, TurmasLoc, MatriculasQ01, MatriculasQ02,
  MatriculasQ03, MatriculasQ04, MatriculasQ05, MatriculasQ06,
  MatriculasQ07, MatriculasQ08, MatriculasQ09, MatriculasQ10,
  MatriculasQ11, MatriculasQ12, MatriculasQ13, MatriculasQ14, MotivosLoc,
  MatriculasQ15, MatriculasQ16, DataMod2,
  MatriculasQ17, MatriculasQ18, Matriculas, MatriculasQ19,
  AvaliacoesTipoLoc, MatriculasQ20, MatriculasQ21, DataModSearch, MatriculasQ22,
  MatriculasQ23, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasRel.FormCreate(Sender: TObject);
var D,M,A: Word;
begin
  DecodeDate(Date,A,M,D);
  ComboBox4.ItemIndex:=0;
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=M-1; //mes atual.
  ComboBox5.ItemIndex:=0;
  ComboBox6.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if FormMatriculas.MatriculasNoPeriodoPorConvenio2.Visible then
  begin
    ComboBox4.Visible:=False;
    Label5.Visible:=False;
    Label4.Visible:=False;
    ComboBox2.Visible:=False;
  end;
end;

procedure TFormMatriculasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormMatriculasRel.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipoLoc, FormAvaliacoesTipoLoc);
  FormAvaliacoesTipoLoc.ShowModal;
  if AvaliacoesTipoLoc.Procurar then
  begin
    Edit14.Text:=IntToStr(FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_CODIGO.Value);
    Edit15.Text:=FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_DESCRICAO.Value;
  end;
  FormAvaliacoesTipoLoc.Free;
  FormAvaliacoesTipoLoc:=nil;
end;

procedure TFormMatriculasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMatriculasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMatriculasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormMatriculasRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormMatriculasRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormMatriculasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.BitBtn1Click(Sender: TObject);
var Where, S: String;
begin
  Where:='';
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Matriculas no período por vendedor'}
          Application.CreateForm(TFormMatriculasQ01, FormMatriculasQ01);
          FormMatriculasQ01.QRLabel12.Caption:='Matrículas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text+' Tipo: '+ComboBox5.Text;
          FormMatriculasQ01.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and MAT_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if ComboBox5.Text='M' then Where:=Where+' and MAT_TIPOMATRICULA=''M''' else
          if ComboBox5.Text='R' then Where:=Where+' and MAT_TIPOMATRICULA=''R''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ01.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTCADASTRO, '+
                                             'MAT_STATUS, CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by VEN_NOME, CLI_NOME');
          FormMatriculasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ01.FDQuery1.Open;
          FormMatriculasQ01.QuickRep1.PreviewModal;
          FormMatriculasQ01.Free;
          FormMatriculasQ01:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Matriculas no período por turma'}
          Application.CreateForm(TFormMatriculasQ02, FormMatriculasQ02);
          FormMatriculasQ02.QRLabel12.Caption:='Matrículas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text+' Tipo: '+ComboBox5.Text;
          FormMatriculasQ02.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if ComboBox5.Text='M' then Where:=Where+' and MAT_TIPOMATRICULA=''M''' else
          if ComboBox5.Text='R' then Where:=Where+' and MAT_TIPOMATRICULA=''R''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if not FormMatriculas.MatriculasNoPeriodoPorTurma2.Visible then
          FormMatriculasQ02.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTCADASTRO, '+
                                             'MAT_STATUS, MAT_TIPO, CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by TUR_DESCRICAO, CLI_NOME') else
          FormMatriculasQ02.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTCADASTRO, '+
                                             'MAT_STATUS, MAT_TIPO, CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal and MAT_CONTABILIZAR=''S'' '+Where+' '+
                                             'order by TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ02.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ02.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ02.FDQuery1.Open;
          FormMatriculasQ02.QuickRep1.PreviewModal;
          FormMatriculasQ02.Free;
          FormMatriculasQ02:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Matriculas no período por professor'}
          Application.CreateForm(TFormMatriculasQ09, FormMatriculasQ09);
          FormMatriculasQ09.QRLabel12.Caption:='Matrículas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text+' Tipo: '+ComboBox5.Text;
          FormMatriculasQ09.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if ComboBox5.Text='M' then Where:=Where+' and MAT_TIPOMATRICULA=''M''' else
          if ComboBox5.Text='R' then Where:=Where+' and MAT_TIPOMATRICULA=''R''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ09.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, '+
                                             'MAT_STATUS, CLI_NOME, VEN_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by VEN_NOME, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ09.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ09.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ09.FDQuery1.Open;
          FormMatriculasQ09.QuickRep1.PreviewModal;
          FormMatriculasQ09.Free;
          FormMatriculasQ09:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Matriculas com término no período'}
          Application.CreateForm(TFormMatriculasQ03, FormMatriculasQ03);
          FormMatriculasQ03.QRLabel12.Caption:='Matrículas com término no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormMatriculasQ03.FDQuery1.Close;
          FormMatriculasQ03.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ03.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCRICAO, '+
                                             'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, CLI_FONE1 from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'where TUR_DTTERMINO between :datainicial and :datafinal '+
                                             'and MAT_STATUS=''A'' '+Where+' order by CLI_NOME');
          FormMatriculasQ03.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ03.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ03.FDQuery1.Open;
          FormMatriculasQ03.QuickRep1.PreviewModal;
          FormMatriculasQ03.Free;
          FormMatriculasQ03:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Matriculas com contas a receber analitico (so venda)'}
          Application.CreateForm(TFormMatriculasQ04, FormMatriculasQ04);
          FormMatriculasQ04.QRLabel1.Caption:='Matrículas com contas a receber de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' analítico (Só Venda) - Status: '+ComboBox1.Text;
          FormMatriculasQ04.FDQuery1.Close;
          FormMatriculasQ04.FDQuery2.Close;
          FormMatriculasQ04.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Copy(Where,1,4)=' and' then begin Delete(Where,1,4); Insert('where ',Where,0); end;
          FormMatriculasQ04.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_TURMA, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, CLI_FONE1, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ04.FDQuery1.Open;
          MatriculasQ04.CursoMaterial:='CURSO'; //parametro para ler material ou curso.
          Screen.Cursor:=crHourGlass;
          FormMatriculasQ04.CriarTabela(StrToDate(MaskEdit1.Text),StrToDate(MaskEdit2.Text));
          Screen.Cursor:=crDefault;
          FormMatriculasQ04.QuickRep1.PreviewModal;
          FormMatriculasQ04.Free;
          FormMatriculasQ04:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Matriculas com contas a receber analitico (so venda material)'}
          Application.CreateForm(TFormMatriculasQ04, FormMatriculasQ04);
          FormMatriculasQ04.QRLabel1.Caption:='Matrículas com contas a receber de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' analítico (Só Venda Material) - Status: '+ComboBox1.Text;
          FormMatriculasQ04.FDQuery1.Close;
          FormMatriculasQ04.FDQuery2.Close;
          FormMatriculasQ04.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Copy(Where,1,4)=' and' then begin Delete(Where,1,4); Insert('where ',Where,0); end;
          FormMatriculasQ04.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_TURMA, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, CLI_FONE1, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ04.FDQuery1.Open;
          MatriculasQ04.CursoMaterial:='MATERIAL'; //parametro para ler material ou curso.
          Screen.Cursor:=crHourGlass;
          FormMatriculasQ04.CriarTabela(StrToDate(MaskEdit1.Text),StrToDate(MaskEdit2.Text));
          Screen.Cursor:=crDefault;
          FormMatriculasQ04.QuickRep1.PreviewModal;
          FormMatriculasQ04.Free;
          FormMatriculasQ04:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Matriculas duplicadas'}
          Application.CreateForm(TFormMatriculasQ06, FormMatriculasQ06);
          FormMatriculasQ06.FDQuery1.Open;
          FormMatriculasQ06.QuickRep1.PreviewModal;
          FormMatriculasQ06.Free;
          FormMatriculasQ06:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Matriculas com venda não entregue'}
          Application.CreateForm(TFormMatriculasQ07, FormMatriculasQ07);
          FormMatriculasQ07.QRLabel12.Caption:='Matrículas com venda não entregue';
          FormMatriculasQ07.FDQuery1.Close;
          FormMatriculasQ07.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          FormMatriculasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_VENDA, MAT_VENDAMATERIAL, TUR_DESCRICAO, '+
                                             'TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, VED_ENTREGUE from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDAS on MAT_VENDA=VED_CODIGO '+
                                             'where TUR_DTINICIO between :datainicial and :datafinal '+
                                             'and VED_ENTREGUE=''N'' '+Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ07.FDQuery1.Open;
          FormMatriculasQ07.QuickRep1.PreviewModal;
          FormMatriculasQ07.Free;
          FormMatriculasQ07:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Matriculas com venda de material não entregue'}
          Application.CreateForm(TFormMatriculasQ07, FormMatriculasQ07);
          FormMatriculasQ07.QRLabel12.Caption:='Matrículas com venda de material não entregue';
          FormMatriculasQ07.QRDBText8.DataField:='MAT_VENDAMATERIAL';
          FormMatriculasQ07.FDQuery1.Close;
          FormMatriculasQ07.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          FormMatriculasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_VENDA, MAT_VENDAMATERIAL, TUR_DESCRICAO, '+
                                             'TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, VED_ENTREGUE from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDAS on MAT_VENDAMATERIAL=VED_CODIGO '+
                                             'where TUR_DTINICIO between :datainicial and :datafinal '+
                                             'and VED_ENTREGUE=''N'' '+Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ07.FDQuery1.Open;
          FormMatriculasQ07.QuickRep1.PreviewModal;
          FormMatriculasQ07.Free;
          FormMatriculasQ07:=nil;
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Matriculas com venda de material não entregue com visto'}
          Application.CreateForm(TFormMatriculasQ08, FormMatriculasQ08);
          FormMatriculasQ08.QRLabel12.Caption:='Matrículas com venda de material não entregue com visto';
          FormMatriculasQ08.FDQuery1.Close;
          FormMatriculasQ08.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          FormMatriculasQ08.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_VENDA, MAT_VENDAMATERIAL, TUR_DESCRICAO, '+
                                             'TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, VED_ENTREGUE from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDAS on MAT_VENDAMATERIAL=VED_CODIGO '+
                                             'where TUR_DTINICIO between :datainicial and :datafinal '+
                                             'and VED_ENTREGUE=''N'' '+Where+' '+
                                             'order by TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ08.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ08.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ08.FDQuery1.Open;
          FormMatriculasQ08.FDQuery2.Open;
          FormMatriculasQ08.QuickRep1.PreviewModal;
          FormMatriculasQ08.Free;
          FormMatriculasQ08:=nil;
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Matriculas no período por convênio'}
          //contabilização. //alterado o campo de contabilizar para tipo de pagamento e depois para convenio. :(.
          Application.CreateForm(TFormMatriculasQ10, FormMatriculasQ10);
          FormMatriculasQ10.QRLabel1.Caption:='Matrículas por convênio de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text;
          FormMatriculasQ10.FDQuery1.Close;
          FormMatriculasQ10.FDQuery2.Close;
          FormMatriculasQ10.FDQuery1.SQL.Clear;
          Where:='';
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if not FormMatriculas.MatriculasNoPeriodoPorConvenio2.Visible then
          FormMatriculasQ10.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_TURMA, MAT_VENDA, CLI_NOME, VED_CONDICAO, CPG_DESCRICAO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDAS on MAT_VENDA=VED_CODIGO '+
                                             'left join CONDICOES on VED_CONDICAO=CPG_CODIGO '+
                                             'where MAT_CONTABILIZAR='+QuotedStr(ComboBox2.Text)+Where+' '+
                                             'order by CLI_NOME') else
          FormMatriculasQ10.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_STATUS, MAT_TURMA, MAT_VENDA, CLI_NOME, VED_CONDICAO, CPG_DESCRICAO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDAS on MAT_VENDA=VED_CODIGO '+
                                             'left join CONDICOES on VED_CONDICAO=CPG_CODIGO '+
                                             'where MAT_CONTABILIZAR=''S'' '+Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ10.FDQuery1.Open;
          Screen.Cursor:=crHourGlass;
          FormMatriculasQ10.CriarTabela(StrToDate(MaskEdit1.Text),StrToDate(MaskEdit2.Text));
          Screen.Cursor:=crDefault;
          FormMatriculasQ10.QuickRep1.PreviewModal;
          FormMatriculasQ10.Free;
          FormMatriculasQ10:=nil;
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Alunos com mais de uma matrícula ativa'}
          Application.CreateForm(TFormMatriculasQ11, FormMatriculasQ11);
          FormMatriculasQ11.FDQuery1.Open;
          FormMatriculasQ11.QuickRep1.PreviewModal;
          FormMatriculasQ11.Free;
          FormMatriculasQ11:=nil;
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Percentual de desconto'}
          Application.CreateForm(TFormMatriculasQ12, FormMatriculasQ12);
          FormMatriculasQ12.QRLabel12.Caption:='Matrículas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text;
          FormMatriculasQ12.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ12.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_VENDEDOR, MAT_TURMA, MAT_DTCADASTRO, '+
                                             'MAT_STATUS, CLI_NOME, VEN_NOME, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO, VED_DESCPORC from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDAS on MAT_VENDA=VED_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ12.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ12.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ12.FDQuery1.Open;
          FormMatriculasQ12.QuickRep1.PreviewModal;
          FormMatriculasQ12.Free;
          FormMatriculasQ12:=nil;
          {$ENDREGION}
        end;
    13: begin
          {$REGION 'Alunos Aniversariantes'}
          Application.CreateForm(TFormMatriculasQ13, FormMatriculasQ13);
          FormMatriculasQ13.QRLabel12.Caption:='Alunos Aniversariantes do Mês de '+ComboBox3.Text;
          FormMatriculasQ13.FDQuery1.SQL.Clear;
          Where:='';
          if Trim(Edit3.Text)<>'' then Where:=' and TUR_PROFESSOR='+QuotedStr(Edit3.Text)+' ';
          if Trim(Edit5.Text)<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text)+' ';
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ13.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, TUR_DESCRICAO, TUR_PROFESSOR, '+
                                             'VEN_NOME, CLI_NOME, CLI_DTNASC from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'where extract(MONTH from CLI_DTNASC)=:mes and MAT_STATUS=''A'' '+Where+
                                             'order by VEN_NOME, TUR_DESCRICAO, CLI_DTNASC');
          FormMatriculasQ13.FDQuery1.ParamByName('mes').AsInteger:=ComboBox3.ItemIndex+1;
          FormMatriculasQ13.FDQuery1.Open;
          FormMatriculasQ13.QuickRep1.PreviewModal;
          FormMatriculasQ13.Free;
          FormMatriculasQ13:=nil;
          {$ENDREGION}
        end;
    14: begin
          {$REGION 'Matrículas no período por motivo desistência'}
          Application.CreateForm(TFormMatriculasQ14, FormMatriculasQ14);
          FormMatriculasQ14.QRLabel12.Caption:='Matrículas por motivo desistencia de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text;
          FormMatriculasQ14.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and MAT_DESISTENCIA='+QuotedStr(Edit6.Text) else Where:=Where+' and (MAT_DESISTENCIA is not null)';
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ14.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_STATUS, MAT_DESISTENCIA, CLI_NOME, '+
                                             'VEN_NOME, MOT_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'left join MOTIVOS on MAT_DESISTENCIA=MOT_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+
                                             'order by MOT_DESCRICAO, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ14.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ14.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ14.FDQuery1.Open;
          FormMatriculasQ14.QuickRep1.PreviewModal;
          FormMatriculasQ14.Free;
          FormMatriculasQ14:=nil;
          {$ENDREGION}
        end;
    15: begin
          {$REGION 'Matrículas no período por mailing'}
          Application.CreateForm(TFormMatriculasQ15, FormMatriculasQ15);
          FormMatriculasQ15.QRLabel12.Caption:='Matrículas por mailing de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text+' Tipo: '+ComboBox5.Text;
          FormMatriculasQ15.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and MAT_VENDEDOR='+QuotedStr(Edit3.Text);
          if Edit8.Text<>'' then Where:=Where+' and CLI_MAILING='+QuotedStr(Edit8.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if ComboBox5.Text='M' then Where:=Where+' and MAT_TIPOMATRICULA=''M''' else
          if ComboBox5.Text='R' then Where:=Where+' and MAT_TIPOMATRICULA=''R''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ15.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_STATUS, MAT_DESISTENCIA, CLI_NOME, CLI_MAILING, '+
                                             'VEN_NOME, MAI_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'left join MAILINGS on CLI_MAILING=MAI_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+
                                             'order by MAI_DESCRICAO, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ15.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ15.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ15.FDQuery1.Open;
          FormMatriculasQ15.QuickRep1.PreviewModal;
          FormMatriculasQ15.Free;
          FormMatriculasQ15:=nil;
          {$ENDREGION}
        end;
    16: begin
          {$REGION 'Histórico do aluno'}
          AbortIf(Edit10.Text='','Selecione o aluno/cliente.');

          Application.CreateForm(TFormMatriculasQ16, FormMatriculasQ16);
          FormMatriculasQ16.QRLabel12.Caption:='Histórico do Aluno';
          FormMatriculasQ16.FDQuery1.Close;
          FormMatriculasQ16.FDQuery1.SQL.Clear;
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ16.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_CONCEITODISCURSO, MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, '+
                                             'MAT_CONCEITOLITERATURA, MAT_MEDIAEXERCICIOS, MAT_MEDIAFINAL, MAT_STATUS, MAT_DESISTENCIA, MAT_TURMA, '+
                                             'MAT_DTCADASTRO, MAT_APROVADO, CLI_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_DOMINGO, TUR_SEGUNDA, '+
                                             'TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_ENCONTROS, TUR_PERIODO, TUR_ANO, VEN_NOME from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'where (MAT_STATUS=''A'' or MAT_STATUS=''B'' or MAT_STATUS=''D'') and MAT_CLIENTE=:cliente '+Where+' order by CLI_NOME');
          FormMatriculasQ16.FDQuery1.ParamByName('cliente').AsInteger:=StrToInt(Edit10.Text);
          FormMatriculasQ16.FDQuery1.Open;
          FormMatriculasQ16.FDQuery2.Open;
          FormMatriculasQ16.FDQuery3.Open;
          FormMatriculasQ16.FDQuery4.Open;
          FormMatriculasQ16.FDQuery5.Open;
          FormMatriculasQ16.QuickRep1.PreviewModal;
          FormMatriculasQ16.Free;
          FormMatriculasQ16:=nil;
          {$ENDREGION}
        end;
    17: begin
          {$REGION 'Histórico do aluno por turma'}
          Application.CreateForm(TFormMatriculasQ16, FormMatriculasQ16);
          FormMatriculasQ16.QRLabel12.Caption:='Histórico do Aluno';
          FormMatriculasQ16.FDQuery1.Close;
          FormMatriculasQ16.FDQuery1.SQL.Clear;
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ16.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_CONCEITODISCURSO, MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, '+
                                             'MAT_CONCEITOLITERATURA, MAT_MEDIAEXERCICIOS, MAT_MEDIAFINAL, MAT_STATUS, MAT_DESISTENCIA, MAT_TURMA, '+
                                             'MAT_DTCADASTRO, MAT_APROVADO, CLI_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_DOMINGO, TUR_SEGUNDA, '+
                                             'TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_ENCONTROS, TUR_PERIODO, TUR_ANO, VEN_NOME from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'where (MAT_STATUS=''A'' or MAT_STATUS=''B'' or MAT_STATUS=''D'') '+Where+' order by CLI_NOME');
          FormMatriculasQ16.FDQuery1.Open;
          FormMatriculasQ16.FDQuery2.Open;
          FormMatriculasQ16.FDQuery3.Open;
          FormMatriculasQ16.FDQuery4.Open;
          FormMatriculasQ16.FDQuery5.Open;
          FormMatriculasQ16.QuickRep1.PreviewModal;
          FormMatriculasQ16.Free;
          FormMatriculasQ16:=nil;
          {$ENDREGION}
        end;
    18: begin
          {$REGION 'Contrato'}
          FormMatriculas.Contrato1.Click;
          //forma antiga.
{          if DM2.TBMatriculas.IsEmpty then
          begin
            MessageDlg('Nenhuma matrícula selecionada.',mtError,[mbOk],0);
            Exit;
          end;
          Application.CreateForm(TFormMatriculasQ17, FormMatriculasQ17);
          FormMatriculasQ17.QRLabel12.Caption:='Contrato';
          FormMatriculasQ17.FDQuery1.Close;
          FormMatriculasQ17.FDQuery1.ParamByName('codigo').AsInteger:=DM2.TBMatriculasMAT_CODIGO.Value;
          FormMatriculasQ17.FDQuery1.Open;
          FormMatriculasQ17.QuickRep1.PreviewModal;
          FormMatriculasQ17.Free;
          FormMatriculasQ17:=nil;}
          {$ENDREGION}
        end;
    19: begin
          {$REGION 'Matrículas no período por local de trabalho'}
          Application.CreateForm(TFormMatriculasQ18, FormMatriculasQ18);
          FormMatriculasQ18.QRLabel12.Caption:='Matrículas por local de trabalho de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text;
          FormMatriculasQ18.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if Edit12.Text<>'' then Where:=Where+' and CLI_LOCALTRABALHO='+QuotedStr(Edit12.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ18.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_STATUS, MAT_DESISTENCIA, CLI_NOME, CLI_LOCALTRABALHO, '+
                                             'VEN_NOME, LCA_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'left join LOCAIS on CLI_LOCALTRABALHO=LCA_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+
                                             'order by LCA_DESCRICAO, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ18.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ18.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ18.FDQuery1.Open;
          FormMatriculasQ18.QuickRep1.PreviewModal;
          FormMatriculasQ18.Free;
          FormMatriculasQ18:=nil;
          {$ENDREGION}
        end;
    20: begin
          {$REGION 'Matrículas no período por local onde estuda'}
          Application.CreateForm(TFormMatriculasQ19, FormMatriculasQ19);
          FormMatriculasQ19.QRLabel12.Caption:='Matrículas por local onde estuda de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text;
          FormMatriculasQ19.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if Edit12.Text<>'' then Where:=Where+' and CLI_LOCALESTUDA='+QuotedStr(Edit12.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ19.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_STATUS, MAT_DESISTENCIA, CLI_NOME, CLI_LOCALESTUDA, '+
                                             'VEN_NOME, LCA_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'left join LOCAIS on CLI_LOCALESTUDA=LCA_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+
                                             'order by LCA_DESCRICAO, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ19.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ19.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ19.FDQuery1.Open;
          FormMatriculasQ19.QuickRep1.PreviewModal;
          FormMatriculasQ19.Free;
          FormMatriculasQ19:=nil;
          {$ENDREGION}
        end;
    21: begin
          {$REGION 'Matrículas sem venda de material'}
          Application.CreateForm(TFormMatriculasQ07, FormMatriculasQ07);
          FormMatriculasQ07.QRLabel12.Caption:='Matrículas sem venda de material';
          FormMatriculasQ07.QRDBText8.DataField:='MAT_VENDAMATERIAL';
          FormMatriculasQ07.FDQuery1.Close;
          FormMatriculasQ07.FDQuery1.SQL.Clear;
          Where:='';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          FormMatriculasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_VENDA, MAT_VENDAMATERIAL, TUR_DESCRICAO, '+
                                             'TUR_DTINICIO, TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'where TUR_DTINICIO between :datainicial and :datafinal '+
                                             'and MAT_VENDAMATERIAL is null '+Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ07.FDQuery1.Open;
          FormMatriculasQ07.QuickRep1.PreviewModal;
          FormMatriculasQ07.Free;
          FormMatriculasQ07:=nil;
          {$ENDREGION}
        end;
    22: begin
          {$REGION 'Matrículas sem notas do tipo'}
          AbortIf(Edit15.Text='','Selecione o tipo de avaliação.');

          Application.CreateForm(TFormMatriculasQ20, FormMatriculasQ20);
          S:='Matrículas sem avaliação do tipo '+Edit14.Text+'-'+Edit15.Text+' -';
          if Edit5.Text<>'' then S:=S+' Periodo: '+Edit5.Text;
          if MaskEdit3.Text<>'    ' then S:=S+' Ano: '+MaskEdit3.Text;
          FormMatriculasQ20.QRLabel12.Caption:=S;
          FormMatriculasQ20.FDQuery1.Close;
          FormMatriculasQ20.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Where<>'' then
          begin
            Delete(Where,1,4); //retira o " and" do início e troca por where.
            Insert('where ',Where,1);
          end;
          FormMatriculasQ20.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, MAT_DTCADASTRO, TUR_DESCRICAO, '+
                                             'TUR_PROFESSOR, VEN_NOME, TUR_PERIODO, TUR_ANO, CLI_NOME from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+Where+' '+
                                             'order by VEN_NOME, MAT_TURMA, CLI_NOME');
          FormMatriculasQ20.FDQuery1.Open;
          Screen.Cursor:=crHourGlass;
          while not FormMatriculasQ20.FDQuery1.Eof do
          begin
            FormMatriculasQ20.FDQuery2.Close;
            FormMatriculasQ20.FDQuery2.ParamByName('matricula').AsInteger:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_CODIGO').AsInteger;
            FormMatriculasQ20.FDQuery2.ParamByName('tipo').AsInteger:=StrToInt(Edit14.Text);
            FormMatriculasQ20.FDQuery2.Open;
            if FormMatriculasQ20.FDQuery2.IsEmpty then //se nao tem, insere os dados na tabela auxiliar, para listar depois.
            begin
              FormMatriculasQ20.TBAux.Append;
              FormMatriculasQ20.TBAux.FieldByName('MAT_CODIGO').AsInteger:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_CODIGO').AsInteger;
              FormMatriculasQ20.TBAux.FieldByName('MAT_CLIENTE').AsInteger:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_CLIENTE').AsInteger;
              FormMatriculasQ20.TBAux.FieldByName('MAT_TURMA').AsInteger:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_TURMA').AsInteger;
              FormMatriculasQ20.TBAux.FieldByName('MAT_STATUS').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_STATUS').AsString;
              FormMatriculasQ20.TBAux.FieldByName('MAT_DTCADASTRO').AsDateTime:=FormMatriculasQ20.FDQuery1.FieldByName('MAT_DTCADASTRO').AsDateTime;
              FormMatriculasQ20.TBAux.FieldByName('TUR_DESCRICAO').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('TUR_DESCRICAO').AsString;
              FormMatriculasQ20.TBAux.FieldByName('TUR_ANO').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('TUR_ANO').AsString;
              FormMatriculasQ20.TBAux.FieldByName('TUR_PERIODO').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('TUR_PERIODO').AsString;
              FormMatriculasQ20.TBAux.FieldByName('TUR_PROFESSOR').AsInteger:=FormMatriculasQ20.FDQuery1.FieldByName('TUR_PROFESSOR').AsInteger;
              FormMatriculasQ20.TBAux.FieldByName('VEN_NOME').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('VEN_NOME').AsString;
              FormMatriculasQ20.TBAux.FieldByName('CLI_NOME').AsString:=FormMatriculasQ20.FDQuery1.FieldByName('CLI_NOME').AsString;
              FormMatriculasQ20.TBAux.Post;
            end;
            FormMatriculasQ20.FDQuery1.Next;
          end;
          FormMatriculasQ20.TBAux.First;
          Screen.Cursor:=crDefault;
          FormMatriculasQ20.QuickRep1.PreviewModal;
          FormMatriculasQ20.Free;
          FormMatriculasQ20:=nil;
          {$ENDREGION}
        end;
    23: begin
          {$REGION 'Matrículas no período por condição de pagamento'}
          Application.CreateForm(TFormMatriculasQ21, FormMatriculasQ21);
          S:='Matrículas por condição de pagamento ';
          if Edit5.Text<>'' then S:=S+' Periodo: '+Edit5.Text;
          if MaskEdit3.Text<>'    ' then S:=S+' Ano: '+MaskEdit3.Text;
          FormMatriculasQ21.QRLabel12.Caption:=S;
          FormMatriculasQ21.FDQuery1.Close;
          FormMatriculasQ21.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Where<>'' then
          begin
            Delete(Where,1,4); //retira o " and" do início e troca por where.
            Insert('where ',Where,1);
          end;
          FormMatriculasQ21.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_STATUS, MAT_VENDA, VED_VALORTOTAL, '+
                                             'CLI_NOME, VEN_NOME, CPG_CODIGO, CPG_DESCRICAO, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'left join VENDAS on MAT_VENDA=VED_CODIGO '+
                                             'left join CONDICOES on VED_CONDICAO=CPG_CODIGO '+Where+' '+
                                             'order by CPG_DESCRICAO, TUR_DESCRICAO, CLI_NOME');
          FormMatriculasQ21.FDQuery1.Open;
          FormMatriculasQ21.QuickRep1.PreviewModal;
          FormMatriculasQ21.Free;
          FormMatriculasQ21:=nil;
          {$ENDREGION}
        end;
    24: begin
          {$REGION 'Alunos Aprovados e Reprovados'}
          Application.CreateForm(TFormMatriculasQ05, FormMatriculasQ05);
          FormMatriculasQ05.QRLabel12.Caption:='Matrículas - Status: '+ComboBox1.Text+' - Tipo: '+ComboBox5.Text+' - Aprovado: '+ComboBox5.Text;
          //verificar a necessidade de informar a data inicial e final.... ver com angela.
          //FormMatriculasQ05.QRLabel12.Caption:='Matrículas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' - Status: '+ComboBox1.Text+' Tipo: '+ComboBox5.Text+' Aprovado: '+ComboBox5.Text;
          FormMatriculasQ05.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if ComboBox5.Text='M' then Where:=Where+' and MAT_TIPOMATRICULA=''M''' else
          if ComboBox5.Text='R' then Where:=Where+' and MAT_TIPOMATRICULA=''R''';
          if ComboBox6.Text='SIM' then Where:=Where+' and MAT_APROVADO=''S''' else
          if ComboBox6.Text='NÃO' then Where:=Where+' and MAT_APROVADO=''N''' else
          if ComboBox6.Text='INDEFINIDO' then Where:=Where+' and MAT_APROVADO=''I''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ05.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_DTCADASTRO, MAT_TIPOMATRICULA, MAT_APROVADO, '+
                                             'MAT_STATUS, CLI_NOME, VEN_NOME, TUR_PROFESSOR, TUR_DESCRICAO, TUR_PERIODO, TUR_ANO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS ON MAT_TURMA=TUR_CODIGO '+
                                             'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                             'where 1=1 '+Where+' '+
                                             //'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by VEN_NOME, TUR_DESCRICAO, CLI_NOME');
          //FormMatriculasQ05.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormMatriculasQ05.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ05.FDQuery1.Open;
          FormMatriculasQ05.QuickRep1.PreviewModal;
          FormMatriculasQ05.Free;
          FormMatriculasQ05:=nil;
          {$ENDREGION}
        end;
    25: begin
          {$REGION 'Matrículas no período com endereço'}
          Application.CreateForm(TFormMatriculasQ22, FormMatriculasQ22);
          FormMatriculasQ22.QRLabel12.Caption:='Matrículas no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' com endereço';
          FormMatriculasQ22.FDQuery1.Close;
          FormMatriculasQ22.FDQuery1.SQL.Clear;
          Where:='';
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          if Edit4.Text<>'' then Where:=Where+' and MAT_VENDEDOR='+QuotedStr(Edit3.Text);
          FormMatriculasQ22.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCRICAO, '+
                                             'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, CLI_NOME, CLI_FONE1, CLI_FONE2, CLI_ENDERECO, CLI_NUMERO, CLI_BAIRRO, '+
                                             'CLI_CIDADE, CLI_ESTADO, CLI_COMPLEMENTO, CLI_CEP, CLI_CONTATO from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'where MAT_DTCADASTRO between :datainicial and :datafinal '+
                                             'and MAT_STATUS=''A'' '+Where+' order by CLI_CIDADE, CLI_BAIRRO, CLI_ENDERECO');
          FormMatriculasQ22.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ22.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ22.FDQuery1.Open;
          FormMatriculasQ22.QuickRep1.PreviewModal;
          FormMatriculasQ22.Free;
          FormMatriculasQ22:=nil;
          {$ENDREGION}
        end;
    26: begin
          {$REGION 'Email dos Alunos'}
          Application.CreateForm(TFormMatriculasQ23, FormMatriculasQ23);
          FormMatriculasQ23.QRLabel12.Caption:='Emails dos alunos - Período de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormMatriculasQ23.FDQuery1.Close;
          FormMatriculasQ23.FDQuery1.SQL.Clear;
          Where:='';
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if MaskEdit3.Text<>'    ' then Where:=Where+' and TUR_ANO='+QuotedStr(MaskEdit3.Text);
          FormMatriculasQ23.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, '+
                                             'TUR_PERIODO, TUR_ANO, CLI_NOME, CLI_EMAIL from MATRICULAS '+
                                             'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                             'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                             'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                             'order by CLI_NOME');
          FormMatriculasQ23.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMatriculasQ23.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMatriculasQ23.FDQuery1.Open;
          FormMatriculasQ23.QuickRep1.PreviewModal;
          FormMatriculasQ23.Free;
          FormMatriculasQ23:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormMatriculasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit1Exit(Sender: TObject);
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
    DMS.QYTurmas.Close;
    DMS.QYTurmas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYTurmas.Open;
    if not DMS.QYTurmas.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYTurmasTUR_CODIGO.Value);
      Edit2.Text:=DMS.QYTurmasTUR_DESCRICAO.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Turma não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYTurmas.Close;
  end;
end;

procedure TFormMatriculasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormMatriculasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasLoc, FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormTurmasLoc.QYTurmasTUR_CODIGO.Value);
    Edit2.Text:=FormTurmasLoc.QYTurmasTUR_DESCRICAO.Value;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormMatriculasRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro agrupando por vendedor.'+#13#10+
                          'Permite ainda selecionar por período/ano, status e tipo de matrícula.'+#13#10+
                          'Ordenado por vendedor e nome do aluno.');
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro agrupando por turma.'+#13#10+
                          'Permite ainda selecionar por período/ano, status e tipo de matrícula.'+#13#10+
                          'Ordenado por turma e nome do aluno.');
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro agrupando por professor.'+#13#10+
                          'Permite ainda selecionar por período/ano, status e tipo de matrícula.'+#13#10+
                          'Ordenado por professor e nome do aluno.');
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas com status=A no período de data término da turma agrupando por professor.'+#13#10+
                          'Permite selecionar por período/ano.'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas por status, periodo, ano.'+#13#10+
                          'Para cada matrícula é pesquisada todas as contas a receber com a data '+#13#10+
                          'de vencimento no período informado relacionado com o campo VENDA na matrícula.');
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas por status, periodo, ano.'+#13#10+
                          'Para cada matrícula é pesquisada todas as contas a receber com a data '+#13#10+
                          'de vencimento no período informado relacionado com o campo VENDA MATERIAL na matrícula.');
        end;
    06: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=False;
          MaskEdit3.Enabled:=False;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas duplicadas. (aluno, turma)');
        end;
    07: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período por data de início da turma e venda com campo ENTREGUE=N'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    08: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período por data de início da turma e venda material com campo ENTREGUE=N'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    09: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Idem anterior, mas com campo para visto do aluno.'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    10: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=False;
          MaskEdit3.Enabled:=False;
          ComboBox2.Enabled:=True;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas conforme o campo status e o campo contabilizar e relaciona as contas recebidas (Status="B"), com número do documento igual ao campo venda, com data de vencimento no período informado.'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    11: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=False;
          MaskEdit3.Enabled:=False;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona os alunos com mais de uma matrícula ativa.');
        end;
    12: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro.'+#13#10+
                          'Permite selecionar período/ano, status'+#13#10+
                          'Ordenado por turma e nome do aluno');
        end;
    13: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona os alunos com matrícula com STATUS=A, no período/ano, que são aniversariantes do mês escolhido.'+#13#10+
                          'Ordenado por professor, turma e data de nascimento.');
        end;
    14: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=True;
          SpeedButton3.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro e motivo de desistencia.'+#13#10+
                          'Permite selecionar por período/ano, status.'+#13#10+
                          'Ordenado por motivo desistencia, turma e nome do aluno.');
        end;
    15: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=True;
          SpeedButton4.Enabled:=True;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro e mailing.'+#13#10+
                          'Permite selecionar por período/ano, status e tipo de matrícula.'+#13#10+
                          'Ordenado por mailing, turma e nome do aluno.');
        end;
    16: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=True;
          SpeedButton5.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Histórico do aluno. Filtra as matrículas com status = ABERTAS, BAIXADAS E DESISTENTES');
        end;
    17: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Histórico do aluno por turma. Filtra as matrículas com status = ABERTAS, BAIXADAS E DESISTENTES');
        end;
    18: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          Edit5.Enabled:=False;
          MaskEdit3.Enabled:=False;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Contrato.');
        end;
    19: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=True;
          SpeedButton6.Enabled:=True;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro e local de trabalho.'+#13#10+
                          'Permite selecionar por período/ano, status.'+#13#10+
                          'Ordenado por local de trabalho, turma e nome do aluno.');
        end;
    20: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=True;
          SpeedButton6.Enabled:=True;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período de data de cadastro e local onde estuda.'+#13#10+
                          'Permite selecionar por período/ano, status.'+#13#10+
                          'Ordenado por local onde estuda, turma e nome do aluno.');
        end;
    21: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período por data de início da turma e sem venda de material.'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    22: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=True;
          PngSpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas que não tem o tipo de avaliação selecionado.'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
    23: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período por condição de pagamento.'+#13#10+
                          'Permite selecionar turmas por período/ano, status'+#13#10+
                          'Ordenado por condição de pagamento, turma e nome do aluno.');
        end;
    24: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=True;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas conforme os campos Aprovado, Tipo Matrícula, Status, Período/Ano.'+#13#10+
                          'Agrupado por professor e turma.');
        end;
    25: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona as matrículas no período informado.'+#13#10+
                          'Ordenado por cidade, bairro e endereço');
        end;
    26: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit10.Enabled:=False;
          SpeedButton5.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit6.Enabled:=False;
          SpeedButton3.Enabled:=False;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
          Edit12.Enabled:=False;
          SpeedButton6.Enabled:=False;
          Edit14.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          Edit5.Enabled:=True;
          MaskEdit3.Enabled:=True;
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          Memo1.Lines.Clear;
          Memo1.Lines.Add('Relaciona os emails dos alunos conforme filtros infomrados.'+#13#10+
                          'Ordenado por nome do aluno.');
        end;
  end;
end;

procedure TFormMatriculasRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormMatriculasRel.Edit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit6Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit6.Clear;
    Edit7.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYMotivos.Close;
    DMS.QYMotivos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYMotivos.Open;
    if not DMS.QYMotivos.IsEmpty then
    begin
      Edit6.Text:=IntToStr(DMS.QYMotivosMOT_CODIGO.Value);
      Edit7.Text:=DMS.QYMotivosMOT_DESCRICAO.Value;
    end else
    begin
      Edit6.Clear;
      Edit7.Clear;
      MessageDlg('Motivo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYMotivos.Close;
  end;
end;

procedure TFormMatriculasRel.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormMatriculasRel.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivosLoc, FormMotivosLoc);
  FormMotivosLoc.ShowModal;
  if MotivosLoc.Procurar then
  begin
    Edit6.Text:=IntToStr(FormMotivosLoc.QYMotivosMOT_CODIGO.Value);
    Edit7.Text:=FormMotivosLoc.QYMotivosMOT_DESCRICAO.Value;
  end;
  FormMotivosLoc.Free;
  FormMotivosLoc:=nil;
end;

procedure TFormMatriculasRel.Edit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit8Exit(Sender: TObject);
begin
  LocMailingsExit(Edit8,Edit9);
end;

procedure TFormMatriculasRel.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormMatriculasRel.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.SpeedButton4Click(Sender: TObject);
begin
  LocMailingsBotao(Edit8,Edit9);
end;

procedure TFormMatriculasRel.Edit10Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit10Exit(Sender: TObject);
begin
  LocClientesExit(Edit10,Edit11);
end;

procedure TFormMatriculasRel.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton5.Click;
end;

procedure TFormMatriculasRel.Edit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.SpeedButton5Click(Sender: TObject);
begin
  LocClientesBotao(Edit10,Edit11);
end;

procedure TFormMatriculasRel.Edit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit12Exit(Sender: TObject);
begin
  LocLocaisExit(Edit12,Edit13);
end;

procedure TFormMatriculasRel.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton6.Click;
end;

procedure TFormMatriculasRel.Edit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.Edit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMatriculasRel.Edit14Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit14.Clear;
    Edit15.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYAvaliacoesTipo.Close;
    DMS.QYAvaliacoesTipo.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYAvaliacoesTipo.Open;
    if not DMS.QYAvaliacoesTipo.IsEmpty then
    begin
      Edit14.Text:=IntToStr(DMS.QYAvaliacoesTipoAVT_CODIGO.Value);
      Edit15.Text:=DMS.QYAvaliacoesTipoAVT_DESCRICAO.Value;
    end else
    begin
      Edit14.Clear;
      Edit15.Clear;
      MessageDlg('Tipo de Avaliação não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYAvaliacoesTipo.Close;
  end;
end;

procedure TFormMatriculasRel.Edit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormMatriculasRel.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculasRel.SpeedButton6Click(Sender: TObject);
begin
  LocLocaisBotao(Edit12,Edit13);
end;

end.
