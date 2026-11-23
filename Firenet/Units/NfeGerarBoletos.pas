unit NfeGerarBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons, PngBitBtn, Menus, DB, Grids,
  DBGrids, PngSpeedButton, Mask, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfeGerarBoletos = class(TForm)
    DBGrid1: TDBGrid;
    DSReceber: TDataSource;
    DSTotalReceber: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    BitBtn3: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    DBText1: TDBText;
    Label5: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    CheckBox2: TCheckBox;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    QYTotalReceber: TFDQuery;
    TRTotalReceber: TFDTransaction;
    QYReceberREE_BAIXADOPOR: TStringField;
    QYReceberREE_CLIENTE: TIntegerField;
    QYReceberREE_CODIGO: TIntegerField;
    QYReceberREE_CONTA: TIntegerField;
    QYReceberREE_DESCPORC: TFMTBCDField;
    QYReceberREE_DESCRICAO: TStringField;
    QYReceberREE_DESCVALOR: TFMTBCDField;
    QYReceberREE_DIASATRASO: TIntegerField;
    QYReceberREE_DIASPRAZO: TIntegerField;
    QYReceberREE_DTATUALIZACAO: TDateField;
    QYReceberREE_DTCADASTRO: TDateField;
    QYReceberREE_DTEMISSAO: TDateField;
    QYReceberREE_DTJUROSAPOS: TDateField;
    QYReceberREE_DTPAGAMENTO: TDateField;
    QYReceberREE_DTVENCIMENTO: TDateField;
    QYReceberREE_JUROSPAGO: TFMTBCDField;
    QYReceberREE_MULTAPAGO: TFMTBCDField;
    QYReceberREE_NOVOCODIGO: TIntegerField;
    QYReceberREE_NUMDOCTO: TStringField;
    QYReceberREE_OBSERVACOES: TMemoField;
    QYReceberREE_PARCELANUM: TIntegerField;
    QYReceberREE_PARCELAQTDE: TIntegerField;
    QYReceberREE_PORCJUROS: TFMTBCDField;
    QYReceberREE_RECEITA: TIntegerField;
    QYReceberREE_STATUS: TStringField;
    QYReceberREE_TIPOBAIXA: TStringField;
    QYReceberREE_VALOR: TFMTBCDField;
    QYReceberREE_VALORJUROS: TFMTBCDField;
    QYReceberREE_VALORMULTA: TFMTBCDField;
    QYReceberREE_VALORORIGINAL: TFMTBCDField;
    QYReceberREE_VALORPAGO: TFMTBCDField;
    QYReceberREE_VENDEDOR: TIntegerField;
    QYReceberCLI_CODIGO: TIntegerField;
    QYReceberCLI_NOME: TStringField;
    QYReceberREE_TIPODOCTO: TStringField;
    QYReceberREE_USUARIO: TStringField;
    QYTotalReceberVALOR: TFMTBCDField;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
//    procedure GerarERegistrarBoleto;
  public
    { Public declarations }
  end;

var
  FormNfeGerarBoletos: TFormNfeGerarBoletos;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNfeGerarBoletos.txt';

implementation
uses DataMod, DataMod2, Funcoes1, DataModSearch, BoletosSelecionar, FuncoesFirenet,
  BoletosAPIRegistro;

{$R *.dfm}

procedure TFormNfeGerarBoletos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeGerarBoletos.BitBtn3Click(Sender: TObject);
var Observacoes, Boletos: String;
  JaGerou: Boolean;
  Vencimento: TDate;
begin
  AbortIf(Edit2.Text='','Selecione a conta bancária.');
  AbortIf(QYReceber.IsEmpty,'Nenhum registro para gerar boleto.');

  //verifica se ja foi gerado boleto desta NFe... se foi, pergunta se quer gerar novamente.
  JaGerou:=False;
  QYReceber.First;
  while not QYReceber.Eof do
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from BOLETOSITENS where BOI_RECEBER=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('QTDE').AsInteger>0 then
    JaGerou:=True;
    QYReceber.Next;
  end;
  if JaGerou=True then
  begin
    if MessageDlg('Já foi gerado boletos desta NFe.'+#13#10+'Deseja gerar novamente?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    Exit;
  end;

  if MessageDlg('Confirma geração do(s) boleto(s)?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //Localiza a conta e o cliente.
    //Ao abrir essa tela, o campo conta já deve vir preenchido com a conta que está no conta a receber.
    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
    DM.TBContas.Open;
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
    DM.TBClientes.Open;
    Boletos:='';
    if CheckBox1.Checked=True then
    begin
      QYReceber.First;
      while not QYReceber.Eof do
      begin
        //capa do boleto. - boletos individuais.
        {$REGION 'BOLETOS INDIVIDUAIS'}
        //if not QYReceberREE_CONTA.IsNull then
        //begin
          //DM.TBContas.Close;
          //DM.TBContas.ParamByName('codigo').AsInteger:=QYReceberREE_CONTA.Value;
          //DM.TBContas.Open;
          //if DM.TBContas.IsEmpty then
          //begin
          //  DM.TBContas.Close;
          //  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
          //  DM.TBContas.Open;
          //end;
        //end;

        DM2.TBBoletos.Insert;
        DM2.TBBoletosBOL_BAIRRO.Value        :=DM.TBClientesCLI_BAIRRO.Value;
        DM2.TBBoletosBOL_BAIXACODIGO.Value   :=DM.TBContasCON_BAIXACODIGO.Value;
        DM2.TBBoletosBOL_CARTEIRA.Value      :=DM.TBContasCON_CARTEIRA.Value;
        DM2.TBBoletosBOL_CARTEIRACOD.Value   :=DM.TBContasCON_CARTEIRACOD.Value;
        DM2.TBBoletosBOL_CEP.Value           :=DM.TBClientesCLI_CEP.Value;
        DM2.TBBoletosBOL_CIDADE.Value        :=DM.TBClientesCLI_CIDADE.Value;
        DM2.TBBoletosBOL_CLIENTE.Value       :=QYReceberREE_CLIENTE.Value;
        DM2.TBBoletosBOL_CNPJ.Value          :=DM.TBClientesCLI_CNPJ.Value;
        DM2.TBBoletosBOL_COMPLEMENTO.Value   :=DM.TBClientesCLI_COMPLEMENTO.Value;
        DM2.TBBoletosBOL_CONTA.Value         :=DM.TBContasCON_CODIGO.Value;
        DM2.TBBoletosBOL_CONVENIO.Value      :=DM.TBContasCON_CONVENIO.Value;
        DM2.TBBoletosBOL_CPF.Value           :=DM.TBClientesCLI_CPF.Value;
        DM2.TBBoletosBOL_DESCONTOTIPO.Value  :=DM.TBContasCON_DESCONTOTIPO.Value;
        DM2.TBBoletosBOL_DIASBAIXA.Value     :=DM.TBContasCON_DIASBAIXA.Value;
        DM2.TBBoletosBOL_DIASPROTESTO.Value  :=DM.TBContasCON_DIASPROTESTO.Value;

        Vencimento:=QYReceberREE_DTVENCIMENTO.Value;
        if CheckBox2.Checked then
        begin
          if DayOfWeek(Vencimento)=1 then //domingo
          Vencimento:=Vencimento + 1 else
          if DayOfWeek(Vencimento)=7 then //sabado.
          Vencimento:=Vencimento + 2;
        end;

        DM2.TBBoletosBOL_DTVENCIMENTO.Value  :=Vencimento; //QYReceberREE_DTVENCIMENTO.Value; //pega da conta a receber.
        DM2.TBBoletosBOL_DTJUROSAPOS.Value   :=Vencimento+1; //QYReceberREE_DTJUROSAPOS.Value; //pega da conta a receber.
        DM2.TBBoletosBOL_ENDERECO.Value      :=DM.TBClientesCLI_ENDERECO.Value;
        DM2.TBBoletosBOL_ESPECIE.Value       :=DM.TBContasCON_ESPECIE.Value;
        DM2.TBBoletosBOL_ESPECIEDOC.Value    :=DM.TBContasCON_ESPECIEDOC.Value;
        DM2.TBBoletosBOL_ESTADO.Value        :=DM.TBClientesCLI_ESTADO.Value;
        DM2.TBBoletosBOL_INSTRUCAO1.Value    :=DM.TBContasCON_INSTRUCAO1.Value;
        DM2.TBBoletosBOL_INSTRUCAO2.Value    :=DM.TBContasCON_INSTRUCAO2.Value;
        DM2.TBBoletosBOL_INSTRUCAO3.Value    :=DM.TBContasCON_INSTRUCAO3.Value;
        DM2.TBBoletosBOL_INSTRUCAO4.Value    :=DM.TBContasCON_INSTRUCAO4.Value;
        DM2.TBBoletosBOL_INSTRUCAO5.Value    :=DM.TBContasCON_INSTRUCAO5.Value;
        DM2.TBBoletosBOL_LOCALPAGTO.Value    :=DM.TBContasCON_LOCALPAGTO.Value;
        DM2.TBBoletosBOL_MODALIDADE.Value    :=DM.TBContasCON_MODALIDADE.Value;
        DM2.TBBoletosBOL_MORACODIGO.Value    :=DM.TBContasCON_MORACODIGO.Value;
        DM2.TBBoletosBOL_MORAJUROS.Value     :=DM.TBContasCON_MORAJUROS.Value;
        DM2.TBBoletosBOL_MORATIPO.Value      :=DM.TBContasCON_MORATIPO.Value;
        DM2.TBBoletosBOL_MULTA.Value         :=DM.TBContasCON_MULTA.Value;
        DM2.TBBoletosBOL_MULTATIPO.Value     :=DM.TBContasCON_MULTATIPO.Value;
        DM2.TBBoletosBOL_NOME.Value          :=DM.TBClientesCLI_NOME.Value;
        //DM2.TBBoletosBOL_NOSSONUMERO.Value:= calculado no before post.
        DM2.TBBoletosBOL_NUMERO.Value        :=DM.TBClientesCLI_NUMERO.Value;
        Observacoes:='BOLETO REFERENTE AO DOCUMENTO '+QYReceberREE_NUMDOCTO.Value; //QYReceberREE_DESCRICAO.Value;
        if QYReceberREE_PARCELAQTDE.Value>1 then
        Observacoes:=Observacoes+' - Parcela '+IntToStr(QYReceberREE_PARCELANUM.Value)+' de '+IntToStr(QYReceberREE_PARCELAQTDE.Value);
        DM2.TBBoletosBOL_OBSERVACOES.Value   :=Observacoes;
        DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
        DM2.TBBoletosBOL_PROTESTOTIPO.Value  :=DM.TBContasCON_PROTESTOTIPO.Value;
        DM2.TBBoletosBOL_TIPOPESSOA.Value    :=DM.TBClientesCLI_TIPOPESSOA.Value;
        DM2.TBBoletosBOL_VALORBOLETO.Value   :=DM.TBContasCON_VALORBOLETO.Value;

        DM2.TBBoletosBAN_NOME.Value          :=DM.TBContasBAN_NOME.Value;
        DM2.TBBoletosCON_AGENCIA.Value       :=DM.TBContasCON_AGENCIA.Value;
        DM2.TBBoletosCON_AGENCIADIGITO.Value :=DM.TBContasCON_AGENCIADIGITO.Value;
        DM2.TBBoletosCON_BANCO.Value         :=DM.TBContasCON_BANCO.Value;
        DM2.TBBoletosCON_CEDENTE.Value       :=DM.TBContasCON_CEDENTE.Value;
        DM2.TBBoletosCON_CEDENTENOME.Value   :=DM.TBContasCON_CEDENTENOME.Value;
        DM2.TBBoletosCON_CEDENTEDIGITO.Value :=DM.TBContasCON_CEDENTEDIGITO.Value;
        DM2.TBBoletosCON_CONTA.Value         :=DM.TBContasCON_CONTA.Value;
        DM2.TBBoletosCON_CONTADIGITO.Value   :=DM.TBContasCON_CONTADIGITO.Value;
        DM2.TBBoletosCON_NOME.Value          :=DM.TBContasCON_NOME.Value;
        DM2.TBBoletosCON_TIPOCOBRANCA.Value  :=DM.TBContasCON_TIPOCOBRANCA.Value;
        DM2.TBBoletosCON_VALORBOLETO.Value   :=DM.TBContasCON_VALORBOLETO.Value;

        DM2.TBBoletos.Post;
        //itens do boleto.
        DM2.TBBoletosItens.Insert;
        DM2.TBBoletosItensBOI_BOLETO.Value   :=DM2.TBBoletosBOL_CODIGO.Value;
        DM2.TBBoletosItensBOI_RECEBER.Value  :=QYReceberREE_CODIGO.Value;
        DM2.TBBoletosItens.Post; //no after post calcula o total do boleto.

        //atualiza a conta a receber com o código do novo boleto e a conta.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO=:boleto, REE_CONTA=:conta where REE_CODIGO=:codigo');
        DM.QYAux.ParamByName('boleto').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
        DM.QYAux.ParamByName('conta').AsInteger:=DM.TBContasCON_CODIGO.Value;
        DM.QYAux.ExecSQL;

        Boletos:=Boletos+','+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);

        QYReceber.Next;
        {$ENDREGION}
      end;
      //MessageDlg('Boletos gerados.',mtInformation,[mbOk],0);
    end else
    begin
      //capa do boleto. - um boleto só.
      {$REGION 'BOLETOS COLETIVO'}
      DM2.TBBoletos.Insert;
      DM2.TBBoletosBOL_BAIRRO.Value        :=DM.TBClientesCLI_BAIRRO.Value;
      DM2.TBBoletosBOL_BAIXACODIGO.Value   :=DM.TBContasCON_BAIXACODIGO.Value;
      DM2.TBBoletosBOL_CARTEIRA.Value      :=DM.TBContasCON_CARTEIRA.Value;
      DM2.TBBoletosBOL_CARTEIRACOD.Value   :=DM.TBContasCON_CARTEIRACOD.Value;
      DM2.TBBoletosBOL_CEP.Value           :=DM.TBClientesCLI_CEP.Value;
      DM2.TBBoletosBOL_CIDADE.Value        :=DM.TBClientesCLI_CIDADE.Value;
      DM2.TBBoletosBOL_CLIENTE.Value       :=QYReceberREE_CLIENTE.Value;
      DM2.TBBoletosBOL_CNPJ.Value          :=DM.TBClientesCLI_CNPJ.Value;
      DM2.TBBoletosBOL_COMPLEMENTO.Value   :=DM.TBClientesCLI_COMPLEMENTO.Value;
      DM2.TBBoletosBOL_CONTA.Value         :=DM.TBContasCON_CODIGO.Value;
      DM2.TBBoletosBOL_CONVENIO.Value      :=DM.TBContasCON_CONVENIO.Value;
      DM2.TBBoletosBOL_CPF.Value           :=DM.TBClientesCLI_CPF.Value;
      DM2.TBBoletosBOL_DESCONTOTIPO.Value  :=DM.TBContasCON_DESCONTOTIPO.Value;
      DM2.TBBoletosBOL_DIASBAIXA.Value     :=DM.TBContasCON_DIASBAIXA.Value;
      DM2.TBBoletosBOL_DIASPROTESTO.Value  :=DM.TBContasCON_DIASPROTESTO.Value;
      DM2.TBBoletosBOL_DTVENCIMENTO.Value  :=StrToDate(MaskEdit1.Text,FS); //associa a data informada.
      DM2.TBBoletosBOL_DTJUROSAPOS.Value   :=StrToDate(MaskEdit2.Text,FS); //associa a data informada.
      DM2.TBBoletosBOL_ENDERECO.Value      :=DM.TBClientesCLI_ENDERECO.Value;
      DM2.TBBoletosBOL_ESPECIE.Value       :=DM.TBContasCON_ESPECIE.Value;
      DM2.TBBoletosBOL_ESPECIEDOC.Value    :=DM.TBContasCON_ESPECIEDOC.Value;
      DM2.TBBoletosBOL_ESTADO.Value        :=DM.TBClientesCLI_ESTADO.Value;
      DM2.TBBoletosBOL_INSTRUCAO1.Value    :=DM.TBContasCON_INSTRUCAO1.Value;
      DM2.TBBoletosBOL_INSTRUCAO2.Value    :=DM.TBContasCON_INSTRUCAO2.Value;
      DM2.TBBoletosBOL_INSTRUCAO3.Value    :=DM.TBContasCON_INSTRUCAO3.Value;
      DM2.TBBoletosBOL_INSTRUCAO4.Value    :=DM.TBContasCON_INSTRUCAO4.Value;
      DM2.TBBoletosBOL_INSTRUCAO5.Value    :=DM.TBContasCON_INSTRUCAO5.Value; //agrupa as parcelas em um boleto só.
      DM2.TBBoletosBOL_LOCALPAGTO.Value    :=DM.TBContasCON_LOCALPAGTO.Value;
      DM2.TBBoletosBOL_MODALIDADE.Value    :=DM.TBContasCON_MODALIDADE.Value;
      DM2.TBBoletosBOL_MORACODIGO.Value    :=DM.TBContasCON_MORACODIGO.Value;
      DM2.TBBoletosBOL_MORAJUROS.Value     :=DM.TBContasCON_MORAJUROS.Value;
      DM2.TBBoletosBOL_MORATIPO.Value      :=DM.TBContasCON_MORATIPO.Value;
      DM2.TBBoletosBOL_MULTA.Value         :=DM.TBContasCON_MULTA.Value;
      DM2.TBBoletosBOL_MULTATIPO.Value     :=DM.TBContasCON_MULTATIPO.Value;
      DM2.TBBoletosBOL_NOME.Value          :=DM.TBClientesCLI_NOME.Value;
      //DM2.TBBoletosBOL_NOSSONUMERO.Value:=IntToStr(DM.TBNfeNFE_CODIGO.Value); //preenche somente com o código da NFe. - acho que nao vai mais precisar.
      DM2.TBBoletosBOL_NUMERO.Value        :=DM.TBClientesCLI_NUMERO.Value;
      //nao preenche este campo no caso de boleto único. DM2.TBBoletosBOL_OBSERVACOES.Value:=QYReceberREE_DESCRICAO.Value;
      DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
      DM2.TBBoletosBOL_PROTESTOTIPO.Value  :=DM.TBContasCON_PROTESTOTIPO.Value;
      DM2.TBBoletosBOL_TIPOPESSOA.Value    :=DM.TBClientesCLI_TIPOPESSOA.Value;
      DM2.TBBoletosBOL_VALORBOLETO.Value   :=DM.TBContasCON_VALORBOLETO.Value;

      DM2.TBBoletosBAN_NOME.Value          :=DM.TBContasBAN_NOME.Value;
      DM2.TBBoletosCON_AGENCIA.Value       :=DM.TBContasCON_AGENCIA.Value;
      DM2.TBBoletosCON_AGENCIADIGITO.Value :=DM.TBContasCON_AGENCIADIGITO.Value;
      DM2.TBBoletosCON_BANCO.Value         :=DM.TBContasCON_BANCO.Value;
      DM2.TBBoletosCON_CEDENTE.Value       :=DM.TBContasCON_CEDENTE.Value;
      DM2.TBBoletosCON_CEDENTENOME.Value   :=DM.TBContasCON_CEDENTENOME.Value;
      DM2.TBBoletosCON_CEDENTEDIGITO.Value :=DM.TBContasCON_CEDENTEDIGITO.Value;
      DM2.TBBoletosCON_CONTA.Value         :=DM.TBContasCON_CONTA.Value;
      DM2.TBBoletosCON_CONTADIGITO.Value   :=DM.TBContasCON_CONTADIGITO.Value;
      DM2.TBBoletosCON_NOME.Value          :=DM.TBContasCON_NOME.Value;
      DM2.TBBoletosCON_TIPOCOBRANCA.Value  :=DM.TBContasCON_TIPOCOBRANCA.Value;
      DM2.TBBoletosCON_VALORBOLETO.Value   :=DM.TBContasCON_VALORBOLETO.Value;

      DM2.TBBoletos.Post;
      QYReceber.First;
      Observacoes:='BOLETO REFERENTE AO(S) DOCUMENTO(S)';
      while not QYReceber.Eof do
      begin
        //itens do boleto.
        DM2.TBBoletosItens.Insert;
        DM2.TBBoletosItensBOI_BOLETO.Value:=DM2.TBBoletosBOL_CODIGO.Value;
        DM2.TBBoletosItensBOI_RECEBER.Value:=QYReceberREE_CODIGO.Value;
        DM2.TBBoletosItens.Post;
        Observacoes:=Observacoes+' '+QYReceberREE_NUMDOCTO.Value;

        //atualiza a conta a receber com o código do novo boleto.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO=:boleto, REE_CONTA=:conta where REE_CODIGO=:codigo');
        DM.QYAux.ParamByName('boleto').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
        DM.QYAux.ParamByName('conta').AsInteger:=DM.TBContasCON_CODIGO.Value;
        DM.QYAux.ExecSQL;

        QYReceber.Next;
      end;
      //atualiza o boleto com as observacoes.
      DM2.TBBoletos.Edit;
      DM2.TBBoletosBOL_OBSERVACOES.Value:=Observacoes;
      DM2.TBBoletos.Post;
      Boletos:=Boletos+','+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
      {$ENDREGION}
      //MessageDlg('Boleto Gerado.',mtInformation,[mbOk],0);
    end;
    Delete(Boletos,1,1); //retira a primeira virgula.

    {$REGION 'Abre tela para registro dos boletos.'}
    Application.CreateForm(TFormBoletosAPIRegistro, FormBoletosAPIRegistro);
    FormBoletosAPIRegistro.MaskEdit3.Enabled:=False;
    FormBoletosAPIRegistro.MaskEdit4.Enabled:=False;
    FormBoletosAPIRegistro.Edit1.Enabled:=False;
    FormBoletosAPIRegistro.Edit3.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtn1.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtn6.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtnBaixar.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtnCancelar.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtnDetalhar.Enabled:=False;
    FormBoletosAPIRegistro.PngBitBtnProrrogar.Enabled:=False;
    FormBoletosAPIRegistro.PngSpeedButton1.Enabled:=False;
    FormBoletosAPIRegistro.SpeedButton2.Enabled:=False;
    FormBoletosAPIRegistro.ComboBox3.Enabled:=False;
    FormBoletosAPIRegistro.ComboBox4.Enabled:=False;
    FormBoletosAPIRegistro.QYBoletos.Close;
    FormBoletosAPIRegistro.QYBoletosItens.Close;
    FormBoletosAPIRegistro.QYBoletos.SQL.Clear;
    FormBoletosAPIRegistro.QYBoletos.SQL.Add(
      'select * from BOLETOS '+
      'left join CONTAS on BOL_CONTA=CON_CODIGO '+
      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
      'where BOL_CODIGO in ('+Boletos+') order by BOL_NOME, BOL_DTVENCIMENTO'
    );
    FormBoletosAPIRegistro.QYBoletos.Open;
    FormBoletosAPIRegistro.QYBoletosItens.Open;
    FormBoletosAPIRegistro.QYBoletos.FetchAll;
    FormBoletosAPIRegistro.QYBoletosItens.FetchAll;
    FormBoletosAPIRegistro.PngBitBtn4.Click; //selecionar todos.
    FormBoletosAPIRegistro.ShowModal;
    FormBoletosAPIRegistro.Free;
    FormBoletosAPIRegistro:=nil;
    {$ENDREGION}

    {$REGION 'Abre tela para enviar ou imprimir os boletos.'}
    if MessageDlg('Deseja enviar e/ou imprimir os boletos?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      Application.CreateForm(TFormBoletosSelecionar, FormBoletosSelecionar);
      FormBoletosSelecionar.QYBoletos.Close;
      FormBoletosSelecionar.QYBoletos.SQL.Clear;
      FormBoletosSelecionar.QYBoletos.SQL.Add(
        'select BOL_CODIGO, BOL_CLIENTE, BOL_CONTA, BOL_DTVENCIMENTO, '+
        'BOL_NOME, BOL_STATUS, BOL_VALORTOTAL, CON_BANCO from BOLETOS '+
        'left join CONTAS on BOL_CONTA=CON_CODIGO '+
        'where BOL_CODIGO in ('+Boletos+') order by BOL_NOME, BOL_DTVENCIMENTO');
      FormBoletosSelecionar.QYBoletos.Open;
      FormBoletosSelecionar.CarregarBoletos;
      FormBoletosSelecionar.PngBitBtn5.Click; //passa os boletos para a direita.
      FormBoletosSelecionar.ShowModal;
      FormBoletosSelecionar.Free;
      FormBoletosSelecionar:=nil;
    end;
    {$ENDREGION}

    Close;
  end;
end;

procedure TFormNfeGerarBoletos.CheckBox1Click(Sender: TObject);
begin
  MaskEdit1.Enabled:=not CheckBox1.Checked;
  MaskEdit2.Enabled:=not CheckBox1.Checked;
  //Edit1.Enabled:=not CheckBox1.Checked;
  //Edit2.Enabled:=not CheckBox1.Checked;
  //SpeedButton1.Enabled:=not CheckBox1.Checked;
end;

procedure TFormNfeGerarBoletos.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeGerarBoletos.Edit1Exit(Sender: TObject);
begin
  LocContasExit(Edit1,Edit2);
end;

procedure TFormNfeGerarBoletos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfeGerarBoletos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeGerarBoletos.FormCreate(Sender: TObject);
begin
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  CheckBox1.Checked:=True;
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date+1);
  MaskEdit1.Enabled:=not CheckBox1.Checked;
  MaskEdit2.Enabled:=not CheckBox1.Checked;

  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CONDICAO.Value;
  DM.TBCondicoes.Open;

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBCondicoesCPG_CONTA.Value; // DM.TBParametrosPAR_CONTAPADRAO.Value;
  DM.TBContas.Open;
//  Edit1.Text:=IntToStr(DM.TBParametrosPAR_CONTAPADRAO.Value);
//  Edit2.Text:=DM.TBContasCON_NOME.Value;
  Edit1.Text:=DM.TBCondicoesCPG_CONTA.Value.ToString;
  Edit2.Text:=DM.TBCondicoesCON_NOME.Value;
end;

procedure TFormNfeGerarBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeGerarBoletos.SpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(Edit1,Edit2);
end;

//TESTAR ESSA ROTINA.
//procedure TFormNfeGerarBoletos.GerarERegistrarBoleto;
//var
//  Observacoes, Boletos: String;
//  JaGerou: Boolean;
//  Vencimento: TDate;
//  Titulo: TACBrTitulo;
//  I, J: Integer;
//  CodigoBoleto: Integer;
//begin
//  { =========================================================
//      VALIDAÇÕES INICIAIS
//    ========================================================= }
//  AbortIf(Edit2.Text = '',       'Selecione a conta bancária.');
//  AbortIf(QYReceber.IsEmpty,     'Nenhum registro para gerar boleto.');
//
//  { Valida se o banco suporta registro por API }
//  DM.TBContas.Close;
//  DM.TBContas.ParamByName('codigo').AsInteger := StrToInt(Edit1.Text);
//  DM.TBContas.Open;
//
//  if (DM.TBContasCON_BANCO.Value <> 001) and
//     (DM.TBContasCON_BANCO.Value <> 077) and
//     (DM.TBContasCON_BANCO.Value <> 085) and
//     (DM.TBContasCON_BANCO.Value <> 748) and
//     (DM.TBContasCON_BANCO.Value <> 756) then
//  begin
//    MessageDlg(
//      'O serviço de registro por API do banco só está disponível para os bancos: ' + #13#10 + #13#10 +
//      '001 - Banco do Brasil'   + #13#10 +
//      '077 - Banco Inter'       + #13#10 +
//      '085 - Banco Ailos - Viacredi' + #13#10 +
//      '748 - Banco Sicredi'     + #13#10 +
//      '756 - Banco Sicoob',
//      mtInformation, [mbOk], 0);
//    Exit;
//  end;
//
//  { =========================================================
//      VERIFICA SE JÁ EXISTEM BOLETOS GERADOS PARA ESTA NF-e
//    ========================================================= }
//  JaGerou := False;
//  QYReceber.First;
//  while not QYReceber.Eof do
//  begin
//    DM.QYAux.Close;
//    DM.QYAux.SQL.Clear;
//    DM.QYAux.SQL.Add('select count(*) as QTDE from BOLETOSITENS where BOI_RECEBER = :codigo');
//    DM.QYAux.ParamByName('codigo').AsInteger := QYReceberREE_CODIGO.Value;
//    DM.QYAux.Open;
//    if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
//      JaGerou := True;
//    QYReceber.Next;
//  end;
//
//  if JaGerou then
//  begin
//    if MessageDlg(
//      'Já foram gerados boletos desta NF-e.' + #13#10 + 'Deseja gerar e registrar novamente?',
//      mtConfirmation, [mbYes, mbNo], 0) = mrNo then
//      Exit;
//  end;
//
//  if MessageDlg(
//    'Confirma a geração e o registro bancário do(s) boleto(s)?',
//    mtConfirmation, [mbOk, mbCancel], 0) <> mrOk then
//    Exit;
//
//  { =========================================================
//      CONFIGURAÇÕES DO ACBr CONFORME O BANCO
//    ========================================================= }
//  if DM.TBContasCON_BANCO.Value = 001 then ConfigurarBancoBrasil        else
//  if DM.TBContasCON_BANCO.Value = 077 then ConfigurarBancoInter         else
//  if DM.TBContasCON_BANCO.Value = 085 then ConfigurarBancoAilosViacredi else
//  if DM.TBContasCON_BANCO.Value = 748 then ConfigurarBancoSicredi       else
//  if DM.TBContasCON_BANCO.Value = 756 then ConfigurarBancoSicoob;
//
//  DM.TBClientes.Close;
//  DM.TBClientes.ParamByName('codigo').AsInteger := DM.TBNfeNFE_CLIENTE.Value;
//  DM.TBClientes.Open;
//
//  Screen.Cursor := crHourGlass;
//  Memo1.Lines.Clear;
//  TBResultados.EmptyDataSet;
//  PageControl1.ActivePageIndex := 0;
//  Boletos := '';
//
//  try
//    { =========================================================
//        BOLETOS INDIVIDUAIS (um boleto por parcela)
//      ========================================================= }
//    if CheckBox1.Checked then
//    begin
//      QYReceber.First;
//      while not QYReceber.Eof do
//      begin
//        { --- ETAPA 1: GERAR O BOLETO NO BANCO DE DADOS --- }
//        Vencimento := QYReceberREE_DTVENCIMENTO.Value;
//        if CheckBox2.Checked then
//        begin
//          if DayOfWeek(Vencimento) = 1 then  { domingo ? segunda }
//            Vencimento := Vencimento + 1
//          else
//          if DayOfWeek(Vencimento) = 7 then  { sábado ? segunda }
//            Vencimento := Vencimento + 2;
//        end;
//
//        DM2.TBBoletos.Insert;
//        DM2.TBBoletosBOL_BAIRRO.Value          := DM.TBClientesCLI_BAIRRO.Value;
//        DM2.TBBoletosBOL_BAIXACODIGO.Value      := DM.TBContasCON_BAIXACODIGO.Value;
//        DM2.TBBoletosBOL_CARTEIRA.Value         := DM.TBContasCON_CARTEIRA.Value;
//        DM2.TBBoletosBOL_CARTEIRACOD.Value      := DM.TBContasCON_CARTEIRACOD.Value;
//        DM2.TBBoletosBOL_CEP.Value              := DM.TBClientesCLI_CEP.Value;
//        DM2.TBBoletosBOL_CIDADE.Value           := DM.TBClientesCLI_CIDADE.Value;
//        DM2.TBBoletosBOL_CLIENTE.Value          := QYReceberREE_CLIENTE.Value;
//        DM2.TBBoletosBOL_CNPJ.Value             := DM.TBClientesCLI_CNPJ.Value;
//        DM2.TBBoletosBOL_COMPLEMENTO.Value      := DM.TBClientesCLI_COMPLEMENTO.Value;
//        DM2.TBBoletosBOL_CONTA.Value            := DM.TBContasCON_CODIGO.Value;
//        DM2.TBBoletosBOL_CONVENIO.Value         := DM.TBContasCON_CONVENIO.Value;
//        DM2.TBBoletosBOL_CPF.Value              := DM.TBClientesCLI_CPF.Value;
//        DM2.TBBoletosBOL_DESCONTOTIPO.Value     := DM.TBContasCON_DESCONTOTIPO.Value;
//        DM2.TBBoletosBOL_DIASBAIXA.Value        := DM.TBContasCON_DIASBAIXA.Value;
//        DM2.TBBoletosBOL_DIASPROTESTO.Value     := DM.TBContasCON_DIASPROTESTO.Value;
//        DM2.TBBoletosBOL_DTVENCIMENTO.Value     := Vencimento;
//        DM2.TBBoletosBOL_DTJUROSAPOS.Value      := Vencimento + 1;
//        DM2.TBBoletosBOL_ENDERECO.Value         := DM.TBClientesCLI_ENDERECO.Value;
//        DM2.TBBoletosBOL_ESPECIE.Value          := DM.TBContasCON_ESPECIE.Value;
//        DM2.TBBoletosBOL_ESPECIEDOC.Value       := DM.TBContasCON_ESPECIEDOC.Value;
//        DM2.TBBoletosBOL_ESTADO.Value           := DM.TBClientesCLI_ESTADO.Value;
//        DM2.TBBoletosBOL_INSTRUCAO1.Value       := DM.TBContasCON_INSTRUCAO1.Value;
//        DM2.TBBoletosBOL_INSTRUCAO2.Value       := DM.TBContasCON_INSTRUCAO2.Value;
//        DM2.TBBoletosBOL_INSTRUCAO3.Value       := DM.TBContasCON_INSTRUCAO3.Value;
//        DM2.TBBoletosBOL_INSTRUCAO4.Value       := DM.TBContasCON_INSTRUCAO4.Value;
//        DM2.TBBoletosBOL_INSTRUCAO5.Value       := DM.TBContasCON_INSTRUCAO5.Value;
//        DM2.TBBoletosBOL_LOCALPAGTO.Value       := DM.TBContasCON_LOCALPAGTO.Value;
//        DM2.TBBoletosBOL_MODALIDADE.Value       := DM.TBContasCON_MODALIDADE.Value;
//        DM2.TBBoletosBOL_MORACODIGO.Value       := DM.TBContasCON_MORACODIGO.Value;
//        DM2.TBBoletosBOL_MORAJUROS.Value        := DM.TBContasCON_MORAJUROS.Value;
//        DM2.TBBoletosBOL_MORATIPO.Value         := DM.TBContasCON_MORATIPO.Value;
//        DM2.TBBoletosBOL_MULTA.Value            := DM.TBContasCON_MULTA.Value;
//        DM2.TBBoletosBOL_MULTATIPO.Value        := DM.TBContasCON_MULTATIPO.Value;
//        DM2.TBBoletosBOL_NOME.Value             := DM.TBClientesCLI_NOME.Value;
//        DM2.TBBoletosBOL_NUMERO.Value           := DM.TBClientesCLI_NUMERO.Value;
//        DM2.TBBoletosBOL_PROTESTOCODIGO.Value   := DM.TBContasCON_PROTESTOCODIGO.Value;
//        DM2.TBBoletosBOL_PROTESTOTIPO.Value     := DM.TBContasCON_PROTESTOTIPO.Value;
//        DM2.TBBoletosBOL_TIPOPESSOA.Value       := DM.TBClientesCLI_TIPOPESSOA.Value;
//        DM2.TBBoletosBOL_VALORBOLETO.Value      := DM.TBContasCON_VALORBOLETO.Value;
//        DM2.TBBoletosBAN_NOME.Value             := DM.TBContasBAN_NOME.Value;
//        DM2.TBBoletosCON_AGENCIA.Value          := DM.TBContasCON_AGENCIA.Value;
//        DM2.TBBoletosCON_AGENCIADIGITO.Value    := DM.TBContasCON_AGENCIADIGITO.Value;
//        DM2.TBBoletosCON_BANCO.Value            := DM.TBContasCON_BANCO.Value;
//        DM2.TBBoletosCON_CEDENTE.Value          := DM.TBContasCON_CEDENTE.Value;
//        DM2.TBBoletosCON_CEDENTENOME.Value      := DM.TBContasCON_CEDENTENOME.Value;
//        DM2.TBBoletosCON_CEDENTEDIGITO.Value    := DM.TBContasCON_CEDENTEDIGITO.Value;
//        DM2.TBBoletosCON_CONTA.Value            := DM.TBContasCON_CONTA.Value;
//        DM2.TBBoletosCON_CONTADIGITO.Value      := DM.TBContasCON_CONTADIGITO.Value;
//        DM2.TBBoletosCON_NOME.Value             := DM.TBContasCON_NOME.Value;
//        DM2.TBBoletosCON_TIPOCOBRANCA.Value     := DM.TBContasCON_TIPOCOBRANCA.Value;
//        DM2.TBBoletosCON_VALORBOLETO.Value      := DM.TBContasCON_VALORBOLETO.Value;
//
//        Observacoes := 'BOLETO REFERENTE AO DOCUMENTO ' + QYReceberREE_NUMDOCTO.Value;
//        if QYReceberREE_PARCELAQTDE.Value > 1 then
//          Observacoes := Observacoes +
//            ' - Parcela ' + IntToStr(QYReceberREE_PARCELANUM.Value) +
//            ' de '        + IntToStr(QYReceberREE_PARCELAQTDE.Value);
//        DM2.TBBoletosBOL_OBSERVACOES.Value := Observacoes;
//
//        DM2.TBBoletos.Post;
//        CodigoBoleto := DM2.TBBoletosBOL_CODIGO.Value;
//
//        { Item do boleto }
//        DM2.TBBoletosItens.Insert;
//        DM2.TBBoletosItensBOI_BOLETO.Value  := CodigoBoleto;
//        DM2.TBBoletosItensBOI_RECEBER.Value := QYReceberREE_CODIGO.Value;
//        DM2.TBBoletosItens.Post;
//
//        { Vincula a conta a receber ao boleto }
//        DM.QYAux.Close;
//        DM.QYAux.SQL.Clear;
//        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO = :boleto, REE_CONTA = :conta where REE_CODIGO = :codigo');
//        DM.QYAux.ParamByName('boleto').AsInteger := CodigoBoleto;
//        DM.QYAux.ParamByName('conta').AsInteger  := DM.TBContasCON_CODIGO.Value;
//        DM.QYAux.ParamByName('codigo').AsInteger := QYReceberREE_CODIGO.Value;
//        DM.QYAux.ExecSQL;
//
//        { --- ETAPA 2: REGISTRAR O BOLETO VIA API --- }
//        { Posiciona o QYBoletos no boleto recém-criado para leitura dos campos }
//        QYBoletos.Close;
//        QYBoletos.SQL.Clear;
//        QYBoletos.SQL.Add(
//          'select b.*, c.*, ban.BAN_NOME from BOLETOS b ' +
//          'left join CONTAS c   on b.BOL_CONTA  = c.CON_CODIGO ' +
//          'left join BANCOS ban on c.CON_BANCO   = ban.BAN_CODIGO ' +
//          'where b.BOL_CODIGO = :codigo');
//        QYBoletos.ParamByName('codigo').AsInteger := CodigoBoleto;
//        QYBoletos.Open;
//
//        ACBrBoleto1.ListadeBoletos.Clear;
//        Titulo := ACBrBoleto1.CriarTituloNaLista;
//
//        { Aceite }
//        if QYBoletosBOL_ACEITE.Value = 'A' then
//          Titulo.Aceite := atSim
//        else
//          Titulo.Aceite := atNao;
//
//        Titulo.CaracTitulo      := tcSimples;
//        Titulo.Carteira         := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
//        Titulo.CarteiraEnvio    := tceCedente;
//
//        if DM.TBContasCON_BANCO.Value = 748 then
//          Titulo.CodigoGeracao  := '2'
//        else
//          Titulo.CodigoGeracao  := '01';
//
//        Titulo.CodigoLiquidacao := '1';
//
//        { Desconto }
//        Titulo.CodigoDesconto := cdSemDesconto;
//        if QYBoletosBOL_DESCONTOTIPO.Value = 'PERCENTUAL' then Titulo.CodigoDesconto := cdPercentual else
//        if QYBoletosBOL_DESCONTOTIPO.Value = 'VALOR FIXO'  then Titulo.CodigoDesconto := cdValorFixo;
//
//        { Multa }
//        Titulo.CodigoMulta := cmIsento;
//        if QYBoletosBOL_MULTATIPO.Value = 'PERCENTUAL' then Titulo.CodigoMulta := cmPercentual else
//        if QYBoletosBOL_MULTATIPO.Value = 'VALOR FIXO'  then Titulo.CodigoMulta := cmValorFixo;
//
//        { Mora/Juros }
//        Titulo.CodigoMoraJuros := cjIsento;
//        if QYBoletosBOL_MORATIPO.Value = 'TAXA DIARIA'  then Titulo.CodigoMoraJuros := cjTaxaDiaria  else
//        if QYBoletosBOL_MORATIPO.Value = 'TAXA MENSAL'  then Titulo.CodigoMoraJuros := cjTaxaMensal  else
//        if QYBoletosBOL_MORATIPO.Value = 'VALOR DIA'    then Titulo.CodigoMoraJuros := cjValorDia    else
//        if QYBoletosBOL_MORATIPO.Value = 'VALOR MENSAL' then Titulo.CodigoMoraJuros := cjValorMensal;
//
//        { Negativação / Protesto }
//        Titulo.CodigoNegativacao := cnNenhum;
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'CANCELAMENTO'      then Titulo.CodigoNegativacao := cnCancelamento    else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'NAO NEGATIVAR'     then Titulo.CodigoNegativacao := cnNaoNegativar    else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'NAO PROTESTAR'     then Titulo.CodigoNegativacao := cnNaoProtestar    else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR CORRIDO' then Titulo.CodigoNegativacao := cnNegativar       else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR UTEIS'   then Titulo.CodigoNegativacao := cnNegativarUteis  else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR CORRIDO' then Titulo.CodigoNegativacao := cnProtestarCorrido else
//        if QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR UTEIS'   then Titulo.CodigoNegativacao := cnProtestarUteis;
//
//        { Datas }
//        Titulo.DataAbatimento    := 0;
//        Titulo.DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
//        Titulo.DataCredito       := 0;
//        Titulo.DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;
//        Titulo.DataOcorrencia    := 0;
//        Titulo.DataProcessamento := Now;
//
//        if DM.TBContasCON_BANCO.Value = 077 then
//          Titulo.DataLimitePagto := QYBoletosBOL_DTVENCIMENTO.Value + QYBoletosBOL_DIASBAIXA.Value;
//
//        if QYBoletosBOL_MORATIPO.Value <> 'ISENTO' then
//          Titulo.DataMoraJuros := QYBoletosBOL_DTJUROSAPOS.Value;
//
//        if QYBoletosBOL_MULTATIPO.Value <> 'ISENTO' then
//          Titulo.DataMulta := QYBoletosBOL_DTVENCIMENTO.Value + 1;
//
//        if QYBoletosBOL_PROTESTOTIPO.Value <> 'NENHUM' then
//        begin
//          if (QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR CORRIDO') or
//             (QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR UTEIS') then
//            Titulo.DataNegativacao := QYBoletosBOL_DTPROTESTO.Value;
//
//          if (QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR CORRIDO') or
//             (QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR UTEIS') then
//            Titulo.DataProtesto := QYBoletosBOL_DTPROTESTO.Value;
//        end;
//
//        { Espécie }
//        if Copy(QYBoletosBOL_ESPECIEDOC.Value, 1, 2) = '02' then Titulo.EspecieDoc := 'DM';
//        if Copy(QYBoletosBOL_ESPECIEDOC.Value, 1, 2) = '03' then Titulo.EspecieDoc := 'DMI';
//        Titulo.EspecieMod := '';
//
//        { Instruções e mensagens }
//        Titulo.Instrucao1     := QYBoletosBOL_INSTRUCAO1.Value;
//        Titulo.Instrucao2     := QYBoletosBOL_INSTRUCAO2.Value;
//        Titulo.Instrucao3     := QYBoletosBOL_INSTRUCAO3.Value;
//        Titulo.LocalPagamento := QYBoletosBOL_LOCALPAGTO.Value;
//        Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
//        Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
//        Titulo.MultaValorFixo := False;
//
//        { Nosso número }
//        if QYBoletosCON_NOSSONUMFORMATAR.Value = 'S' then
//          Titulo.NossoNumero := AlignText(IntToStr(CodigoBoleto), '0', QYBoletosCON_NOSSONUMDIGITOS.Value, taRight)
//        else
//          Titulo.NossoNumero := IntToStr(CodigoBoleto);
//
//        Titulo.NossoNumeroCorrespondente := '';
//        Titulo.NumeroDocumento           := IntToStr(CodigoBoleto);
//        Titulo.OcorrenciaOriginal.Tipo   := toRemessaRegistrar;
//        Titulo.Parcela                   := 0;
//        Titulo.PercentualMulta           := QYBoletosBOL_MULTA.AsExtended;
//        Titulo.Referencia                := '';
//
//        { Sacado }
//        Titulo.Sacado.Bairro    := Copy(QYBoletosBOL_BAIRRO.Value, 1, 40);
//        Titulo.Sacado.CEP       := LimparFormatacao(QYBoletosBOL_CEP.Value);
//        Titulo.Sacado.Cidade    := QYBoletosBOL_CIDADE.Value;
//        if QYBoletosBOL_TIPOPESSOA.Value = 'J' then
//        begin
//          Titulo.Sacado.CNPJCPF := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
//          Titulo.Sacado.Pessoa  := pJuridica;
//        end
//        else
//        begin
//          Titulo.Sacado.CNPJCPF := LimparFormatacao(QYBoletosBOL_CPF.Value);
//          Titulo.Sacado.Pessoa  := pFisica;
//        end;
//        Titulo.Sacado.Email       := '';
//        Titulo.Sacado.Fone        := '';
//        Titulo.Sacado.UF          := QYBoletosBOL_ESTADO.Value;
//        Titulo.Sacado.Logradouro  := Copy(QYBoletosBOL_ENDERECO.Value, 1, 40);
//        Titulo.Sacado.NomeSacado  := QYBoletosBOL_NOME.Value;
//        Titulo.Sacado.Numero      := QYBoletosBOL_NUMERO.Value;
//        Titulo.SeuNumero          := IntToStr(CodigoBoleto);
//        Titulo.TextoLivre         := '';
//        Titulo.TipoDiasProtesto   := diCorridos;
//        Titulo.TipoDiasNegativacao:= diCorridos;
//        Titulo.TipoImpressao      := tipNormal;
//
//        { Valores }
//        Titulo.ValorAbatimento        := 0;
//        Titulo.ValorDescontoAntDia    := 0;
//        Titulo.ValorDespesaCobranca   := 0;
//        Titulo.ValorDocumento         := QYBoletosBOL_VALORTOTAL.AsExtended;
//        Titulo.ValorIOF               := 0;
//        Titulo.ValorMoraJuros         := QYBoletosBOL_MORAJUROS.AsExtended;
//        Titulo.ValorOutrosCreditos    := 0;
//        Titulo.ValorOutrasDespesas    := 0;
//        Titulo.ValorPago              := 0;
//        Titulo.ValorRecebido          := 0;
//        Titulo.Vencimento             := QYBoletosBOL_DTVENCIMENTO.Value;
//
//        { Envia para o banco via API }
//        ACBrBoleto1.Configuracoes.WebService.Operacao := tpInclui;
//        ACBrBoleto1.Enviar;
//
//        { --- ETAPA 3: PROCESSAR RETORNO DA API --- }
//        if ACBrBoleto1.TotalListaRetornoWeb > 0 then
//        begin
//          for I := 0 to Pred(ACBrBoleto1.TotalListaRetornoWeb) do
//          begin
//            Memo1.Lines.Add('Retorno HTTP: ' + IntToStr(ACBrBoleto1.ListaRetornoWeb[I].HTTPResultCode));
//            Memo1.Lines.Add('JSON: ' + ACBrBoleto1.ListaRetornoWeb[I].JSON);
//
//            { Rejeições }
//            for J := 0 to Pred(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao.Count) do
//            begin
//              Memo1.Lines.Add('Boleto rejeitado -> ' + CodigoBoleto.ToString + ' - ' +
//                ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem);
//              TBResultados.Insert;
//              TBResultadosBoleto.Value        := CodigoBoleto;
//              TBResultadosCliente.Value       := QYReceberREE_CLIENTE.Value;
//              TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//              TBResultadosValorPago.Value     := 0;
//              TBResultadosStatus.Value        := 'A';
//              TBResultadosStatusConsulta.Value:= '';
//              TBResultadosMensagem.Value      :=
//                UpperCase(RemoveAcentos(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem));
//              TBResultados.Post;
//            end;
//
//            { Banco Inter: usa NossoNumeroCorrespondente como indicador de sucesso }
//            if (DM.TBContasCON_BANCO.Value = 077) and
//               (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente <> '') then
//            begin
//              DM.QYAux.Close;
//              DM.QYAux.SQL.Clear;
//              DM.QYAux.SQL.Add(
//                'update BOLETOS set ' +
//                '  BOL_LINHADIGITAVEL   = :linhadigitavel, ' +
//                '  BOL_NOSSONUMERO      = :nossonumero,    ' +
//                '  BOL_QRCODEPIX        = :qrcode,         ' +
//                '  BOL_CODIGOBARRAS     = :codigobarras,   ' +
//                '  BOL_CODIGOSOLICITACAO= :solicitacao      ' +
//                'where BOL_CODIGO = :codigo');
//              DM.QYAux.ParamByName('codigo').AsInteger         := CodigoBoleto;
//              DM.QYAux.ParamByName('codigobarras').AsString    := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras;
//              DM.QYAux.ParamByName('linhadigitavel').AsString  :=
//                FormatarString('LINHADIGITAVEL', ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.LinhaDig);
//              DM.QYAux.ParamByName('nossonumero').AsString     := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumero;
//              DM.QYAux.ParamByName('solicitacao').AsString     :=
//                ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente;
//              DM.QYAux.ParamByName('qrcode').AsString          := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
//              DM.QYAux.ExecSQL;
//
//              Memo1.Lines.Add('Boleto REGISTRADO OK -> ' + CodigoBoleto.ToString);
//              TBResultados.Insert;
//              TBResultadosBoleto.Value        := CodigoBoleto;
//              TBResultadosCliente.Value       := QYReceberREE_CLIENTE.Value;
//              TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//              TBResultadosValorPago.Value     := 0;
//              TBResultadosStatus.Value        := 'A';
//              TBResultadosStatusConsulta.Value:= '';
//              TBResultadosMensagem.Value      := 'BOLETO GERADO E REGISTRADO COM SUCESSO.';
//              TBResultados.Post;
//            end
//            { Demais bancos: usa CodBarras como indicador de sucesso }
//            else
//            if (DM.TBContasCON_BANCO.Value <> 077) and
//               (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras <> '') then
//            begin
//              DM.QYAux.Close;
//              DM.QYAux.SQL.Clear;
//              DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX = :qrcode where BOL_CODIGO = :codigo');
//              DM.QYAux.ParamByName('codigo').AsInteger := CodigoBoleto;
//              DM.QYAux.ParamByName('qrcode').AsString  := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
//              DM.QYAux.ExecSQL;
//
//              Memo1.Lines.Add('Boleto REGISTRADO OK -> ' + CodigoBoleto.ToString);
//              TBResultados.Insert;
//              TBResultadosBoleto.Value        := CodigoBoleto;
//              TBResultadosCliente.Value       := QYReceberREE_CLIENTE.Value;
//              TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//              TBResultadosValorPago.Value     := 0;
//              TBResultadosStatus.Value        := 'A';
//              TBResultadosStatusConsulta.Value:= '';
//              TBResultadosMensagem.Value      := 'BOLETO GERADO E REGISTRADO COM SUCESSO.';
//              TBResultados.Post;
//            end
//            { Sem retorno definitivo: boleto gerado mas pendente de verificação }
//            else
//            begin
//              Memo1.Lines.Add('Boleto gerado mas sem retorno definitivo -> ' + CodigoBoleto.ToString);
//              TBResultados.Insert;
//              TBResultadosBoleto.Value        := CodigoBoleto;
//              TBResultadosCliente.Value       := QYReceberREE_CLIENTE.Value;
//              TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//              TBResultadosValorPago.Value     := 0;
//              TBResultadosStatus.Value        := 'A';
//              TBResultadosStatusConsulta.Value:= '';
//              TBResultadosMensagem.Value      := 'BOLETO GERADO. VERIFIQUE A ABA RETORNOS WEBSERVICE.';
//              TBResultados.Post;
//            end;
//          end;
//        end;
//
//        Boletos := Boletos + ',' + IntToStr(CodigoBoleto);
//        Application.ProcessMessages;
//        QYReceber.Next;
//      end; { while QYReceber }
//    end
//    { =========================================================
//        BOLETO COLETIVO (todas as parcelas em um único boleto)
//      ========================================================= }
//    else
//    begin
//      DM2.TBBoletos.Insert;
//      DM2.TBBoletosBOL_BAIRRO.Value          := DM.TBClientesCLI_BAIRRO.Value;
//      DM2.TBBoletosBOL_BAIXACODIGO.Value      := DM.TBContasCON_BAIXACODIGO.Value;
//      DM2.TBBoletosBOL_CARTEIRA.Value         := DM.TBContasCON_CARTEIRA.Value;
//      DM2.TBBoletosBOL_CARTEIRACOD.Value      := DM.TBContasCON_CARTEIRACOD.Value;
//      DM2.TBBoletosBOL_CEP.Value              := DM.TBClientesCLI_CEP.Value;
//      DM2.TBBoletosBOL_CIDADE.Value           := DM.TBClientesCLI_CIDADE.Value;
//      DM2.TBBoletosBOL_CLIENTE.Value          := QYReceberREE_CLIENTE.Value;
//      DM2.TBBoletosBOL_CNPJ.Value             := DM.TBClientesCLI_CNPJ.Value;
//      DM2.TBBoletosBOL_COMPLEMENTO.Value      := DM.TBClientesCLI_COMPLEMENTO.Value;
//      DM2.TBBoletosBOL_CONTA.Value            := DM.TBContasCON_CODIGO.Value;
//      DM2.TBBoletosBOL_CONVENIO.Value         := DM.TBContasCON_CONVENIO.Value;
//      DM2.TBBoletosBOL_CPF.Value              := DM.TBClientesCLI_CPF.Value;
//      DM2.TBBoletosBOL_DESCONTOTIPO.Value     := DM.TBContasCON_DESCONTOTIPO.Value;
//      DM2.TBBoletosBOL_DIASBAIXA.Value        := DM.TBContasCON_DIASBAIXA.Value;
//      DM2.TBBoletosBOL_DIASPROTESTO.Value     := DM.TBContasCON_DIASPROTESTO.Value;
//      DM2.TBBoletosBOL_DTVENCIMENTO.Value     := StrToDate(MaskEdit1.Text, FS);
//      DM2.TBBoletosBOL_DTJUROSAPOS.Value      := StrToDate(MaskEdit2.Text, FS);
//      DM2.TBBoletosBOL_ENDERECO.Value         := DM.TBClientesCLI_ENDERECO.Value;
//      DM2.TBBoletosBOL_ESPECIE.Value          := DM.TBContasCON_ESPECIE.Value;
//      DM2.TBBoletosBOL_ESPECIEDOC.Value       := DM.TBContasCON_ESPECIEDOC.Value;
//      DM2.TBBoletosBOL_ESTADO.Value           := DM.TBClientesCLI_ESTADO.Value;
//      DM2.TBBoletosBOL_INSTRUCAO1.Value       := DM.TBContasCON_INSTRUCAO1.Value;
//      DM2.TBBoletosBOL_INSTRUCAO2.Value       := DM.TBContasCON_INSTRUCAO2.Value;
//      DM2.TBBoletosBOL_INSTRUCAO3.Value       := DM.TBContasCON_INSTRUCAO3.Value;
//      DM2.TBBoletosBOL_INSTRUCAO4.Value       := DM.TBContasCON_INSTRUCAO4.Value;
//      DM2.TBBoletosBOL_INSTRUCAO5.Value       := DM.TBContasCON_INSTRUCAO5.Value;
//      DM2.TBBoletosBOL_LOCALPAGTO.Value       := DM.TBContasCON_LOCALPAGTO.Value;
//      DM2.TBBoletosBOL_MODALIDADE.Value       := DM.TBContasCON_MODALIDADE.Value;
//      DM2.TBBoletosBOL_MORACODIGO.Value       := DM.TBContasCON_MORACODIGO.Value;
//      DM2.TBBoletosBOL_MORAJUROS.Value        := DM.TBContasCON_MORAJUROS.Value;
//      DM2.TBBoletosBOL_MORATIPO.Value         := DM.TBContasCON_MORATIPO.Value;
//      DM2.TBBoletosBOL_MULTA.Value            := DM.TBContasCON_MULTA.Value;
//      DM2.TBBoletosBOL_MULTATIPO.Value        := DM.TBContasCON_MULTATIPO.Value;
//      DM2.TBBoletosBOL_NOME.Value             := DM.TBClientesCLI_NOME.Value;
//      DM2.TBBoletosBOL_NUMERO.Value           := DM.TBClientesCLI_NUMERO.Value;
//      DM2.TBBoletosBOL_PROTESTOCODIGO.Value   := DM.TBContasCON_PROTESTOCODIGO.Value;
//      DM2.TBBoletosBOL_PROTESTOTIPO.Value     := DM.TBContasCON_PROTESTOTIPO.Value;
//      DM2.TBBoletosBOL_TIPOPESSOA.Value       := DM.TBClientesCLI_TIPOPESSOA.Value;
//      DM2.TBBoletosBOL_VALORBOLETO.Value      := DM.TBContasCON_VALORBOLETO.Value;
//      DM2.TBBoletosBAN_NOME.Value             := DM.TBContasBAN_NOME.Value;
//      DM2.TBBoletosCON_AGENCIA.Value          := DM.TBContasCON_AGENCIA.Value;
//      DM2.TBBoletosCON_AGENCIADIGITO.Value    := DM.TBContasCON_AGENCIADIGITO.Value;
//      DM2.TBBoletosCON_BANCO.Value            := DM.TBContasCON_BANCO.Value;
//      DM2.TBBoletosCON_CEDENTE.Value          := DM.TBContasCON_CEDENTE.Value;
//      DM2.TBBoletosCON_CEDENTENOME.Value      := DM.TBContasCON_CEDENTENOME.Value;
//      DM2.TBBoletosCON_CEDENTEDIGITO.Value    := DM.TBContasCON_CEDENTEDIGITO.Value;
//      DM2.TBBoletosCON_CONTA.Value            := DM.TBContasCON_CONTA.Value;
//      DM2.TBBoletosCON_CONTADIGITO.Value      := DM.TBContasCON_CONTADIGITO.Value;
//      DM2.TBBoletosCON_NOME.Value             := DM.TBContasCON_NOME.Value;
//      DM2.TBBoletosCON_TIPOCOBRANCA.Value     := DM.TBContasCON_TIPOCOBRANCA.Value;
//      DM2.TBBoletosCON_VALORBOLETO.Value      := DM.TBContasCON_VALORBOLETO.Value;
//      DM2.TBBoletos.Post;
//
//      CodigoBoleto := DM2.TBBoletosBOL_CODIGO.Value;
//
//      { Itens e vínculos do boleto coletivo }
//      QYReceber.First;
//      Observacoes := 'BOLETO REFERENTE AO(S) DOCUMENTO(S)';
//      while not QYReceber.Eof do
//      begin
//        DM2.TBBoletosItens.Insert;
//        DM2.TBBoletosItensBOI_BOLETO.Value  := CodigoBoleto;
//        DM2.TBBoletosItensBOI_RECEBER.Value := QYReceberREE_CODIGO.Value;
//        DM2.TBBoletosItens.Post;
//        Observacoes := Observacoes + ' ' + QYReceberREE_NUMDOCTO.Value;
//
//        DM.QYAux.Close;
//        DM.QYAux.SQL.Clear;
//        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO = :boleto, REE_CONTA = :conta where REE_CODIGO = :codigo');
//        DM.QYAux.ParamByName('boleto').AsInteger := CodigoBoleto;
//        DM.QYAux.ParamByName('conta').AsInteger  := DM.TBContasCON_CODIGO.Value;
//        DM.QYAux.ParamByName('codigo').AsInteger := QYReceberREE_CODIGO.Value;
//        DM.QYAux.ExecSQL;
//        QYReceber.Next;
//      end;
//      DM2.TBBoletos.Edit;
//      DM2.TBBoletosBOL_OBSERVACOES.Value := Observacoes;
//      DM2.TBBoletos.Post;
//
//      { Registra o boleto coletivo via API — mesma lógica acima }
//      QYBoletos.Close;
//      QYBoletos.SQL.Clear;
//      QYBoletos.SQL.Add(
//        'select b.*, c.*, ban.BAN_NOME from BOLETOS b ' +
//        'left join CONTAS c   on b.BOL_CONTA  = c.CON_CODIGO ' +
//        'left join BANCOS ban on c.CON_BANCO   = ban.BAN_CODIGO ' +
//        'where b.BOL_CODIGO = :codigo');
//      QYBoletos.ParamByName('codigo').AsInteger := CodigoBoleto;
//      QYBoletos.Open;
//
//      ACBrBoleto1.ListadeBoletos.Clear;
//      Titulo := ACBrBoleto1.CriarTituloNaLista;
//
//      if QYBoletosBOL_ACEITE.Value = 'A' then Titulo.Aceite := atSim else Titulo.Aceite := atNao;
//      Titulo.CaracTitulo      := tcSimples;
//      Titulo.Carteira         := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
//      Titulo.CarteiraEnvio    := tceCedente;
//      if DM.TBContasCON_BANCO.Value = 748 then Titulo.CodigoGeracao := '2' else Titulo.CodigoGeracao := '01';
//      Titulo.CodigoLiquidacao := '1';
//
//      Titulo.CodigoDesconto := cdSemDesconto;
//      if QYBoletosBOL_DESCONTOTIPO.Value = 'PERCENTUAL' then Titulo.CodigoDesconto := cdPercentual else
//      if QYBoletosBOL_DESCONTOTIPO.Value = 'VALOR FIXO'  then Titulo.CodigoDesconto := cdValorFixo;
//
//      Titulo.CodigoMulta := cmIsento;
//      if QYBoletosBOL_MULTATIPO.Value = 'PERCENTUAL' then Titulo.CodigoMulta := cmPercentual else
//      if QYBoletosBOL_MULTATIPO.Value = 'VALOR FIXO'  then Titulo.CodigoMulta := cmValorFixo;
//
//      Titulo.CodigoMoraJuros := cjIsento;
//      if QYBoletosBOL_MORATIPO.Value = 'TAXA DIARIA'  then Titulo.CodigoMoraJuros := cjTaxaDiaria  else
//      if QYBoletosBOL_MORATIPO.Value = 'TAXA MENSAL'  then Titulo.CodigoMoraJuros := cjTaxaMensal  else
//      if QYBoletosBOL_MORATIPO.Value = 'VALOR DIA'    then Titulo.CodigoMoraJuros := cjValorDia    else
//      if QYBoletosBOL_MORATIPO.Value = 'VALOR MENSAL' then Titulo.CodigoMoraJuros := cjValorMensal;
//
//      Titulo.CodigoNegativacao := cnNenhum;
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'CANCELAMENTO'      then Titulo.CodigoNegativacao := cnCancelamento     else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'NAO NEGATIVAR'     then Titulo.CodigoNegativacao := cnNaoNegativar     else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'NAO PROTESTAR'     then Titulo.CodigoNegativacao := cnNaoProtestar     else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR CORRIDO' then Titulo.CodigoNegativacao := cnNegativar        else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR UTEIS'   then Titulo.CodigoNegativacao := cnNegativarUteis   else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR CORRIDO' then Titulo.CodigoNegativacao := cnProtestarCorrido else
//      if QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR UTEIS'   then Titulo.CodigoNegativacao := cnProtestarUteis;
//
//      Titulo.DataAbatimento    := 0;
//      Titulo.DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
//      Titulo.DataCredito       := 0;
//      Titulo.DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;
//      Titulo.DataOcorrencia    := 0;
//      Titulo.DataProcessamento := Now;
//
//      if DM.TBContasCON_BANCO.Value = 077 then
//        Titulo.DataLimitePagto := QYBoletosBOL_DTVENCIMENTO.Value + QYBoletosBOL_DIASBAIXA.Value;
//      if QYBoletosBOL_MORATIPO.Value <> 'ISENTO' then
//        Titulo.DataMoraJuros := QYBoletosBOL_DTJUROSAPOS.Value;
//      if QYBoletosBOL_MULTATIPO.Value <> 'ISENTO' then
//        Titulo.DataMulta := QYBoletosBOL_DTVENCIMENTO.Value + 1;
//      if QYBoletosBOL_PROTESTOTIPO.Value <> 'NENHUM' then
//      begin
//        if (QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR CORRIDO') or
//           (QYBoletosBOL_PROTESTOTIPO.Value = 'NEGATIVAR UTEIS') then
//          Titulo.DataNegativacao := QYBoletosBOL_DTPROTESTO.Value;
//        if (QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR CORRIDO') or
//           (QYBoletosBOL_PROTESTOTIPO.Value = 'PROTESTAR UTEIS') then
//          Titulo.DataProtesto := QYBoletosBOL_DTPROTESTO.Value;
//      end;
//
//      if Copy(QYBoletosBOL_ESPECIEDOC.Value, 1, 2) = '02' then Titulo.EspecieDoc := 'DM';
//      if Copy(QYBoletosBOL_ESPECIEDOC.Value, 1, 2) = '03' then Titulo.EspecieDoc := 'DMI';
//      Titulo.EspecieMod     := '';
//      Titulo.Instrucao1     := QYBoletosBOL_INSTRUCAO1.Value;
//      Titulo.Instrucao2     := QYBoletosBOL_INSTRUCAO2.Value;
//      Titulo.Instrucao3     := QYBoletosBOL_INSTRUCAO3.Value;
//      Titulo.LocalPagamento := QYBoletosBOL_LOCALPAGTO.Value;
//      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
//      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
//      Titulo.MultaValorFixo := False;
//
//      if QYBoletosCON_NOSSONUMFORMATAR.Value = 'S' then
//        Titulo.NossoNumero := AlignText(IntToStr(CodigoBoleto), '0', QYBoletosCON_NOSSONUMDIGITOS.Value, taRight)
//      else
//        Titulo.NossoNumero := IntToStr(CodigoBoleto);
//
//      Titulo.NossoNumeroCorrespondente := '';
//      Titulo.NumeroDocumento           := IntToStr(CodigoBoleto);
//      Titulo.OcorrenciaOriginal.Tipo   := toRemessaRegistrar;
//      Titulo.Parcela                   := 0;
//      Titulo.PercentualMulta           := QYBoletosBOL_MULTA.AsExtended;
//      Titulo.Referencia                := '';
//      Titulo.Sacado.Bairro             := Copy(QYBoletosBOL_BAIRRO.Value, 1, 40);
//      Titulo.Sacado.CEP                := LimparFormatacao(QYBoletosBOL_CEP.Value);
//      Titulo.Sacado.Cidade             := QYBoletosBOL_CIDADE.Value;
//      if QYBoletosBOL_TIPOPESSOA.Value = 'J' then
//      begin
//        Titulo.Sacado.CNPJCPF := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
//        Titulo.Sacado.Pessoa  := pJuridica;
//      end
//      else
//      begin
//        Titulo.Sacado.CNPJCPF := LimparFormatacao(QYBoletosBOL_CPF.Value);
//        Titulo.Sacado.Pessoa  := pFisica;
//      end;
//      Titulo.Sacado.Email        := '';
//      Titulo.Sacado.Fone         := '';
//      Titulo.Sacado.UF           := QYBoletosBOL_ESTADO.Value;
//      Titulo.Sacado.Logradouro   := Copy(QYBoletosBOL_ENDERECO.Value, 1, 40);
//      Titulo.Sacado.NomeSacado   := QYBoletosBOL_NOME.Value;
//      Titulo.Sacado.Numero       := QYBoletosBOL_NUMERO.Value;
//      Titulo.SeuNumero           := IntToStr(CodigoBoleto);
//      Titulo.TextoLivre          := '';
//      Titulo.TipoDiasProtesto    := diCorridos;
//      Titulo.TipoDiasNegativacao := diCorridos;
//      Titulo.TipoImpressao       := tipNormal;
//      Titulo.ValorAbatimento     := 0;
//      Titulo.ValorDescontoAntDia := 0;
//      Titulo.ValorDespesaCobranca:= 0;
//      Titulo.ValorDocumento      := QYBoletosBOL_VALORTOTAL.AsExtended;
//      Titulo.ValorIOF            := 0;
//      Titulo.ValorMoraJuros      := QYBoletosBOL_MORAJUROS.AsExtended;
//      Titulo.ValorOutrosCreditos := 0;
//      Titulo.ValorOutrasDespesas := 0;
//      Titulo.ValorPago           := 0;
//      Titulo.ValorRecebido       := 0;
//      Titulo.Vencimento          := QYBoletosBOL_DTVENCIMENTO.Value;
//
//      ACBrBoleto1.Configuracoes.WebService.Operacao := tpInclui;
//      ACBrBoleto1.Enviar;
//
//      { Processa retorno da API — boleto coletivo }
//      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
//      begin
//        for I := 0 to Pred(ACBrBoleto1.TotalListaRetornoWeb) do
//        begin
//          Memo1.Lines.Add('Retorno HTTP: ' + IntToStr(ACBrBoleto1.ListaRetornoWeb[I].HTTPResultCode));
//          Memo1.Lines.Add('JSON: ' + ACBrBoleto1.ListaRetornoWeb[I].JSON);
//
//          for J := 0 to Pred(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao.Count) do
//          begin
//            TBResultados.Insert;
//            TBResultadosBoleto.Value        := CodigoBoleto;
//            TBResultadosCliente.Value       := DM2.TBBoletosBOL_CLIENTE.Value;
//            TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//            TBResultadosValorPago.Value     := 0;
//            TBResultadosStatus.Value        := 'A';
//            TBResultadosStatusConsulta.Value:= '';
//            TBResultadosMensagem.Value      :=
//              UpperCase(RemoveAcentos(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem));
//            TBResultados.Post;
//          end;
//
//          if (DM.TBContasCON_BANCO.Value = 077) and
//             (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente <> '') then
//          begin
//            DM.QYAux.Close;
//            DM.QYAux.SQL.Clear;
//            DM.QYAux.SQL.Add(
//              'update BOLETOS set ' +
//              '  BOL_LINHADIGITAVEL    = :linhadigitavel, ' +
//              '  BOL_NOSSONUMERO       = :nossonumero,    ' +
//              '  BOL_QRCODEPIX         = :qrcode,         ' +
//              '  BOL_CODIGOBARRAS      = :codigobarras,   ' +
//              '  BOL_CODIGOSOLICITACAO = :solicitacao      ' +
//              'where BOL_CODIGO = :codigo');
//            DM.QYAux.ParamByName('codigo').AsInteger        := CodigoBoleto;
//            DM.QYAux.ParamByName('codigobarras').AsString   := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras;
//            DM.QYAux.ParamByName('linhadigitavel').AsString :=
//              FormatarString('LINHADIGITAVEL', ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.LinhaDig);
//            DM.QYAux.ParamByName('nossonumero').AsString    := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumero;
//            DM.QYAux.ParamByName('solicitacao').AsString    :=
//              ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente;
//            DM.QYAux.ParamByName('qrcode').AsString         := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
//            DM.QYAux.ExecSQL;
//            TBResultados.Insert;
//            TBResultadosBoleto.Value        := CodigoBoleto;
//            TBResultadosCliente.Value       := DM2.TBBoletosBOL_CLIENTE.Value;
//            TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//            TBResultadosValorPago.Value     := 0;
//            TBResultadosStatus.Value        := 'A';
//            TBResultadosStatusConsulta.Value:= '';
//            TBResultadosMensagem.Value      := 'BOLETO GERADO E REGISTRADO COM SUCESSO.';
//            TBResultados.Post;
//          end
//          else
//          if (DM.TBContasCON_BANCO.Value <> 077) and
//             (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras <> '') then
//          begin
//            DM.QYAux.Close;
//            DM.QYAux.SQL.Clear;
//            DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX = :qrcode where BOL_CODIGO = :codigo');
//            DM.QYAux.ParamByName('codigo').AsInteger := CodigoBoleto;
//            DM.QYAux.ParamByName('qrcode').AsString  := ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
//            DM.QYAux.ExecSQL;
//            TBResultados.Insert;
//            TBResultadosBoleto.Value        := CodigoBoleto;
//            TBResultadosCliente.Value       := DM2.TBBoletosBOL_CLIENTE.Value;
//            TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//            TBResultadosValorPago.Value     := 0;
//            TBResultadosStatus.Value        := 'A';
//            TBResultadosStatusConsulta.Value:= '';
//            TBResultadosMensagem.Value      := 'BOLETO GERADO E REGISTRADO COM SUCESSO.';
//            TBResultados.Post;
//          end
//          else
//          begin
//            TBResultados.Insert;
//            TBResultadosBoleto.Value        := CodigoBoleto;
//            TBResultadosCliente.Value       := DM2.TBBoletosBOL_CLIENTE.Value;
//            TBResultadosNome.Value          := DM.TBClientesCLI_NOME.Value;
//            TBResultadosValorPago.Value     := 0;
//            TBResultadosStatus.Value        := 'A';
//            TBResultadosStatusConsulta.Value:= '';
//            TBResultadosMensagem.Value      := 'BOLETO GERADO. VERIFIQUE A ABA RETORNOS WEBSERVICE.';
//            TBResultados.Post;
//          end;
//        end;
//      end;
//
//      Boletos := Boletos + ',' + IntToStr(CodigoBoleto);
//    end; { boleto coletivo }
//
//  finally
//    Screen.Cursor := crDefault;
//  end;
//
//  MessageDlg('Processo concluído. Verifique os resultados na grade.', mtInformation, [mbOk], 0);
//
//  { Abre tela de impressão/envio se houver boletos gerados }
//  if (Boletos <> '') and
//     (MessageDlg('Deseja enviar e/ou imprimir os boletos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
//  begin
//    Delete(Boletos, 1, 1); { remove a primeira vírgula }
//    Application.CreateForm(TFormBoletosSelecionar, FormBoletosSelecionar);
//    FormBoletosSelecionar.QYBoletos.Close;
//    FormBoletosSelecionar.QYBoletos.SQL.Clear;
//    FormBoletosSelecionar.QYBoletos.SQL.Add(
//      'select BOL_CODIGO, BOL_CLIENTE, BOL_CONTA, BOL_DTVENCIMENTO, ' +
//      '       BOL_NOME, BOL_STATUS, BOL_VALORTOTAL, CON_BANCO         ' +
//      'from BOLETOS                                                     ' +
//      'left join CONTAS on BOL_CONTA = CON_CODIGO                      ' +
//      'where BOL_CODIGO in (' + Boletos + ')                           ' +
//      'order by BOL_NOME, BOL_DTVENCIMENTO');
//    FormBoletosSelecionar.QYBoletos.Open;
//    FormBoletosSelecionar.CarregarBoletos;
//    FormBoletosSelecionar.PngBitBtn5.Click;
//    FormBoletosSelecionar.ShowModal;
//    FormBoletosSelecionar.Free;
//    FormBoletosSelecionar := nil;
//  end;
//
//  Close;
//end;

end.

