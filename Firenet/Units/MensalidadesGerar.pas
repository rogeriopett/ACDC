unit MensalidadesGerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.UITypes;

type
  TFormMensalidadesGerar = class(TForm)
    TBMensalidades: TClientDataSet;
    DSMensalidades: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    PreVisualizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    PreVisualizar1Button: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    TBMensalidadesMNS_CODIGO: TIntegerField;
    TBMensalidadesMNS_CLIENTE: TIntegerField;
    TBMensalidadesMNS_DESCRICAO: TStringField;
    TBMensalidadesMNS_CONTA: TIntegerField;
    TBMensalidadesMNS_RECEITA: TIntegerField;
    TBMensalidadesMNS_TIPODOCTO: TStringField;
    TBMensalidadesMNS_VENCIMENTO: TDateField;
    TBMensalidadesMNS_VALOR: TCurrencyField;
    TBMensalidadesCLI_NOME: TStringField;
    TBMensalidadesCON_NOME: TStringField;
    TBMensalidadesREC_DESCRICAO: TStringField;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit1: TDBEdit;
    Label50: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GerarMensalidades1: TMenuItem;
    GerarMensalidades1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    CheckBox1: TCheckBox;
    TBMensalidadesMNS_SEQUENCIA: TIntegerField;
    Label4: TLabel;
    Gerar1Button: TPngSpeedButton;
    Gerar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure PreVisualizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GerarMensalidades1Click(Sender: TObject);
    procedure TBMensalidadesBeforeEdit(DataSet: TDataSet);
    procedure DSMensalidadesStateChange(Sender: TObject);
    procedure TBMensalidadesBeforeInsert(DataSet: TDataSet);
    procedure TBMensalidadesAfterPost(DataSet: TDataSet);
    procedure TBMensalidadesBeforePost(DataSet: TDataSet);
    procedure Gerar1Click(Sender: TObject);
  private
    { Private declarations }
    Total: Currency;
    Valor: Currency;
    procedure CriarBoleto;
  public
    { Public declarations }
  end;

var
  FormMensalidadesGerar: TFormMensalidadesGerar;

implementation
uses DataMod, Funcoes1, DataMod2, Main;
{$R *.dfm}

procedure TFormMensalidadesGerar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMensalidadesGerar.DSMensalidadesStateChange(Sender: TObject);
begin
  if TBMensalidades.State in [dsInsert, dsEdit] then
  begin
    FormMensalidadesGerar.GerarMensalidades1.Enabled:=False;
    FormMensalidadesGerar.GerarMensalidades1Button.Enabled:=False;
    FormMensalidadesGerar.MaskEdit1.Enabled:=False;
    FormMensalidadesGerar.PreVisualizar1.Enabled:=False;
    FormMensalidadesGerar.PreVisualizar1Button.Enabled:=False;
    FormMensalidadesGerar.RadioButton1.Enabled:=False;
    FormMensalidadesGerar.RadioButton2.Enabled:=False;
  end else
  begin
    FormMensalidadesGerar.GerarMensalidades1.Enabled:=True;
    FormMensalidadesGerar.GerarMensalidades1Button.Enabled:=True;
    FormMensalidadesGerar.MaskEdit1.Enabled:=True;
    FormMensalidadesGerar.PreVisualizar1.Enabled:=True;
    FormMensalidadesGerar.PreVisualizar1Button.Enabled:=True;
    FormMensalidadesGerar.RadioButton1.Enabled:=True;
    FormMensalidadesGerar.RadioButton2.Enabled:=True;
    //...
    FormMain.DesabilitarControles(FormMensalidadesGerar);
    FormMain.SetFields(FormMensalidadesGerar,False);
  end;
end;

procedure TFormMensalidadesGerar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMensalidadesGerar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if TBMensalidades.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMensalidadesGerar.FormCreate(Sender: TObject);
var A,M,D: Word;
begin
  DecodeDate(Date,A,M,D);
  MaskEdit1.Text:=AlignText(IntToStr(M),'0',2,taRight)+'/'+IntToStr(A);
  Label4.Caption:='';
end;

procedure TFormMensalidadesGerar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMensalidadesGerar.CriarBoleto;
begin
  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=TBMensalidadesMNS_CONTA.Value;
  DM.TBContas.Open;

  DM.TBReceber.Insert;
  DM.TBReceberREE_CLIENTE.Value:=TBMensalidadesMNS_CLIENTE.Value;
  DM.TBReceberREE_RECEITA.Value:=TBMensalidadesMNS_RECEITA.Value;
  DM.TBReceberREE_CONTA.Value:=TBMensalidadesMNS_CONTA.Value;
  DM.TBReceberREE_DESCRICAO.Value:=TBMensalidadesMNS_DESCRICAO.Value;
  DM.TBReceberREE_DTVENCIMENTO.Value:=TBMensalidadesMNS_VENCIMENTO.Value;
  DM.TBReceberREE_DTJUROSAPOS.Value:=TBMensalidadesMNS_VENCIMENTO.Value+1; //dia seguinte.
  DM.TBReceberREE_PORCJUROS.Value:=DM.TBContasCON_MORAJUROS.Value;
  DM.TBReceberREE_TIPODOCTO.Value:=TBMensalidadesMNS_TIPODOCTO.Value;
  //DM.TBReceberREE_VALORMULTA.Value:=Edit4.Text;
  DM.TBReceberREE_VALOR.Value:=TBMensalidadesMNS_VALOR.Value;
  DM.TBReceberREE_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBReceber.Post;
  if RadioButton2.Checked then
  begin
    {$REGION 'CRIACAO DO BOLETO'}
    //localiza a conta e o cliente.
    //já localizou acima. DM.TBContas.Close;
    //DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CONTA.Value;
    //DM.TBContas.Open;
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CLIENTE.Value;
    DM.TBClientes.Open;
    //capa do boleto. - boletos individuais.
    DM2.TBBoletos.Insert;
    DM2.TBBoletosBOL_BAIRRO.Value:=DM.TBClientesCLI_BAIRRO.Value;
    DM2.TBBoletosBOL_BAIXACODIGO.Value:=DM.TBContasCON_BAIXACODIGO.Value;
    DM2.TBBoletosBOL_CARTEIRA.Value:=DM.TBContasCON_CARTEIRA.Value;
    DM2.TBBoletosBOL_CARTEIRACOD.Value:=DM.TBContasCON_CARTEIRACOD.Value;
    DM2.TBBoletosBOL_CEP.Value:=DM.TBClientesCLI_CEP.Value;
    DM2.TBBoletosBOL_CIDADE.Value:=DM.TBClientesCLI_CIDADE.Value;
    DM2.TBBoletosBOL_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
    DM2.TBBoletosBOL_CNPJ.Value:=DM.TBClientesCLI_CNPJ.Value;
    DM2.TBBoletosBOL_COMPLEMENTO.Value:=DM.TBClientesCLI_COMPLEMENTO.Value;
    DM2.TBBoletosBOL_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
    DM2.TBBoletosBOL_CONVENIO.Value:=DM.TBContasCON_CONVENIO.Value;
    DM2.TBBoletosBOL_CPF.Value:=DM.TBClientesCLI_CPF.Value;
    DM2.TBBoletosBOL_DIASBAIXA.Value:=DM.TBContasCON_DIASBAIXA.Value;
    DM2.TBBoletosBOL_DIASPROTESTO.Value:=DM.TBContasCON_DIASPROTESTO.Value;
    DM2.TBBoletosBOL_DTVENCIMENTO.Value:=DM.TBReceberREE_DTVENCIMENTO.Value; //pega da conta a receber.
    DM2.TBBoletosBOL_DTJUROSAPOS.Value:=DM.TBReceberREE_DTJUROSAPOS.Value; //pega da conta a receber.
    DM2.TBBoletosBOL_ENDERECO.Value:=DM.TBClientesCLI_ENDERECO.Value;
    DM2.TBBoletosBOL_ESPECIE.Value:=DM.TBContasCON_ESPECIE.Value;
    DM2.TBBoletosBOL_ESPECIEDOC.Value:=DM.TBContasCON_ESPECIEDOC.Value;
    DM2.TBBoletosBOL_ESTADO.Value:=DM.TBClientesCLI_ESTADO.Value;
    DM2.TBBoletosBOL_INSTRUCAO1.Value:=DM.TBContasCON_INSTRUCAO1.Value;
    DM2.TBBoletosBOL_INSTRUCAO2.Value:=DM.TBContasCON_INSTRUCAO2.Value;
    DM2.TBBoletosBOL_INSTRUCAO3.Value:=DM.TBContasCON_INSTRUCAO3.Value;
    DM2.TBBoletosBOL_INSTRUCAO4.Value:=DM.TBContasCON_INSTRUCAO4.Value;
    DM2.TBBoletosBOL_INSTRUCAO5.Value:=DM.TBContasCON_INSTRUCAO5.Value;
    DM2.TBBoletosBOL_LOCALPAGTO.Value:=DM.TBContasCON_LOCALPAGTO.Value;
    DM2.TBBoletosBOL_MODALIDADE.Value:=DM.TBContasCON_MODALIDADE.Value;
    DM2.TBBoletosBOL_MORACODIGO.Value:=DM.TBContasCON_MORACODIGO.Value;
    DM2.TBBoletosBOL_MORAJUROS.Value:=DM.TBContasCON_MORAJUROS.Value;
    DM2.TBBoletosBOL_MORATIPO.Value:=DM.TBContasCON_MORATIPO.Value;
    DM2.TBBoletosBOL_MULTA.Value:=DM.TBContasCON_MULTA.Value;
    DM2.TBBoletosBOL_MULTATIPO.Value:=DM.TBContasCON_MULTATIPO.Value;
    DM2.TBBoletosBOL_NOME.Value:=DM.TBClientesCLI_NOME.Value;
    //DM2.TBBoletosBOL_NOSSONUMERO.Value:=IntToStr(DM.TBNfeNFE_CODIGO.Value); //preenche somente com o código da NFe. - acho que nao vai mais precisar.
    DM2.TBBoletosBOL_OBSERVACOES.Value:=DM.TBReceberREE_DESCRICAO.Value;
    DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
    DM2.TBBoletosBOL_PROTESTOTIPO.Value:=DM.TBContasCON_PROTESTOTIPO.Value;
    DM2.TBBoletosBOL_NUMERO.Value:=DM.TBClientesCLI_NUMERO.Value;
    DM2.TBBoletosBOL_TIPOPESSOA.Value:=DM.TBClientesCLI_TIPOPESSOA.Value;
    DM2.TBBoletosBOL_VALORBOLETO.Value:=DM.TBContasCON_VALORBOLETO.Value;

    DM2.TBBoletosBAN_NOME.Value:=DM.TBContasBAN_NOME.Value;
    DM2.TBBoletosCON_AGENCIA.Value:=DM.TBContasCON_AGENCIA.Value;
    DM2.TBBoletosCON_AGENCIADIGITO.Value:=DM.TBContasCON_AGENCIADIGITO.Value;
    DM2.TBBoletosCON_BANCO.Value:=DM.TBContasCON_BANCO.Value;
    DM2.TBBoletosCON_CEDENTE.Value:=DM.TBContasCON_CEDENTE.Value;
    DM2.TBBoletosCON_CEDENTENOME.Value:=DM.TBContasCON_CEDENTENOME.Value;
    DM2.TBBoletosCON_CEDENTEDIGITO.Value:=DM.TBContasCON_CEDENTEDIGITO.Value;
    DM2.TBBoletosCON_CONTA.Value:=DM.TBContasCON_CONTA.Value;
    DM2.TBBoletosCON_CONTADIGITO.Value:=DM.TBContasCON_CONTADIGITO.Value;
    DM2.TBBoletosCON_NOME.Value:=DM.TBContasCON_NOME.Value;
    DM2.TBBoletosCON_TIPOCOBRANCA.Value:=DM.TBContasCON_TIPOCOBRANCA.Value;
    DM2.TBBoletosCON_VALORBOLETO.Value:=DM.TBContasCON_VALORBOLETO.Value;

    DM2.TBBoletos.Post;
    //itens do boleto.
    DM2.TBBoletosItens.Insert;
    DM2.TBBoletosItensBOI_BOLETO.Value:=DM2.TBBoletosBOL_CODIGO.Value;
    DM2.TBBoletosItensBOI_RECEBER.Value:=DM.TBReceberREE_CODIGO.Value;
    DM2.TBBoletosItens.Post; //no after post calcula o total do boleto.

    //atualiza o contas a receber com o código do boleto gerado.
    DM.TBReceber.Edit;
    DM.TBReceberREE_BOLETO.Value:=DM2.TBBoletosBOL_CODIGO.Value;
    DM.TBReceber.Post;
    {$ENDREGION}
  end;
end;

procedure TFormMensalidadesGerar.Gerar1Click(Sender: TObject);
begin
  AbortIf(TBMensalidades.IsEmpty,'Nenhuma mensalidade para gerar. Utilize a função pré-visualizar antes.');

  if MessageDlg('Deseja gerar a mensalidade para '+TBMensalidadesCLI_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    CriarBoleto;
    MessageDlg('Mensalidade gerada!',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMensalidadesGerar.GerarMensalidades1Click(Sender: TObject);
begin
  AbortIf(TBMensalidades.IsEmpty,'Nenhuma mensalidade para gerar. Utilize a função pré-visualizar antes.');

  if MessageDlg('Deseja gerar as mensalidades?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    TBMensalidades.First;
    TBMensalidades.DisableControls;
    while not TBMensalidades.Eof do
    begin
      CriarBoleto;

      TBMensalidades.Next;
    end;
    TBMensalidades.EnableControls;
    MessageDlg('Mensalidades geradas!',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMensalidadesGerar.PreVisualizar1Click(Sender: TObject);
var Periodo, Descricao, Vencimento: String;
  Contador: Word;
begin
  AbortIf(Trim(MaskEdit1.Text)='  /    ','Informe o mês e o ano!');

  Screen.Cursor:=crHourGlass;
  Total:=0;
  TBMensalidades.Close;
  TBMensalidades.Open;
  TBMensalidades.EmptyDataSet;

  case StrToInt(Copy(MaskEdit1.Text,1,2)) of
    01: Periodo:='JANEIRO';
    02: Periodo:='FEVEREIRO';
    03: Periodo:='MARCO';
    04: Periodo:='ABRIL';
    05: Periodo:='MAIO';
    06: Periodo:='JUNHO';
    07: Periodo:='JULHO';
    08: Periodo:='AGOSTO';
    09: Periodo:='SETEMBRO';
    10: Periodo:='OUTUBRO';
    11: Periodo:='NOVEMBRO';
    12: Periodo:='DEZEMBRO';
  end;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select MNS_CODIGO, MNS_CLIENTE, MNS_CONTA, MNS_DESCRICAO, '+
    'MNS_RECEITA, MNS_TIPODOCTO, MNS_VALOR, MNS_VENCIMENTO, '+
    'MNS_PERIODO, CLI_NOME, CON_NOME, REC_DESCRICAO '+
    'from MENSALIDADES '+
    'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
    'left join CONTAS on MNS_CONTA=CON_CODIGO '+
    'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
    'where MNS_STATUS=''A'' and (MNS_PERIODO=''MENSAL'' or MNS_PERIODO=:periodo) order by CLI_NOME desc'
  );
  DM.QYAux.ParamByName('periodo').AsString:=Periodo;
  DM.QYAux.Open;
  DM.QYAux.First;
  TBMensalidades.DisableControls;
  Contador:=0;
  while not DM.QYAux.Eof do
  begin
    Inc(Contador);
    Descricao:=DM.QYAux.FieldByName('MNS_DESCRICAO').AsString;
    Descricao:=StringReplace(Descricao,'|MES|',Copy(MaskEdit1.Text,1,2),[rfReplaceAll]);
    Descricao:=StringReplace(Descricao,'|ANO|',Copy(MaskEdit1.Text,4,4),[rfReplaceAll]);
    Vencimento:=DM.QYAux.FieldByName('MNS_VENCIMENTO').AsString+'/'+MaskEdit1.Text; //o dia que está na tabela + mes e ano do maskedit.
    if CheckBox1.Checked then
    begin
      if DayOfWeek(StrToDate(Vencimento))=1 then //domingo
      Vencimento:=IntToStr(DM.QYAux.FieldByName('MNS_VENCIMENTO').AsInteger+1)+'/'+MaskEdit1.Text else
      if DayOfWeek(StrToDate(Vencimento))=7 then //sabado.
      Vencimento:=IntToStr(DM.QYAux.FieldByName('MNS_VENCIMENTO').AsInteger+2)+'/'+MaskEdit1.Text;
    end;
    TBMensalidades.Insert;
    TBMensalidadesMNS_CLIENTE.Value:=DM.QYAux.FieldByName('MNS_CLIENTE').AsInteger;
    TBMensalidadesMNS_CODIGO.Value:=DM.QYAux.FieldByName('MNS_CODIGO').AsInteger;
    TBMensalidadesMNS_CONTA.Value:=DM.QYAux.FieldByName('MNS_CONTA').AsInteger;
    TBMensalidadesMNS_DESCRICAO.Value:=Descricao;
    TBMensalidadesMNS_RECEITA.Value:=DM.QYAux.FieldByName('MNS_RECEITA').AsInteger;
    TBMensalidadesMNS_SEQUENCIA.Value:=Contador;
    TBMensalidadesMNS_TIPODOCTO.Value:=DM.QYAux.FieldByName('MNS_TIPODOCTO').AsString;
    TBMensalidadesMNS_VALOR.Value:=DM.QYAux.FieldByName('MNS_VALOR').AsExtended;
    TBMensalidadesMNS_VENCIMENTO.Value:=StrToDate(Vencimento);
    TBMensalidadesCLI_NOME.Value:=DM.QYAux.FieldByName('CLI_NOME').AsString;
    TBMensalidadesCON_NOME.Value:=DM.QYAux.FieldByName('CON_NOME').AsString;
    TBMensalidadesREC_DESCRICAO.Value:=DM.QYAux.FieldByName('REC_DESCRICAO').AsString;
    TBMensalidades.Post;
    Total:=Total+DM.QYAux.FieldByName('MNS_VALOR').AsExtended;
    DM.QYAux.Next;
  end;
  TBMensalidades.EnableControls;
  DM.QYAux.Close;
  Label4.Caption:='Valor Total: '+Format('%m',[Total]);
  Screen.Cursor:=crDefault;
end;

procedure TFormMensalidadesGerar.TBMensalidadesAfterPost(DataSet: TDataSet);
begin
  Label4.Caption:='Valor Total: '+Format('%m',[Total]);
end;

procedure TFormMensalidadesGerar.TBMensalidadesBeforeEdit(DataSet: TDataSet);
begin
  Valor:=TBMensalidadesMNS_VALOR.Value;
  FormMain.SetFields(FormMensalidadesGerar,True);
end;

procedure TFormMensalidadesGerar.TBMensalidadesBeforeInsert(DataSet: TDataSet);
begin
  //FormMain.SetFields(FormMensalidadesGerar,True);
  //FormMensalidadesGerar.DBEdit2.SetFocus;
end;

procedure TFormMensalidadesGerar.TBMensalidadesBeforePost(DataSet: TDataSet);
begin
  if TBMensalidades.State in [dsEdit] then
  begin
    //tira o valor original, e coloca o valor atualizado.
    Total:=Total - Valor;
    Total:=Total + TBMensalidadesMNS_VALOR.Value;
  end;
end;

initialization
  RegisterClass(TFormMensalidadesGerar);

finalization
  UnRegisterClass(TFormMensalidadesGerar);

end.
