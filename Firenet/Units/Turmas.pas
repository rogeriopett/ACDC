unit Turmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons, DBSBtn, ExtCtrls, Menus, Mask, Grids,
  DBGrids, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTurmas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label5: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    GerarCalendario1: TMenuItem;
    GerarCalendario1Button: TPngSpeedButton;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    N3: TMenuItem;
    CadastroDeProfessores1: TMenuItem;
    CadastroDeProfessores1Button: TPngSpeedButton;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    CadastroDeChamadas1: TMenuItem;
    CadastroDeChamadas1Button: TPngSpeedButton;
    BaixarTurma1: TMenuItem;
    ReabrirTurma1: TMenuItem;
    ReabrirTurma1Button: TPngSpeedButton;
    BaixarTurma1Button: TPngSpeedButton;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    InserirData1: TMenuItem;
    AlterarData1: TMenuItem;
    EliminarData1: TMenuItem;
    CadastroDeConteudos1: TMenuItem;
    InserirData1Button: TPngSpeedButton;
    EliminarData1Button: TPngSpeedButton;
    AlterarData1Button: TPngSpeedButton;
    CadastroDeConteudos1Button: TPngSpeedButton;
    N6: TMenuItem;
    FichaDeChamada1: TMenuItem;
    PorVendedorEStatusDataInicio1: TMenuItem;
    PorVendedorEStatusDataCadastro1: TMenuItem;
    RelatorioDeFrequencia1: TMenuItem;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    PorVendedorPeriodoEStatusDataCadastro1: TMenuItem;
    PorVendedorPeriodoEStatusDataInicio1: TMenuItem;
    RelatorioDeConteudos1: TMenuItem;
    N4: TMenuItem;
    Gerartodososcalendrios1: TMenuItem;
    TurmasSemCalendarioDefinido1: TMenuItem;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    N7: TMenuItem;
    AlunosMatriculadosNestaTurma1: TMenuItem;
    AlunosMatriculadosNestaTurma1Button: TPngSpeedButton;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    PlanilhaDeNotas1: TMenuItem;
    FichaDeChamadaPreenchida1: TMenuItem;
    DBEdit22: TDBEdit;
    CadastroDeFeriados1: TMenuItem;
    CadastroDeFeriados1Button: TPngSpeedButton;
    AjustarAlunosChamadas1: TMenuItem;
    PngImageList1: TPngImageList;
    N8: TMenuItem;
    InserirNotasDeExerciciosParaEstaTurma1: TMenuItem;
    InserirNotasDeAvaliacoesParaEstaTurma1: TMenuItem;
    InserirNotasDeExerciciosParaEstaTurma1Button: TPngSpeedButton;
    InserirNotasDeAvaliacoesParaEstaTurma1Button: TPngSpeedButton;
    Label25: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    CadastroDeCursos1: TMenuItem;
    CadastroDeCursos1Button: TPngSpeedButton;
    AjustarListaDeChamada1: TMenuItem;
    PlanilhaDeNotasPreenchida1: TMenuItem;
    QYT3: TFDQuery;
    TRT3: TFDTransaction;
    QYMatriculas: TFDQuery;
    TRMatriculas: TFDTransaction;
    QYMatriculasMAT_APROVADO: TStringField;
    QYMatriculasMAT_CLIENTE: TIntegerField;
    QYMatriculasMAT_CODIGO: TIntegerField;
    QYMatriculasMAT_DTATUALIZACAO: TDateField;
    QYMatriculasMAT_DTCADASTRO: TDateField;
    QYMatriculasMAT_OBSERVACOES: TMemoField;
    QYMatriculasMAT_STATUS: TStringField;
    QYMatriculasMAT_TURMA: TIntegerField;
    QYMatriculasMAT_USUARIO: TStringField;
    QYMatriculasMAT_VENDEDOR: TIntegerField;
    QYTurmas: TFDQuery;
    TRTurmas: TFDTransaction;
    QYTurmasTUR_CODIGO: TIntegerField;
    QYChaDel: TFDQuery;
    TRChaDel: TFDTransaction;
    QYTemp: TFDQuery;
    TRTemp: TFDTransaction;
    QYTempCHA_CALENDARIO: TIntegerField;
    QYTempCHA_CLIENTE: TIntegerField;
    QYTempCHA_CODIGO: TIntegerField;
    QYTempCHA_MATRICULA: TIntegerField;
    QYTempCHA_PRESENCA: TStringField;
    QYTempCAL_CODIGO: TIntegerField;
    QYTempCAL_CONTADOR: TIntegerField;
    QYTempCAL_DATA: TDateField;
    QYTempCAL_STATUSCHAMADA: TStringField;
    QYTempCAL_TIPO: TStringField;
    QYTempCAL_TURMA: TIntegerField;
    TRTemp2: TFDTransaction;
    QYTemp2: TFDQuery;
    QYTemp2MAT_APROVADO: TStringField;
    QYTemp2MAT_CLIENTE: TIntegerField;
    QYTemp2MAT_CODIGO: TIntegerField;
    QYTemp2MAT_CONCEITODISCURSO: TStringField;
    QYTemp2MAT_CONCEITOEXERCICIOS: TStringField;
    QYTemp2MAT_CONCEITOGERAL: TStringField;
    QYTemp2MAT_CONCEITOLITERATURA: TStringField;
    QYTemp2MAT_CONTABILIZAR: TStringField;
    QYTemp2MAT_DESISTENCIA: TIntegerField;
    QYTemp2MAT_DTATUALIZACAO: TDateField;
    QYTemp2MAT_DTCADASTRO: TDateField;
    QYTemp2MAT_HRATUALIZACAO: TTimeField;
    QYTemp2MAT_HRCADASTRO: TTimeField;
    QYTemp2MAT_MEDIAEXERCICIOS: TFMTBCDField;
    QYTemp2MAT_MEDIAFINAL: TFMTBCDField;
    QYTemp2MAT_OBSERVACOES: TMemoField;
    QYTemp2MAT_STATUS: TStringField;
    QYTemp2MAT_TIPO: TStringField;
    QYTemp2MAT_TIPOMATRICULA: TStringField;
    QYTemp2MAT_TURMA: TIntegerField;
    QYTemp2MAT_USUARIO: TStringField;
    QYTemp2MAT_VENDA: TIntegerField;
    QYTemp2MAT_VENDAMATERIAL: TIntegerField;
    QYTemp2MAT_VENDEDOR: TIntegerField;
    QYCal: TFDQuery;
    TRCal: TFDTransaction;
    QYCalCAL_CODIGO: TIntegerField;
    QYCalCAL_CONTADOR: TIntegerField;
    QYCalCAL_DATA: TDateField;
    QYCalCAL_STATUSCHAMADA: TStringField;
    QYCalCAL_TIPO: TStringField;
    QYCalCAL_TURMA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure GerarCalendario1Click(Sender: TObject);
    procedure CadastroDeProfessores1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure CadastroDeChamadas1Click(Sender: TObject);
    procedure BaixarTurma1Click(Sender: TObject);
    procedure ReabrirTurma1Click(Sender: TObject);
    procedure InserirData1Click(Sender: TObject);
    procedure AlterarData1Click(Sender: TObject);
    procedure EliminarData1Click(Sender: TObject);
    procedure CadastroDeConteudos1Click(Sender: TObject);
    procedure FichaDeChamada1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RelatorioDeFrequencia1Click(Sender: TObject);
    procedure PorVendedorEStatusDataCadastro1Click(Sender: TObject);
    procedure PorVendedorEStatusDataInicio1Click(Sender: TObject);
    procedure PorVendedorPeriodoEStatusDataCadastro1Click(Sender: TObject);
    procedure PorVendedorPeriodoEStatusDataInicio1Click(Sender: TObject);
    procedure RelatorioDeConteudos1Click(Sender: TObject);
    procedure Gerartodososcalendrios1Click(Sender: TObject);
    procedure TurmasSemCalendarioDefinido1Click(Sender: TObject);
    procedure AlunosMatriculadosNestaTurma1Click(Sender: TObject);
    procedure PlanilhaDeNotas1Click(Sender: TObject);
    procedure FichaDeChamadaPreenchida1Click(Sender: TObject);
    procedure CadastroDeFeriados1Click(Sender: TObject);
    procedure AjustarAlunosChamadas1Click(Sender: TObject);
    procedure InserirNotasDeExerciciosParaEstaTurma1Click(Sender: TObject);
    procedure InserirNotasDeAvaliacoesParaEstaTurma1Click(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure CadastroDeCursos1Click(Sender: TObject);
    procedure AjustarListaDeChamada1Click(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure PlanilhaDeNotasPreenchida1Click(Sender: TObject);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GerarListagemAlunosChamada;
    function IsHolyday(Data: TDate): Boolean;
  public
    { Public declarations }
    procedure GerarListagemAlunosChamadaUmDia;
  end;

var
  FormTurmas: TFormTurmas;

implementation
uses DataMod2, TurmasLoc, Main, Funcoes1, TurmasRel,
  DateUtils, Vendedores, Chamadas, TurmasData, Conteudos, TurmasQ02,
  QRCtrls, TurmasQ03, TurmasAlunos, DataMod, Feriados, ExerciciosTurmas,
  AvaliacoesTurmas, CursosLoc, Cursos, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBTurmas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormTurmas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTurmas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTurmas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasLoc , FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    DM2.TBTurmas.Close;
    DM2.TBTurmas.ParamByName('codigo').AsInteger:=FormTurmasLoc.QYTurmasTUR_CODIGO.Value;
    DM2.TBTurmas.Open;

    DM2.TBCalendarios.Close;
    DM2.TBCalendarios.Open;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormTurmas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTurmas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormTurmas);
end;

procedure TFormTurmas.DBEdit23Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormTurmas.DBEdit23Exit(Sender: TObject);
begin
  if (DM2.TBTurmas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBTurmasTUR_CURSO.Clear;
    DM2.TBTurmasCUR_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBTurmas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCursos.Close;
    DMS.QYCursos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCursos.Open;
    if not DMS.QYCursos.IsEmpty then
    begin
      DM2.TBTurmasTUR_CURSO.Value:=DMS.QYCursosCUR_CODIGO.Value;
      DM2.TBTurmasCUR_DESCRICAO.Value:=DMS.QYCursosCUR_DESCRICAO.Value;
    end else
    begin
      DM2.TBTurmasTUR_CURSO.Clear;
      DM2.TBTurmasCUR_DESCRICAO.Clear;
      MessageDlg('Curso não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCursos.Close;
  end;
end;

procedure TFormTurmas.DBEdit23KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormTurmas.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTurmas.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormTurmas.DBEdit31Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit31,DBEdit32,nil,DM2.TBTurmas);
end;

procedure TFormTurmas.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormTurmas.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTurmas.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit31,DBEdit32,nil,DM2.TBTurmas);
end;

function TFormTurmas.IsHolyday(Data: TDate): Boolean;
begin
  DM2.TBFeriados.Close;
  DM2.TBFeriados.ParamByName('codigo').AsDate:=Data;
  DM2.TBFeriados.Open;
  //se vazio, então não é feriado, se encontrar a data, então é feriado.
  if DM2.TBFeriados.IsEmpty then
  Result:=False else
  Result:=True;
end;

procedure TFormTurmas.GerarCalendario1Click(Sender: TObject);
var I, Z, Contador: Integer;
  Selecao: String;
  Dias: array[1..7] of String;
  Datas: TDate;
  procedure InserirCalendario(var Contador: Integer; var I: Integer);
  begin
    Contador:=Contador+1;
    DM2.TBCalendarios.Insert;
    DM2.TBCalendariosCAL_DATA.Value:=Datas;
    DM2.TBCalendariosCAL_CONTADOR.Value:=Contador;
    DM2.TBCalendariosCAL_TIPO.Value:='NORMAL';
    DM2.TBCalendarios.Post;
    Inc(I);
  end;
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBTurmasTUR_STATUS.Value='B','Turma já baixada.');
  AbortIf((DM2.TBTurmasTUR_DOMINGO.Value='S') and (DM2.TBTurmasTUR_DOMINGOVEZES.Value<=0),'Informe a quantidade de vezes no domingo.');
  AbortIf((DM2.TBTurmasTUR_SEGUNDA.Value='S') and (DM2.TBTurmasTUR_SEGUNDAVEZES.Value<=0),'Informe a quantidade de vezes na segunda-feira.');
  AbortIf((DM2.TBTurmasTUR_TERCA.Value='S')   and (DM2.TBTurmasTUR_TERCAVEZES.Value=0),'Informe a quantidade de vezes na terça-feira.');
  AbortIf((DM2.TBTurmasTUR_QUARTA.Value='S')  and (DM2.TBTurmasTUR_QUARTAVEZES.Value=0),'Informe a quantidade de vezes na quarta-feira.');
  AbortIf((DM2.TBTurmasTUR_QUINTA.Value='S')  and (DM2.TBTurmasTUR_QUINTAVEZES.Value=0),'Informe a quantidade de vezes na quinta-feira.');
  AbortIf((DM2.TBTurmasTUR_SEXTA.Value='S')   and (DM2.TBTurmasTUR_SEXTAVEZES.Value=0),'Informe a quantidade de vezes na sexta-feira.');
  AbortIf((DM2.TBTurmasTUR_SABADO.Value='S')  and (DM2.TBTurmasTUR_SABADOVEZES.Value=0),'Informe a quantidade de vezes no sábado.');
  AbortIf(DM2.TBTurmasTUR_ENCONTROS.Value<=0,'Informe o número de encontros desta turma.');

  if MessageDlg('Gerar calendário?'+#13#13+'ATENÇÃO: As chamadas referentes ao calendário atual serão perdidas.',mtWarning,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBCalendarios.DisableControls;
    DM2.TBCalendarios.First;
    while not DM2.TBCalendarios.Eof do
    begin
      DM2.TBCalendarios.Delete;
    end;
    Dias[1]:='Domingo';
    Dias[2]:='Segunda';
    Dias[3]:='Terça';
    Dias[4]:='Quarta';
    Dias[5]:='Quinta';
    Dias[6]:='Sexta';
    Dias[7]:='Sábado';
    Selecao:=DM2.TBTurmasTUR_DOMINGO.Value+
             DM2.TBTurmasTUR_SEGUNDA.Value+
             DM2.TBTurmasTUR_TERCA.Value+
             DM2.TBTurmasTUR_QUARTA.Value+
             DM2.TBTurmasTUR_QUINTA.Value+
             DM2.TBTurmasTUR_SEXTA.Value+
             DM2.TBTurmasTUR_SABADO.Value;
    if Selecao[DayOfWeek(DM2.TBTurmasTUR_DTINICIO.Value)]='N' then
    begin
      MessageDlg('O dia da semana selecionado não coincide com a data de início. '+#13#13+DateToStr(DM2.TBTurmasTUR_DTINICIO.Value,FS)+
                 ' é '+Dias[DayOfWeek(DM2.TBTurmasTUR_DTINICIO.Value)]+'.',mtError,[mbOk],0);
      DM2.TBCalendarios.EnableControls;
      Screen.Cursor:=crDefault;
      Exit;
    end;
    Datas:=DM2.TBTurmasTUR_DTINICIO.Value;
    Contador:=0;
    I:=0;
    while I<DM2.TBTurmasTUR_ENCONTROS.Value do
    begin
      //confere se a data está entre o período de férias.
      if (Datas>=DM2.TBTurmasTUR_FERIASINICIO.Value) and (Datas<=DM2.TBTurmasTUR_FERIASTERMINO.Value) then
      begin
        repeat
          Datas:=IncDay(Datas,1);
        until (Datas<DM2.TBTurmasTUR_FERIASINICIO.Value) or (Datas>DM2.TBTurmasTUR_FERIASTERMINO.Value);
      end;
      //se nao pode gerar dia de aula no feriado, entao verifica se a data existe na tabela de feriados.
      if DM.TBParametrosPAR_AULASFERIADOS.Value='N' then
      begin
        if IsHolyday(Datas) then
        begin
          repeat
            Datas:=IncDay(Datas,1);
          until IsHolyday(Datas)=False;
        end;
//        DM2.TBFeriados.Close;
//        DM2.TBFeriados.ParamByName('codigo').AsDate:=Datas;
//        DM2.TBFeriados.Open;
//        if not DM2.TBFeriados.IsEmpty then
//        Datas:=IncDay(Datas,1);
      end;
      //...
      if Selecao[DayOfWeek(Datas)]='S' then
      begin
        case DayOfWeek(Datas) of
          01: for Z:=1 to DM2.TBTurmasTUR_DOMINGOVEZES.Value do InserirCalendario(Contador,I);
          02: for Z:=1 to DM2.TBTurmasTUR_SEGUNDAVEZES.Value do InserirCalendario(Contador,I);
          03: for Z:=1 to DM2.TBTurmasTUR_TERCAVEZES.Value do InserirCalendario(Contador,I);
          04: for Z:=1 to DM2.TBTurmasTUR_QUARTAVEZES.Value do InserirCalendario(Contador,I);
          05: for Z:=1 to DM2.TBTurmasTUR_QUINTAVEZES.Value do InserirCalendario(Contador,I);
          06: for Z:=1 to DM2.TBTurmasTUR_SEXTAVEZES.Value do InserirCalendario(Contador,I);
          07: for Z:=1 to DM2.TBTurmasTUR_SABADOVEZES.Value do InserirCalendario(Contador,I);
        end;
      end;
      Datas:=IncDay(Datas,1);
    end;
    //altera data termino na tabela turmas.
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_DTTERMINO.Value:=Datas-1;
    DM2.TBTurmas.Post;
    //atualiza a listagem de chamadas.
    GerarListagemAlunosChamada;
    DM2.TBCalendarios.EnableControls;
    DM2.TBCalendarios.Close;
    DM2.TBCalendarios.Open;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormTurmas.CadastroDeProfessores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormTurmas.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_DTINICIO.Clear;
  end;
end;

procedure TFormTurmas.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_FERIASINICIO.Clear;
  end;
end;

procedure TFormTurmas.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_FERIASTERMINO.Clear;
  end;
end;

procedure TFormTurmas.DBCheckBox7Click(Sender: TObject);
begin
  if not DBCheckBox7.Checked and DBCheckBox7.Enabled then DM2.TBTurmasTUR_DOMINGOVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox1Click(Sender: TObject);
begin
  if not DBCheckBox1.Checked and DBCheckBox1.Enabled then DM2.TBTurmasTUR_SEGUNDAVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox2Click(Sender: TObject);
begin
  if not DBCheckBox2.Checked and DBCheckBox2.Enabled then DM2.TBTurmasTUR_TERCAVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox3Click(Sender: TObject);
begin
  if not DBCheckBox3.Checked and DBCheckBox3.Enabled then DM2.TBTurmasTUR_QUARTAVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox4Click(Sender: TObject);
begin
  if not DBCheckBox4.Checked and DBCheckBox4.Enabled then DM2.TBTurmasTUR_QUINTAVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox5Click(Sender: TObject);
begin
  if not DBCheckBox5.Checked and DBCheckBox5.Enabled then DM2.TBTurmasTUR_SEXTAVEZES.Value:=0;
end;

procedure TFormTurmas.DBCheckBox6Click(Sender: TObject);
begin
  if not DBCheckBox6.Checked and DBCheckBox6.Enabled then DM2.TBTurmasTUR_SABADOVEZES.Value:=0;
end;

procedure TFormTurmas.GerarListagemAlunosChamada;
begin
  DM2.TBChamadas.DisableControls;
  QYMatriculas.DisableControls;
  QYMatriculas.Close;
  QYMatriculas.ParamByName('codigo').AsInteger:=DM2.TBTurmasTUR_CODIGO.Value;
  QYMatriculas.Open;
  DM2.TBCalendarios.First;
  while not DM2.TBCalendarios.Eof do
  begin
    QYMatriculas.First;
    while not QYMatriculas.Eof do
    begin
      if QYMatriculasMAT_STATUS.Value='A' then
      begin
        DM2.TBChamadas.Insert;
        DM2.TBChamadasCHA_CALENDARIO.Value:=DM2.TBCalendariosCAL_CODIGO.Value;
        DM2.TBChamadasCHA_CLIENTE.Value:=QYMatriculasMAT_CLIENTE.Value;
        DM2.TBChamadasCHA_MATRICULA.Value:=QYMatriculasMAT_CODIGO.Value;
        DM2.TBChamadas.Post;
      end;
      QYMatriculas.Next;
    end;
    DM2.TBCalendarios.Next;
  end;
  DM2.TBChamadas.EnableControls;
  QYMatriculas.EnableControls;
end;

procedure TFormTurmas.GerarListagemAlunosChamadaUmDia;
begin
  DM2.TBChamadas.DisableControls;
  QYMatriculas.DisableControls;
  QYMatriculas.Close;
  QYMatriculas.ParamByName('codigo').AsInteger:=DM2.TBTurmasTUR_CODIGO.Value;
  QYMatriculas.Open;
  QYMatriculas.First;
  while not QYMatriculas.Eof do
  begin
    if QYMatriculasMAT_STATUS.Value='A' then
    begin
      DM2.TBChamadas.Insert;
      DM2.TBChamadasCHA_CALENDARIO.Value:=DM2.TBCalendariosCAL_CODIGO.Value;
      DM2.TBChamadasCHA_CLIENTE.Value:=QYMatriculasMAT_CLIENTE.Value;
      DM2.TBChamadasCHA_MATRICULA.Value:=QYMatriculasMAT_CODIGO.Value;
      DM2.TBChamadas.Post;
    end;
    QYMatriculas.Next;
  end;
  DM2.TBChamadas.EnableControls;
  QYMatriculas.EnableControls;
end;

procedure TFormTurmas.CadastroDeChamadas1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');

  Application.CreateForm(TFormChamadas, FormChamadas);
  FormChamadas.ShowModal;
  FormChamadas.Free;
  FormChamadas:=nil;
end;

procedure TFormTurmas.BaixarTurma1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBTurmasTUR_STATUS.Value='B','Turma já baixada.');

  if MessageDlg('Dar baixa na turma?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_STATUS.Value:='B';
    DM2.TBTurmas.Post;
  end;
end;

procedure TFormTurmas.ReabrirTurma1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBTurmasTUR_STATUS.Value='A','Turma já aberta.');

  if MessageDlg('Reabrir turma?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_STATUS.Value:='A';
    DM2.TBTurmas.Post;
  end;
end;

procedure TFormTurmas.InserirData1Click(Sender: TObject);
var Contador: Integer;
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Só é possível inserir uma nova data após ser gerado o calendário.');

  DM2.TBCalendarios.Last;
  Contador:=DM2.TBCalendariosCAL_CONTADOR.Value;
  DM2.TBCalendarios.Insert;
  DM2.TBCalendariosCAL_CONTADOR.Value:=Contador+1;
  Application.CreateForm(TFormTurmasData, FormTurmasData);
  TurmasData.Inserindo:=True;
  FormTurmasData.ShowModal;
  FormTurmasData.Free;
  FormTurmasData:=nil;
end;

procedure TFormTurmas.InserirNotasDeAvaliacoesParaEstaTurma1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBTurmasTUR_STATUS.Value='B','Esta turma já está baixada. Não é possível inserir notas.');

  Application.CreateForm(TFormAvaliacoesTurmas, FormAvaliacoesTurmas);
  FormAvaliacoesTurmas.ShowModal;
  FormAvaliacoesTurmas.Free;
  FormAvaliacoesTurmas:=nil;
end;

procedure TFormTurmas.InserirNotasDeExerciciosParaEstaTurma1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBTurmasTUR_STATUS.Value='B','Esta turma já está baixada. Não é possível inserir notas.');

  Application.CreateForm(TFormExerciciosTurmas, FormExerciciosTurmas);
  FormExerciciosTurmas.ShowModal;
  FormExerciciosTurmas.Free;
  FormExerciciosTurmas:=nil;
end;

procedure TFormTurmas.AlterarData1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');

  DM2.TBCalendarios.Edit;
  Application.CreateForm(TFormTurmasData, FormTurmasData);
  TurmasData.Inserindo:=False;
  FormTurmasData.ShowModal;
  FormTurmasData.Free;
  FormTurmasData:=nil;
end;

procedure TFormTurmas.EliminarData1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');

  if MessageDlg('Eliminar a data '+DateToStr(DM2.TBCalendariosCAL_DATA.Value,FS)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBCalendarios.Delete;
end;

procedure TFormTurmas.CadastroDeConteudos1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');

  Application.CreateForm(TFormConteudos, FormConteudos);
  FormConteudos.ShowModal;
  FormConteudos.Free;
  FormConteudos:=nil;
end;

procedure TFormTurmas.CadastroDeCursos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursos, FormCursos);
  FormCursos.ShowModal;
  FormCursos.Free;
  FormCursos:=nil;
end;

procedure TFormTurmas.DBGrid1DblClick(Sender: TObject);
begin
  if DM2.TBCalendarios.IsEmpty then Exit;
  Alterardata1Click(Self);
end;

procedure TFormTurmas.PorVendedorEStatusDataCadastro1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=0;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PorVendedorEStatusDataInicio1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=1;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PorVendedorPeriodoEStatusDataCadastro1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=2;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PorVendedorPeriodoEStatusDataInicio1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=3;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.FichaDeChamada1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=4;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.FichaDeChamadaPreenchida1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=5;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;


procedure TFormTurmas.RelatorioDeFrequencia1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=6;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.RelatorioDeConteudos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=7;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.TurmasSemCalendarioDefinido1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=8;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PlanilhaDeNotas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=9;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PlanilhaDeNotasPreenchida1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasRel, FormTurmasRel);
  FormTurmasRel.ComboBox4.Enabled:=False;
  FormTurmasRel.ComboBox4.ItemIndex:=10;
  FormTurmasRel.ComboBox4Click(Self);
  FormTurmasRel.ShowModal;
  FormTurmasRel.Free;
  FormTurmasRel:=nil;
end;

procedure TFormTurmas.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursosLoc, FormCursosLoc);
  FormCursosLoc.ShowModal;
  if CursosLoc.Procurar then
  begin
    DM2.TBTurmas.Edit;
    DM2.TBTurmasTUR_CURSO.Value:=FormCursosLoc.QYCursosCUR_CODIGO.Value;
    DM2.TBTurmasCUR_DESCRICAO.Value:=FormCursosLoc.QYCursosCUR_DESCRICAO.Value;
  end;
  FormCursosLoc.Free;
  FormCursosLoc:=nil;
end;

procedure TFormTurmas.Gerartodososcalendrios1Click(Sender: TObject);
var I, Z, Contador: Integer;
  Selecao: String;
  Dias: array[1..7] of String;
  Datas: TDate;
  procedure InserirCalendario(var Contador: Integer; var I: Integer);
  begin
    Contador:=Contador+1;
    DM2.TBCalendarios.Insert;
    DM2.TBCalendariosCAL_DATA.Value:=Datas;
    DM2.TBCalendariosCAL_CONTADOR.Value:=Contador;
    DM2.TBCalendariosCAL_TIPO.Value:='NORMAL';
    DM2.TBCalendarios.Post;
    Inc(I);
  end;
begin
  if MessageDlg('Gerar todos os calendários?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYTurmas.Open;
    QYTurmas.First;
    while not QYTurmas.Eof do
    begin
      DM2.TBTurmas.Close;
      DM2.TBTurmas.ParamByName('codigo').AsInteger:=QYTurmasTUR_CODIGO.Value;
      DM2.TBTurmas.Open;

      Screen.Cursor:=crHourGlass;
      DM2.TBCalendarios.DisableControls;
      DM2.TBCalendarios.First;
      while not DM2.TBCalendarios.Eof do
      begin
        DM2.TBCalendarios.Delete;
      end;
      Dias[1]:='Domingo';
      Dias[2]:='Segunda';
      Dias[3]:='Terça';
      Dias[4]:='Quarta';
      Dias[5]:='Quinta';
      Dias[6]:='Sexta';
      Dias[7]:='Sábado';
      Selecao:=DM2.TBTurmasTUR_DOMINGO.Value+
               DM2.TBTurmasTUR_SEGUNDA.Value+
               DM2.TBTurmasTUR_TERCA.Value+
               DM2.TBTurmasTUR_QUARTA.Value+
               DM2.TBTurmasTUR_QUINTA.Value+
               DM2.TBTurmasTUR_SEXTA.Value+
               DM2.TBTurmasTUR_SABADO.Value;
      if Selecao[DayOfWeek(DM2.TBTurmasTUR_DTINICIO.Value)]='N' then
      begin
        MessageDlg('O dia da semana selecionado não coincide com a data de início.'+#13#13+DateToStr(DM2.TBTurmasTUR_DTINICIO.Value,FS)+
                   ' é '+Dias[DayOfWeek(DM2.TBTurmasTUR_DTINICIO.Value)]+'.',mtError,[mbOk],0);
        DM2.TBCalendarios.EnableControls;
        Screen.Cursor:=crDefault;
        Exit;
      end;
      Datas:=DM2.TBTurmasTUR_DTINICIO.Value;
      Contador:=0;
      I:=0;
      while I<DM2.TBTurmasTUR_ENCONTROS.Value do
      begin
        //confere se a data está entre o período de férias.
        if (Datas>=DM2.TBTurmasTUR_FERIASINICIO.Value) and (Datas<=DM2.TBTurmasTUR_FERIASTERMINO.Value) then
        begin
          repeat
            Datas:=IncDay(Datas,1);
          until (Datas<DM2.TBTurmasTUR_FERIASINICIO.Value) or (Datas>DM2.TBTurmasTUR_FERIASTERMINO.Value);
        end;
        //...
        if Selecao[DayOfWeek(Datas)]='S' then
        begin
          case DayOfWeek(Datas) of
            01: for Z:=1 to DM2.TBTurmasTUR_DOMINGOVEZES.Value do InserirCalendario(Contador,I);
            02: for Z:=1 to DM2.TBTurmasTUR_SEGUNDAVEZES.Value do InserirCalendario(Contador,I);
            03: for Z:=1 to DM2.TBTurmasTUR_TERCAVEZES.Value do InserirCalendario(Contador,I);
            04: for Z:=1 to DM2.TBTurmasTUR_QUARTAVEZES.Value do InserirCalendario(Contador,I);
            05: for Z:=1 to DM2.TBTurmasTUR_QUINTAVEZES.Value do InserirCalendario(Contador,I);
            06: for Z:=1 to DM2.TBTurmasTUR_SEXTAVEZES.Value do InserirCalendario(Contador,I);
            07: for Z:=1 to DM2.TBTurmasTUR_SABADOVEZES.Value do InserirCalendario(Contador,I);
          end;
        end;
        Datas:=IncDay(Datas,1);
      end;
      //altera data termino na tabela turmas.
      DM2.TBTurmas.Edit;
      DM2.TBTurmasTUR_DTTERMINO.Value:=Datas-1;
      DM2.TBTurmas.Post;
      //atualiza a listagem de chamadas.
      GerarListagemAlunosChamada;
      DM2.TBCalendarios.EnableControls;
      Screen.Cursor:=crDefault;
      Application.ProcessMessages;
      QYTurmas.Next;
    end;
    QYTurmas.Close;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmas.AlunosMatriculadosNestaTurma1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');

  Application.CreateForm(TFormTurmasAlunos, FormTurmasAlunos);
  FormTurmasAlunos.ShowModal;
  FormTurmasAlunos.Free;
  FormTurmasAlunos:=nil;
end;

procedure TFormTurmas.CadastroDeFeriados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFeriados, FormFeriados);
  FormFeriados.ShowModal;
  FormFeriados.Free;
  FormFeriados:=nil;
end;

procedure TFormTurmas.AjustarAlunosChamadas1Click(Sender: TObject);
begin
  if MessageDlg('Ajustar os alunos nas chamadas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBTurmas.DisableControls;
    DM2.TBCalendarios.DisableControls;
    DM2.TBChamadas.DisableControls;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from CHAMADAS left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.First;
//    QYTemp.Open;
//    QYTemp.First;
    while not DM.QYAux.Eof do // QYTemp.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_MATRICULA').Value; //  QYTempCHA_MATRICULA.Value;
      DM2.TBMatriculas.Open;
      if DM.QYAux.FieldByName('CAL_TURMA').Value<>DM2.TBMatriculasMAT_TURMA.Value then // QYTempCAL_TURMA.Value<>DM2.TBMatriculasMAT_TURMA.Value then
      begin
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('delete from CHAMADAS where CHA_CODIGO=:codigo');
        DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_CODIGO').Value;
        DM.QYAux2.ExecSQL;

        //QYChaDel.ParamByName('codigo').AsInteger:=QYTempCHA_CODIGO.Value;
        //QYChaDel.ExecSQL;
      end;
      DM.QYAux.Next; //  QYTemp.Next;
      Application.ProcessMessages;
    end;
    DM.QYAux.Close;

    MessageDlg('Clique OK para incluir os alunos que faltam nas chamadas.',mtInformation,[mbOk],0);
    DM.QYAux.SQL.Clear; // QYTemp2.Open;
    DM.QYAux.SQL.Add('select * from MATRICULAS order by MAT_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.First; // QYTemp2.First;
    while not DM.QYAux.Eof do // QYTemp2.Eof do
    begin
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CODIGO');
      DM.QYAux2.ParamByName('turma').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').Value;
      DM.QYAux2.Open;
      DM.QYAux2.First;
      //QYCal.Close;
      //QYCal.ParamByName('turma').AsInteger:=QYTemp2MAT_TURMA.Value;
      //QYCal.Open;
      while not DM.QYAux2.Eof do // QYCal.Eof do
      begin
        DM.QYAux3.Close;
        DM.QYAux3.SQL.Clear;
        DM.QYAux3.SQL.Add('select * from CHAMADAS where CHA_CALENDARIO=:calendario and CHA_CLIENTE=:cliente and CHA_MATRICULA=:matricula');
        DM.QYAux3.ParamByName('matricula').AsInteger:=DM.QYAux.FieldByName('MAT_CODIGO').Value;
        DM.QYAux3.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('MAT_CLIENTE').Value;
        DM.QYAux3.ParamByName('calendario').AsInteger:=DM.QYAux2.FieldByName('CAL_CODIGO').Value;
        DM.QYAux3.Open;
        //QYT3.Close;
        //QYT3.ParamByName('matricula').AsInteger:=QYTemp2MAT_CODIGO.Value;
        //QYT3.ParamByName('cliente').AsInteger:=QYTemp2MAT_CLIENTE.Value;
        //QYT3.ParamByName('calendario').AsInteger:=QYCalCAL_CODIGO.Value;
        //QYT3.Open;
        if DM.QYAux3.IsEmpty then // QYT3.IsEmpty then
        begin
          DM2.TBTurmas.Close;
          DM2.TBTurmas.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').Value; //  QYTemp2MAT_TURMA.Value;
          DM2.TBTurmas.Open;
          DM2.TBCalendarios.Locate('CAL_CODIGO',DM.QYAux2.FieldByName('CAL_CODIGO').Value,[]); // QYCalCAL_CODIGO.Value,[]);
          DM2.TBChamadas.Insert;
          DM2.TBChamadasCHA_CALENDARIO.Value:=DM.QYAux2.FieldByName('CAL_CODIGO').Value; // QYCalCAL_CODIGO.Value;
          DM2.TBChamadasCHA_MATRICULA.Value:=DM.QYAux.FieldByName('MAT_CODIGO').Value; // QYTemp2MAT_CODIGO.Value;
          DM2.TBChamadasCHA_CLIENTE.Value:=DM.QYAux.FieldByName('MAT_CLIENTE').Value; // QYTemp2MAT_CLIENTE.Value;
          DM2.TBChamadas.Post;
        end;
        DM.QYAux2.Next; // QYCal.Next;
      end;
      DM.QYAux.Next; // QYTemp2.Next;
    end;

    //exclui as chamadas duplicadas.
    //matricula, turma, cliente e calendario compoem uma chave primaria.
    //seleciona tudo que tenha mais de um registro único...

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO, count(*) as QTDE from CHAMADAS '+
                     'left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO '+
                     'group by CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO '+
                     'having count(*) > 1 '+
                     'order by CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO');
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      //seleciona o primeiro registro duplicado para pegar o código.
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select first(1) * from CHAMADAS left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO '+
                        'where CHA_MATRICULA=:matricula and MAT_TURMA=:turma and CHA_CLIENTE=:cliente and CHA_CALENDARIO=:calendario');
      DM.QYAux2.ParamByName('matricula').AsInteger:=DM.QYAux.FieldByName('CHA_MATRICULA').Value;
      DM.QYAux2.ParamByName('turma').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').Value;
      DM.QYAux2.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('CHA_CLIENTE').Value;
      DM.QYAux2.ParamByName('calendario').AsInteger:=DM.QYAux.FieldByName('CHA_CALENDARIO').Value;
      DM.QYAux2.Open;
      //elimina o registro.
      DM.QYAux3.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add('delete from CHAMADAS where CHA_CODIGO=:codigo');
      DM.QYAux3.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('CHA_CODIGO').Value; //utiliza o código do select acima.
      DM.QYAux3.ExecSQL;
      //...
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    DM.QYAux2.Close;
    DM.QYAux3.Close;
    DM2.TBChamadas.Close;
    DM2.TBChamadas.Open;
    DM2.TBTurmas.EnableControls;
    DM2.TBCalendarios.EnableControls;
    DM2.TBChamadas.EnableControls;

    Screen.Cursor:=crDefault;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmas.AjustarListaDeChamada1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');

  if MessageDlg('Ajustar lista de chamada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    //exclui os alunos da chamada que não pertencem a turma selecionada.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from CHAMADAS left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO where CAL_TURMA=:turma');
    DM.QYAux.ParamByName('turma').AsInteger:=DM2.TBTurmasTUR_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_MATRICULA').AsInteger;
      DM2.TBMatriculas.Open;
      if DM.QYAux.FieldByName('CAL_TURMA').AsInteger<>DM2.TBMatriculasMAT_TURMA.Value then
      begin
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('delete from CHAMADAS where CHA_CODIGO=:codigo');
        DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_CODIGO').AsInteger;
        DM.QYAux2.ExecSQL;
      end;
      DM.QYAux.Next;
      Application.ProcessMessages;
    end;

    //inclui os alunos que faltam na chamada.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from MATRICULAS where MAT_TURMA=:turma order by MAT_CODIGO');
    DM.QYAux.ParamByName('turma').AsInteger:=DM2.TBTurmasTUR_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CODIGO');
      DM.QYAux2.ParamByName('turma').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').AsInteger;
      DM.QYAux2.Open;
      while not DM.QYAux2.Eof do
      begin
        DM.QYAux3.Close;
        DM.QYAux3.SQL.Clear;
        DM.QYAux3.SQL.Add('select * from CHAMADAS where CHA_CALENDARIO=:calendario and CHA_CLIENTE=:cliente and CHA_MATRICULA=:matricula');
        DM.QYAux3.ParamByName('matricula').AsInteger:=DM.QYAux.FieldByName('MAT_CODIGO').AsInteger;
        DM.QYAux3.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('MAT_CLIENTE').AsInteger;
        DM.QYAux3.ParamByName('calendario').AsInteger:=DM.QYAux2.FieldByName('CAL_CODIGO').AsInteger;
        DM.QYAux3.Open;
        if DM.QYAux3.IsEmpty then
        begin
          DM2.TBCalendarios.Locate('CAL_CODIGO',DM.QYAux2.FieldByName('CAL_CODIGO').AsInteger,[]);
          DM2.TBChamadas.Insert;
          DM2.TBChamadasCHA_CALENDARIO.Value:=DM.QYAux2.FieldByName('CAL_CODIGO').AsInteger;
          DM2.TBChamadasCHA_MATRICULA.Value:=DM.QYAux.FieldByName('MAT_CODIGO').AsInteger;
          DM2.TBChamadasCHA_CLIENTE.Value:=DM.QYAux.FieldByName('MAT_CLIENTE').AsInteger;
          DM2.TBChamadas.Post;
        end;
        DM.QYAux2.Next;
      end;
      DM.QYAux.Next;
    end;
    DM2.TBTurmas.EnableControls;
    DM2.TBCalendarios.EnableControls;
    DM2.TBChamadas.EnableControls;

    //exclui as chamadas duplicadas.
    //matricula, turma, cliente e calendario compoem uma chave primaria.
    //seleciona tudo que tenha mais de um registro único...
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO, count(*) as QTDE from CHAMADAS '+
                     'left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO '+
                     'where MAT_TURMA=:turma '+
                     'group by CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO '+
                     'having count(*) > 1 '+
                     'order by CHA_CLIENTE, CHA_MATRICULA, MAT_TURMA, CHA_CALENDARIO');
    DM.QYAux.ParamByName('turma').AsInteger:=DM2.TBTurmasTUR_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      //seleciona o primeiro registro duplicado para pegar o código.
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select first(1) * from CHAMADAS left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO '+
                        'where CHA_MATRICULA=:matricula and MAT_TURMA=:turma and CHA_CLIENTE=:cliente and CHA_CALENDARIO=:calendario');
      DM.QYAux2.ParamByName('matricula').AsInteger:=DM.QYAux.FieldByName('CHA_MATRICULA').Value;
      DM.QYAux2.ParamByName('turma').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').Value;
      DM.QYAux2.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('CHA_CLIENTE').Value;
      DM.QYAux2.ParamByName('calendario').AsInteger:=DM.QYAux.FieldByName('CHA_CALENDARIO').Value;
      DM.QYAux2.Open;
      //elimina o registro.
      DM.QYAux3.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add('delete from CHAMADAS where CHA_CODIGO=:codigo');
      DM.QYAux3.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('CHA_CODIGO').Value; //utiliza o código do select acima.
      DM.QYAux3.ExecSQL;
      //...
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    DM.CodigoMark:=DM2.TBTurmasTUR_CODIGO.Value;

    DM2.TBChamadas.Close;
    DM2.TBTurmas.Close;
    DM2.TBTurmas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM2.TBTurmas.Open;
    DM2.TBChamadas.Open;

    Screen.Cursor:=crDefault;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

initialization
  RegisterClass(TFormTurmas);

finalization
  UnRegisterClass(TFormTurmas);

end.
