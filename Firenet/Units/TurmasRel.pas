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
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
uses DataMod, Funcoes1, TurmasQ01, DataMod2, TurmasQ02, TurmasQ03,
  TurmasLoc, TurmasQ04, TurmasQ05, TurmasQ06, TurmasQ07, TurmasQ08,
  TurmasQ09, DataModSearch, FuncoesFirenet;
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
          Application.CreateForm(TFormTurmasQ01, FormTurmasQ01);
          FormTurmasQ01.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)';
          FormTurmasQ01.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          FormTurmasQ01.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
                                         'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                         'order by VEN_NOME, TUR_DESCRICAO');
          FormTurmasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ01.FDQuery1.Open;
          FormTurmasQ01.QuickRep1.PreviewModal;
          FormTurmasQ01.Free;
          FormTurmasQ01:=nil;
        end;
    01: begin
          Application.CreateForm(TFormTurmasQ01, FormTurmasQ01);
          FormTurmasQ01.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)';
          FormTurmasQ01.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          FormTurmasQ01.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_PERIODO, TUR_STATUS, TUR_ENCONTROS, '+
                                         'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_ANO, VEN_NOME from TURMAS '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         'order by VEN_NOME, TUR_DESCRICAO');
          FormTurmasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ01.FDQuery1.Open;
          FormTurmasQ01.QuickRep1.PreviewModal;
          FormTurmasQ01.Free;
          FormTurmasQ01:=nil;
        end;
    02: begin
          Application.CreateForm(TFormTurmasQ04, FormTurmasQ04);
          FormTurmasQ04.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data cadastro)';
          FormTurmasQ04.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          FormTurmasQ04.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
                                         'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME from TURMAS '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                                         'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          FormTurmasQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ04.FDQuery1.Open;
          FormTurmasQ04.FDQuery2.Open;
          FormTurmasQ04.FDQuery3.Open;
          FormTurmasQ04.FDQuery4.Open;
          FormTurmasQ04.FDQuery5.Open;
          FormTurmasQ04.QuickRep1.PreviewModal;
          FormTurmasQ04.Free;
          FormTurmasQ04:=nil;
        end;
    03: begin
          Application.CreateForm(TFormTurmasQ04, FormTurmasQ04);
          FormTurmasQ04.QRLabel12.Caption:='Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text+' (data início)';
          FormTurmasQ04.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          FormTurmasQ04.FDQuery1.SQL.Add('select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, TUR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS, '+
                                         'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME from TURMAS '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO');
          FormTurmasQ04.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ04.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ04.FDQuery1.Open;
          FormTurmasQ04.FDQuery2.Open;
          FormTurmasQ04.FDQuery3.Open;
          FormTurmasQ04.FDQuery4.Open;
          FormTurmasQ04.FDQuery5.Open;
          FormTurmasQ04.QuickRep1.PreviewModal;
          FormTurmasQ04.Free;
          FormTurmasQ04:=nil;
        end;
    04: begin
          //fichas de chamada = turmasq02 e turmasq08
          Application.CreateForm(TFormTurmasQ08, FormTurmasQ08);
          FormTurmasQ08.FDQuery1.Close;
          FormTurmasQ08.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          FormTurmasQ08.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
                                         'order by MAT_TURMA, CLI_NOME');
          FormTurmasQ08.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ08.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ08.FDQuery1.Open;

          FormTurmasQ08.FDQuery2.Close;
          FormTurmasQ08.FDQuery2.SQL.Clear;
          if MaskEdit4.Text='  /  /    ' then
          FormTurmasQ08.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          FormTurmasQ08.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');

          FormTurmasQ08.QuickRep1.PreviewModal;
          FormTurmasQ08.Free;
          FormTurmasQ08:=nil;
         end;
    05: begin
          Application.CreateForm(TFormTurmasQ09, FormTurmasQ09);
          FormTurmasQ09.FDQuery1.Close;
          FormTurmasQ09.FDQuery1.SQL.Clear;
          Where:='';
          if Edit4.Text<>'' then Where:=Where+' and TUR_PROFESSOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          FormTurmasQ09.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal and MAT_STATUS=''A'' '+Where+' '+
                                         'order by MAT_TURMA, CLI_NOME');
          FormTurmasQ09.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ09.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ09.FDQuery1.Open;

          FormTurmasQ09.FDQuery2.Close;
          FormTurmasQ09.FDQuery2.SQL.Clear;
          if MaskEdit4.Text='  /  /    ' then
          FormTurmasQ09.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CONTADOR') else
          FormTurmasQ09.FDQuery2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma and CAL_DATA >= '+QuotedStr(DateToFBDate(StrToDate(MaskEdit4.Text,FS)))+' order by CAL_CONTADOR');

          FormTurmasQ09.QuickRep1.PreviewModal;
          FormTurmasQ09.Free;
          FormTurmasQ09:=nil;
        end;
    06: begin
          Application.CreateForm(TFormTurmasQ03, FormTurmasQ03);
          FormTurmasQ03.QRLabel12.Caption:='Relatório de frequencia - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormTurmasQ03.FDQuery1.Close;
          FormTurmasQ03.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          FormTurmasQ03.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCRICAO, TUR_ENCONTROS, TUR_DTINICIO, '+
                                         'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, TUR_STATUS, TUR_PROFESSOR, TUR_SABADO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, '+
                                         'TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, VEN_NOME, CLI_NOME from MATRICULAS '+
                                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         'left join VENDEDORES ON TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+
                                         Where+' '+
                                         'order by MAT_TURMA, CLI_NOME');
          FormTurmasQ03.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ03.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ03.FDQuery1.Open;
          FormTurmasQ03.FDQuery2.Open;
          FormTurmasQ03.FDQuery3.Open;
          FormTurmasQ03.FDQuery4.Open;
          FormTurmasQ03.QuickRep1.PreviewModal;
          FormTurmasQ03.Free;
          FormTurmasQ03:=nil;
        end;
    07: begin
          Application.CreateForm(TFormTurmasQ05, FormTurmasQ05);
          FormTurmasQ05.QRLabel12.Caption:='Relatório de conteúdos - Turmas de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormTurmasQ05.FDQuery1.Close;
          FormTurmasQ05.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=' and CAL_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=Where+' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          FormTurmasQ05.FDQuery1.SQL.Add('select * from CALENDARIOS '+
                                         'left join TURMAS on CAL_TURMA=TUR_CODIGO '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+
                                         Where+' '+
                                         'order by CAL_TURMA, CAL_CONTADOR');
          FormTurmasQ05.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ05.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ05.FDQuery1.Open;
          FormTurmasQ05.FDQuery2.Open;
          FormTurmasQ05.QuickRep1.PreviewModal;
          FormTurmasQ05.Free;
          FormTurmasQ05:=nil;
        end;
    08: begin
          Application.CreateForm(TFormTurmasQ06, FormTurmasQ06);
          FormTurmasQ06.QRLabel12.Caption:='Turmas sem calendário definido';
          FormTurmasQ06.FDQuery1.Open;
          FormTurmasQ06.QuickRep1.PreviewModal;
          FormTurmasQ06.Free;
          FormTurmasQ06:=nil;
        end;
    09: begin
          TurmasQ07.Preenchida:=False;
          Application.CreateForm(TFormTurmasQ07, FormTurmasQ07);
          FormTurmasQ07.QRLabel1.Caption:='Planilha de notas.';
          FormTurmasQ07.FDQuery1.Close;
          FormTurmasQ07.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if ComboBox2.Text='TODAS' then Where:=Where+'' else
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';
          FormTurmasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         'order by MAT_TURMA, CLI_NOME');
          FormTurmasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ07.FDQuery1.Open;
          FormTurmasQ07.QuickRep1.PreviewModal;
          FormTurmasQ07.Free;
          FormTurmasQ07:=nil;
        end;
    10: begin
          TurmasQ07.Preenchida:=True;
          Application.CreateForm(TFormTurmasQ07, FormTurmasQ07);
          FormTurmasQ07.QRLabel1.Caption:='Planilha de notas.';
          FormTurmasQ07.FDQuery1.Close;
          FormTurmasQ07.FDQuery1.SQL.Clear;
          Where:='';
          if Edit2.Text<>'' then Where:=' and MAT_TURMA='+QuotedStr(Edit1.Text);
          if Edit5.Text<>'' then Where:=' and TUR_PERIODO='+QuotedStr(Edit5.Text);
          if ComboBox1.Text='TODAS' then Where:=Where+'' else
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and TUR_STATUS=''A''' else
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and TUR_STATUS=''B''';
          if ComboBox2.Text='TODAS' then Where:=Where+'' else
          if ComboBox2.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
          if ComboBox2.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
          if ComboBox2.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
          if ComboBox2.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
          if ComboBox2.Text='PRE MATRICULA' then Where:=Where+' and MAT_STATUS=''P''' else
          if ComboBox2.Text='TRANSFERIDAS' then Where:=Where+' and MAT_STATUS=''T''';

          FormTurmasQ07.FDQuery1.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_NOME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA, '+
                                         'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, '+
                                         'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENCONTROS, VEN_NOME from MATRICULAS '+
                                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                                         'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO '+
                                         'where TUR_DTINICIO between :datainicial and :datafinal '+Where+' '+
                                         'order by MAT_TURMA, CLI_NOME');
          FormTurmasQ07.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormTurmasQ07.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormTurmasQ07.FDQuery1.Open;
          FormTurmasQ07.QuickRep1.PreviewModal;
          FormTurmasQ07.Free;
          FormTurmasQ07:=nil;
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
