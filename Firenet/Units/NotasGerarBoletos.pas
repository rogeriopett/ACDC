unit NotasGerarBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Grids, Vcl.DBGrids, PngSpeedButton, Vcl.DBCtrls, Vcl.ExtCtrls, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNotasGerarBoletos = class(TForm)
    Bevel1: TBevel;
    DBText1: TDBText;
    Label5: TLabel;
    Label1: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn3: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSReceber: TDataSource;
    DSTotalReceber: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
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
    QYReceberREE_TIPODOCTO: TStringField;
    QYReceberREE_USUARIO: TStringField;
    QYReceberREE_VALOR: TFMTBCDField;
    QYReceberREE_VALORJUROS: TFMTBCDField;
    QYReceberREE_VALORMULTA: TFMTBCDField;
    QYReceberREE_VALORORIGINAL: TFMTBCDField;
    QYReceberREE_VALORPAGO: TFMTBCDField;
    QYReceberREE_VENDEDOR: TIntegerField;
    QYReceberCLI_CODIGO: TIntegerField;
    QYReceberCLI_NOME: TStringField;
    QYTotalReceberVALOR: TFMTBCDField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotasGerarBoletos: TFormNotasGerarBoletos;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNotasGerarBoletos.txt';

implementation
uses DataMod, DataMod2, Funcoes1, DataModSearch, FuncoesFirenet;

{$R *.dfm}

procedure TFormNotasGerarBoletos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotasGerarBoletos.BitBtn3Click(Sender: TObject);
var Observacoes: String;
begin
  AbortIf(Edit2.Text='','Selecione a conta bancária.');

  if MessageDlg('Confirma geração do(s) boleto(s)?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //localiza a conta e o cliente.
    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
    DM.TBContas.Open;
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    if CheckBox1.Checked=True then
    begin
      QYReceber.First;
      while not QYReceber.Eof do
      begin
        //capa do boleto. - boletos individuais.
        {$REGION 'BOLETOS INDIVIDUAIS'}
        if not QYReceberREE_CONTA.IsNull then
        begin
          DM.TBContas.Close;
          DM.TBContas.ParamByName('codigo').AsInteger:=QYReceberREE_CONTA.Value;
          DM.TBContas.Open;
          if DM.TBContas.IsEmpty then
          begin
            DM.TBContas.Close;
            DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
            DM.TBContas.Open;
          end;
        end;

        DM2.TBBoletos.Insert;
        DM2.TBBoletosBOL_BAIRRO.Value:=DM.TBClientesCLI_BAIRRO.Value;
        DM2.TBBoletosBOL_CARTEIRA.Value:=DM.TBContasCON_CARTEIRA.Value;
        DM2.TBBoletosBOL_CARTEIRACOD.Value:=DM.TBContasCON_CARTEIRACOD.Value;
        DM2.TBBoletosBOL_CEP.Value:=DM.TBClientesCLI_CEP.Value;
        DM2.TBBoletosBOL_CIDADE.Value:=DM.TBClientesCLI_CIDADE.Value;
        DM2.TBBoletosBOL_CLIENTE.Value:=QYReceberREE_CLIENTE.Value;
        DM2.TBBoletosBOL_CNPJ.Value:=DM.TBClientesCLI_CNPJ.Value;
        DM2.TBBoletosBOL_COMPLEMENTO.Value:=DM.TBClientesCLI_COMPLEMENTO.Value;
        DM2.TBBoletosBOL_CONTA.Value:=DM.TBContasCON_CODIGO.Value;
        DM2.TBBoletosBOL_CONVENIO.Value:=DM.TBContasCON_CONVENIO.Value;
        DM2.TBBoletosBOL_CPF.Value:=DM.TBClientesCLI_CPF.Value;
        DM2.TBBoletosBOL_DESCONTOTIPO.Value:=DM.TBContasCON_DESCONTOTIPO.Value;
        DM2.TBBoletosBOL_DIASBAIXA.Value:=DM.TBContasCON_DIASBAIXA.Value;
        DM2.TBBoletosBOL_DIASPROTESTO.Value:=DM.TBContasCON_DIASPROTESTO.Value;
        DM2.TBBoletosBOL_DTVENCIMENTO.Value:=QYReceberREE_DTVENCIMENTO.Value; //pega da conta a receber.
        DM2.TBBoletosBOL_DTJUROSAPOS.Value:=QYReceberREE_DTJUROSAPOS.Value; //pega da conta a receber.
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
        //DM2.TBBoletosBOL_NOSSONUMERO.Value:= calculado no before post.
        DM2.TBBoletosBOL_NUMERO.Value:=DM.TBClientesCLI_NUMERO.Value;
        Observacoes:='BOLETO REFERENTE AO DOCUMENTO '+QYReceberREE_NUMDOCTO.Value; //QYReceberREE_DESCRICAO.Value;
        if QYReceberREE_PARCELAQTDE.Value>1 then
        Observacoes:=Observacoes+' - Parcela '+IntToStr(QYReceberREE_PARCELANUM.Value)+' de '+IntToStr(QYReceberREE_PARCELAQTDE.Value);
        DM2.TBBoletosBOL_OBSERVACOES.Value:=Observacoes;
        DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
        DM2.TBBoletosBOL_PROTESTOTIPO.Value:=DM.TBContasCON_PROTESTOTIPO.Value;
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
        DM2.TBBoletosItensBOI_RECEBER.Value:=QYReceberREE_CODIGO.Value;
        DM2.TBBoletosItens.Post; //no after post calcula o total do boleto.

        //atualiza a conta a receber com o código do novo boleto.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO=:boleto where REE_CODIGO=:codigo');
        DM.QYAux.ParamByName('boleto').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
        DM.QYAux.ExecSQL;

        QYReceber.Next;
        {$ENDREGION}
      end;
      MessageDlg('Boletos gerados.',mtInformation,[mbOk],0);
      Close;
    end else
    begin
      //capa do boleto. - um boleto só.
      {$REGION 'BOLETOS COLETIVO'}
      DM2.TBBoletos.Insert;
      DM2.TBBoletosBOL_BAIRRO.Value:=DM.TBClientesCLI_BAIRRO.Value;
      DM2.TBBoletosBOL_CARTEIRA.Value:=DM.TBContasCON_CARTEIRA.Value;
      DM2.TBBoletosBOL_CARTEIRACOD.Value:=DM.TBContasCON_CARTEIRACOD.Value;
      DM2.TBBoletosBOL_CEP.Value:=DM.TBClientesCLI_CEP.Value;
      DM2.TBBoletosBOL_CIDADE.Value:=DM.TBClientesCLI_CIDADE.Value;
      DM2.TBBoletosBOL_CLIENTE.Value:=QYReceberREE_CLIENTE.Value;
      DM2.TBBoletosBOL_CNPJ.Value:=DM.TBClientesCLI_CNPJ.Value;
      DM2.TBBoletosBOL_COMPLEMENTO.Value:=DM.TBClientesCLI_COMPLEMENTO.Value;
      DM2.TBBoletosBOL_CONTA.Value:=DM.TBContasCON_CODIGO.Value;
      DM2.TBBoletosBOL_CONVENIO.Value:=DM.TBContasCON_CONVENIO.Value;
      DM2.TBBoletosBOL_CPF.Value:=DM.TBClientesCLI_CPF.Value;
      DM2.TBBoletosBOL_DESCONTOTIPO.Value:=DM.TBContasCON_DESCONTOTIPO.Value;
      DM2.TBBoletosBOL_DIASBAIXA.Value:=DM.TBContasCON_DIASBAIXA.Value;
      DM2.TBBoletosBOL_DIASPROTESTO.Value:=DM.TBContasCON_DIASPROTESTO.Value;
      DM2.TBBoletosBOL_DTVENCIMENTO.Value:=StrToDate(MaskEdit1.Text,FS); //associa a data informada.
      DM2.TBBoletosBOL_DTJUROSAPOS.Value:=StrToDate(MaskEdit2.Text,FS); //associa a data informada.
      DM2.TBBoletosBOL_ENDERECO.Value:=DM.TBClientesCLI_ENDERECO.Value;
      DM2.TBBoletosBOL_ESPECIE.Value:=DM.TBContasCON_ESPECIE.Value;
      DM2.TBBoletosBOL_ESPECIEDOC.Value:=DM.TBContasCON_ESPECIEDOC.Value;
      DM2.TBBoletosBOL_ESTADO.Value:=DM.TBClientesCLI_ESTADO.Value;
      DM2.TBBoletosBOL_INSTRUCAO1.Value:=DM.TBContasCON_INSTRUCAO1.Value;
      DM2.TBBoletosBOL_INSTRUCAO2.Value:=DM.TBContasCON_INSTRUCAO2.Value;
      DM2.TBBoletosBOL_INSTRUCAO3.Value:=DM.TBContasCON_INSTRUCAO3.Value;
      DM2.TBBoletosBOL_INSTRUCAO4.Value:=DM.TBContasCON_INSTRUCAO4.Value;
      DM2.TBBoletosBOL_INSTRUCAO5.Value:=DM.TBContasCON_INSTRUCAO5.Value; //agrupa as parcelas em um boleto só.
      DM2.TBBoletosBOL_LOCALPAGTO.Value:=DM.TBContasCON_LOCALPAGTO.Value;
      DM2.TBBoletosBOL_MODALIDADE.Value:=DM.TBContasCON_MODALIDADE.Value;
      DM2.TBBoletosBOL_MORACODIGO.Value:=DM.TBContasCON_MORACODIGO.Value;
      DM2.TBBoletosBOL_MORAJUROS.Value:=DM.TBContasCON_MORAJUROS.Value;
      DM2.TBBoletosBOL_MORATIPO.Value:=DM.TBContasCON_MORATIPO.Value;
      DM2.TBBoletosBOL_MULTA.Value:=DM.TBContasCON_MULTA.Value;
      DM2.TBBoletosBOL_MULTATIPO.Value:=DM.TBContasCON_MULTATIPO.Value;
      DM2.TBBoletosBOL_NOME.Value:=DM.TBClientesCLI_NOME.Value;
      //DM2.TBBoletosBOL_NOSSONUMERO.Value:=IntToStr(DM.TBNotasNOT_CODIGO.Value); //preenche somente com o código da NFe. - acho que nao vai mais precisar.
      DM2.TBBoletosBOL_NUMERO.Value:=DM.TBClientesCLI_NUMERO.Value;
      //nao preenche este campo no caso de boleto único. DM2.TBBoletosBOL_OBSERVACOES.Value:=QYReceberREE_DESCRICAO.Value;
      DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DM.TBContasCON_PROTESTOCODIGO.Value;
      DM2.TBBoletosBOL_PROTESTOTIPO.Value:=DM.TBContasCON_PROTESTOTIPO.Value;
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
        DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO=:boleto where REE_CODIGO=:codigo');
        DM.QYAux.ParamByName('boleto').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ParamByName('codigo').AsInteger:=QYReceberREE_CODIGO.Value;
        DM.QYAux.ExecSQL;

        QYReceber.Next;
      end;
      //atualiza o boleto com as observacoes.
      DM2.TBBoletos.Edit;
      DM2.TBBoletosBOL_OBSERVACOES.Value:=Observacoes;
      DM2.TBBoletos.Post;
      MessageDlg('Boleto Gerado.',mtInformation,[mbOk],0);
      Close;
      {$ENDREGION}
    end;
  end;
end;

procedure TFormNotasGerarBoletos.CheckBox1Click(Sender: TObject);
begin
  MaskEdit1.Enabled:=not CheckBox1.Checked;
  MaskEdit2.Enabled:=not CheckBox1.Checked;
  Edit1.Enabled:=not CheckBox1.Checked;
  Edit2.Enabled:=not CheckBox1.Checked;
  SpeedButton1.Enabled:=not CheckBox1.Checked;
end;

procedure TFormNotasGerarBoletos.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNotasGerarBoletos.Edit1Exit(Sender: TObject);
begin
  LocContasExit(Edit1,Edit2);
end;

procedure TFormNotasGerarBoletos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNotasGerarBoletos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasGerarBoletos.FormCreate(Sender: TObject);
begin
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  CheckBox1.Checked:=True;
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
  MaskEdit1.Enabled:=not CheckBox1.Checked;
  MaskEdit2.Enabled:=not CheckBox1.Checked;

  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CONDICAO.Value;
  DM.TBCondicoes.Open;

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBCondicoesCPG_CONTA.Value; // DM.TBParametrosPAR_CONTAPADRAO.Value;
  DM.TBContas.Open;

  Edit1.Text:=DM.TBCondicoesCPG_CONTA.Value.ToString;
  Edit2.Text:=DM.TBContasCON_NOME.Value;
end;

procedure TFormNotasGerarBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNotasGerarBoletos.SpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(Edit1,Edit2);
end;

end.
