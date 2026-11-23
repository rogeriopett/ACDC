unit Receber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, DBCtrls, Mask,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormReceber = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    BaixaTotal1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
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
    BaixaTotal1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBMemo1: TDBMemo;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    DBEdit23: TDBEdit;
    DBText3: TDBText;
    DBEdit24: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    DBEdit25: TDBEdit;
    SpeedButton8: TPngSpeedButton;
    BaixaParcial1Button: TPngSpeedButton;
    BaixaParcial1: TMenuItem;
    DBComboBox1: TDBComboBox;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeContas1: TMenuItem;
    CadastroDeTiposDeReceitas1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N3: TMenuItem;
    PreBaixa1: TMenuItem;
    PreBaixa1Button: TPngSpeedButton;
    DBEdit2: TDBEdit;
    Label24: TLabel;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeTiposDeReceitas1Button: TPngSpeedButton;
    CadastroDeContas1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N4: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    ReciboDePagamento1via1: TMenuItem;
    ReciboDePagamento2Vias1: TMenuItem;
    EstornarBaixa1Button: TPngSpeedButton;
    EstornarBaixa1: TMenuItem;
    Label27: TLabel;
    DBText4: TDBText;
    Label28: TLabel;
    DBText5: TDBText;
    CarneDePagamentos1: TMenuItem;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    PngImageList1: TPngImageList;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    CadastroDeBoletos1: TMenuItem;
    CadastroDeBoletos1Button: TPngSpeedButton;
    FluxoDeCaixa1: TMenuItem;
    FluxoDeCaixa1Button: TPngSpeedButton;
    BaixaColetiva1: TMenuItem;
    BaixaColetiva1Button: TPngSpeedButton;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    N6: TMenuItem;
    ComposicaoDoValorAcessorias1: TMenuItem;
    CancelarContaAReceber1: TMenuItem;
    Bevel5: TBevel;
    ComposicaoDoValorAcessorias1Button: TPngSpeedButton;
    CancelarContaAReceber1Button: TPngSpeedButton;
    N7: TMenuItem;
    MultiplicarContaAReceber1: TMenuItem;
    MultiplicarContaAReceber1Button: TPngSpeedButton;
    Bevel6: TBevel;
    DBEdit38: TDBEdit;
    Label39: TLabel;
    GerarBoleto1Button: TPngSpeedButton;
    GerarBoleto1: TMenuItem;
    GerarContasAReceber1: TMenuItem;
    Cadastros1: TMenuItem;
    Label23: TLabel;
    DBEdit26: TDBEdit;
    ContasAReceberPorClientePaisagem1: TMenuItem;
    ContasAReceberPorData1: TMenuItem;
    ContasAReceberPorDataSintetico1: TMenuItem;
    ContasAReceberPorReceitaSintetico1: TMenuItem;
    ContasAReceberPorTipoDeDocumentoSintetico1: TMenuItem;
    ContasAReceberPorVendedor1: TMenuItem;
    ContasAReceberPorVendedorSintetico1: TMenuItem;
    ContasAReceberPorReceitaAnalitico1: TMenuItem;
    ContasAReceberPorClienteRetrato1: TMenuItem;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    Label40: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure BaixaTotal1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BaixaParcial1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PreBaixa1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeTiposDeReceitas1Click(Sender: TObject);
    procedure CadastroDeContas1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ReciboDePagamento1via1Click(Sender: TObject);
    procedure ReciboDePagamento2Vias1Click(Sender: TObject);
    procedure EstornarBaixa1Click(Sender: TObject);
    procedure CarneDePagamentos1Click(Sender: TObject);
    procedure CadastroDeBoletos1Click(Sender: TObject);
    procedure FluxoDeCaixa1Click(Sender: TObject);
    procedure BaixaColetiva1Click(Sender: TObject);
    procedure ComposicaoDoValorAcessorias1Click(Sender: TObject);
    procedure CancelarContaAReceber1Click(Sender: TObject);
    procedure MultiplicarContaAReceber1Click(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure GerarBoleto1Click(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure GerarContasAReceber1Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure ContasAReceberPorClientePaisagem1Click(Sender: TObject);
    procedure ContasAReceberPorData1Click(Sender: TObject);
    procedure ContasAReceberPorDataSintetico1Click(Sender: TObject);
    procedure ContasAReceberPorReceitaSintetico1Click(Sender: TObject);
    procedure ContasAReceberPorTipoDeDocumentoSintetico1Click(Sender: TObject);
    procedure ContasAReceberPorVendedor1Click(Sender: TObject);
    procedure ContasAReceberPorVendedorSintetico1Click(Sender: TObject);
    procedure ContasAReceberPorReceitaAnalitico1Click(Sender: TObject);
    procedure ContasAReceberPorClienteRetrato1Click(Sender: TObject);
    procedure DBEdit39Enter(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit39KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceber: TFormReceber;
  SQLLocalizar: String; //se esta string for <> de nula, apresenta tela de localização com este SQL.

implementation
uses DataMod, Funcoes1, Main, ReceberLoc, ReceberBaixar, ReceberRel,
  ReceberBaixarPre, Clientes, Receitas, Contas, Vendedores, FuncoesFirenet, Boletos,
  Caixa, ReceberBaixaColetiva, ReceberItens, ReceberItensVer, ReceberMultiplicar,
  DataModSearch, DataMod2, ReceberGerar, ReceberFast;

{$R *.dfm}

procedure TFormReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBReceber.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceber.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceber.FluxoDeCaixa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixa, FormCaixa);
  FormCaixa.ShowModal;
  FormCaixa.Free;
  FormCaixa:=nil;
end;

procedure TFormReceber.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormReceber);
end;

procedure TFormReceber.GerarBoleto1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta a receber selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value<>'A','Somente contas a receber em aberto podem gerar boleto.');
  AbortIf(DM.TBReceberREE_CONTA.Value<=0,'Esta conta a receber não tem uma conta bancária informada.');

  if not DM.TBReceberREE_BOLETO.IsNull then
  begin
    if MessageDlg('Já existe o boleto número '+DM.TBReceberREE_BOLETO.Value.ToString+' associado a essa conta a receber. Se você gerar novo boleto, o número atual será atualizado para o novo boleto.'+#13#10+'Deseja continuar e gerar novo boleto?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    Exit;
  end;
  if MessageDlg('Gerar boleto desta conta a receber?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
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
    DM2.TBBoletosBOL_DESCONTOTIPO.Value:=DM.TBContasCON_DESCONTOTIPO.Value;
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

    //atualiza o número do boleto gerado na tabela da conta a receber.
    DM.TBReceber.Edit;
    DM.TBReceberREE_BOLETO.Value:=DM2.TBBoletosBOL_CODIGO.Value;
    DM.TBReceber.Post;

    Application.CreateForm(TFormBoletos, FormBoletos);
    FormBoletos.ShowModal;
    FormBoletos.Free;
    FormBoletos:=nil;
  end;
end;

procedure TFormReceber.GerarContasAReceber1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberGerar, FormReceberGerar);
  FormReceberGerar.ShowModal;
  FormReceberGerar.Free;
  FormReceberGerar:=nil;
end;

procedure TFormReceber.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.ShowModal;
  if ReceberLoc.Procurar=True then
  begin
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=FormReceberLoc.QYReceberREE_CODIGO.Value;
    DM.TBReceber.Open;

    DM.TBReceberItens.Close;
    DM.TBReceberItens.Open;
  end;
  FormReceberLoc.Free;
  FormReceberLoc:=nil;
end;

procedure TFormReceber.MultiplicarContaAReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta a receber selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value<>'A','Somente contas a receber em aberto podem ser multiplicadas.');
  AbortIf(DM.TBReceberREE_PARCELANUM.Value<>1,'Somente as parcelas de número 01 (um) podem ser multiplicadas.');
  AbortIf(DM.TBReceberREE_PARCELAQTDE.Value<=1,'O campo Quantidade de Parcelas deve ser maior que 01 (um).');

  Application.CreateForm(TFormReceberMultiplicar, FormReceberMultiplicar);
  FormReceberMultiplicar.ShowModal;
  FormReceberMultiplicar.Free;
  FormReceberMultiplicar:=nil;
end;

procedure TFormReceber.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.BaixaTotal1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='B','Conta já baixada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='C','Esta conta está cancelada.');

  Application.CreateForm(TFormReceberBaixar, FormReceberBaixar);
  ReceberBaixar.Parcial:=False; //variavel para baixar parcial ou total.
  //desabilita possibilidade de alterar o valor pago na baixa total.
  FormReceberBaixar.DBEdit4.ReadOnly:=True;
  FormReceberBaixar.DBEdit4.Color:=clBtnFace;
  FormReceberBaixar.DBEdit4.TabStop:=False;
  //...
  FormReceberBaixar.Label18.Caption:='Baixa TOTAL !!!';
  FormReceberBaixar.ShowModal;
  FormReceberBaixar.Free;
  FormReceberBaixar:=nil;
end;

procedure TFormReceber.BaixaColetiva1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberBaixaColetiva, FormReceberBaixaColetiva);
  FormReceberBaixaColetiva.ShowModal;
  FormReceberBaixaColetiva.Free;
  FormReceberBaixaColetiva:=nil;
end;

procedure TFormReceber.BaixaParcial1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='B','Conta já baixada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='C','Esta conta está cancelada.');

  Application.CreateForm(TFormReceberBaixar, FormReceberBaixar);
  ReceberBaixar.Parcial:=True; //variavel para baixar parcial ou total.
  //desabilita campos de desconto na baixa parcial.
  FormReceberBaixar.DBEdit5.Enabled:=False;
  FormReceberBaixar.DBEdit6.Enabled:=False;
  FormReceberBaixar.DBEdit5.TabStop:=False;
  FormReceberBaixar.DBEdit6.TabStop:=False;
  FormReceberBaixar.DBEdit5.Color:=clBtnFace;
  FormReceberBaixar.DBEdit6.Color:=clBtnFace;
  //...
  FormReceberBaixar.Label18.Caption:='Baixa PARCIAL !!!';
  FormReceberBaixar.ShowModal;
  FormReceberBaixar.Free;
  FormReceberBaixar:=nil;
end;

procedure TFormReceber.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceber.DBEdit5Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit5,DBEdit29,DM.TBReceber);
end;

procedure TFormReceber.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormReceber.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceber.SpeedButton7Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit5,DBEdit29,DM.TBReceber);
end;

procedure TFormReceber.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceber.DBEdit6Exit(Sender: TObject);
begin
  LocReceitasExit(DBEdit6,DBEdit23,DM.TBReceber);
end;

procedure TFormReceber.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormReceber.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceber.SpeedButton3Click(Sender: TObject);
begin
  LocReceitasBotao(DBEdit6,DBEdit23,DM.TBReceber);
end;

procedure TFormReceber.DBEdit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceber.DBEdit15Exit(Sender: TObject);
begin
  LocContasExit(DBEdit15,DBEdit24,DM.TBReceber);
end;

procedure TFormReceber.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormReceber.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceber.SpeedButton4Click(Sender: TObject);
begin
  LocContasBotao(DBEdit15,DBEdit24,DM.TBReceber);
end;

procedure TFormReceber.DBEdit16Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceber.DBEdit16Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit16,DBEdit25,nil,DM.TBReceber);
end;

procedure TFormReceber.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton8.Click;
end;

procedure TFormReceber.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceber.DBEdit39Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceber.DBEdit39Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit39,DBEdit40,nil,DM.TBReceber);
end;

procedure TFormReceber.DBEdit39KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormReceber.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceber.SpeedButton8Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit16,DBEdit25,nil,DM.TBReceber);
end;

procedure TFormReceber.FormCreate(Sender: TObject);
begin
  if SQLLocalizar<>'' then
  begin
    Application.CreateForm(TFormReceberLoc, FormReceberLoc);
    //FormReceberLoc.Height:=354;
    FormReceberLoc.Panel1.Visible:=False;
    FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
    FormReceberLoc.QYReceber.SQL.Clear;
    FormReceberLoc.QYReceber.SQL.Add(SQLLocalizar);
    FormReceberLoc.QYReceber.Open;
    FormReceberLoc.ShowModal;
    if ReceberLoc.Procurar then
    begin
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=FormReceberLoc.QYReceberREE_CODIGO.Value;
      DM.TBReceber.Open;
    end;
    FormReceberLoc.Free;
    FormReceberLoc:=nil;
  end;
end;

procedure TFormReceber.PngSpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit39,DBEdit40,nil,DM.TBReceber);
end;

procedure TFormReceber.PreBaixa1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='B','Conta já baixada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='C','Esta conta está cancelada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='P','Conta já pré baixada.');

  Application.CreateForm(TFormReceberBaixarPre, FormReceberBaixarPre);
  FormReceberBaixarPre.Label18.Caption:='Pré Baixa !!!';
  FormReceberBaixarPre.ShowModal;
  FormReceberBaixarPre.Free;
  FormReceberBaixarPre:=nil;
end;

procedure TFormReceber.CadastroDeBoletos1Click(Sender: TObject);
begin
  if not DM.TBReceberREE_BOLETO.IsNull then
  begin
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=DM.TBReceberREE_BOLETO.Value;
    DM2.TBBoletos.Open;
  end;
  Application.CreateForm(TFormBoletos, FormBoletos);
  FormBoletos.ShowModal;
  FormBoletos.Free;
  FormBoletos:=nil;
end;

procedure TFormReceber.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormReceber.CadastroDeTiposDeReceitas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceitas, FormReceitas);
  FormReceitas.ShowModal;
  FormReceitas.Free;
  FormReceitas:=nil;
end;

procedure TFormReceber.CadastroDeContas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormReceber.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormReceber.CancelarContaAReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='C','Esta conta já está cancelada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='B','Esta conta está baixada. Para cancelar deve-se primeiro estorná-la.');

  if MessageDlg('Deseja cancelar a conta a receber?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBReceber.Edit;
    DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM.TBReceberREE_STATUS.Value:='C';
    DM.TBReceber.Post;
    MessageDlg('A conta foi cancelada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormReceber.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBReceberREE_DTVENCIMENTO.Clear;
end;

procedure TFormReceber.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBReceberREE_DTEMISSAO.Clear;
end;

procedure TFormReceber.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBReceberREE_DTJUROSAPOS.Clear;
end;

procedure TFormReceber.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormReceber.DBEdit8Exit(Sender: TObject);
begin
  if (DM.TBReceberREE_DTJUROSAPOS.IsNull) and (DM.TBReceber.State in [dsInsert, dsEdit]) and (not DM.TBReceberREE_DTVENCIMENTO.IsNull) then
  DM.TBReceberREE_DTJUROSAPOS.Value:=DM.TBReceberREE_DTVENCIMENTO.Value;
end;

procedure TFormReceber.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormReceber.ComposicaoDoValorAcessorias1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta a receber selecionada.');

  if DM.TBReceberREE_STATUS.Value='A' then
  begin
    //DM.TBReceberItens.DataSource:=DM.DSReceber;
    Application.CreateForm(TFormReceberItens, FormReceberItens);
    FormReceberItens.ShowModal;
    FormReceberItens.Free;
    FormReceberItens:=nil;
    //DM.TBReceberItens.DataSource:=nil;
    //atualiza o valor acessorias na tabela RECEBER.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(REI_VALOR) as TOTAL from RECEBERITENS where REI_RECEBER=:receber');
    DM.QYAux.ParamByName('receber').AsInteger:=DM.TBReceberREE_CODIGO.Value;
    DM.QYAux.Open;
    DM.TBReceber.Edit;
    DM.TBReceberREE_VALORACESSORIAS.Value:=DM.QYAux.FieldByName('TOTAL').AsExtended;
    DM.TBReceber.Post;
    DM.QYAux.Close;
  end else
  begin
    //Baixada ou Cancelada...
    //DM.TBReceberItens.DataSource:=DM.DSReceber;
    Application.CreateForm(TFormReceberItensVer, FormReceberItensVer);
    FormReceberItensVer.ShowModal;
    FormReceberItensVer.Free;
    FormReceberItensVer:=nil;
    //DM.TBReceberItens.DataSource:=nil;
  end;
end;

procedure TFormReceber.ContasAReceberPorClienteRetrato1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=0;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorClientePaisagem1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=1;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorData1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=2;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorDataSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=3;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorReceitaAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=4;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorReceitaSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=5;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorTipoDeDocumentoSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=6;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=7;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ContasAReceberPorVendedorSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberRel, FormReceberRel);
  FormReceberRel.ComboBox1.Enabled:=False;
  FormReceberRel.ComboBox1.ItemIndex:=8;
  FormReceberRel.ComboBox1Change(Self);
  FormReceberRel.ShowModal;
  FormReceberRel.Free;
  FormReceberRel:=nil;
end;

procedure TFormReceber.ReciboDePagamento1via1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='A','Somente contas baixadas podem ser impressas.');

  Application.CreateForm(TFormReceberFast, FormReceberFast);
  FormReceberFast.QY06.Close;
  FormReceberFast.QY06.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CODIGO.Value;
  FormReceberFast.QY06.Open;
  FormReceberFast.frxReport6.Variables['TITULO']:=QuotedStr('Recibo de Pagamento.');
  FormReceberFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormReceberFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormReceberFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormReceberFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormReceberFast.frxReport6.Variables['VALOREXTENSO']:=QuotedStr(Extenso(DM.TBReceberREE_VALORPAGO.AsExtended));
  if DM.TBReceberREE_DTPAGAMENTO.Value=DM.ServerDate then
  FormReceberFast.frxReport6.Variables['OVERLAY']:=QuotedStr('NAO') else
  FormReceberFast.frxReport6.Variables['OVERLAY']:=QuotedStr('SIM');
  FormReceberFast.frxReport6.ShowReport;
  FormReceberFast.Free;
  FormReceberFast:=nil;
end;

procedure TFormReceber.ReciboDePagamento2Vias1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='A','Somente contas baixadas podem ser impressas.');

  Application.CreateForm(TFormReceberFast, FormReceberFast);
  FormReceberFast.QY07.Close;
  FormReceberFast.QY07.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CODIGO.Value;
  FormReceberFast.QY07.Open;
  FormReceberFast.frxReport7.Variables['TITULO']:=QuotedStr('Recibo de Pagamento.');
  FormReceberFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormReceberFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormReceberFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormReceberFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormReceberFast.frxReport7.Variables['VALOREXTENSO']:=QuotedStr(Extenso(DM.TBReceberREE_VALORPAGO.AsExtended));
  if DM.TBReceberREE_DTPAGAMENTO.Value=DM.ServerDate then
  FormReceberFast.frxReport7.Variables['OVERLAY']:=QuotedStr('NAO') else
  FormReceberFast.frxReport7.Variables['OVERLAY']:=QuotedStr('SIM');
  FormReceberFast.frxReport7.ShowReport;
  FormReceberFast.Free;
  FormReceberFast:=nil;
end;

procedure TFormReceber.CarneDePagamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  ReceberLoc.TipoAcao:='CARNES';
  //FormReceberLoc.Height:=394;
  FormReceberLoc.BitBtn2.Enabled:=True;
  FormReceberLoc.BitBtn3.Enabled:=True;
  FormReceberLoc.BitBtn2.Visible:=True;
  FormReceberLoc.BitBtn3.Visible:=True;
  FormReceberLoc.Bevel1.Visible:=True;
  FormReceberLoc.ShowModal;
  //dentro do FormReceberLoc tem a chamada para a impressao dos carnês.
  FormReceberLoc.Free;
  FormReceberLoc:=nil;
end;

procedure TFormReceber.EstornarBaixa1Click(Sender: TObject);
begin
  AbortIf(DM.TBReceber.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='A','Esta conta não está baixada.');
  AbortIf(DM.TBReceberREE_STATUS.Value='C','Esta conta foi cancelada. Não há o que estornar.');

  if DM.TBReceberREE_TIPOBAIXA.Value='P' then
  begin
    MessageDlg('Esta conta foi baixada parcialmente. Estorne todas as contas manualmente. '+#13#10+'Para localizar as contas subsequentes, utilize a busca por código e digite o código que está no campo "Novo Código".',mtWarning,[mbOk],0);
  end;
  if MessageDlg('Estornar baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //gera lançamento no fluxo de caixa.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM.TBReceberCLI_NOME.Value;
    DM.TBCaixaCAI_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_DESCRICAO.Value:=Copy(DM.TBReceberREE_DESCRICAO.Value+' (ESTORNO)',1,50); // 'ESTORNO AUTOM. CONTAS A RECEBER';
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
    DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBReceberREE_CODIGO.Value);
    DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A RECEBER';
    DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
    DM.TBCaixaCAI_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value;
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixa.Post;

    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('update RECEBER set REE_STATUS=''A'', REE_VALORPAGO=null, REE_JUROSPAGO=null, REE_MULTAPAGO=null, REE_DESCPORC=null, REE_DESCVALOR=null where REE_CODIGO=:codigo');
    QYReceber.ParamByName('codigo').AsInteger:=DM.TBReceberREE_CODIGO.Value;
    QYReceber.ExecSQL;

    DM.CodigoMark:=DM.TBReceberREE_CODIGO.Value;
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBReceber.Open;
//    DM.TBReceber.Locate('REE_CODIGO',DM.CodigoMark,[]);
    MessageDlg('Estorno realizado!',mtInformation,[mbOk],0);
  end;
end;

initialization
  RegisterClass(TFormReceber);

finalization
  UnRegisterClass(TFormReceber);

end.

