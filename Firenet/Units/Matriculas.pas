unit Matriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, Menus, Buttons, DBSBtn, ExtCtrls, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculas = class(TForm)
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
    CadastroDeClientes1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
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
    DBEdit17: TDBEdit;
    Label2: TLabel;
    DBEdit18: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    CadastroDeClientes1: TMenuItem;
    CadastroDeTurmas1: TMenuItem;
    CadastroDeTurmas1Button: TPngSpeedButton;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    N4: TMenuItem;
    MatriculasNoPeriodoPorVendedor1: TMenuItem;
    MatriculasNoPeriodoPorTurma1: TMenuItem;
    N3: TMenuItem;
    TransferirAlunoParaOutraTurma1: TMenuItem;
    TransferirAlunoParaOutraTurma1Button: TPngSpeedButton;
    MatriculasComTerminoNoPeriodo1: TMenuItem;
    MatriculasDuplicadas1: TMenuItem;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    PedidoDeVendas1: TMenuItem;
    N6: TMenuItem;
    PedidoDeVendas1Button: TPngSpeedButton;
    LocalizarOPedidoDeVenda1: TMenuItem;
    MatriculasComVendaNaoEntregue1: TMenuItem;
    CadastroDeNotasDeExercicios1: TMenuItem;
    CadastroDeNotasDeAvaliacoes1: TMenuItem;
    CadastroDeNotasDeExercicios1Button: TPngSpeedButton;
    CadastroDeNotasDeAvaliacoes1Button: TPngSpeedButton;
    CadastroDeTiposDeAvaliacoes1: TMenuItem;
    CadastroDeTiposDeAvaliacoes1Button: TPngSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    N7: TMenuItem;
    BaixarMatricula1: TMenuItem;
    CancelarMatricula1: TMenuItem;
    EfetuarDesistencia1: TMenuItem;
    ReabrirMatricula1: TMenuItem;
    BaixarMatricula1Button: TPngSpeedButton;
    CancelarMatricula1Button: TPngSpeedButton;
    EfetuarDesistencia1Button: TPngSpeedButton;
    ReabrirMatricula1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    MarcarComoPreMatricula1: TMenuItem;
    MarcarComoPreMatricula1Button: TPngSpeedButton;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBComboBox3: TDBComboBox;
    MatriculasComVendaDeMaterialNaoEntregue1: TMenuItem;
    MatriculasComVendaDeMaterialNaoEntregueComVisto1: TMenuItem;
    MatriculasNoPeriodoPorProfessor1: TMenuItem;
    MatriculasNoPeriodoPorConvenio1: TMenuItem;
    AlunosComMaisDeUmaMatriculaAtiva1: TMenuItem;
    PercentualDeDesconto1: TMenuItem;
    Label15: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton21: TPngSpeedButton;
    CadastroDeMotivos1: TMenuItem;
    AlunosAniversariantes1: TMenuItem;
    MatriculasComContasAReceberAnaliticoSoVenda1: TMenuItem;
    MatriculasComContasAReceberAnaliticoSoVendaMaterial1: TMenuItem;
    MatriculasNoPeriodoPorMotivoDesistencia1: TMenuItem;
    MatriculasNoPeriodoPorMailing1: TMenuItem;
    HistoricoDoAluno1: TMenuItem;
    Contrato1: TMenuItem;
    MatriculasNoPeriodoPorLocalDeTrabalho1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PngImageList1: TPngImageList;
    MatriculasSemVendaDeMaterial1: TMenuItem;
    VerificarAlunosxChamadas1: TMenuItem;
    MatriculasNoPeriodoPorLocalOndeEstuda1: TMenuItem;
    DBComboBox5: TDBComboBox;
    Label17: TLabel;
    MatriculasSemNotasDoTipo1: TMenuItem;
    MatriculasNoPeriodoPorCondicaoDePagamento1: TMenuItem;
    HistoricoDoAlunoPorTurma1: TMenuItem;
    N8: TMenuItem;
    AlterarTipoDePagamentoPara1: TMenuItem;
    AlterarTipoDePagamentoParaSim1: TMenuItem;
    AlterarTipoDePagamentoParaNao1: TMenuItem;
    AlterarTipoDePagamentoParaIndefinido1: TMenuItem;
    EsconderMenuRelatorios1: TMenuItem;
    N9: TMenuItem;
    MatriculasNoPeriodoPorConvenio2: TMenuItem;
    MatriculasNoPeriodoPorTurma2: TMenuItem;
    AlunosAprovadosEReprovados1: TMenuItem;
    Matrculasnoperodocomendereo1: TMenuItem;
    EmailsDosAlunos1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    QYMatriculas: TFDQuery;
    TRMatriculas: TFDTransaction;
    QYMatriculasCLI_BAIRRO: TStringField;
    QYMatriculasCLI_CEP: TStringField;
    QYMatriculasCLI_CIDADE: TStringField;
    QYMatriculasCLI_COMPLEMENTO: TStringField;
    QYMatriculasCLI_CPF: TStringField;
    QYMatriculasCLI_DTNASC: TDateField;
    QYMatriculasCLI_EMAIL: TStringField;
    QYMatriculasCLI_ENDERECO: TStringField;
    QYMatriculasCLI_ESTADO: TStringField;
    QYMatriculasCLI_ESTADOCIVIL: TStringField;
    QYMatriculasCLI_FANTASIA: TStringField;
    QYMatriculasCLI_FONE1: TStringField;
    QYMatriculasCLI_FONE2: TStringField;
    QYMatriculasCLI_FONE3: TStringField;
    QYMatriculasCLI_NOME: TStringField;
    QYMatriculasCLI_NUMERO: TStringField;
    QYMatriculasCLI_RG: TStringField;
    QYMatriculasTUR_ANO: TStringField;
    QYMatriculasTUR_CARGAHORARIA: TStringField;
    QYMatriculasTUR_DESCRICAO: TStringField;
    QYMatriculasTUR_DOMINGO: TStringField;
    QYMatriculasTUR_DTINICIO: TDateField;
    QYMatriculasTUR_DTTERMINO: TDateField;
    QYMatriculasTUR_ENCONTROS: TIntegerField;
    QYMatriculasTUR_HORARIO: TStringField;
    QYMatriculasTUR_PERIODO: TIntegerField;
    QYMatriculasTUR_QUARTA: TStringField;
    QYMatriculasTUR_QUINTA: TStringField;
    QYMatriculasTUR_SABADO: TStringField;
    QYMatriculasTUR_SEGUNDA: TStringField;
    QYMatriculasTUR_SEXTA: TStringField;
    QYMatriculasTUR_TERCA: TStringField;
    QYMatriculasVED_CODIGO: TIntegerField;
    QYMatriculasVED_CONDICAOMEMO: TMemoField;
    QYMatriculasVED_DESCPORC: TFMTBCDField;
    QYMatriculasVED_DESCVALOR: TFMTBCDField;
    QYMatriculasVED_TOTALITENS: TFMTBCDField;
    QYMatriculasVED_VALORTOTAL: TFMTBCDField;
    QYMatriculasCPG_DESCRICAO: TStringField;
    QYMatriculasCPG_TOTALPARCELAS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeTurmas1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorVendedor1Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorTurma1Click(Sender: TObject);
    procedure TransferirAlunoParaOutraTurma1Click(Sender: TObject);
    procedure MatriculasComTerminoNoPeriodo1Click(Sender: TObject);
    procedure MatriculasDuplicadas1Click(Sender: TObject);
    procedure PedidoDeVendas1Click(Sender: TObject);
    procedure LocalizarOPedidoDeVenda1Click(Sender: TObject);
    procedure MatriculasComVendaNaoEntregue1Click(Sender: TObject);
    procedure CadastroDeNotasDeExercicios1Click(Sender: TObject);
    procedure CadastroDeNotasDeAvaliacoes1Click(Sender: TObject);
    procedure CadastroDeTiposDeAvaliacoes1Click(Sender: TObject);
    procedure BaixarMatricula1Click(Sender: TObject);
    procedure CancelarMatricula1Click(Sender: TObject);
    procedure EfetuarDesistencia1Click(Sender: TObject);
    procedure ReabrirMatricula1Click(Sender: TObject);
    procedure MarcarComoPreMatricula1Click(Sender: TObject);
    procedure MatriculasComVendaDeMaterialNaoEntregue1Click(
      Sender: TObject);
    procedure MatriculasComVendaDeMaterialNaoEntregueComVisto1Click(
      Sender: TObject);
    procedure MatriculasNoPeriodoPorProfessor1Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorConvenio1Click(Sender: TObject);
    procedure AlunosComMaisDeUmaMatriculaAtiva1Click(Sender: TObject);
    procedure PercentualDeDesconto1Click(Sender: TObject);
    procedure CadastroDeMotivos1Click(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton21Click(Sender: TObject);
    procedure AlunosAniversariantes1Click(Sender: TObject);
    procedure MatriculasComContasAReceberAnaliticoSoVenda1Click(
      Sender: TObject);
    procedure MatriculasComContasAReceberAnaliticoSoVendaMaterial1Click(
      Sender: TObject);
    procedure MatriculasNoPeriodoPorMotivoDesistencia1Click(
      Sender: TObject);
    procedure MatriculasNoPeriodoPorMailing1Click(Sender: TObject);
    procedure HistoricoDoAluno1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MatriculasNoPeriodoPorLocalDeTrabalho1Click(Sender: TObject);
    procedure MatriculasSemVendaDeMaterial1Click(Sender: TObject);
    procedure VerificarAlunosxChamadas1Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorLocalOndeEstuda1Click(Sender: TObject);
    procedure MatriculasSemNotasDoTipo1Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorCondicaoDePagamento1Click(Sender: TObject);
    procedure HistoricoDoAlunoPorTurma1Click(Sender: TObject);
    procedure AlterarTipoDePagamentoParaSim1Click(Sender: TObject);
    procedure AlterarTipoDePagamentoParaNao1Click(Sender: TObject);
    procedure AlterarTipoDePagamentoParaIndefinido1Click(Sender: TObject);
    procedure EsconderMenuRelatorios1Click(Sender: TObject);
    procedure MatriculasNoPeriodoPorConvenio2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MatriculasNoPeriodoPorTurma2Click(Sender: TObject);
    procedure AlunosAprovadosEReprovados1Click(Sender: TObject);
    procedure Matrculasnoperodocomendereo1Click(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure EmailsDosAlunos1Click(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculas: TFormMatriculas;

implementation
uses DataMod, DataMod2, Funcoes1, Clientes, Turmas,
  Vendedores, MatriculasLoc, TurmasLoc, MatriculasRel, Vendas, Exercicios,
  Avaliacoes, AvaliacoesTipo, Motivos, MotivosLoc, Main, ShellApi,
  DataModSearch, VendasLoc, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMatriculas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMatriculas.FormCreate(Sender: TObject);
begin
  N9.Visible:=False; //linha divisora menu relatórios.
  MatriculasNoPeriodoPorConvenio2.Visible:=False;
  MatriculasNoPeriodoPorTurma2.Visible:=False;
end;

procedure TFormMatriculas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormMatriculas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMatriculas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasLoc, FormMatriculasLoc);
  FormMatriculasLoc.ShowModal;
  if MatriculasLoc.Procurar then
  begin
    DM2.TBMatriculas.Close;
    DM2.TBMatriculas.ParamByName('codigo').AsInteger:=FormMatriculasLoc.QYMatriculasMAT_CODIGO.Value;
    DM2.TBMatriculas.Open;
  end;
  FormMatriculasLoc.Free;
  FormMatriculasLoc:=nil;
end;

procedure TFormMatriculas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.EsconderMenuRelatorios1Click(Sender: TObject);
begin
  Relatorios2Button.Visible:=not Relatorios2Button.Visible; //botao impressora.
  N4.Visible:=not N4.Visible;
  Relatorios1.Visible:=not Relatorios1.Visible;
  MatriculasNoPeriodoPorVendedor1.Visible:=not MatriculasNoPeriodoPorVendedor1.Visible;
  MatriculasNoPeriodoPorTurma1.Visible:=not MatriculasNoPeriodoPorTurma1.Visible;
  MatriculasNoPeriodoPorProfessor1.Visible:=not MatriculasNoPeriodoPorProfessor1.Visible;
  MatriculasComTerminoNoPeriodo1.Visible:=not MatriculasComTerminoNoPeriodo1.Visible;
  MatriculasComContasAReceberAnaliticoSoVenda1.Visible:=not MatriculasComContasAReceberAnaliticoSoVenda1.Visible;
  MatriculasComContasAReceberAnaliticoSoVendaMaterial1.Visible:=not MatriculasComContasAReceberAnaliticoSoVendaMaterial1.Visible;
  MatriculasDuplicadas1.Visible:=not MatriculasDuplicadas1.Visible;
  MatriculasComVendaNaoEntregue1.Visible:=not MatriculasComVendaNaoEntregue1.Visible;
  MatriculasComVendaDeMaterialNaoEntregue1.Visible:=not MatriculasComVendaDeMaterialNaoEntregue1.Visible;
  MatriculasComVendaDeMaterialNaoEntregueComVisto1.Visible:=not MatriculasComVendaDeMaterialNaoEntregueComVisto1.Visible;
  MatriculasNoPeriodoPorConvenio1.Visible:=not MatriculasNoPeriodoPorConvenio1.Visible;
  AlunosComMaisDeUmaMatriculaAtiva1.Visible:=not AlunosComMaisDeUmaMatriculaAtiva1.Visible;
  PercentualDeDesconto1.Visible:=not PercentualDeDesconto1.Visible;
  AlunosAniversariantes1.Visible:=not AlunosAniversariantes1.Visible;
  MatriculasNoPeriodoPorMotivoDesistencia1.Visible:=not MatriculasNoPeriodoPorMotivoDesistencia1.Visible;
  MatriculasNoPeriodoPorMailing1.Visible:=not MatriculasNoPeriodoPorMailing1.Visible;
  //HistoricoDoAluno1
  HistoricoDoAlunoPorTurma1.Visible:=not HistoricoDoAlunoPorTurma1.Visible;
  //Contrato1
  MatriculasNoPeriodoPorLocalDeTrabalho1.Visible:=not MatriculasNoPeriodoPorLocalDeTrabalho1.Visible;
  MatriculasNoPeriodoPorLocalOndeEstuda1.Visible:=not MatriculasNoPeriodoPorLocalOndeEstuda1.Visible;
  MatriculasSemVendaDeMaterial1.Visible:=not MatriculasSemVendaDeMaterial1.Visible;
  MatriculasSemNotasDoTipo1.Visible:=not MatriculasSemNotasDoTipo1.Visible;
  MatriculasNoPeriodoPorCondicaoDePagamento1.Visible:=not MatriculasNoPeriodoPorCondicaoDePagamento1.Visible;
  //item escondido.
  MatriculasNoPeriodoPorConvenio2.Visible:=not MatriculasNoPeriodoPorConvenio2.Visible;
  MatriculasNoPeriodoPorTurma2.Visible:=not MatriculasNoPeriodoPorTurma2.Visible;
end;

procedure TFormMatriculas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMatriculas.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMatriculas.DBEdit17Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit17,DBEdit18,DM2.TBMatriculas);
end;

procedure TFormMatriculas.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormMatriculas.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculas.SpeedButton4Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit17,DBEdit18,DM2.TBMatriculas);
end;

procedure TFormMatriculas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormMatriculas.CadastroDeTurmas1Click(Sender: TObject);
begin
  //DM2.TBCalendarios.DataSource:=DM2.DSTurmas; //mestre-detalhe.
  Application.CreateForm(TFormTurmas, FormTurmas);
  FormTurmas.ShowModal;
  FormTurmas.Free;
  FormTurmas:=nil;
  //DM2.TBCalendarios.DataSource:=nil;
end;

procedure TFormMatriculas.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMatriculas.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit6,nil,DM2.TBMatriculas);
end;

procedure TFormMatriculas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormMatriculas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculas.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormMatriculas.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit6,nil,DM2.TBMatriculas);
end;

procedure TFormMatriculas.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormMatriculas.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMatriculas.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBMatriculas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBMatriculasMAT_TURMA.Clear;
    DM2.TBMatriculasTUR_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBMatriculas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYTurmas.Close;
    DMS.QYTurmas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYTurmas.Open;
    if not DMS.QYTurmas.IsEmpty then
    begin
      DM2.TBMatriculasMAT_TURMA.Value:=DMS.QYTurmasTUR_CODIGO.Value;
      DM2.TBMatriculasTUR_DESCRICAO.Value:=DMS.QYTurmasTUR_DESCRICAO.Value;
    end else
    begin
      DM2.TBMatriculasMAT_TURMA.Clear;
      DM2.TBMatriculasTUR_DESCRICAO.Clear;
      MessageDlg('Turma não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYTurmas.Close;
  end;
end;

procedure TFormMatriculas.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormMatriculas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculas.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasLoc, FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_TURMA.Value:=FormTurmasLoc.QYTurmasTUR_CODIGO.Value;
    DM2.TBMatriculasTUR_DESCRICAO.Value:=FormTurmasLoc.QYTurmasTUR_DESCRICAO.Value;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormMatriculas.TransferirAlunoParaOutraTurma1Click(Sender: TObject);
var Codigo, Cliente, Vendedor, Venda, Material, Turma: Integer;
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value<>'A','Esta matrícula não está aberta.');

  Application.CreateForm(TFormTurmasLoc, FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    if MessageDlg('Deseja transferir o aluno para a turma '+FormTurmasLoc.QYTurmasTUR_DESCRICAO.Value+'?'+#13#13+'ATENÇÃO: Uma nova matrícula será gerada.',mtWarning,[mbOk,mbCancel],0)=mrOk then
    begin
      AbortIf(FormTurmasLoc.QYTurmasTUR_CODIGO.Value=DM2.TBMatriculasMAT_TURMA.Value,'A turma selecionada é a mesma existente na matrícula atualmente.');

      Codigo:=DM2.TBMatriculasMAT_CODIGO.Value;
      Cliente:=DM2.TBMatriculasMAT_CLIENTE.Value;
      Vendedor:=DM2.TBMatriculasMAT_VENDEDOR.Value;
      Venda:=DM2.TBMatriculasMAT_VENDA.Value;
      Material:=DM2.TBMatriculasMAT_VENDAMATERIAL.Value;
      Turma:=DM2.TBMatriculasMAT_TURMA.Value;

      DM2.TBMatriculas.Edit;
      DM2.TBMatriculasMAT_STATUS.Value:='T';
      DM2.TBMatriculasMAT_OBSERVACOES.Value:=DM2.TBMatriculasMAT_OBSERVACOES.Value+'Transferido em '+DateToStr(Date,FS);
      DM2.TBMatriculas.Post;
      DM2.TBMatriculas.Insert;
      DM2.TBMatriculasMAT_CLIENTE.Value:=Cliente;
      DM2.TBMatriculasMAT_VENDEDOR.Value:=Vendedor;
      DM2.TBMatriculasMAT_VENDA.Value:=Venda;
      DM2.TBMatriculasMAT_VENDAMATERIAL.Value:=Material;
      DM2.TBMatriculasMAT_TURMA.Value:=FormTurmasLoc.QYTurmasTUR_CODIGO.Value;
      DM2.TBMatriculasMAT_OBSERVACOES.Value:='Aluno transferido da turma '+IntToStr(Turma)+#13#10+'Matricula antiga: '+IntToStr(Codigo);
      DM2.TBMatriculas.Post;
      MessageDlg('Transferência concluída.'+#13#13+'Uma nova matrícula foi gerada com o código: '+IntToStr(DM2.TBMatriculasMAT_CODIGO.Value),mtInformation,[mbOk],0);
    end;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormMatriculas.VerificarAlunosxChamadas1Click(Sender: TObject);
var S: AnsiString;
begin
  if MessageDlg('Verificar cadastro de aluno x chamadas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //le todas as chamadas e verifica se existe na tabela de calendário, turmas e matrículas.
    Screen.Cursor:=crHourGlass;
    DM.QYAux.Close; //era DM2.qychamadas
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from CHAMADAS order by CHA_CALENDARIO');
    DM.QYAux.Open;

    DM.QYAux2.Close; //era DM2.QYMatriculas.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA from MATRICULAS where MAT_CODIGO=:codigo');
    S:='';
    while not DM.QYAux.Eof do
    begin
      DM.QYAux2.Close;
      DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_MATRICULA').AsInteger;
      DM.QYAux2.Open;

      DM.QYAux3.Close; //era DM2.QYCalendarios.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add('select * from CALENDARIOS where CAL_CODIGO=:calendario');
      DM.QYAux3.ParamByName('calendario').AsInteger:=DM.QYAux.FieldByName('CHA_CALENDARIO').AsInteger;
      DM.QYAux3.Open;

      //se cliente da chamada for diferente do cliente que tá na matricula, tá errado... exclui...
      //ou se não localizar o codigo do calendario na tabela calendário, tb tá errado... exclui...
      if (DM.QYAux2.FieldByName('MAT_CLIENTE').AsInteger<>DM.QYAux.FieldByName('CHA_CLIENTE').AsInteger) or (DM.QYAux3.IsEmpty) or (DM.QYAux2.IsEmpty) then
      begin
        DM.QYAux4.Close; //era DM2.QYChamadasAux.SQL.Clear;
        DM.QYAux4.SQL.Clear;
        DM.QYAux4.SQL.Add('delete from CHAMADAS where CHA_CODIGO=:codigo');
        DM.QYAux4.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CHA_CODIGO').AsInteger;
        DM.QYAux4.ExecSQL;
      end;
      DM.QYAux.Next;
    end;
    DM2.TBChamadas.Close;
    DM2.TBChamadas.Open;
    //...

    //le todas as matriculas e verifica se existe registro na tabela de chamadas.
    DM.QYAux.Close; //era DM2.QYMatriculas.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA from MATRICULAS order by MAT_TURMA, MAT_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.DisableControls;
    while not DM.QYAux.Eof do
    begin
      DM.QYAux2.Close; //era DM2.QYCalendarios.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from CALENDARIOS where CAL_TURMA=:turma order by CAL_CODIGO');
      DM.QYAux2.ParamByName('turma').AsInteger:=DM.QYAux.FieldByName('MAT_TURMA').AsInteger;
      DM.QYAux2.Open;
      DM.QYAux2.First; //nao utilizar table.disablecontrols; parece que o ponteiro se perde na função locate.
      while not DM.QYAux2.Eof do
      begin
        DM.QYAux3.Close; //era DM2.QYChamadas.Close;
        DM.QYAux3.SQL.Clear;
        DM.QYAux3.SQL.Add('select * from CHAMADAS where CHA_CALENDARIO=:calendario and CHA_CLIENTE=:cliente and CHA_MATRICULA=:matricula');
        DM.QYAux3.ParamByName('calendario').AsInteger:=DM.QYAux2.FieldByName('CAL_CODIGO').AsInteger;
        DM.QYAux3.ParamByName('matricula').AsInteger:=DM.QYAux.FieldByName('MAT_CODIGO').AsInteger;
        DM.QYAux3.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('MAT_CLIENTE').AsInteger;
        DM.QYAux3.Open;
        if DM.QYAux3.IsEmpty then
        begin
          DM2.TBChamadas.Insert; //insere pelo componente principal.
          DM2.TBChamadasCHA_CALENDARIO.Value:=DM.QYAux2.FieldByName('CAL_CODIGO').AsInteger; //sobrescreve valor no evento after insert.
          DM2.TBChamadasCHA_CLIENTE.Value:=DM.QYAux.FieldByName('MAT_CLIENTE').AsInteger;
          DM2.TBChamadasCHA_MATRICULA.Value:=DM.QYAux.FieldByName('MAT_CODIGO').AsInteger;
          DM2.TBChamadas.Post;
        end;
        DM.QYAux2.Next;
        Application.ProcessMessages;
      end;
      DM.QYAux.Next;
    end;
    DM.QYAux.EnableControls;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;

    MessageDlg('Verificação OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorVendedor1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=0;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorTurma1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=1;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorTurma2Click(Sender: TObject);
begin
  //item de menu escondido.
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=1;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorProfessor1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=2;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComTerminoNoPeriodo1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=3;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComContasAReceberAnaliticoSoVenda1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=4;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComContasAReceberAnaliticoSoVendaMaterial1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=5;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasDuplicadas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=6;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComVendaNaoEntregue1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=7;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComVendaDeMaterialNaoEntregue1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=8;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasComVendaDeMaterialNaoEntregueComVisto1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=9;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorConvenio1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=10;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorConvenio2Click(Sender: TObject);
begin
  //item de menu escondido.
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=10;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.AlunosComMaisDeUmaMatriculaAtiva1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=11;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.PercentualDeDesconto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=12;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.ShowModal;
  if VendasLoc.Procurar then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_VENDA.Value:=FormVendasLoc.QYVendasVED_CODIGO.Value;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;
end;

procedure TFormMatriculas.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.ShowModal;
  if VendasLoc.Procurar then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_VENDAMATERIAL.Value:=FormVendasLoc.QYVendasVED_CODIGO.Value;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;
end;

procedure TFormMatriculas.AlterarTipoDePagamentoParaNao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  if MessageDlg('Alterar o tipo de pagamento para NÃO?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_CONTABILIZAR.Value:='N';
    DM2.TBMatriculas.Post;
  end;
end;

procedure TFormMatriculas.AlterarTipoDePagamentoParaSim1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  if MessageDlg('Alterar o tipo de pagamento para SIM?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_CONTABILIZAR.Value:='S';
    DM2.TBMatriculas.Post;
  end;
end;

procedure TFormMatriculas.AlunosAniversariantes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=13;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorMotivoDesistencia1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=14;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorMailing1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=15;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.HistoricoDoAluno1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=16;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.HistoricoDoAlunoPorTurma1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=17;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.AlterarTipoDePagamentoParaIndefinido1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  if MessageDlg('Alterar o tipo de pagamento para INDEFINIDO?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_CONTABILIZAR.Value:='I';
    DM2.TBMatriculas.Post;
  end;
end;

procedure TFormMatriculas.Contrato1Click(Sender: TObject);
var
  M: TMemo;
  Dias: String;
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  OpenDialog1.InitialDir:=DM.TBParametrosPAR_LOCALMODELOSDOC.Value;
  if OpenDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    M:=TMemo.CreateParented(Application.Handle);
    M.WordWrap:=False; //funcionou?!
    M.Lines.LoadFromFile(OpenDialog1.FileName);
    QYMatriculas.Close;
    QYMatriculas.ParamByName('codigo').AsInteger:=DM2.TBMatriculasMAT_CODIGO.Value;
    QYMatriculas.Open;

    Dias:='';
    if QYMatriculasTUR_DOMINGO.Value='S' then Dias:=Dias+'DOM - ';
    if QYMatriculasTUR_SEGUNDA.Value='S' then Dias:=Dias+'SEG - ';
    if QYMatriculasTUR_TERCA.Value  ='S' then Dias:=Dias+'TER - ';
    if QYMatriculasTUR_QUARTA.Value ='S' then Dias:=Dias+'QUA - ';
    if QYMatriculasTUR_QUINTA.Value ='S' then Dias:=Dias+'QUI - ';
    if QYMatriculasTUR_SEXTA.Value  ='S' then Dias:=Dias+'SEX - ';
    if QYMatriculasTUR_SABADO.Value ='S' then Dias:=Dias+'SAB - ';
    Delete(Dias,Length(Dias)-2,3);

    M.Text:=StringReplace(M.Text,'|CLI_BAIRRO|',AnsiString(QYMatriculasCLI_BAIRRO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CEP|',QYMatriculasCLI_CEP.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CIDADE|',AnsiString(QYMatriculasCLI_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_COMPLEMENTO|',QYMatriculasCLI_COMPLEMENTO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_CPF|',AnsiString(QYMatriculasCLI_CPF.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_DTNASC|',AnsiString(DateToStr(QYMatriculasCLI_DTNASC.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_EMAIL|',AnsiString(QYMatriculasCLI_EMAIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ENDERECO|',AnsiString(QYMatriculasCLI_ENDERECO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ESTADO|',AnsiString(QYMatriculasCLI_ESTADO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_ESTADOCIVIL|',AnsiString(QYMatriculasCLI_ESTADOCIVIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FANTASIA|',AnsiString(QYMatriculasCLI_FANTASIA.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE1|',AnsiString(QYMatriculasCLI_FONE1.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE2|',AnsiString(QYMatriculasCLI_FONE2.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE3|',AnsiString(QYMatriculasCLI_FONE3.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_NOME|',AnsiString(QYMatriculasCLI_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_NUMERO|',AnsiString(QYMatriculasCLI_NUMERO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_RG|',AnsiString(QYMatriculasCLI_RG.Value),[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|TUR_ANO|',QYMatriculasTUR_ANO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_CARGAHORARIA|',QYMatriculasTUR_CARGAHORARIA.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_DESCRICAO|',QYMatriculasTUR_DESCRICAO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_DIAS|',Dias,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_DTINICIO|',DateToStr(QYMatriculasTUR_DTINICIO.Value,FS),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_DTTERMINO|',DateToStr(QYMatriculasTUR_DTTERMINO.Value,FS),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_ENCONTROS|',IntToStr(QYMatriculasTUR_ENCONTROS.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_HORARIO|',AnsiString(QYMatriculasTUR_HORARIO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|TUR_PERIODO|',IntToStr(QYMatriculasTUR_PERIODO.Value),[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|VED_CODIGO|',IntToStr(QYMatriculasVED_CODIGO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CONDICAOMEMO|',StringReplace(QYMatriculasVED_CONDICAOMEMO.Value,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_DESCPORC|',QYMatriculasVED_DESCPORC.AsString,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_DESCVALOR|',QYMatriculasVED_DESCVALOR.AsString,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_TOTALITENS|',Format('%m',[QYMatriculasVED_VALORTOTAL.AsExtended+QYMatriculasVED_DESCVALOR.AsExtended]),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_VALORTOTAL|',Format('%m',[QYMatriculasVED_VALORTOTAL.AsExtended]),[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|CPG_DESCRICAO|',QYMatriculasCPG_DESCRICAO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CPG_TOTALPARCELAS|',AnsiString(IntToStr(QYMatriculasCPG_TOTALPARCELAS.Value)),[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|EMP_BAIRRO|',DM.TBEmpresaEMP_BAIRRO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CIDADE|',DM.TBEmpresaEMP_CIDADE.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CEP|',DM.TBEmpresaEMP_CEP.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CNPJ|',DM.TBEmpresaEMP_CNPJ.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_EMAIL|',DM.TBEmpresaEMP_EMAIL.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_ENDERECO|',DM.TBEmpresaEMP_ENDERECO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_ESTADO|',DM.TBEmpresaEMP_ESTADO.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_IE|',DM.TBEmpresaEMP_IE.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_NUMERO|',DM.TBEmpresaEMP_NUMERO.Value,[rfReplaceAll]);

    M.Text:=StringReplace(M.Text,'|DATAEXTENSO|',FormatDateTime('dddddd',Now),[rfReplaceAll]);

    M.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\MatriculaContrato.rtf');
    M.Destroy;
    QYMatriculas.Close;
    Screen.Cursor:=crDefault;
    ShellExecute(GetDesktopWindow,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\MatriculaContrato.rtf'),nil,nil,sw_ShowNormal);
  end;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorLocalDeTrabalho1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=19;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorLocalOndeEstuda1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=20;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasSemVendaDeMaterial1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=21;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasSemNotasDoTipo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=22;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.MatriculasNoPeriodoPorCondicaoDePagamento1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=23;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.AlunosAprovadosEReprovados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=24;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.Matrculasnoperodocomendereo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=25;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.EmailsDosAlunos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasRel, FormMatriculasRel);
  FormMatriculasRel.ComboBox4.Enabled:=False;
  FormMatriculasRel.ComboBox4.ItemIndex:=26;
  FormMatriculasRel.ComboBox4Change(Self);
  FormMatriculasRel.ShowModal;
  FormMatriculasRel.Free;
  FormMatriculasRel:=nil;
end;

procedure TFormMatriculas.PedidoDeVendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormMatriculas.LocalizarOPedidoDeVenda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_VENDA.IsNull,'Código do pedido de venda inexistente.');

  DM.TBVendas.Close;
  DM.TBVendas.ParamByName('codigo').AsInteger:=DM2.TBMatriculasMAT_VENDA.Value;
  DM.TBVendas.Open;
  AbortIf(DM.TBVendas.IsEmpty,'Pedido de venda não encontrado.');

  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormMatriculas.CadastroDeNotasDeExercicios1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  //DM2.TBExercicios.DataSource:=DM2.DSMatriculas;
  Application.CreateForm(TFormExercicios, FormExercicios);
  FormExercicios.ShowModal;
  FormExercicios.Free;
  FormExercicios:=nil;
  //DM2.TBExercicios.DataSource:=nil;
end;

procedure TFormMatriculas.CadastroDeNotasDeAvaliacoes1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');

  //DM2.TBAvaliacoes.DataSource:=DM2.DSMatriculas;
  Application.CreateForm(TFormAvaliacoes, FormAvaliacoes);
  FormAvaliacoes.ShowModal;
  FormAvaliacoes.Free;
  FormAvaliacoes:=nil;
  //DM2.TBAvaliacoes.DataSource:=nil;
end;

procedure TFormMatriculas.CadastroDeTiposDeAvaliacoes1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipo, FormAvaliacoesTipo);
  FormAvaliacoesTipo.ShowModal;
  FormAvaliacoesTipo.Free;
  FormAvaliacoesTipo:=nil;
end;

procedure TFormMatriculas.BaixarMatricula1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value<>'A','Esta matrícula não está aberta.');

  if MessageDlg('Efetuar a baixa da matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    if DM2.TBMatriculasMAT_MEDIAFINAL.Value<DM2.TBTurmasTUR_MEDIAMINIMA.Value then
    DM2.TBMatriculasMAT_APROVADO.Value:='N' else
    DM2.TBMatriculasMAT_APROVADO.Value:='S';
    DM2.TBMatriculasMAT_STATUS.Value:='B';
    DM2.TBMatriculas.Post;
    MessageDlg('Baixa OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.CancelarMatricula1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value<>'A','Esta matrícula não está aberta.');

  if MessageDlg('Efetuar o cancelamento da matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_STATUS.Value:='C';
    DM2.TBMatriculas.Post;
    MessageDlg('Cancelamento OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.EfetuarDesistencia1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value<>'A','Esta matrícula não está aberta.');

  if MessageDlg('Efetuar a desistência da matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_STATUS.Value:='D';
    DM2.TBMatriculas.Post;
    MessageDlg('Desistência OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.ReabrirMatricula1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value='A','Esta matrícula já está aberta.');

  if MessageDlg('Reabrir a matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_STATUS.Value:='A';
    DM2.TBMatriculas.Post;
    MessageDlg('Reabertura OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.MarcarComoPreMatricula1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMatriculas.IsEmpty,'Nenhuma matrícula selecionada.');
  AbortIf(DM2.TBMatriculasMAT_STATUS.Value<>'A','Esta matrícula não está aberta.');

  if MessageDlg('Marcar como pré matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_STATUS.Value:='P';
    DM2.TBMatriculas.Post;
    MessageDlg('Pré matrícula OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMatriculas.CadastroDeMotivos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivos, FormMotivos);
  FormMotivos.ShowModal;
  FormMotivos.Free;
  FormMotivos:=nil;
end;

procedure TFormMatriculas.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormMatriculas.DBEdit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMatriculas.DBEdit14Exit(Sender: TObject);
begin
  if (DM2.TBMatriculas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBMatriculasMAT_DESISTENCIA.Clear;
    DM2.TBMatriculasMOT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBMatriculas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYMotivos.Close;
    DMS.QYMotivos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYMotivos.Open;
    if not DMS.QYMotivos.IsEmpty then
    begin
      DM2.TBMatriculasMAT_DESISTENCIA.Value:=DMS.QYMotivosMOT_CODIGO.Value;
      DM2.TBMatriculasMOT_DESCRICAO.Value:=DMS.QYMotivosMOT_DESCRICAO.Value;
    end else
    begin
      DM2.TBMatriculasMAT_DESISTENCIA.Clear;
      DM2.TBMatriculasMOT_DESCRICAO.Clear;
      MessageDlg('Motivo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYMotivos.Close;
  end;
end;

procedure TFormMatriculas.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton21.Click;
end;

procedure TFormMatriculas.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMatriculas.SpeedButton21Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivosLoc, FormMotivosLoc);
  FormMotivosLoc.ShowModal;
  if MotivosLoc.Procurar then
  begin
    DM2.TBMatriculas.Edit;
    DM2.TBMatriculasMAT_DESISTENCIA.Value:=FormMotivosLoc.QYMotivosMOT_CODIGO.Value;
    DM2.TBMatriculasMOT_DESCRICAO.Value:=FormMotivosLoc.QYMotivosMOT_DESCRICAO.Value;
  end;
  FormMotivosLoc.Free;
  FormMotivosLoc:=nil;
end;

procedure TFormMatriculas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMatriculas);
end;

initialization
  RegisterClass(TFormMatriculas);

finalization
  UnRegisterClass(TFormMatriculas);

end.
