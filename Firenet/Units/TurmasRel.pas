//Atualizacoes:
//2026.11.23 - Opcoes 00 e 01 (turmas por professor) no FastReport (FormTurmasFast, TUR01); o QuickReport (FormTurmasQ01) ficou comentado.
//2026.11.23 - Opcao 04 (ficha de chamada) no FastReport (FormTurmasFast.frxReport2, TUR02); o QuickReport (FormTurmasQ08) ficou comentado.
//2026.11.23 - Opcao 05 (ficha de chamada preenchida) no FastReport (FormTurmasFast.frxReport3, TUR03); o QuickReport (FormTurmasQ09) ficou comentado.
//2026.11.23 - Opcao 06 (relatorio de frequencia) no FastReport (FormTurmasFast.frxReport4, TUR04); o QuickReport (FormTurmasQ03) ficou comentado.
//2026.11.23 - Opcoes 02/03 (TUR05), 07 (TUR06), 08 (TUR07) e 09/10 (TUR08) no FastReport (FormTurmasFast); os QuickReports (FormTurmasQ04, Q05, Q06 e Q07) ficaram comentados.
unit TurmasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, StdCtrls, ExtCtrls, Mask, PngBitBtn,
  PngSpeedButton, System.UITypes;

type
  TFormTurmasRel = class(TForm)
    Label5: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    Label7: TLabel;
    MaskEdit2: TMaskEdit;
    BitBtn3: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label3: TLabel;
    Edit5: TEdit;
    MaskEdit3: TMaskEdit;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    MaskEdit4: TMaskEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure MaskEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasRel: TFormTurmasRel;

implementation
uses DataMod, DataMod2, DataModSearch, FuncoesFirenet, Funcoes1, TurmasFast, TurmasLoc;
{$R *.dfm}

procedure TFormTurmasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTurmasRel.ComboBox4Click(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=False;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    06: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    07: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=True;
        end;
    08: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox1.Enabled:=False;
          ComboBox2.Enabled:=False;
          Edit5.Enabled:=False;
        end;
    09: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit5.Enabled:=True;
        end;
    10: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          MaskEdit4.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox2.Enabled:=True;
          Edit5.Enabled:=True;
        end;
  end;
end;

procedure TFormTurmasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTurmasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTurmasRel.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
end;

procedure TFormTurmasRel.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
end;

procedure TFormTurmasRel.MaskEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit4.Clear;
end;

procedure TFormTurmasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox4.ItemIndex of
    00: begin
          //QuickReport antigo (FormTurmasQ01), trocado pelo FastReport (FormTurmasFast) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ01, FormTurmasQ01);
          //FormTurmasQ01.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)';
          //FormTurmasQ01.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //FormTurmasQ01.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
                                         //'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                         //'order by VEN_NOME, TUR_DESCRICAO');
          //FormTurmasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ01.FDQuery1.Open;
          //FormTurmasQ01.QuickRep1.PreviewModal;
          //FormTurmasQ01.Free;
          //FormTurmasQ01:=nil;
          {$REGION 'Turmas por professor (FastReport TUR01)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY01.Close;
          FormTurmasFast.QY01.SQL.Clear;
          FormTurmasFast.QY01.SQL.Add(
            'select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
            'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, TUR_DESCRICAO');
          FormTurmasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY01.Open;
          FormTurmasFast.frxReport1.Variables['TITULO']:=QuotedStr('Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)');
          FormTurmasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTurmasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTurmasFast.frxReport1.Variables['TUR_STATUS']:=QuotedStr(ComboBox1.Text);
          FormTurmasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTurmasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTurmasFast.frxReport1.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          //QuickReport antigo (FormTurmasQ01), trocado pelo FastReport (FormTurmasFast) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ01, FormTurmasQ01);
          //FormTurmasQ01.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)';
          //FormTurmasQ01.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //FormTurmasQ01.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
                                         //'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         //'order by VEN_NOME, TUR_DESCRICAO');
          //FormTurmasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ01.FDQuery1.Open;
          //FormTurmasQ01.QuickRep1.PreviewModal;
          //FormTurmasQ01.Free;
          //FormTurmasQ01:=nil;
          {$REGION 'Turmas por professor (FastReport TUR01)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY01.Close;
          FormTurmasFast.QY01.SQL.Clear;
          FormTurmasFast.QY01.SQL.Add(
            'select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
            'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, TUR_DESCRICAO');
          FormTurmasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY01.Open;
          FormTurmasFast.frxReport1.Variables['TITULO']:=QuotedStr('Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)');
          FormTurmasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormTurmasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormTurmasFast.frxReport1.Variables['TUR_STATUS']:=QuotedStr(ComboBox1.Text);
          FormTurmasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormTurmasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormTurmasFast.frxReport1.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          //QuickReport antigo (FormTurmasQ04), trocado pelo FastReport (FormTurmasFast.frxReport5) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ04, FormTurmasQ04);
          //FormTurmasQ04.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)';
          //FormTurmasQ04.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //FormTurmasQ04.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
                                         //'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME from TURMAS '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                         //'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          //FormTurmasQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ04.FDQuery1.Open;
          //FormTurmasQ04.FDQuery2.Open;
          //FormTurmasQ04.FDQuery3.Open;
          //FormTurmasQ04.FDQuery4.Open;
          //FormTurmasQ04.FDQuery5.Open;
          //FormTurmasQ04.QuickRep1.PreviewModal;
          //FormTurmasQ04.Free;
          //FormTurmasQ04:=nil;
          {$REGION 'Turmas por professor e periodo (FastReport TUR05)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY05.Close;
          FormTurmasFast.QY05.SQL.Clear;
          //alunos com matricula aberta, no total e por tipo (A, B e V).
          FormTurmasFast.QY05.SQL.Add(
            'select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
            'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'') as ALUNOS, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''A'') as ALUNOS_A, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''B'') as ALUNOS_B, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''V'') as ALUNOS_V '+
            'from TURMAS '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          FormTurmasFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY05.Open;
          FormTurmasFast.frxReport5.Variables['TITULO']:=QuotedStr('Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)');
          FormTurmasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport5.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          //QuickReport antigo (FormTurmasQ04), trocado pelo FastReport (FormTurmasFast.frxReport5) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ04, FormTurmasQ04);
          //FormTurmasQ04.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)';
          //FormTurmasQ04.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //FormTurmasQ04.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
                                         //'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME from TURMAS '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         //'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          //FormTurmasQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ04.FDQuery1.Open;
          //FormTurmasQ04.FDQuery2.Open;
          //FormTurmasQ04.FDQuery3.Open;
          //FormTurmasQ04.FDQuery4.Open;
          //FormTurmasQ04.FDQuery5.Open;
          //FormTurmasQ04.QuickRep1.PreviewModal;
          //FormTurmasQ04.Free;
          //FormTurmasQ04:=nil;
          {$REGION 'Turmas por professor e periodo (FastReport TUR05)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY05.Close;
          FormTurmasFast.QY05.SQL.Clear;
          //alunos com matricula aberta, no total e por tipo (A, B e V).
          FormTurmasFast.QY05.SQL.Add(
            'select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
            'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'') as ALUNOS, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''A'') as ALUNOS_A, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''B'') as ALUNOS_B, '+
            '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and MAT_STATUS=''A'' and MAT_TIPO=''V'') as ALUNOS_V '+
            'from TURMAS '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          FormTurmasFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY05.Open;
          FormTurmasFast.frxReport5.Variables['TITULO']:=QuotedStr('Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)');
          FormTurmasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport5.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          //QuickReport antigo (FormTurmasQ08), trocado pelo FastReport (FormTurmasFast.frxReport2) em 2026.11.23:
          ////fichas de chamada = turmasq02 e turmasq08
          //Application.CreateForm(TFormTurmasQ08, FormTurmasQ08);
          //FormTurmasQ08.FDQuery1.Close;
          //FormTurmasQ08.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          //FormTurmasQ08.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         //'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         //'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         //'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         //'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
                                         //'order by MAT_TURMA, CLI_NOME');
          //FormTurmasQ08.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ08.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ08.FDQuery1.Open;

          //FormTurmasQ08.FDQuery2.Close;
          //FormTurmasQ08.FDQuery2.SQL.Clear;
          //if MaskEdit4.Text='  /  /    ' then
          //FormTurmasQ08.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          //FormTurmasQ08.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');

          //FormTurmasQ08.QuickRep1.PreviewModal;
          //FormTurmasQ08.Free;
          //FormTurmasQ08:=nil;
          {$REGION 'Ficha de chamada (FastReport TUR02)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY02.Close;
          FormTurmasFast.QY02.SQL.Clear;
          FormTurmasFast.QY02.SQL.Add(
            'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
            'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
            'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
            'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
            'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
            'order by MAT_TURMA, CLI_NOME');
          FormTurmasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY02.Open;
          //calendario de cada turma: aberto pelo frxReport2BeforePrint (param turma).
          FormTurmasFast.QY02a.Close;
          FormTurmasFast.QY02a.SQL.Clear;
          if MaskEdit4.Text='  /  /    ' then
          FormTurmasFast.QY02a.SQL.Add('select CAL_DATA, CAL_TIPO from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          FormTurmasFast.QY02a.SQL.Add('select CAL_DATA, CAL_TIPO from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');
          FormTurmasFast.frxReport2.Variables['TITULO']:=QuotedStr('Ficha de Chamada');
          FormTurmasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport2.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
         end;
    05: begin
          //QuickReport antigo (FormTurmasQ09), trocado pelo FastReport (FormTurmasFast.frxReport3) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ09, FormTurmasQ09);
          //FormTurmasQ09.FDQuery1.Close;
          //FormTurmasQ09.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          //FormTurmasQ09.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         //'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         //'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         //'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         //'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
                                         //'order by MAT_TURMA, CLI_NOME');
          //FormTurmasQ09.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ09.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ09.FDQuery1.Open;

          //FormTurmasQ09.FDQuery2.Close;
          //FormTurmasQ09.FDQuery2.SQL.Clear;
          //if MaskEdit4.Text='  /  /    ' then
          //FormTurmasQ09.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          //FormTurmasQ09.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');

          //FormTurmasQ09.QuickRep1.PreviewModal;
          //FormTurmasQ09.Free;
          //FormTurmasQ09:=nil;
          {$REGION 'Ficha de chamada preenchida (FastReport TUR03)'}
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY03.Close;
          FormTurmasFast.QY03.SQL.Clear;
          FormTurmasFast.QY03.SQL.Add(
            'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
            'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
            'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
            'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
            'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
            'order by MAT_TURMA, CLI_NOME');
          FormTurmasFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY03.Open;
          //calendario de cada turma: aberto pelo frxReport3BeforePrint (param turma).
          FormTurmasFast.QY03a.Close;
          FormTurmasFast.QY03a.SQL.Clear;
          if MaskEdit4.Text='  /  /    ' then
          FormTurmasFast.QY03a.SQL.Add('select CAL_CODIGO, CAL_DATA, CAL_TIPO, CAL_STATUSCHAMADA from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          FormTurmasFast.QY03a.SQL.Add('select CAL_CODIGO, CAL_DATA, CAL_TIPO, CAL_STATUSCHAMADA from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');
          FormTurmasFast.frxReport3.Variables['TITULO']:=QuotedStr('Ficha de Chamada');
          FormTurmasFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport3.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          //QuickReport antigo (FormTurmasQ03), trocado pelo FastReport (FormTurmasFast.frxReport4) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ03, FormTurmasQ03);
          //FormTurmasQ03.QRLabel12.Caption:='Relatório de frequencia - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormTurmasQ03.FDQuery1.Close;
          //FormTurmasQ03.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          //if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //FormTurmasQ03.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCRICAO, TUR_ENCONTROS, TUR_DTINICIO, '+
                                         //'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, TUR_STATUS, TUR_PROFESSOR, TUR_SABADO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, '+
                                         //'TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, VEN_NOME, CLI_NOME from MATRICULAS '+
                                         //'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         //'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         //'left join VENDEDORES ON TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+
                                         //Where+' '+
                                         //'order by MAT_TURMA, CLI_NOME');
          //FormTurmasQ03.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ03.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ03.FDQuery1.Open;
          //FormTurmasQ03.FDQuery2.Open;
          //FormTurmasQ03.FDQuery3.Open;
          //FormTurmasQ03.FDQuery4.Open;
          //FormTurmasQ03.QuickRep1.PreviewModal;
          //FormTurmasQ03.Free;
          //FormTurmasQ03:=nil;
          {$REGION 'Relatorio de frequencia (FastReport TUR04)'}
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY04.Close;
          FormTurmasFast.QY04.SQL.Clear;
          //presencas, faltas e aulas dadas (chamadas feitas, dias NORMAL ou EXTRA) e o percentual de presenca.
          FormTurmasFast.QY04.SQL.Add(
            'select X.*, iif(X.AULASDADAS>0, X.PRESENCAS*100.00/X.AULASDADAS, 0) as PERCENTUAL from ('+
            'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCRICAO, TUR_ENCONTROS, TUR_DTINICIO, '+
            'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, TUR_STATUS, TUR_PROFESSOR, TUR_SABADO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, '+
            'TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, VEN_NOME, CLI_NOME, '+
            '(select count(CHA_CODIGO) from CHAMADAS left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO '+
            ' where CHA_MATRICULA=MAT_CODIGO and (CAL_TIPO=''NORMAL'' or CAL_TIPO=''EXTRA'') and CAL_STATUSCHAMADA=''F'' and CHA_PRESENCA=''P'') as PRESENCAS, '+
            '(select count(CHA_CODIGO) from CHAMADAS left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO '+
            ' where CHA_MATRICULA=MAT_CODIGO and (CAL_TIPO=''NORMAL'' or CAL_TIPO=''EXTRA'') and CAL_STATUSCHAMADA=''F'' and CHA_PRESENCA=''X'') as FALTAS, '+
            '(select count(CAL_CODIGO) from CALENDARIOS '+
            ' where CAL_TURMA=MAT_TURMA and (CAL_TIPO=''NORMAL'' or CAL_TIPO=''EXTRA'') and CAL_STATUSCHAMADA=''F'') as AULASDADAS '+
            'from MATRICULAS '+
            'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
            'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+') X '+
            'order by X.MAT_TURMA, X.CLI_NOME');
          FormTurmasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY04.Open;
          FormTurmasFast.frxReport4.Variables['TITULO']:=QuotedStr('Relatório de frequencia - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormTurmasFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport4.Variables['TOTALTURMAS']:=FormTurmasFast.ContarTurmas(FormTurmasFast.QY04);
          FormTurmasFast.frxReport4.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          //QuickReport antigo (FormTurmasQ05), trocado pelo FastReport (FormTurmasFast.frxReport6) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ05, FormTurmasQ05);
          //FormTurmasQ05.QRLabel12.Caption:='Relatório de conteúdos - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormTurmasQ05.FDQuery1.Close;
          //FormTurmasQ05.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit2.Text<>'' then Where:=' and CAL_TURMA='+QuotedStr(Edit1.Text);
          //if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //FormTurmasQ05.FDQuery1.SQL.Add('select * from CALENDARIOS '+
                                         //'left join TURMAS on CAL_TURMA=TUR_CODIGO '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+
                                         //Where+' '+
                                         //'order by CAL_TURMA, CAL_CONTADOR');
          //FormTurmasQ05.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ05.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ05.FDQuery1.Open;
          //FormTurmasQ05.FDQuery2.Open;
          //FormTurmasQ05.QuickRep1.PreviewModal;
          //FormTurmasQ05.Free;
          //FormTurmasQ05:=nil;
          {$REGION 'Relatorio de conteudos (FastReport TUR06)'}
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and CAL_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY06.Close;
          FormTurmasFast.QY06.SQL.Clear;
          //conteudo do dia: o primeiro lancado para o calendario.
          FormTurmasFast.QY06.SQL.Add(
            'select CAL_CODIGO, CAL_TURMA, CAL_CONTADOR, CAL_DATA, CAL_TIPO, TUR_DESCRICAO, TUR_ENCONTROS, TUR_STATUS, TUR_PERIODO, TUR_ANO, '+
            'TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, VEN_NOME, '+
            '(select first 1 CTO_CONTEUDO from CONTEUDOS where CTO_CALENDARIO=CAL_CODIGO order by CTO_CODIGO) as CTO_CONTEUDO '+
            'from CALENDARIOS '+
            'left join TURMAS on CAL_TURMA=TUR_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
            'order by CAL_TURMA, CAL_CONTADOR');
          FormTurmasFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY06.Open;
          FormTurmasFast.frxReport6.Variables['TITULO']:=QuotedStr('Relatório de conteúdos - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormTurmasFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport6.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    08: begin
          //QuickReport antigo (FormTurmasQ06), trocado pelo FastReport (FormTurmasFast.frxReport7) em 2026.11.23:
          //Application.CreateForm(TFormTurmasQ06, FormTurmasQ06);
          //FormTurmasQ06.QRLabel12.Caption:='Turmas sem calendário definido';
          //FormTurmasQ06.FDQuery1.Open;
          //FormTurmasQ06.QuickRep1.PreviewModal;
          //FormTurmasQ06.Free;
          //FormTurmasQ06:=nil;
          {$REGION 'Turmas sem calendario definido (FastReport TUR07)'}
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.QY07.Open;
          FormTurmasFast.frxReport7.Variables['TITULO']:=QuotedStr('Turmas sem calendário definido');
          FormTurmasFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport7.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    09: begin
          //QuickReport antigo (FormTurmasQ07), trocado pelo FastReport (FormTurmasFast.frxReport8) em 2026.11.23:
          //TurmasQ07.Preenchida:=False;
          //Application.CreateForm(TFormTurmasQ07, FormTurmasQ07);
          //FormTurmasQ07.QRLabel1.Caption:='Planilha de notas.';
          //FormTurmasQ07.FDQuery1.Close;
          //FormTurmasQ07.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          //if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if ComboBox2.Text='TODAS' then Where:=Where+'' else
          //if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          //if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          //if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          //if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          //if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          //if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';
          //FormTurmasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         //'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         //'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         //'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         //'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         //'order by MAT_TURMA, CLI_NOME');
          //FormTurmasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ07.FDQuery1.Open;
          //FormTurmasQ07.QuickRep1.PreviewModal;
          //FormTurmasQ07.Free;
          //FormTurmasQ07:=nil;
          {$REGION 'Planilha de notas (FastReport TUR08)'}
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.Preenchida:=False;
          FormTurmasFast.QY08.Close;
          FormTurmasFast.QY08.SQL.Clear;
          FormTurmasFast.QY08.SQL.Add(
            'select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
            'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
            'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
            'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
            'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
            'order by MAT_TURMA, CLI_NOME');
          FormTurmasFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY08.Open;
          FormTurmasFast.frxReport8.Variables['TITULO']:=QuotedStr('Planilha de notas.');
          FormTurmasFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport8.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
    10: begin
          //QuickReport antigo (FormTurmasQ07), trocado pelo FastReport (FormTurmasFast.frxReport8) em 2026.11.23:
          //TurmasQ07.Preenchida:=True;
          //Application.CreateForm(TFormTurmasQ07, FormTurmasQ07);
          //FormTurmasQ07.QRLabel1.Caption:='Planilha de notas.';
          //FormTurmasQ07.FDQuery1.Close;
          //FormTurmasQ07.FDQuery1.SQL.Clear;
          //Where:='';
          //if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          //if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          //if ComboBox1.Text='TODAS' then Where:=Where+'' else
          //if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          //if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          //if ComboBox2.Text='TODAS' then Where:=Where+'' else
          //if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          //if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          //if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          //if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          //if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          //if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';

          //FormTurmasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         //'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         //'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         //'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         //'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         //'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         //'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         //'order by MAT_TURMA, CLI_NOME');
          //FormTurmasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormTurmasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormTurmasQ07.FDQuery1.Open;
          //FormTurmasQ07.QuickRep1.PreviewModal;
          //FormTurmasQ07.Free;
          //FormTurmasQ07:=nil;
          {$REGION 'Planilha de notas (FastReport TUR08)'}
          Where:='';
          if Edit2.Text<>'' then Where:=Where+' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';
          Application.CreateForm(TFormTurmasFast, FormTurmasFast);
          FormTurmasFast.Preenchida:=True;
          FormTurmasFast.QY08.Close;
          FormTurmasFast.QY08.SQL.Clear;
          FormTurmasFast.QY08.SQL.Add(
            'select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
            'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
            'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
            'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
            'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
            'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
            'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
            'order by MAT_TURMA, CLI_NOME');
          FormTurmasFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasFast.QY08.Open;
          FormTurmasFast.frxReport8.Variables['TITULO']:=QuotedStr('Planilha de notas.');
          FormTurmasFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormTurmasFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormTurmasFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormTurmasFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormTurmasFast.frxReport8.ShowReport;
          FormTurmasFast.Free;
          FormTurmasFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormTurmasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTurmasRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormTurmasRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormTurmasRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormTurmasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  MaskEdit4.Clear;
end;

procedure TFormTurmasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTurmasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormTurmasRel.Edit1Exit(Sender: TObject);
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

procedure TFormTurmasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormTurmasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTurmasRel.SpeedButton1Click(Sender: TObject);
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

procedure TFormTurmasRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

end.
