unit ReceberGerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  PngSpeedButton, PngBitBtn, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.UITypes;

type
  TFormReceberGerar = class(TForm)
    PngSpeedButton1: TPngSpeedButton;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    PngBitBtn1: TPngBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label10: TLabel;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    Bevel1: TBevel;
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberGerar: TFormReceberGerar;

implementation

{$R *.dfm}

uses DataMod, DataMod2, DataModSearch, ClientesSelecionar, FuncoesFirenet,
  Funcoes1;

procedure TFormReceberGerar.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberGerar.Edit1Exit(Sender: TObject);
begin
  LocContasExit(Edit1,Edit2);
end;

procedure TFormReceberGerar.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormReceberGerar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberGerar.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormReceberGerar.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberGerar.Edit5Exit(Sender: TObject);
begin
  LocReceitasExit(Edit5,Edit6);
end;

procedure TFormReceberGerar.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormReceberGerar.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberGerar.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormReceberGerar.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormReceberGerar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormClientesSelecionar.Free;
  FormClientesSelecionar:=nil;
end;

procedure TFormReceberGerar.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
  ComboBox2.ItemIndex:=1; //boleto.
  Edit4.Text:=DM.TBParametrosPAR_MULTAPORC.AsString;
  Edit7.Text:=DM.TBParametrosPAR_JUROSMENSAL.AsString;
  Edit8.Text:='0';
  Label10.Caption:='Clientes selecionados: 0';
  RadioButton1.Checked:=True;

  //Cria o form de seleção de clientes... no onClose, libera esse form da memória.
  Application.CreateForm(TFormClientesSelecionar, FormClientesSelecionar);
end;

procedure TFormReceberGerar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberGerar.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormReceberGerar.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormReceberGerar.PngBitBtn1Click(Sender: TObject);
begin
  //form já criado no onCreate deste form.
  FormClientesSelecionar.ShowModal;
  Label10.Caption:='Clientes selecionados: '+IntToStr(FormClientesSelecionar.TBSelecao.RecordCount);
end;

procedure TFormReceberGerar.PngBitBtn2Click(Sender: TObject);
begin
  AbortIf(Edit6.Text='','Nenhuma receita selecionada.');
  AbortIf(Edit2.Text='','Nenhuma conta selecionada.');
  AbortIf(StrToCurr(Edit8.Text)<=0,'Valor deve ser maior que zero.');
  AbortIf(FormClientesSelecionar.TBSelecao.RecordCount <= 0,'Nenhum cliente selecionado.');

  if MessageDlg('Confirma a geração das contas a receber?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBClientes.DisableControls;
    DM.TBReceber.DisableControls;
    DM.TBContas.DisableControls;
    DM2.TBBoletosItens.DisableControls;
    DM2.TBBoletos.DisableControls;
    FormClientesSelecionar.TBSelecao.DisableControls;
    FormClientesSelecionar.TBSelecao.First;
    while not FormClientesSelecionar.TBSelecao.Eof do
    begin
      DM.TBReceber.Insert;
      DM.TBReceberREE_CLIENTE.Value:=FormClientesSelecionar.TBSelecaoCLI_CODIGO.Value;
      DM.TBReceberREE_RECEITA.Value:=StrToInt(Edit5.Text);
      DM.TBReceberREE_CONTA.Value:=StrToInt(Edit1.Text);
      DM.TBReceberREE_DESCRICAO.Value:=Edit3.Text;
      DM.TBReceberREE_DTVENCIMENTO.Value:=StrToDate(MaskEdit1.Text,FS);
      DM.TBReceberREE_DTJUROSAPOS.Value:=StrToDate(MaskEdit2.Text,FS);
      DM.TBReceberREE_PORCJUROS.Value:=StrToFloat(Edit7.Text);
      DM.TBReceberREE_TIPODOCTO.Value:=ComboBox2.Text;
      //DM.TBReceberREE_VALORMULTA.Value:=Edit4.Text;
      DM.TBReceberREE_VALOR.Value:=StrToCurr(Edit8.Text);
      DM.TBReceberREE_VENDEDOR.Value:=DM.UsuarioVendedor;
      DM.TBReceber.Post;
      if RadioButton2.Checked then
      begin
        {$REGION 'CRIACAO DO BOLETO'}
        //localiza a conta e o cliente.
        DM.TBContas.Close;
        DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CONTA.Value;
        DM.TBContas.Open;
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
        DM2.TBBoletosBOL_MULTA.Value:=DM.TBContasCON_MULTA.Value;
        DM2.TBBoletosBOL_NOME.Value:=DM.TBClientesCLI_NOME.Value;
        //DM2.TBBoletosBOL_NOSSONUMERO.Value:=IntToStr(DM.TBNfeNFE_CODIGO.Value); //preenche somente com o código da NFe. - acho que nao vai mais precisar.
        DM2.TBBoletosBOL_OBSERVACOES.Value:=DM.TBReceberREE_DESCRICAO.Value;
        DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
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
      FormClientesSelecionar.TBSelecao.Next;
    end;
    DM.TBClientes.EnableControls;
    DM.TBReceber.EnableControls;
    DM.TBContas.EnableControls;
    DM2.TBBoletos.EnableControls;
    DM2.TBBoletosItens.EnableControls;
    FormClientesSelecionar.TBSelecao.EnableControls;
    MessageDlg('Contas geradas.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormReceberGerar.PngBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberGerar.PngSpeedButton1Click(Sender: TObject);
begin
  LocReceitasBotao(Edit5,Edit6);
end;

procedure TFormReceberGerar.PngSpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit1,Edit2);
end;

end.
